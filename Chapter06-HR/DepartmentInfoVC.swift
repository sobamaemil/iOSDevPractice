//
//  DepartmentInfoVC.swift
//  Chapter06-HR
//
//  Created by 심찬영 on 2021/02/02.
//

import UIKit

class DepartmentInfoVC: UITableViewController {
    // 부서 정보를 저장할 데이터 타입
    typealias DepartRecord = (departCd: Int, departTitle: String, departAddr: String)
    
    // 부서 목록으로부터 넘겨 받을 부서 코드
    var departCd: Int!
    
    // DAO 객체
    let departDAO = DepartmentDAO()
    let empDAO = EmployeeDAO()

    // 부서 정보와 사원 정보를 담을 멤버 변수
    var departInfo: DepartRecord!
    var empList: [EmployeeDAO.EmployeeVO]!
    
    override func viewDidLoad() {
        self.departInfo = self.departDAO.get(departCd: self.departCd)
        self.empList = self.empDAO.find(departCd: self.departCd)
        
        self.navigationItem.title = "\(self.departInfo.departTitle)"
    }
}
