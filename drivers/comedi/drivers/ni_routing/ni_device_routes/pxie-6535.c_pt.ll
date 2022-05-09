; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/ni_routing/ni_device_routes/pxie-6535.c_pt.bc'
source_filename = "../drivers/comedi/drivers/ni_routing/ni_device_routes/pxie-6535.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ni_route_set = type { i32, i32, ptr }
%struct.ni_device_routes = type { ptr, i32, ptr }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pxie-6535\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [25 x i32], [60 x i8] } { [25 x i32] [i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 32944, i32 32945, i32 32947, i32 32948, i32 32949, i32 32950, i32 32953, i32 32955, i32 32956, i32 32957, i32 32958, i32 32967, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal global { [25 x i32], [60 x i8] } { [25 x i32] [i32 32768, i32 32770, i32 32771, i32 32772, i32 32773, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 32944, i32 32945, i32 32947, i32 32948, i32 32949, i32 32950, i32 32953, i32 32955, i32 32956, i32 32957, i32 32958, i32 32967, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal global { [25 x i32], [60 x i8] } { [25 x i32] [i32 32768, i32 32769, i32 32771, i32 32772, i32 32773, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 32944, i32 32945, i32 32947, i32 32948, i32 32949, i32 32950, i32 32953, i32 32955, i32 32956, i32 32957, i32 32958, i32 32967, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal global { [25 x i32], [60 x i8] } { [25 x i32] [i32 32768, i32 32769, i32 32770, i32 32772, i32 32773, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 32944, i32 32945, i32 32947, i32 32948, i32 32949, i32 32950, i32 32953, i32 32955, i32 32956, i32 32957, i32 32958, i32 32967, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { [27 x i32], [52 x i8] } { [27 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32773, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 32839, i32 32944, i32 32945, i32 32947, i32 32948, i32 32949, i32 32950, i32 32951, i32 32953, i32 32955, i32 32956, i32 32957, i32 32958, i32 32967, i32 0], [52 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { [27 x i32], [52 x i8] } { [27 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 32839, i32 32942, i32 32944, i32 32945, i32 32947, i32 32948, i32 32949, i32 32950, i32 32953, i32 32955, i32 32956, i32 32957, i32 32958, i32 32967, i32 0], [52 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { [25 x i32], [60 x i8] } { [25 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 32944, i32 32945, i32 32947, i32 32948, i32 32949, i32 32950, i32 32953, i32 32955, i32 32956, i32 32957, i32 32958, i32 32967, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { [25 x i32], [60 x i8] } { [25 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32832, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 32944, i32 32945, i32 32947, i32 32948, i32 32949, i32 32950, i32 32953, i32 32955, i32 32956, i32 32957, i32 32958, i32 32967, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { [25 x i32], [60 x i8] } { [25 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32832, i32 32833, i32 32835, i32 32836, i32 32837, i32 32838, i32 32944, i32 32945, i32 32947, i32 32948, i32 32949, i32 32950, i32 32953, i32 32955, i32 32956, i32 32957, i32 32958, i32 32967, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { [25 x i32], [60 x i8] } { [25 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32832, i32 32833, i32 32834, i32 32836, i32 32837, i32 32838, i32 32944, i32 32945, i32 32947, i32 32948, i32 32949, i32 32950, i32 32953, i32 32955, i32 32956, i32 32957, i32 32958, i32 32967, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { [25 x i32], [60 x i8] } { [25 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32832, i32 32833, i32 32834, i32 32835, i32 32837, i32 32838, i32 32944, i32 32945, i32 32947, i32 32948, i32 32949, i32 32950, i32 32953, i32 32955, i32 32956, i32 32957, i32 32958, i32 32967, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { [25 x i32], [60 x i8] } { [25 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32838, i32 32944, i32 32945, i32 32947, i32 32948, i32 32949, i32 32950, i32 32953, i32 32955, i32 32956, i32 32957, i32 32958, i32 32967, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { [25 x i32], [60 x i8] } { [25 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32944, i32 32945, i32 32947, i32 32948, i32 32949, i32 32950, i32 32953, i32 32955, i32 32956, i32 32957, i32 32958, i32 32967, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { [27 x i32], [52 x i8] } { [27 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 32944, i32 32945, i32 32947, i32 32948, i32 32949, i32 32950, i32 32951, i32 32953, i32 32955, i32 32956, i32 32957, i32 32958, i32 32967, i32 0], [52 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 32773, i32 32839, i32 0], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { [14 x i32], [40 x i8] } { [14 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { [14 x i32], [40 x i8] } { [14 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { [14 x i32], [40 x i8] } { [14 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 32772, i32 32839, i32 0], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { [14 x i32], [40 x i8] } { [14 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { [14 x i32], [40 x i8] } { [14 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { [22 x %struct.ni_route_set], [88 x i8] } { [22 x %struct.ni_route_set] [%struct.ni_route_set { i32 32768, i32 0, ptr @.compoundliteral }, %struct.ni_route_set { i32 32769, i32 0, ptr @.compoundliteral.1 }, %struct.ni_route_set { i32 32770, i32 0, ptr @.compoundliteral.2 }, %struct.ni_route_set { i32 32771, i32 0, ptr @.compoundliteral.3 }, %struct.ni_route_set { i32 32772, i32 0, ptr @.compoundliteral.4 }, %struct.ni_route_set { i32 32773, i32 0, ptr @.compoundliteral.5 }, %struct.ni_route_set { i32 32832, i32 0, ptr @.compoundliteral.6 }, %struct.ni_route_set { i32 32833, i32 0, ptr @.compoundliteral.7 }, %struct.ni_route_set { i32 32834, i32 0, ptr @.compoundliteral.8 }, %struct.ni_route_set { i32 32835, i32 0, ptr @.compoundliteral.9 }, %struct.ni_route_set { i32 32836, i32 0, ptr @.compoundliteral.10 }, %struct.ni_route_set { i32 32837, i32 0, ptr @.compoundliteral.11 }, %struct.ni_route_set { i32 32838, i32 0, ptr @.compoundliteral.12 }, %struct.ni_route_set { i32 32839, i32 0, ptr @.compoundliteral.13 }, %struct.ni_route_set { i32 32942, i32 0, ptr @.compoundliteral.14 }, %struct.ni_route_set { i32 32944, i32 0, ptr @.compoundliteral.15 }, %struct.ni_route_set { i32 32945, i32 0, ptr @.compoundliteral.16 }, %struct.ni_route_set { i32 32946, i32 0, ptr @.compoundliteral.17 }, %struct.ni_route_set { i32 32951, i32 0, ptr @.compoundliteral.18 }, %struct.ni_route_set { i32 32953, i32 0, ptr @.compoundliteral.19 }, %struct.ni_route_set { i32 32954, i32 0, ptr @.compoundliteral.20 }, %struct.ni_route_set zeroinitializer], [88 x i8] zeroinitializer }, align 32
@ni_pxie_6535_device_routes = dso_local global { %struct.ni_device_routes, [20 x i8] } { %struct.ni_device_routes { ptr @.str, i32 0, ptr @.compoundliteral.21 }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 31, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [27 x i8] c"ni_pxie_6535_device_routes\00", align 1
@___asan_gen_.48 = private constant [66 x i8] c"../drivers/comedi/drivers/ni_routing/ni_device_routes/pxie-6535.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 30, i32 25 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @.str, ptr @.compoundliteral, ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @.compoundliteral.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @.compoundliteral.20, ptr @.compoundliteral.21, ptr @ni_pxie_6535_device_routes], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_pxie_6535_device_routes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/ni_routing/ni_device_routes/pxie-6535.c", i32 31, i32 12}
!2 = !{ptr @ni_pxie_6535_device_routes, !3, !"ni_pxie_6535_device_routes", i1 false, i1 false}
!3 = !{!"../drivers/comedi/drivers/ni_routing/ni_device_routes/pxie-6535.c", i32 30, i32 25}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
