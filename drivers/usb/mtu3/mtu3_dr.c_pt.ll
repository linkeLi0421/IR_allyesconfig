; ModuleID = '/llk/IR_all_yes/drivers/usb/mtu3/mtu3_dr.c_pt.bc'
source_filename = "../drivers/usb/mtu3/mtu3_dr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ssusb_mtk = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, [4 x %struct.clk_bulk_data], %struct.otg_switch_mtk, i32, i8, i32, i32, i32, i32, ptr, i8, ptr, i32, i32 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.otg_switch_mtk = type { ptr, ptr, %struct.notifier_block, %struct.work_struct, i32, i32, ptr, i8, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_role_switch_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }

@ssusb_set_vbus.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 28, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mtu3\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssusb_set_vbus\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/usb/mtu3/mtu3_dr.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: turn %s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@ssusb_set_vbus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 119, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vbus regulator enable failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ssusb_set_vbus._entry_ptr = internal global ptr @ssusb_set_vbus._entry, section ".printk_index", align 4
@ssusb_otg_switch_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(work_completion)(&otg_sx->dr_work)\00", [60 x i8] zeroinitializer }, align 32
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@ssusb_mode_sw_work.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 37, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ssusb_mode_sw_work\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set role : %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set role : %s\00", [18 x i8] zeroinitializer }, align 32
@ssusb_mode_sw_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.2, i32 171, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"invalid role\0A\00", [18 x i8] zeroinitializer }, align 32
@ssusb_mode_sw_work._entry_ptr = internal global ptr @ssusb_mode_sw_work._entry, section ".printk_index", align 4
@switch_port_to_host.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 18, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"switch_port_to_host\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@ssusb_port0_switch.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 9, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ssusb_port0_switch\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s (switch u%d port0 to %s)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"device\00", [25 x i8] zeroinitializer }, align 32
@switch_port_to_device.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.2, ptr @.str.15, i8 0, i8 23, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"switch_port_to_device\00", [42 x i8] zeroinitializer }, align 32
@ssusb_extcon_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 212, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to register notifier for USB-HOST\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ssusb_extcon_register\00", [42 x i8] zeroinitializer }, align 32
@ssusb_extcon_register._entry_ptr = internal global ptr @ssusb_extcon_register._entry, section ".printk_index", align 4
@ssusb_extcon_register.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 54, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EXTCON_USB_HOST: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 114, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 119, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 313, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 150, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 151, i32 29 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 171, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 73, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 37, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 92, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 212, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [30 x i8] c"../drivers/usb/mtu3/mtu3_dr.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 217, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @ssusb_extcon_register._entry, ptr @ssusb_extcon_register._entry_ptr, ptr @ssusb_mode_sw_work._entry, ptr @ssusb_mode_sw_work._entry_ptr, ptr @ssusb_set_vbus._entry, ptr @ssusb_set_vbus._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ssusb_otg_switch_init.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_set_vbus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_otg_switch_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_mode_sw_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_extcon_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssusb_set_vbus(ptr nocapture noundef readonly %otg_sx, i32 noundef %is_on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %otg_sx, i32 -64
  %0 = ptrtoint ptr %otg_sx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %otg_sx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssusb_set_vbus.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ssusb_set_vbus, %do.end)) #5
          to label %if.then7 [label %do.end], !srcloc !57

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool8.not = icmp eq i32 %is_on, 0
  %cond = select i1 %tobool8.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssusb_set_vbus.__UNIQUE_ID_ddebug297, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond) #5
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool10.not = icmp eq i32 %is_on, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.end
  %call12 = tail call i32 @regulator_enable(ptr noundef nonnull %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.cleanup_crit_edge, label %do.end17

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 @regulator_disable(ptr noundef nonnull %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end17, %if.then11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %do.end17 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then11.cleanup_crit_edge ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssusb_mode_switch(ptr noundef %ssusb, i32 noundef %to_host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dr_mode.i = getelementptr %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 10
  %0 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 3
  br i1 %cmp.not.i, label %if.end.i, label %entry.ssusb_set_mode.exit_crit_edge

entry.ssusb_set_mode.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssusb_set_mode.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %to_host)
  %tobool.not = icmp eq i32 %to_host, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  %desired_role.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9, i32 4
  %2 = ptrtoint ptr %desired_role.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %desired_role.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %3 = load ptr, ptr @system_freezable_wq, align 4
  %dr_work.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9, i32 3
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %dr_work.i) #5
  br label %ssusb_set_mode.exit

ssusb_set_mode.exit:                              ; preds = %if.end.i, %entry.ssusb_set_mode.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssusb_set_force_mode(ptr nocapture noundef readonly %ssusb, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ippc_base = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 3
  %0 = ptrtoint ptr %ippc_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ippc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !58
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
    i32 0, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %3, 6144
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or2 = and i32 %3, -6145
  %and = or i32 %or2, 2048
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and4 = and i32 %3, -6145
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb1, %sw.bb
  %value.0 = phi i32 [ %and4, %sw.bb3 ], [ %and, %sw.bb1 ], [ %or, %sw.bb ]
  %5 = ptrtoint ptr %ippc_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ippc_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %value.0) #5
  %add.ptr.i11 = getelementptr i8, ptr %6, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %7) #5, !srcloc !61
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ssusb_otg_switch_init(ptr noundef %ssusb) local_unnamed_addr #0 align 64 {
entry:
  %role_sx_desc.i = alloca %struct.usb_role_switch_desc, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %otg_switch = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9
  %dr_work = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9, i32 3
  tail call void @__init_work(ptr noundef %dr_work, i32 noundef 0) #5
  %0 = ptrtoint ptr %dr_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %dr_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @ssusb_otg_switch_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry4 = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9, i32 3, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9, i32 3, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9, i32 3, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ssusb_mode_sw_work, ptr %func, align 4
  %manual_drd_enabled = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9, i32 9
  %4 = ptrtoint ptr %manual_drd_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %manual_drd_enabled, align 2, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ssusb_dr_debugfs_init(ptr noundef %ssusb) #5
  br label %if.end10

if.else:                                          ; preds = %entry
  %role_sw_used = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9, i32 7
  %6 = ptrtoint ptr %role_sw_used to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %role_sw_used, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.else8, label %if.then7

if.then7:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %role_sx_desc.i) #5
  %8 = getelementptr inbounds i8, ptr %role_sx_desc.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 32)
  %10 = ptrtoint ptr %role_sw_used to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %role_sw_used, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.then7.ssusb_role_sw_register.exit_crit_edge, label %if.end.i

if.then7.ssusb_role_sw_register.exit_crit_edge:   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssusb_role_sw_register.exit

if.end.i:                                         ; preds = %if.then7
  %12 = ptrtoint ptr %ssusb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ssusb, align 4
  %call2.i = tail call i32 @usb_get_role_switch_default_mode(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 2
  %spec.select.i = select i1 %cmp.i, i32 2, i32 1
  %14 = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9, i32 5
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select.i, ptr %14, align 4
  %set.i = getelementptr inbounds %struct.usb_role_switch_desc, ptr %role_sx_desc.i, i32 0, i32 4
  %16 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ssusb_role_sw_set, ptr %set.i, align 4
  %get.i = getelementptr inbounds %struct.usb_role_switch_desc, ptr %role_sx_desc.i, i32 0, i32 5
  %17 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ssusb_role_sw_get, ptr %get.i, align 4
  %call6.i = tail call ptr @dev_fwnode(ptr noundef %13) #5
  %18 = ptrtoint ptr %role_sx_desc.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call6.i, ptr %role_sx_desc.i, align 4
  %driver_data.i = getelementptr inbounds %struct.usb_role_switch_desc, ptr %role_sx_desc.i, i32 0, i32 7
  %19 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ssusb, ptr %driver_data.i, align 4
  %call7.i = call ptr @usb_role_switch_register(ptr noundef %13, ptr noundef nonnull %role_sx_desc.i) #5
  %role_sw.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9, i32 6
  %20 = ptrtoint ptr %role_sw.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i, ptr %role_sw.i, align 4
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then10.i, label %if.end13.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call7.i to i32
  br label %ssusb_role_sw_register.exit

if.end13.i:                                       ; preds = %if.end.i
  %dr_mode.i.i = getelementptr %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 10
  %22 = ptrtoint ptr %dr_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dr_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp.not.i.i = icmp eq i32 %23, 3
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end13.i.ssusb_role_sw_register.exit_crit_edge

if.end13.i.ssusb_role_sw_register.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssusb_role_sw_register.exit

if.end.i.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %14, align 4
  %desired_role.i.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9, i32 4
  %26 = ptrtoint ptr %desired_role.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %desired_role.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %27 = load ptr, ptr @system_freezable_wq, align 4
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %dr_work) #5
  br label %ssusb_role_sw_register.exit

ssusb_role_sw_register.exit:                      ; preds = %if.end.i.i, %if.end13.i.ssusb_role_sw_register.exit_crit_edge, %if.then10.i, %if.then7.ssusb_role_sw_register.exit_crit_edge
  %retval.0.i = phi i32 [ %21, %if.then10.i ], [ 0, %if.then7.ssusb_role_sw_register.exit_crit_edge ], [ 0, %if.end13.i.ssusb_role_sw_register.exit_crit_edge ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %role_sx_desc.i) #5
  br label %if.end10

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call fastcc i32 @ssusb_extcon_register(ptr noundef %otg_switch)
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %ssusb_role_sw_register.exit, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ %retval.0.i, %ssusb_role_sw_register.exit ], [ %call9, %if.else8 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ssusb_mode_sw_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %add.ptr.i = getelementptr i8, ptr %work, i32 -84
  %u3d = getelementptr i8, ptr %work, i32 -80
  %0 = ptrtoint ptr %u3d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %u3d, align 4
  %desired_role1 = getelementptr i8, ptr %work, i32 44
  %2 = ptrtoint ptr %desired_role1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %desired_role1, align 4
  %is_host = getelementptr i8, ptr %work, i32 64
  %4 = ptrtoint ptr %is_host to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_host, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %default_role = getelementptr i8, ptr %work, i32 48
  %6 = ptrtoint ptr %default_role to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %default_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2 = icmp eq i32 %7, 2
  %spec.store.select = select i1 %cmp2, i32 2, i32 1
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry.if.end4_crit_edge
  %desired_role.0 = phi i32 [ %spec.store.select, %if.then ], [ %3, %entry.if.end4_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %desired_role.0)
  %cmp5 = icmp eq i32 %cond, %desired_role.0
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %do.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssusb_mode_sw_work.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ssusb_mode_sw_work, %do.end)) #5
          to label %if.then14 [label %do.end], !srcloc !57

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %call15 = tail call ptr @usb_role_string(i32 noundef %desired_role.0) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssusb_mode_sw_work.__UNIQUE_ID_ddebug298, ptr noundef %9, ptr noundef nonnull @.str.11, ptr noundef %call15) #5
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  %call18 = tail call ptr @usb_role_string(i32 noundef %desired_role.0) #5
  tail call void (ptr, ptr, ...) @mtu3_dbg_trace(ptr noundef %11, ptr noundef nonnull @.str.12, ptr noundef %call18) #5
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #5
  %14 = zext i32 %desired_role.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %desired_role.0, label %do.end29 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb23
  ]

sw.bb:                                            ; preds = %do.end
  %ippc_base.i = getelementptr i8, ptr %work, i32 -72
  %15 = ptrtoint ptr %ippc_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ippc_base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 80
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %18 = and i32 %17, -1572865
  %19 = or i32 %18, 524288
  %20 = ptrtoint ptr %ippc_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ippc_base.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %add.ptr.i11.i = getelementptr i8, ptr %21, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %19) #5, !srcloc !61
  tail call void @mtu3_stop(ptr noundef %1) #5
  tail call fastcc void @switch_port_to_host(ptr noundef %add.ptr.i)
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %sw.bb.ssusb_set_vbus.exit_crit_edge, label %do.body.i

sw.bb.ssusb_set_vbus.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssusb_set_vbus.exit

do.body.i:                                        ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssusb_set_vbus.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ssusb_mode_sw_work, %do.end.i)) #5
          to label %if.then7.i [label %do.end.i], !srcloc !57

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssusb_set_vbus.__UNIQUE_ID_ddebug297, ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then7.i, %do.body.i
  %call12.i = tail call i32 @regulator_enable(ptr noundef nonnull %23) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %do.end.i.ssusb_set_vbus.exit_crit_edge, label %do.end17.i

do.end.i.ssusb_set_vbus.exit_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssusb_set_vbus.exit

do.end17.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.6) #8
  br label %ssusb_set_vbus.exit

ssusb_set_vbus.exit:                              ; preds = %do.end17.i, %do.end.i.ssusb_set_vbus.exit_crit_edge, %sw.bb.ssusb_set_vbus.exit_crit_edge
  %28 = ptrtoint ptr %is_host to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %is_host, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %do.end
  %ippc_base.i60 = getelementptr i8, ptr %work, i32 -72
  %29 = ptrtoint ptr %ippc_base.i60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ippc_base.i60, align 4
  %add.ptr.i.i61 = getelementptr i8, ptr %30, i32 80
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i61) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %32 = or i32 %31, 1572864
  %33 = ptrtoint ptr %ippc_base.i60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ippc_base.i60, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %add.ptr.i11.i62 = getelementptr i8, ptr %34, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i62, i32 %32) #5, !srcloc !61
  %35 = ptrtoint ptr %is_host to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %is_host, align 4
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 4
  %tobool.not.i64 = icmp eq ptr %37, null
  br i1 %tobool.not.i64, label %sw.bb23.ssusb_set_vbus.exit69_crit_edge, label %do.body.i65

sw.bb23.ssusb_set_vbus.exit69_crit_edge:          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssusb_set_vbus.exit69

do.body.i65:                                      ; preds = %sw.bb23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssusb_set_vbus.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ssusb_mode_sw_work, %do.end.i67)) #5
          to label %if.then7.i66 [label %do.end.i67], !srcloc !57

if.then7.i66:                                     ; preds = %do.body.i65
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssusb_set_vbus.__UNIQUE_ID_ddebug297, ptr noundef %39, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5) #5
  br label %do.end.i67

do.end.i67:                                       ; preds = %if.then7.i66, %do.body.i65
  %call20.i = tail call i32 @regulator_disable(ptr noundef nonnull %37) #5
  br label %ssusb_set_vbus.exit69

ssusb_set_vbus.exit69:                            ; preds = %do.end.i67, %sw.bb23.ssusb_set_vbus.exit69_crit_edge
  tail call fastcc void @switch_port_to_device(ptr noundef %add.ptr.i)
  tail call void @mtu3_start(ptr noundef %1) #5
  br label %sw.epilog

do.end29:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.13) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end29, %ssusb_set_vbus.exit69, %ssusb_set_vbus.exit
  %42 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr.i, align 4
  %call.i70 = tail call i32 @__pm_runtime_idle(ptr noundef %43, i32 noundef 5) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end4.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssusb_dr_debugfs_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ssusb_extcon_register(ptr noundef %otg_sx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %otg_sx, i32 -64
  %edev1 = getelementptr inbounds %struct.otg_switch_mtk, ptr %otg_sx, i32 0, i32 1
  %0 = ptrtoint ptr %edev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edev1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %id_nb = getelementptr inbounds %struct.otg_switch_mtk, ptr %otg_sx, i32 0, i32 2
  %2 = ptrtoint ptr %id_nb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ssusb_id_notifier, ptr %id_nb, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %call3 = tail call i32 @devm_extcon_register_notifier(ptr noundef %4, ptr noundef nonnull %1, i32 noundef 2, ptr noundef %id_nb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @extcon_get_state(ptr noundef nonnull %1, i32 noundef 2) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssusb_extcon_register.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ssusb_extcon_register, %do.end18)) #5
          to label %if.then14 [label %do.end18], !srcloc !57

if.then14:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssusb_extcon_register.__UNIQUE_ID_ddebug299, ptr noundef %8, ptr noundef nonnull @.str.23, i32 noundef %call7) #5
  br label %do.end18

do.end18:                                         ; preds = %if.then14, %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool19.not = icmp eq i32 %call7, 0
  br i1 %tobool19.not, label %if.then20, label %do.end18.cleanup_crit_edge

do.end18.cleanup_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then20:                                        ; preds = %do.end18
  %dr_mode.i = getelementptr i8, ptr %otg_sx, i32 80
  %9 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 3
  br i1 %cmp.not.i, label %if.end.i, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %desired_role.i = getelementptr inbounds %struct.otg_switch_mtk, ptr %otg_sx, i32 0, i32 4
  %11 = ptrtoint ptr %desired_role.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %desired_role.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %12 = load ptr, ptr @system_freezable_wq, align 4
  %dr_work.i = getelementptr inbounds %struct.otg_switch_mtk, ptr %otg_sx, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %dr_work.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then20.cleanup_crit_edge, %do.end18.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %do.end18.cleanup_crit_edge ], [ 0, %if.then20.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ssusb_otg_switch_exit(ptr noundef %ssusb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dr_work = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9, i32 3
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %dr_work) #5
  %role_sw = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9, i32 6
  %0 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %role_sw, align 4
  tail call void @usb_role_switch_unregister(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_dbg_trace(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @switch_port_to_host(ptr noundef %ssusb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switch_port_to_host.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@switch_port_to_host, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %ssusb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ssusb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switch_port_to_host.__UNIQUE_ID_ddebug295, ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ippc_base.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 3
  %2 = ptrtoint ptr %ippc_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ippc_base.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssusb_port0_switch.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@switch_port_to_host, %ssusb_port0_switch.exit)) #5
          to label %if.then.i [label %ssusb_port0_switch.exit], !srcloc !57

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %ssusb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ssusb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssusb_port0_switch.__UNIQUE_ID_ddebug294, ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 2, ptr noundef nonnull @.str.18) #5
  br label %ssusb_port0_switch.exit

ssusb_port0_switch.exit:                          ; preds = %if.then.i, %do.end
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %7 = or i32 %6, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #5, !srcloc !61
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %9 = and i32 %8, -117571585
  %10 = or i32 %9, 67239936
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %10) #5, !srcloc !61
  %is_u3_drd = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9, i32 8
  %11 = ptrtoint ptr %is_u3_drd to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_u3_drd, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool5.not = icmp eq i8 %12, 0
  br i1 %tobool5.not, label %ssusb_port0_switch.exit.if.end8_crit_edge, label %if.then6

ssusb_port0_switch.exit.if.end8_crit_edge:        ; preds = %ssusb_port0_switch.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %ssusb_port0_switch.exit
  %13 = ptrtoint ptr %ippc_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ippc_base.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssusb_port0_switch.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@switch_port_to_host, %ssusb_port0_switch.exit17)) #5
          to label %if.then.i16 [label %ssusb_port0_switch.exit17], !srcloc !57

if.then.i16:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %ssusb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ssusb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssusb_port0_switch.__UNIQUE_ID_ddebug294, ptr noundef %16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 3, ptr noundef nonnull @.str.18) #5
  br label %ssusb_port0_switch.exit17

ssusb_port0_switch.exit17:                        ; preds = %if.then.i16, %if.then6
  %add.ptr.i4.i = getelementptr i8, ptr %14, i32 48
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %18 = or i32 %17, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %18) #5, !srcloc !61
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %20 = and i32 %19, -117440513
  %21 = or i32 %20, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %21) #5, !srcloc !61
  br label %if.end8

if.end8:                                          ; preds = %ssusb_port0_switch.exit17, %ssusb_port0_switch.exit.if.end8_crit_edge
  %check_clk.0 = phi i32 [ 65536, %ssusb_port0_switch.exit17 ], [ 0, %ssusb_port0_switch.exit.if.end8_crit_edge ]
  %call9 = tail call i32 @ssusb_check_clocks(ptr noundef %ssusb, i32 noundef %check_clk.0) #5
  %22 = ptrtoint ptr %is_u3_drd to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_u3_drd, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.then.i20, label %if.end8.toggle_opstate.exit_crit_edge

if.end8.toggle_opstate.exit_crit_edge:            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %toggle_opstate.exit

if.then.i20:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %mac_base.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 2
  %24 = ptrtoint ptr %mac_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mac_base.i, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %25, i32 9228
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %27 = or i32 %26, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18, i32 %27) #5, !srcloc !61
  %28 = ptrtoint ptr %mac_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mac_base.i, align 4
  %add.ptr.i4.i19 = getelementptr i8, ptr %29, i32 9220
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i19) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %31 = or i32 %30, 1073741824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i19, i32 %31) #5, !srcloc !61
  br label %toggle_opstate.exit

toggle_opstate.exit:                              ; preds = %if.then.i20, %if.end8.toggle_opstate.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @switch_port_to_device(ptr noundef %ssusb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @switch_port_to_device.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@switch_port_to_device, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !57

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %ssusb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ssusb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @switch_port_to_device.__UNIQUE_ID_ddebug296, ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.20) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ippc_base.i = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 3
  %2 = ptrtoint ptr %ippc_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ippc_base.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssusb_port0_switch.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@switch_port_to_device, %ssusb_port0_switch.exit)) #5
          to label %if.then.i [label %ssusb_port0_switch.exit], !srcloc !57

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %ssusb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ssusb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssusb_port0_switch.__UNIQUE_ID_ddebug294, ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 2, ptr noundef nonnull @.str.19) #5
  br label %ssusb_port0_switch.exit

ssusb_port0_switch.exit:                          ; preds = %if.then.i, %do.end
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 80
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %7 = or i32 %6, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #5, !srcloc !61
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %9 = and i32 %8, -117571585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #5, !srcloc !61
  %is_u3_drd = getelementptr inbounds %struct.ssusb_mtk, ptr %ssusb, i32 0, i32 9, i32 8
  %10 = ptrtoint ptr %is_u3_drd to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_u3_drd, align 1, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool5.not = icmp eq i8 %11, 0
  br i1 %tobool5.not, label %ssusb_port0_switch.exit.if.end8_crit_edge, label %if.then6

ssusb_port0_switch.exit.if.end8_crit_edge:        ; preds = %ssusb_port0_switch.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %ssusb_port0_switch.exit
  %12 = ptrtoint ptr %ippc_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ippc_base.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ssusb_port0_switch.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@switch_port_to_device, %ssusb_port0_switch.exit16)) #5
          to label %if.then.i15 [label %ssusb_port0_switch.exit16], !srcloc !57

if.then.i15:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %ssusb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ssusb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ssusb_port0_switch.__UNIQUE_ID_ddebug294, ptr noundef %15, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.16, i32 noundef 3, ptr noundef nonnull @.str.19) #5
  br label %ssusb_port0_switch.exit16

ssusb_port0_switch.exit16:                        ; preds = %if.then.i15, %if.then6
  %add.ptr.i4.i = getelementptr i8, ptr %13, i32 48
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %17 = or i32 %16, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %17) #5, !srcloc !61
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #5, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %19 = and i32 %18, -117440513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %19) #5, !srcloc !61
  br label %if.end8

if.end8:                                          ; preds = %ssusb_port0_switch.exit16, %ssusb_port0_switch.exit.if.end8_crit_edge
  %check_clk.0 = phi i32 [ 65536, %ssusb_port0_switch.exit16 ], [ 0, %ssusb_port0_switch.exit.if.end8_crit_edge ]
  %call9 = tail call i32 @ssusb_check_clocks(ptr noundef %ssusb, i32 noundef %check_clk.0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtu3_start(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ssusb_check_clocks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_get_role_switch_default_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssusb_role_sw_set(ptr noundef %sw, i32 noundef %role) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %sw) #5
  %dr_mode.i = getelementptr %struct.ssusb_mtk, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 3
  br i1 %cmp.not.i, label %if.end.i, label %entry.ssusb_set_mode.exit_crit_edge

entry.ssusb_set_mode.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssusb_set_mode.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %desired_role.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call, i32 0, i32 9, i32 4
  %2 = ptrtoint ptr %desired_role.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %role, ptr %desired_role.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %3 = load ptr, ptr @system_freezable_wq, align 4
  %dr_work.i = getelementptr inbounds %struct.ssusb_mtk, ptr %call, i32 0, i32 9, i32 3
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %dr_work.i) #5
  br label %ssusb_set_mode.exit

ssusb_set_mode.exit:                              ; preds = %if.end.i, %entry.ssusb_set_mode.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssusb_role_sw_get(ptr noundef %sw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @usb_role_switch_get_drvdata(ptr noundef %sw) #5
  %is_host = getelementptr inbounds %struct.ssusb_mtk, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %is_host to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_host, align 4, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssusb_id_notifier(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dr_mode.i = getelementptr i8, ptr %nb, i32 72
  %0 = ptrtoint ptr %dr_mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 3
  br i1 %cmp.not.i, label %if.end.i, label %entry.ssusb_set_mode.exit_crit_edge

entry.ssusb_set_mode.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ssusb_set_mode.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event)
  %tobool.not = icmp eq i32 %event, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  %desired_role.i = getelementptr i8, ptr %nb, i32 56
  %2 = ptrtoint ptr %desired_role.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %desired_role.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %3 = load ptr, ptr @system_freezable_wq, align 4
  %dr_work.i = getelementptr i8, ptr %nb, i32 12
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %dr_work.i) #5
  br label %ssusb_set_mode.exit

ssusb_set_mode.exit:                              ; preds = %if.end.i, %entry.ssusb_set_mode.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_extcon_register_notifier(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !19, !20, !21, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !42, !43, !44, !45, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/mtu3/mtu3_dr.c", i32 114, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ssusb_set_vbus.__UNIQUE_ID_ddebug297, !1, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/mtu3/mtu3_dr.c", i32 119, i32 4}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ssusb_set_vbus._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @ssusb_set_vbus._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @ssusb_otg_switch_init.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/usb/mtu3/mtu3_dr.c", i32 313, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/mtu3/mtu3_dr.c", i32 150, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ssusb_mode_sw_work.__UNIQUE_ID_ddebug298, !18, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/mtu3/mtu3_dr.c", i32 151, i32 29}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/mtu3/mtu3_dr.c", i32 171, i32 3}
!25 = !{ptr @ssusb_mode_sw_work._entry, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ssusb_mode_sw_work._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/mtu3/mtu3_dr.c", i32 73, i32 2}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @switch_port_to_host.__UNIQUE_ID_ddebug295, !28, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/mtu3/mtu3_dr.c", i32 37, i32 2}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ssusb_port0_switch.__UNIQUE_ID_ddebug294, !32, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!35 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/mtu3/mtu3_dr.c", i32 92, i32 2}
!39 = !{ptr @switch_port_to_device.__UNIQUE_ID_ddebug296, !38, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/mtu3/mtu3_dr.c", i32 212, i32 3}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ssusb_extcon_register._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ssusb_extcon_register._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/mtu3/mtu3_dr.c", i32 217, i32 2}
!47 = !{ptr @ssusb_extcon_register.__UNIQUE_ID_ddebug299, !46, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2148741088, i64 2148741093, i64 2148741106, i64 2148741150, i64 2148741184, i64 2148741205}
!58 = !{i64 6248872}
!59 = !{i64 2155332072}
!60 = !{i64 2155331259}
!61 = !{i64 6248454}
!62 = !{i8 0, i8 2}
!63 = !{i64 2155332675}
!64 = !{i64 2155332887}
