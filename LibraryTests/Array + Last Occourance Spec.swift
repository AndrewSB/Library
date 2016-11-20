import Foundation
import Library
import Quick
import Nimble

private let thingImLookingFor = "🔥"

class ArrayLastOccouranceSpec: QuickSpec {
    override func spec() {
        describe("an array with elements") {
            var array: [String]!

            describe("when the array is empty") {
                beforeEach {
                    array = []
                }

                it("doensn't find the element") {
                    expect(array.lastIndex(of: thingImLookingFor)).to(beNil())
                }
            }

            describe("when there is one element") {
                it("finds the element") {

                }
            }

            describe("when the array has many elements") {
                context("are no occourances of the expected element") {
                    it("finds nothing") {}
                }

                context("is one occourance of the expected element") {
                    it("finds it") {}
                }

                context("are many occourances of the expected element") {
                    it("finds the last one") {}
                }
            }

        }
    }
}
