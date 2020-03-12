import random
import time

class randSleep():
    def __init__(self, thresSt_in, thresEnd_in, sleepSt_in, sleepEnd_in):
        self.thresSt = thresSt_in
        self.thresEnd = thresEnd_in
        self.sleepSt = sleepSt_in
        self.sleepEnd = sleepEnd_in

        self.resetThreshold()
        self.resetCounter()
        self.resetSleepTime()

    def resetThreshold(self):
        self.threshold = random.randint(self.thresSt, self.thresEnd)

    def resetCounter(self):
        self.count = 0

    def resetSleepTime(self):
        self.sleepTime = random.randint(self.sleepSt, self.sleepEnd)

    def increaseCounter(self):
        self.count += 1
        
    def fireRandomSleep(self):
        if self.count == self.threshold:
            time.sleep(self.sleepTime)
            
            self.resetThreshold()
            self.resetCounter()
            self.resetSleepTime()

        self.increaseCounter()
