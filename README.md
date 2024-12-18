# AI Health Trainer

## 1. 프로젝트 소개

### ✨ 개요
- **프로젝트명**: ML Health Partner <---기존(AI Health Trainer)
- **개발 기간**: 2024.09 ~ 2024.12
- **개발 인원**: 1명
- **핵심 기능**: ML Kit의 Pose Detection을 통해 운동 횟수 측정 및 자세 교정 APP

### 🎶 기획 배경 및 기대 효과
- **주요 타겟층**: 운동에 관심이 있거나 자세교정이 필요한 모든 연령층
- **기획 배경**: 
  - 운동을 하던 중 자신이 몇회를 했는지 잊어버리는 경험은 모두가 한번씩은 겪었을 것이라 생각한다.
  - 그러던중, 자세를 교정해주면서 운동 횟수까지 같이 세주는 어플이 있다면? 이라는 생각에서 ML Health Partner를 기획하게 되었다.
  - ML Health

---

## 2. 개발 환경
![dart](https://camo.githubusercontent.com/5551027c475436787a16caa68a92fc97e7c228ff5809fb362f9d0a9f61acc313/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f646172742d3335373845353f7374796c653d666f722d7468652d6261646765266c6f676f3d64617274266c6f676f436f6c6f723d7768697465)
![flutter](https://camo.githubusercontent.com/2d9ab5fefe8cc171f36de08ff897c2e03b48f46ad43e22278557ee9953132f26/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f466c75747465722d3036423644343f7374796c653d666f722d7468652d6261646765266c6f676f3d466c7574746572266c6f676f436f6c6f723d7768697465)
![lottie](https://img.shields.io/badge/lottie-red)
![MLKit_posedetection](https://img.shields.io/badge/MLKit-pose--detection-blue)
![Camera](https://img.shields.io/badge/Android-Camera-green)

---

## 3. User Flow 작성

<img src="https://github.com/goonerpark/AI_health_trainer/blob/main/%EC%9C%A0%EC%A0%80%ED%94%8C%EB%A1%9C%EC%9A%B0.png"  width="200" height="400"/>

---

## 4. 기능 명세서

### 1. Splash Screen
- **🥇기능**: 앱 로딩 시 간단한 소개 및 애니메이션을 표시.
- **🥈상세 설명**:
  - ML Health Partner의 로고와 앱 소개 메시지 출력.
  - Lottie 애니메이션을 사용한 생동감 있는 화면 구성.
  - 버튼 클릭 시 홈 화면으로 이동.

---

### 2. Home 화면
- **🥇기능**: 운동 시작 전 선택 화면.
- **🥈상세 설명**:
  - 환영 메시지와 안내 문구 표시.
  - **🥉운동 선택 버튼**:
    - **푸쉬업 측정 시작하기**: Pose Detection 화면으로 이동.
    - **숄더프레스 측정 시작하기**: Pose Detection 화면으로 이동.
  - **🥉기타**: 로컬 데이터(SharedPreferences)를 활용한 기록 및 랭킹 기능 구현 예정.

---

### 3. 운동 자세 측정 화면 (PoseDetectorView)
- **🥇기능**: Google ML Kit을 사용하여 운동 자세 감지 및 카운트.
- **🥈상세 설명**:
  - 실시간 카메라를 통해 푸쉬업 또는 숄더프레스 수행 감지.
  - 정확한 자세로 수행 시 횟수 카운트 증가.
  - 1분 타이머를 통해 분당 횟수 측정
  - 타이머 종료 전 알람기능 추가 예정
  - 사용자의 자세 교정을 위한 피드백 기능 추가 가능성.

---

### 4. Result 화면 (Result)
- **🥇기능**: 운동 결과를 사용자에게 제공.
- **🥈상세 설명**:
  - **🥉결과 텍스트**:
    - "1분간 평균 반복 속도: X회/s"
    - "총 수행 횟수: X회"
  - **🥉확인 버튼**:
    - 클릭 시 홈 화면으로 복귀.
  - 디자인:
    - 결과 텍스트와 버튼을 직관적이고 깔끔하게 배치.

---

## 5. 실행결과

### 1. 메인 화면(main.dart)
<img src="https://github.com/goonerpark/AI_health_trainer/blob/main/main.png"  width="200" height="400"/>

### 2. 홈 화면(home.dart)
<img src="https://github.com/goonerpark/AI_health_trainer/blob/main/home.png"  width="200" height="400"/>

### 3. 운동 화면
- **1. 푸쉬업**
- 
  <img src="https://github.com/goonerpark/AI_health_trainer/blob/main/pushup.png"  width="200" height="400"/>
  
- **2. 숄더프레스**
- 
  <img src="https://github.com/goonerpark/AI_health_trainer/blob/main/ohp.png"  width="200" height="400"/>
  
### 4. 결과 화면(main.dart)
<img src="https://github.com/goonerpark/AI_health_trainer/blob/main/result.png"  width="200" height="400"/>
