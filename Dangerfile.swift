import Danger

let danger = Danger()

let brokenConstraintsPath = "brokenConstraints.txt"
if let fileExists = Bool(danger.utils.exec("[ -f \(brokenConstraintsPath) ] && echo true || echo false")), fileExists {
    let output = danger.utils.readFile("brokenConstraints.txt")
    warn("# Constraint errors: \n\(output)")
}
