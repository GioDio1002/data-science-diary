select Name
from (
    select CandidateId as id
    from Vote
    group by CandidateId
    order by count(id) desc
    limit 1
) as winner join Candidate
on winner.id = Candidate.id
