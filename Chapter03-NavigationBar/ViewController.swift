//
//  ViewController.swift
//  Chapter03-NavigationBar
//
//  Created by 심찬영 on 2021/01/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        self.initTitle()
        
//        // 내비게이션 타이틀 초기화
//        self.initTitleNew()
        
//        // 내비게이션 타이틀 초기화
//        self.initTitleImage()
        
        // 내비게이션 타이틀 초기화
        self.initTitleInput()
    }
//
//    func initTitle() {
//        // 내비게이션 타이틀용 레이블 객체
//        let nTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
//
//        // 속성 설정
//        nTitle.numberOfLines = 2 // 두 줄까지 표시되도록 설정
//        nTitle.textAlignment = .center // 중앙 정렬
//        nTitle.textColor = UIColor.white
//        nTitle.font = UIFont.systemFont(ofSize: 15) // 폰트 크기
//        nTitle.text = "58개 숙소 \n 1박(1월 10일 ~ 1월 11일)"
//
//        // 내비게이션 타이틀에 입력
//        self.navigationItem.titleView = nTitle
//
//        // 배경 색상 설정
//        let color = UIColor(red: 0.02, green: 0.22, blue: 0.49, alpha: 1.0)
//        self.navigationController?.navigationBar.barTintColor = color
//    }

//    func initTitleNew() {
//        // 복잡한 레이아웃을 구현할 컨테이너 뷰
//        let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 36))
//
//        // 상단 레이블 정의
//        let topTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 18))
//        topTitle.numberOfLines = 1
//        topTitle.textAlignment = .center
//        topTitle.font = UIFont.systemFont(ofSize: 15)
//        topTitle.textColor = .white
//        topTitle.text = "58개 숙소"
//
//        // 하단 레이블 정의
//        let subTitle = UILabel(frame: CGRect(x: 0, y: 18, width: 200, height: 18))
//        subTitle.text = "1박(1월 10일 ~ 1월 11일)"
//        subTitle.textAlignment = .center
//        subTitle.font = UIFont.systemFont(ofSize: 12)
//        subTitle.textColor = .white
//        subTitle.numberOfLines = 1
//
//        // 상하단 레이블을 컨테이너 뷰에 추가
//        containerView.addSubview(topTitle)
//        containerView.addSubview(subTitle)
//
//        // 내비게이션 타이틀에 컨테이너 뷰를 대입
//        self.navigationItem.titleView = containerView
//
//        // 배경 색상 설정
//        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.02, green: 0.22, blue: 0.49, alpha: 1.0)
//    }
    
//    // 타이틀에 이미지를 표시하는 메소드
//    func initTitleImage() {
//        let image = UIImage(named: "swift_logo")
//        let imageV = UIImageView(image: image)
//
//        self.navigationItem.titleView = imageV
//    }
    
    // 텍스트 필드를 이용하여 타이틀을 구성하는 메소드
    func initTitleInput() {
        let tf = UITextField()
        tf.frame = CGRect(x: 0, y: 0, width: 300, height: 35)
        tf.backgroundColor = .white // 배경을 흰색으로
        tf.font = UIFont.systemFont(ofSize: 13) // 입력할 글씨 크기를 13픽셀로
        tf.autocapitalizationType = .none // 자동 대문자 변환 속성 사용하지 않도록
        tf.autocorrectionType = .no // 자동 입력 기능 해제
        tf.spellCheckingType = .no // 스펠링 체크 기능 해제
        tf.keyboardType = .URL // URL 입력 전용 키보드
        tf.keyboardAppearance = .dark
        tf.layer.borderWidth = 0.3 // 테두리 경계선 두께
        tf.layer.borderColor = UIColor(red: 0.60, green: 0.60, blue: 0.60, alpha: 1.0).cgColor
        
        // 타이틀 뷰 속성에 대입
        self.navigationItem.titleView = tf
        
//        // 좌측 바 아이템 영역
//        let v = UIView()
//        v.frame = CGRect(x: 0, y: 0, width: 150, height: 37)
//        v.backgroundColor = .brown
//
//        let leftItem = UIBarButtonItem(customView: v)
//        self.navigationItem.leftBarButtonItem = leftItem
//
//        // 우측 바 아이템 영역
//        let rv = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 37))
//        rv.backgroundColor = .blue
//
//        let rightItem = UIBarButtonItem(customView: rv)
//        self.navigationItem.rightBarButtonItem = rightItem
        
        // 왼쪽 아이템 영역에 들어갈 뷰
        let back = UIImage(named: "arrow-back")
        let leftItem = UIBarButtonItem(image: back, style: .plain, target: self, action: nil)
        
        // 왼쪽 아이템 영역에 이미지 뷰 설정
        self.navigationItem.leftBarButtonItem = leftItem
        
        // 오른쪽 아이템 영역에 들어갈 커스텀 뷰
        let rv = UIView()
        rv.frame = CGRect(x: 0, y: 0, width: 70, height: 37)
        
        let rItem = UIBarButtonItem(customView: rv)
        self.navigationItem.rightBarButtonItem = rItem

        // 카운트 값을 표시할 레이블 구성
        let cnt = UILabel()
        cnt.frame = CGRect(x: 15, y: 8, width: 20, height: 20)
        cnt.font = UIFont.boldSystemFont(ofSize: 10)
        cnt.textColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0)
        cnt.text = "12"
        cnt.textAlignment = .center
        
        // 외곽선
        cnt.layer.cornerRadius = 3 // 모서리 둥글게 처리
        cnt.layer.borderWidth = 2
        cnt.layer.borderColor = UIColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0).cgColor
        
        // 레이블을 서브 뷰로 추가
        rv.addSubview(cnt)
        
        // more 버튼 구현
        let more = UIButton(type: .system)
        more.frame = CGRect(x: 50, y: 10, width: 16, height: 16)
        more.setImage(UIImage(named: "more"), for: .normal)
        
        rv.addSubview(more)
    }

}

