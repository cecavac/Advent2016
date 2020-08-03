//
//  inc.swift
//  Advent23
//
//  Created by Dragan Cecavac on 31.07.20.
//  Copyright © 2020 Dragan Cecavac. All rights reserved.
//

import Foundation

class inc<T: FixedWidthInteger>: Instruction<T> {

    override func run(registers: Registers<T>, computer: Computer<T>) {
        let value = getValue(arg1, registers: registers)
        setValue(registers: registers, register: arg1, value: value + 1)

        registers.ip += 1
    }

    override func toggle() -> Instruction<T> {
        return dec<T>(a1: arg1, a2: arg2)
    }
}
