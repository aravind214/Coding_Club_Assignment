TITLE="IPL Points Table"
SEASON=2020
MATCHES_PLAYED=14
win=0
lose=0
points=0
nrr=""
position=0
isEligibleForSemiFinals=false
playoffMessage="eligible for play-offs"
rcbTeam=("kholi" "abd" "siraj")



declare -A cskTeam
cskTeam=( ["Captain"]="Dhoni" ["Batsman"]="Suresh" ["Bowler"]="Bravo"  )



echo "${servers[@]}"

echo "Select Your Favourite Team"
echo "MI DC SRH RCB KKR PBKS CSK RR"
read teamName


teamName=`echo "$teamName" | awk '{print tolower($0)}'`


    function showError() {
             echo "Your Given Input Is Invalid :( Please Check Your Characters :("
    }


if [ $teamName == 'mi' ]
then
     position=1
elif [ $teamName == 'dc' ]
then
     position=2
elif [ $teamName == 'srh' ]
then
     position=3
elif [ $teamName == 'rcb' ]
then
     position=4
elif [ $teamName == 'kkr' ]
then
     position=5
elif [ $teamName == 'pbks' ]
then
     position=6
elif [ $teamName == 'csk' ]
then
     position=7
elif [ $teamName == 'rr' ]
then
     position=8
else
     showError
fi
     function msg() {

           # ` echo "$1" | awk '{print toupper($0)}'`  echo "Is a $3 Of $2" 
             echo $2"'s" $3 Is ` echo "$1" | awk '{print toupper($0)}'`
             # echo $1 Is a $3 Of $2 
     }
     function captain() {
             msg $1 $2 'Captain'
     }
     function batsman() {
              msg $1 $2 'Batsman'
     }
     function bowler() {
              msg $1 $2 'Bowler'
     }
  
     
     function findingRolesAndResponsibility() {
              if [ $2 == "RCB" ]
              then
                 for value in ${rcbTeam[*]}
                  do
                      # $array  | tr '[:lower:]' '[:upper:]'
                       # value=`echo "$value" | awk '{print toupper($0)}'`
                      # echo $value
                      if [ $value == "kholi" ]
                      then
                          captain $value $2
                      elif [ $value == "abd" ]
                      then
                          batsman $value $2
                      elif [ $value == "siraj" ]
                      then
                          bowler $value $2
                      else
                          echo "Dummy"
                      fi                       
                  done
              
              elif [ $2 == "CSK" ]
              then
                 for value in ${cskTeam[*]}
                  do
                      # $value  | tr '[:lower:]' '[:upper:]'
                       # value=`echo "$value" | awk '{print toupper($0)}'`
                      # echo $value
                      if [ $value == "Dhoni" ]
                      then
                          captain $value $2
                      elif [ $value == "Suresh" ]
                      then
                          batsman $value $2
                      elif [ $value == "Bravo" ]
                      then
                          bowler $value $2
                      else
                          echo "Dummy"
                      fi                       
                  done
              fi
     }
     function message() {
              if [ -z "$2" ]
              then
                   echo $1 $playoffMessage
              else
                   echo $1 $2 $playoffMessage
              fi
     }
     function playOff() {
              if [[ $1 -ge 1 && $1 -le 4 ]]
              then
                  isEligibleForSemiFinals=true
              fi
              
              if [ "$isEligibleForSemiFinals" = true ]
              then
                  message $2 " "
              else
                  message $2 "not"
              fi
     }


     function pointsCalculator() {
              lose=$((MATCHES_PLAYED-$2))
              points=$(($2*2))
              teamName=`echo "$teamName" | awk '{print toupper($0)}'`
              echo $TITLE
              echo "Period : $SEASON"
              if [ $1 == '2' ]
              then
                     echo "Place Secured of $teamName : $1 nd place"
             elif [ $1 == '3' ]
             then
                    echo "Place Secured of $teamName : $1 rd place"
             elif [ $1 == '1' ]
             then
                    echo "Place Secured of $teamName : $1 st place"
             else
                    echo "Place Secured of $teamName : $1 th place"
             fi
              # echo "Place Secured : $1"
              echo "Team : $teamName"
              echo "Match Faced or Total Matches : $MATCHES_PLAYED"
              echo "Won Matches of $teamName : $2   Lost Matches of $teamName : $lose"
              echo "Run Rate of $teamName : $3"
              echo "Points of $teamName : $points"
              playOff $1 $teamName
              findingRolesAndResponsibility $1 $teamName
     }

case $position in
   1)
      win=9
      nrr="+1.107"
      pointsCalculator $position $win $nrr
      ;;
   2)
      win=8
      nrr="-0.109"
      pointsCalculator $position $win $nrr
      ;;
   3)
      win=7
      nrr="+0.608"
      pointsCalculator $position $win $nrr
      ;;
   4)
      win=7
      nrr="-0.172"
      pointsCalculator $position $win $nrr
      ;;
   5)
      win=7
      nrr="-0.214"
      pointsCalculator $position $win $nrr
      ;;
   6)
      win=6
      nrr="-0.162"
      pointsCalculator $position $win $nrr
      ;;
   7)
      win=6
      nrr="-0.455"
      pointsCalculator $position $win $nrr
      ;;
   8)
      win=6
      nrr="-0.569"
      pointsCalculator $position $win $nrr
      ;;
   *)
     
     ;;
esac
