# ServerBoard

### 📖 Description
서버 상태를 점수판에 표시하는 데이터 팩입니다.

> 불러오기: `/reload`  
> 삭제하기: `/function sb:uninstall {key:QUAM12}`  
> 초기화: `/scoreboard players set #init serverboard 0`, `/reload` | `/function sb:load`

# ⚙️ 기능
## 1. 엔티티의 수 집계
**로드된 청크**에 있는 **모든 엔티티**를 집계합니다.  
플레이어는 제외합니다.

### options
- 개수에 따른 **랙 위험도** 표시

## 2. 플레이어의 수 집계
서버에 있는 **모든 플레이어**를 집계합니다.  
AFK(`Away From Keyboard` / `잠수`) 중인 플레이어도 표시합니다.

## 3. 현실 시간 표시
서버가 속한 시간대의 **시간**을 표시합니다.  

## 4. 현재 날씨를 표시합니다.
현재 서버의 **날씨**를 표시합니다.
- `minecraft:overworld`를 기준으로 합니다.

<br/>

## Fin.