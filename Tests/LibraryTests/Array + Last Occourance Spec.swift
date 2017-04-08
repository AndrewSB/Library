import Foundation
import Library
import Quick
import Nimble

private let thingImLookingFor = "🔥"

class ArrayLastOccouranceSpec: QuickSpec {
    override func spec() {
        describe("an array which") {
            var array: [String]!

            describe("is empty") {
                beforeEach { array = [] }

                it("finds nothing") {
                    expect(array.lastIndex(of: thingImLookingFor)).to(beNil())
                }
            }

            describe("has one element") {
                context("which is the thing you're looking for") {
                    beforeEach { array = [thingImLookingFor] }

                    it("matches") {
                        expect(array.lastIndex(of: thingImLookingFor)).toNot(beNil())
                    }
                }

                context("which is junk") {
                    beforeEach { array = ["junk"] }

                    it("finds nothing") {
                        expect(array.lastIndex(of: thingImLookingFor)).to(beNil())
                    }
                }
            }

            describe("has many elements") {
                beforeEach {
                    array = ["many", "many", "different", "disparate", "elements"]
                }

                context("has 0 occourances of the expected element") {
                    it("finds nothing") {
                        expect(array.lastIndex(of: thingImLookingFor)).to(beNil())
                    }
                }

                context("has 1 occourance of the expected element") {
                    beforeEach { array!.append(thingImLookingFor) }

                    it("finds it") {
                        expect(array.lastIndex(of: thingImLookingFor)).to(equal(array.index(of: thingImLookingFor)))
                    }
                }

                context("many occourances of the expected element") {
                    beforeEach {
                        array.insert(thingImLookingFor, at: 0)
                        array.insert(thingImLookingFor, at: 2)
                        array.insert(thingImLookingFor, at: 4)
                    }

                    it("finds the last one") {
                        expect(array.lastIndex(of: thingImLookingFor)).to(equal(4))
                    }
                }
            }
        }
    }
}
