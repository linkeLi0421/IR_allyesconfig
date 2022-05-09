; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/ni_routing/ni_device_routes/pci-6733.c_pt.bc'
source_filename = "../drivers/comedi/drivers/ni_routing/ni_device_routes/pci-6733.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ni_route_set = type { i32, i32, ptr }
%struct.ni_device_routes = type { ptr, i32, ptr }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pci-6733\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 32845, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.1 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 32853, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 32938, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 32940, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 32844, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 32852, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 32844, i32 32852, i32 32900, i32 32908, i32 32938, i32 32940, i32 0], [36 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 32844, i32 32852, i32 32900, i32 32908, i32 32938, i32 32940, i32 0], [36 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 32844, i32 32852, i32 32900, i32 32908, i32 32938, i32 32940, i32 0], [36 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 32844, i32 32852, i32 32900, i32 32908, i32 32938, i32 32940, i32 0], [36 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 32844, i32 32852, i32 32900, i32 32908, i32 32938, i32 32940, i32 0], [36 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 32844, i32 32852, i32 32900, i32 32908, i32 32938, i32 32940, i32 0], [36 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 32844, i32 32852, i32 32900, i32 32908, i32 32938, i32 32940, i32 0], [36 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 32960, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { [22 x i32], [40 x i8] } { [22 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32774, i32 32775, i32 32776, i32 32777, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 32839, i32 32959, i32 32960, i32 32964, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { [22 x i32], [40 x i8] } { [22 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32774, i32 32775, i32 32776, i32 32777, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 32839, i32 32959, i32 32960, i32 32964, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { [19 x i32], [52 x i8] } { [19 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32774, i32 32775, i32 32776, i32 32777, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 32901, i32 0], [52 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { [19 x i32], [52 x i8] } { [19 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32774, i32 32775, i32 32776, i32 32777, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 32900, i32 0], [52 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 32900, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 32901, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { [20 x i32], [48 x i8] } { [20 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32774, i32 32775, i32 32776, i32 32777, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 32901, i32 32939, i32 0], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { [22 x i32], [40 x i8] } { [22 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32774, i32 32775, i32 32776, i32 32777, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 32839, i32 32959, i32 32960, i32 32964, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { [18 x i32], [56 x i8] } { [18 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32774, i32 32775, i32 32776, i32 32777, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 0], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { [18 x i32], [56 x i8] } { [18 x i32] [i32 32768, i32 32769, i32 32770, i32 32771, i32 32772, i32 32773, i32 32774, i32 32775, i32 32776, i32 32777, i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 0], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 32938, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 32832, i32 32833, i32 32834, i32 32835, i32 32836, i32 32837, i32 32838, i32 32938, i32 0], [60 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 32839, i32 32960, i32 0], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { [28 x %struct.ni_route_set], [80 x i8] } { [28 x %struct.ni_route_set] [%struct.ni_route_set { i32 32771, i32 0, ptr @.compoundliteral }, %struct.ni_route_set { i32 32772, i32 0, ptr @.compoundliteral.1 }, %struct.ni_route_set { i32 32773, i32 0, ptr @.compoundliteral.2 }, %struct.ni_route_set { i32 32774, i32 0, ptr @.compoundliteral.3 }, %struct.ni_route_set { i32 32776, i32 0, ptr @.compoundliteral.4 }, %struct.ni_route_set { i32 32777, i32 0, ptr @.compoundliteral.5 }, %struct.ni_route_set { i32 32832, i32 0, ptr @.compoundliteral.6 }, %struct.ni_route_set { i32 32833, i32 0, ptr @.compoundliteral.7 }, %struct.ni_route_set { i32 32834, i32 0, ptr @.compoundliteral.8 }, %struct.ni_route_set { i32 32835, i32 0, ptr @.compoundliteral.9 }, %struct.ni_route_set { i32 32836, i32 0, ptr @.compoundliteral.10 }, %struct.ni_route_set { i32 32837, i32 0, ptr @.compoundliteral.11 }, %struct.ni_route_set { i32 32838, i32 0, ptr @.compoundliteral.12 }, %struct.ni_route_set { i32 32839, i32 0, ptr @.compoundliteral.13 }, %struct.ni_route_set { i32 32844, i32 0, ptr @.compoundliteral.14 }, %struct.ni_route_set { i32 32845, i32 0, ptr @.compoundliteral.15 }, %struct.ni_route_set { i32 32852, i32 0, ptr @.compoundliteral.16 }, %struct.ni_route_set { i32 32853, i32 0, ptr @.compoundliteral.17 }, %struct.ni_route_set { i32 32908, i32 0, ptr @.compoundliteral.18 }, %struct.ni_route_set { i32 32909, i32 0, ptr @.compoundliteral.19 }, %struct.ni_route_set { i32 32938, i32 0, ptr @.compoundliteral.20 }, %struct.ni_route_set { i32 32939, i32 0, ptr @.compoundliteral.21 }, %struct.ni_route_set { i32 32940, i32 0, ptr @.compoundliteral.22 }, %struct.ni_route_set { i32 32941, i32 0, ptr @.compoundliteral.23 }, %struct.ni_route_set { i32 32942, i32 0, ptr @.compoundliteral.24 }, %struct.ni_route_set { i32 32951, i32 0, ptr @.compoundliteral.25 }, %struct.ni_route_set { i32 32959, i32 0, ptr @.compoundliteral.26 }, %struct.ni_route_set zeroinitializer], [80 x i8] zeroinitializer }, align 32
@ni_pci_6733_device_routes = dso_local global { %struct.ni_device_routes, [20 x i8] } { %struct.ni_device_routes { ptr @.str, i32 0, ptr @.compoundliteral.27 }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 31, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [19 x i8] c".compoundliteral.1\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [26 x i8] c"ni_pci_6733_device_routes\00", align 1
@___asan_gen_.60 = private constant [65 x i8] c"../drivers/comedi/drivers/ni_routing/ni_device_routes/pci-6733.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 30, i32 25 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @.str, ptr @.compoundliteral, ptr @.compoundliteral.1, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @.compoundliteral.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @.compoundliteral.20, ptr @.compoundliteral.21, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @.compoundliteral.25, ptr @.compoundliteral.26, ptr @.compoundliteral.27, ptr @ni_pci_6733_device_routes], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_pci_6733_device_routes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/ni_routing/ni_device_routes/pci-6733.c", i32 31, i32 12}
!2 = !{ptr @ni_pci_6733_device_routes, !3, !"ni_pci_6733_device_routes", i1 false, i1 false}
!3 = !{!"../drivers/comedi/drivers/ni_routing/ni_device_routes/pci-6733.c", i32 30, i32 25}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
