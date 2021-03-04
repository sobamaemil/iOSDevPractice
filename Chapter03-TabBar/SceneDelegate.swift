//
//  SceneDelegate.swift
//  Chapter03-TabBar
//
//  Created by 심찬영 on 2021/01/20.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
        
        // 루트 뷰 컨트롤러를 UITabBarController로 캐스팅
        if let tbC = self.window?.rootViewController as? UITabBarController {
            // 탭 바에서 탭 바 아이템 배열을 가져옴
            if let tbItems = tbC.tabBar.items {
                // 탭 바 아이템에 커스텀 이미지 등록
                tbItems[0].image = UIImage(named: "designbump")?.withRenderingMode(.alwaysOriginal)
                tbItems[1].image = UIImage(named: "rss")?.withRenderingMode(.alwaysOriginal)
                tbItems[2].image = UIImage(named: "facebook")?.withRenderingMode(.alwaysOriginal)
                
                // 탭 바 아이템에 커스텀 이미지 등록
//                tbItems[0].image = UIImage(named: "calendar.png")
//                tbItems[1].image = UIImage(named: "file-tree")
//                tbItems[2].image = UIImage(named: "photo")
                
                // 탭 바 아이템을 전체 순회하면서 selectedImage 속성에 이미지를 설정
                for tbItem in tbItems {
                    let image = UIImage(named: "checkmark")?.withRenderingMode(.alwaysOriginal)
                    tbItem.selectedImage = image
                    
//                    // 탭 바 아이템별 텍스트 색상 속성을 설정
//                    tbItem.setTitleTextAttributes([.foregroundColor: UIColor.gray], for: .disabled)
//                    tbItem.setTitleTextAttributes([.foregroundColor: UIColor.red], for: .selected)
//                    
//                    // 전체 아이템의 폰트 크기를 설정
//                    tbItem.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 15)], for: .normal)
                    
                    // 외형 프록시 객체를 이용하여 아이템의 타이틀 색상과 폰트 크기를 설정
                    let tbItemProxy = UITabBarItem.appearance()
                    tbItemProxy.setTitleTextAttributes([.foregroundColor: UIColor.gray], for: .disabled)
                    tbItemProxy.setTitleTextAttributes([.foregroundColor: UIColor.red], for: .selected)
                    tbItemProxy.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 15)], for: .normal)
                }
                
                // 탭 바 아이템에 타이틀을 설정
                tbItems[0].title = "calendar"
                tbItems[1].title = "file"
                tbItems[2].title = "photo"
                
//                // 탭 바 아이템의 이미지 색상을 변경
//                tbC.tabBar.tintColor = .white // 선택된 탭 바 아이템의 색상
//                tbC.tabBar.unselectedItemTintColor = .gray // 선택되지 않은 나머지 탭 바 아이템의 색상
//
//                // 탭 바에 배경 이미지를 설정
//                tbC.tabBar.backgroundImage = UIImage(named: "menubar-bg-mini")
//                let image = UIImage(named: "menubar-bg-mini.png")?.stretchableImage(withLeftCapWidth: 5, topCapHeight: 15)
//                tbC.tabBar.backgroundImage = image
//                let image = UIImage(named: "connectivity-bar")?.stretchableImage(withLeftCapWidth: 0, topCapHeight: 0)
//                tbC.tabBar.backgroundImage = image
//                tbC.tabBar.backgroundColor = .white
                
                

            }
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}
