//
//  SceneDelegate.swift
//  RickAndMorty
//
//  Created by Семен Выдрин on 14.10.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.makeKeyAndVisible()
        window?.rootViewController = UINavigationController(rootViewController: MainViewController())
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }


}

