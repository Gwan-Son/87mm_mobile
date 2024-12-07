# 87mm_mobile

Storyboard나 SwiftUI 사용하지 않고 87mm 웹 모바일 화면 구현하기

해당 프로젝트는 스토리보드 및 SwiftUI를 사용하지 않고 코드만으로 작성되었습니다.

추가로, 해당 프로젝트는 포트폴리오용이 아닌 개인 공부용임을 밝힙니다.

## 목차
- [🚀 개발 기간](#-개발-기간)
- [💻 개발 환경](#-개발-환경)
- [👀 미리 보기](#-미리보기)
- [💊 커스텀 버튼 모듈화](#-커스텀-버튼-모듈화)
- [🖼️ 컬렉션뷰 안에 페이지뷰 컨트롤러](#-컬렉션뷰-안에-페이지뷰-컨트롤러)
- [👾 코드로만 UI구성하기](#-코드로만-UI구성하기)

# 🚀 개발 기간
24.11.27 ~ 24.12.07 (1.5주)

# 💻 개발 환경
- `XCode 16.0`
- `Swift 6.0.0`

# 👀 미리보기
|기존 웹 모바일|swift로 구성한 화면|
|:--:|:--:|
|<img width="100%" height="500px" alt="87mm 웹 모바일" src="https://github.com/user-attachments/assets/237ec647-1487-4bf6-8d1b-70df09af4517">|<img width="100%" height="500px" alt="87mm ios" src="https://github.com/user-attachments/assets/e1734e6a-d71a-4507-a878-75bb8074c684">|
|<img width="100%" height="500px" alt="87mm 웹 모바일" src="https://github.com/user-attachments/assets/675489e1-059d-4dc9-a69e-22eaad2ed841">|<img width="100%" height="500px" alt="87mm ios" src="https://github.com/user-attachments/assets/233e3d91-710d-454a-b181-5fa55946cfc8">|


# 💊 커스텀 버튼 모듈화
<img width="748" alt="image" src="https://github.com/user-attachments/assets/c173fc6f-cb31-42f1-b2ce-4bf5b3c9c1ec">


해당 버튼들 처럼 이미지 이름만 다르고 여러번 사용해야 하는 코드의 경우 CustomButtonView에서 static func을 생성하여 중복코드를 최소화 시켰습니다.


<img width="859" alt="image" src="https://github.com/user-attachments/assets/83dbc7c9-22d9-4317-bb11-8879d67c7409">

# 🖼️ 컬렉션뷰 안에 페이지뷰 컨트롤러
87mm 웹 모바일을 확인해보면 상품의 이미지가 한장이 아닌 2장으로 구성되어 있는걸 볼 수 있습니다. 하지만 이미지뷰를 사용하면 UI를 똑같이 만들 수 없기 때문에 페이지뷰 컨트롤러를 사용하였습니다.
|87mm 웹 모바일 상품 화면|페이지뷰 컨트롤러를 사용한 화면|
|:--:|:--:|
|<img width="100%" alt="image" src="https://github.com/user-attachments/assets/ae319c16-6d52-4672-9e32-9a74f2c4ba67">|<img width="100%" alt="image" src="https://github.com/user-attachments/assets/f558cb17-1126-49fb-8b87-479dae3bf8db">|

컬렉션뷰 셀에 페이지뷰 컨트롤러를 생성하여 dataSource를 입력받을 때, 여러장의 이미지를 입력받아 페이지뷰를 구성하였습니다.

<img width="942" alt="image" src="https://github.com/user-attachments/assets/42b2a637-91b1-41da-92dc-0a3e0a8f5784">


# 👾 코드로만 UI구성하기
코드로만 UI를 구성하다 보니 시각적 피드백이 빠르지 않다 보니 UI 구성에 시간이 꽤 걸렸습니다. 그리고 xib나 swiftUI에 비해 코드 길이가 길어져서 코드의 가독성이 좋지 않아지는 단점도 존재했습니다. 하지만 그만큼 코드로만 UI를 작성하다보니 코드 해석만으로도 UI의 구성을 알 수 있었고, 재사용할 수 있는 코드를 만들기 위해 평소보다 코드 작성에 노력을 기울인 것 같습니다.
