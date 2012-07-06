#ifndef BKPREFIX
#define BKPREFIX BK_HIDDEN_
#endif

#define BKPASTER(x,y) x ## y
#define BKEVALUATOR(x,y)  BKPASTER(x,y)
#define BKP(sym) BKEVALUATOR(BKPREFIX, sym)

#define BKDelegate BKP(BKDelegate)
#define BlocksKit  BKP(BlocksKit)
#define BKMailComposeViewControllerDelegate  BKP(BKMailComposeViewControllerDelegate)
#define BKMessageComposeViewControllerDelegate  BKP(BKMessageComposeViewControllerDelegate)
#define BKCacheDelegate  BKP(BKCacheDelegate)
#define BKInvocationGrabber BKP(BKInvocationGrabber)
#define AssociatedObjects BKP(AssociatedObjects)
#define BlockObservation BKP(BlockObservation)
#define BKObserver BKP(BKObserver)
#define BlocksKitPrivate BKP(BlocksKitPrivate)
#define BKURLConnectionDelegate  BKP(BKURLConnectionDelegate)
#define BKControlWrapper BKP(BKControlWrapper)
#define BlocksKitInternal BKP(BlocksKitInternal)
#define BKWebViewDelegate  BKP(BKWebViewDelegate)
