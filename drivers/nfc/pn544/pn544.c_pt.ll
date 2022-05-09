; ModuleID = '/llk/IR_all_yes/drivers/nfc/pn544/pn544.c_pt.bc'
source_filename = "../drivers/nfc/pn544/pn544.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pn544_hci_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_pn544_hci_probe\09\09\09\09"
module asm "\09.long\09__crc_pn544_hci_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pn544_hci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22pn544_hci_probe\22\09\09\09\09\09"
module asm "__kstrtabns_pn544_hci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pn544_hci_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_pn544_hci_remove\09\09\09\09"
module asm "\09.long\09__crc_pn544_hci_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pn544_hci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22pn544_hci_remove\22\09\09\09\09\09"
module asm "__kstrtabns_pn544_hci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.18 }
%union.anon.18 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nfc_hci_gate = type { i8, i8 }
%struct.nfc_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hw_config = type { [2 x i8], i8 }
%struct.atomic_t = type { i32 }
%struct.uicc_gatelist = type { i8, [2 x i8], i8 }
%struct.nfc_hci_init_data = type { i8, [50 x %struct.nfc_hci_gate], [9 x i8] }
%struct.pn544_hci_info = type { ptr, ptr, ptr, i32, %struct.mutex, i32, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.20 }
%union.anon.20 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nfc_phy_ops = type { ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.1, %union.anon.2, [48 x i8], %union.anon.3, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.5, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { i64 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i32, ptr }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.7, i32, i32, i32, i16, i16, %union.anon.9, i32, %union.anon.10, %union.anon.11, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.7 = type { i32 }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nfc_hci_dev = type { ptr, i32, i8, %struct.mutex, %struct.list_head, %struct.work_struct, %struct.timer_list, ptr, %struct.sk_buff_head, %struct.work_struct, %struct.sk_buff_head, ptr, ptr, %struct.nfc_hci_init_data, ptr, [256 x i8], [128 x %struct.nfc_hci_pipe], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, ptr, ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.90, i32, %struct.spinlock }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.19 }
%union.anon.19 = type { %struct.raw_spinlock }
%struct.nfc_hci_pipe = type { i8, i8 }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.nfc_se = type { %struct.list_head, i32, i16, i16 }

@pn544_hci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&info->info_lock\00", [47 x i8] zeroinitializer }, align 32
@pn544_gates = internal constant { [15 x %struct.nfc_hci_gate], [34 x i8] } { [15 x %struct.nfc_hci_gate] [%struct.nfc_hci_gate { i8 0, i8 -128 }, %struct.nfc_hci_gate { i8 4, i8 -128 }, %struct.nfc_hci_gate { i8 5, i8 -128 }, %struct.nfc_hci_gate { i8 6, i8 -128 }, %struct.nfc_hci_gate { i8 17, i8 -128 }, %struct.nfc_hci_gate { i8 19, i8 -128 }, %struct.nfc_hci_gate { i8 -112, i8 -128 }, %struct.nfc_hci_gate { i8 -96, i8 -128 }, %struct.nfc_hci_gate { i8 -108, i8 -128 }, %struct.nfc_hci_gate { i8 -95, i8 -128 }, %struct.nfc_hci_gate { i8 20, i8 -128 }, %struct.nfc_hci_gate { i8 21, i8 -128 }, %struct.nfc_hci_gate { i8 18, i8 -128 }, %struct.nfc_hci_gate { i8 48, i8 -128 }, %struct.nfc_hci_gate { i8 49, i8 -128 }], [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ID544HCI\00", [23 x i8] zeroinitializer }, align 32
@pn544_hci_ops = internal constant { %struct.nfc_hci_ops, [44 x i8] } { %struct.nfc_hci_ops { ptr @pn544_hci_open, ptr @pn544_hci_close, ptr null, ptr @pn544_hci_ready, ptr @pn544_hci_xmit, ptr @pn544_hci_start_poll, ptr null, ptr @pn544_hci_dep_link_up, ptr @pn544_hci_dep_link_down, ptr @pn544_hci_target_from_gate, ptr @pn544_hci_complete_target_discovered, ptr @pn544_hci_im_transceive, ptr @pn544_hci_tm_send, ptr @pn544_hci_check_presence, ptr @pn544_hci_event_received, ptr null, ptr @pn544_hci_fw_download, ptr @pn544_hci_discover_se, ptr @pn544_hci_enable_se, ptr @pn544_hci_disable_se, ptr null }, [44 x i8] zeroinitializer }, align 32
@pn544_hci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013pn544: Cannot allocate nfc hdev\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pn544_hci_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/nfc/pn544/pn544.c\00", [38 x i8] zeroinitializer }, align 32
@pn544_hci_probe._entry_ptr = internal global ptr @pn544_hci_probe._entry, section ".printk_index", align 4
@__kstrtab_pn544_hci_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_pn544_hci_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_pn544_hci_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pn544_hci_probe to i32), ptr @__kstrtab_pn544_hci_probe, ptr @__kstrtabns_pn544_hci_probe }, section "___ksymtab+pn544_hci_probe", align 4
@__kstrtab_pn544_hci_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_pn544_hci_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_pn544_hci_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pn544_hci_remove to i32), ptr @__kstrtab_pn544_hci_remove, ptr @__kstrtabns_pn544_hci_remove }, section "___ksymtab+pn544_hci_remove", align 4
@__UNIQUE_ID_file275 = internal constant [35 x i8] c"pn544.file=drivers/nfc/pn544/pn544\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [18 x i8] c"pn544.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description277 = internal constant [43 x i8] c"pn544.description=HCI NFC driver for PN544\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pn544_hci_ready.hw_config = internal constant { [40 x %struct.hw_config], [40 x i8] } { [40 x %struct.hw_config] [%struct.hw_config { [2 x i8] c"\9F\9A", i8 0 }, %struct.hw_config { [2 x i8] c"\98\10", i8 -68 }, %struct.hw_config { [2 x i8] c"\9Eq", i8 0 }, %struct.hw_config { [2 x i8] c"\98\09", i8 0 }, %struct.hw_config { [2 x i8] c"\9E\B4", i8 0 }, %struct.hw_config { [2 x i8] c"\9C\01", i8 8 }, %struct.hw_config { [2 x i8] c"\9E\AA", i8 1 }, %struct.hw_config { [2 x i8] c"\9B\D1", i8 23 }, %struct.hw_config { [2 x i8] c"\9B\D2", i8 88 }, %struct.hw_config { [2 x i8] c"\9B\D3", i8 16 }, %struct.hw_config { [2 x i8] c"\9B\D4", i8 71 }, %struct.hw_config { [2 x i8] c"\9B\D5", i8 12 }, %struct.hw_config { [2 x i8] c"\9B\D6", i8 55 }, %struct.hw_config { [2 x i8] c"\9B\DD", i8 51 }, %struct.hw_config { [2 x i8] c"\9B\84", i8 0 }, %struct.hw_config { [2 x i8] c"\99\81", i8 121 }, %struct.hw_config { [2 x i8] c"\991", i8 121 }, %struct.hw_config { [2 x i8] c"\98\00", i8 63 }, %struct.hw_config { [2 x i8] c"\9F\09", i8 2 }, %struct.hw_config { [2 x i8] c"\9F\0A", i8 5 }, %struct.hw_config { [2 x i8] c"\9E\D1", i8 -95 }, %struct.hw_config { [2 x i8] c"\99#", i8 1 }, %struct.hw_config { [2 x i8] c"\9Et", i8 0 }, %struct.hw_config { [2 x i8] c"\9E\90", i8 0 }, %struct.hw_config { [2 x i8] c"\9F(", i8 16 }, %struct.hw_config { [2 x i8] c"\9F5", i8 4 }, %struct.hw_config { [2 x i8] c"\9F6", i8 17 }, %struct.hw_config { [2 x i8] c"\9C1", i8 0 }, %struct.hw_config { [2 x i8] c"\9C2", i8 0 }, %struct.hw_config { [2 x i8] c"\9C\19", i8 10 }, %struct.hw_config { [2 x i8] c"\9C\1A", i8 10 }, %struct.hw_config { [2 x i8] c"\9C\0C", i8 0 }, %struct.hw_config { [2 x i8] c"\9C\0D", i8 0 }, %struct.hw_config { [2 x i8] c"\9C\12", i8 0 }, %struct.hw_config { [2 x i8] c"\9C\13", i8 0 }, %struct.hw_config { [2 x i8] c"\98\A2", i8 9 }, %struct.hw_config { [2 x i8] c"\98\93", i8 0 }, %struct.hw_config { [2 x i8] c"\98}", i8 8 }, %struct.hw_config { [2 x i8] c"\98~", i8 0 }, %struct.hw_config { [2 x i8] c"\9F\C8", i8 0 }], [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FULL VERSION SOFTWARE INFO: \00", [35 x i8] zeroinitializer }, align 32
@pn544_hci_start_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016pn544: HCI NFC driver for PN544: %s protocols 0x%x 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pn544_hci_start_poll\00", [43 x i8] zeroinitializer }, align 32
@pn544_hci_start_poll._entry_ptr = internal global ptr @pn544_hci_start_poll._entry, section ".printk_index", align 4
@pn544_hci_start_poll.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.8, ptr @.str.4, ptr @.str.10, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pn544\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"generate local bytes %p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pn544: generate local bytes %p\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"remote gb: \00", [20 x i8] zeroinitializer }, align 32
@pn544_hci_im_transceive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016pn544: HCI NFC driver for PN544: %s for gate=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pn544_hci_im_transceive\00", [40 x i8] zeroinitializer }, align 32
@pn544_hci_im_transceive._entry_ptr = internal global ptr @pn544_hci_im_transceive._entry, section ".printk_index", align 4
@pn544_hci_check_presence.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pn544_hci_check_presence\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"supported protocol %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pn544: supported protocol %d\0A\00", [34 x i8] zeroinitializer }, align 32
@pn544_hci_event_received.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.18, ptr @.str.4, ptr @.str.19, i8 0, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pn544_hci_event_received\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hci event %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pn544: hci event %d\0A\00", [43 x i8] zeroinitializer }, align 32
@pn544_hci_event_received.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.18, ptr @.str.4, ptr @.str.21, i8 0, i8 -68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"data0 %d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pn544: data0 %d\0A\00", [47 x i8] zeroinitializer }, align 32
@pn544_hci_enable_se.uicc_gatelist = internal global { [4 x %struct.uicc_gatelist], [16 x i8] } { [4 x %struct.uicc_gatelist] [%struct.uicc_gatelist { i8 0, [2 x i8] c"\9E\D9", i8 35 }, %struct.uicc_gatelist { i8 0, [2 x i8] c"\9E\DA", i8 33 }, %struct.uicc_gatelist { i8 0, [2 x i8] c"\9E\DB", i8 34 }, %struct.uicc_gatelist { i8 0, [2 x i8] c"\9E\DC", i8 36 }], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 20, i64 21, i64 48]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 7, i64 10]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 8, i64 19, i64 20, i64 21, i64 48]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 7, i64 10]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 49]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 923, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"pn544_gates\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 88, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 933, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"pn544_hci_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 883, i32 33 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 947, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [10 x i8] c"hw_config\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 171, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 316, i32 17 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 316, i32 29 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 343, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 382, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 459, i32 29 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 609, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 684, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 722, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 753, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant [14 x i8] c"uicc_gatelist\00", align 1
@___asan_gen_.121 = private constant [29 x i8] c"../drivers/nfc/pn544/pn544.c\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 817, i32 4 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_description277, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__ksymtab_pn544_hci_probe, ptr @__ksymtab_pn544_hci_remove, ptr @pn544_hci_im_transceive._entry, ptr @pn544_hci_im_transceive._entry_ptr, ptr @pn544_hci_probe._entry, ptr @pn544_hci_probe._entry_ptr, ptr @pn544_hci_start_poll._entry, ptr @pn544_hci_start_poll._entry_ptr, ptr @pn544_hci_probe.__key, ptr @.str, ptr @pn544_gates, ptr @.str.1, ptr @pn544_hci_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @pn544_hci_ready.hw_config, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @pn544_hci_enable_se.uicc_gatelist], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_gates to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_ready.hw_config to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_start_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_im_transceive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_enable_se.uicc_gatelist to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pn544_hci_probe(ptr noundef %phy_id, ptr noundef %phy_ops, ptr noundef %llc_name, i32 noundef %phy_headroom, i32 noundef %phy_tailroom, i32 noundef %phy_payload, ptr noundef %fw_download, ptr nocapture noundef writeonly %hdev) #0 align 64 {
entry:
  %init_data = alloca %struct.nfc_hci_init_data, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 110, ptr nonnull %init_data) #6
  %0 = getelementptr inbounds i8, ptr %init_data, i32 31
  %1 = call ptr @memset(ptr %0, i32 255, i32 70)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 124) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %phy_ops, ptr %call7.i.i, align 8
  %phy_id2 = getelementptr inbounds %struct.pn544_hci_info, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %phy_id2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %phy_id, ptr %phy_id2, align 4
  %fw_download3 = getelementptr inbounds %struct.pn544_hci_info, ptr %call7.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %fw_download3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fw_download, ptr %fw_download3, align 8
  %state = getelementptr inbounds %struct.pn544_hci_info, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 4
  %info_lock = getelementptr inbounds %struct.pn544_hci_info, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %info_lock, ptr noundef nonnull @.str, ptr noundef nonnull @pn544_hci_probe.__key) #6
  %7 = ptrtoint ptr %init_data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 15, ptr %init_data, align 1
  %gates = getelementptr inbounds %struct.nfc_hci_init_data, ptr %init_data, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %gates, ptr @pn544_gates, i32 30)
  %session_id = getelementptr inbounds %struct.nfc_hci_init_data, ptr %init_data, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %session_id, ptr @.str.1, i32 9)
  %add = add i32 %phy_headroom, 2
  %call6 = call ptr @nfc_hci_allocate_device(ptr noundef nonnull @pn544_hci_ops, ptr noundef nonnull %init_data, i32 noundef 0, i32 noundef 126, ptr noundef %llc_name, i32 noundef %add, i32 noundef %phy_tailroom, i32 noundef %phy_payload) #6
  %hdev7 = getelementptr inbounds %struct.pn544_hci_info, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hdev7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %hdev7, align 8
  %tobool9.not = icmp eq ptr %call6, null
  br i1 %tobool9.not, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %err_alloc_hdev

if.end15:                                         ; preds = %if.end
  call void @nfc_hci_set_clientdata(ptr noundef nonnull %call6, ptr noundef nonnull %call7.i.i) #6
  %11 = ptrtoint ptr %hdev7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev7, align 8
  %call18 = call i32 @nfc_hci_register_device(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  %13 = ptrtoint ptr %hdev7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev7, align 8
  br i1 %tobool19.not, label %if.end21, label %err_regdev

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %hdev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %hdev, align 4
  br label %cleanup

err_regdev:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  call void @nfc_hci_free_device(ptr noundef %14) #6
  br label %err_alloc_hdev

err_alloc_hdev:                                   ; preds = %err_regdev, %do.end13
  %r.0 = phi i32 [ %call18, %err_regdev ], [ -12, %do.end13 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_hdev, %if.end21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ %r.0, %err_alloc_hdev ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 110, ptr nonnull %init_data) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_hci_allocate_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_set_clientdata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pn544_hci_remove(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #6
  tail call void @nfc_hci_unregister_device(ptr noundef %hdev) #6
  tail call void @nfc_hci_free_device(ptr noundef %hdev) #6
  tail call void @kfree(ptr noundef %call) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_hci_get_clientdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_open(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #6
  %info_lock = getelementptr inbounds %struct.pn544_hci_info, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #6
  %state = getelementptr inbounds %struct.pn544_hci_info, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %enable = getelementptr inbounds %struct.nfc_phy_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable, align 4
  %phy_id = getelementptr inbounds %struct.pn544_hci_info, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_id, align 4
  %call1 = tail call i32 %5(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %state, align 4
  br label %out

out:                                              ; preds = %if.then3, %if.end.out_crit_edge, %entry.out_crit_edge
  %r.0 = phi i32 [ 0, %if.then3 ], [ %call1, %if.end.out_crit_edge ], [ -16, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %info_lock) #6
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn544_hci_close(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #6
  %info_lock = getelementptr inbounds %struct.pn544_hci_info, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #6
  %state = getelementptr inbounds %struct.pn544_hci_info, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %disable = getelementptr inbounds %struct.nfc_phy_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable, align 4
  %phy_id = getelementptr inbounds %struct.pn544_hci_info, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_id, align 4
  tail call void %5(ptr noundef %7) #6
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %state, align 4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %info_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_ready(ptr noundef %hdev) #0 align 64 {
entry:
  %skb = alloca ptr, align 4
  %res_skb = alloca ptr, align 4
  %param = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #6
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res_skb) #6
  %1 = ptrtoint ptr %res_skb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %res_skb, align 4, !annotation !72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %param) #6
  %2 = getelementptr inbounds [4 x i8], ptr %param, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %param, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %param, i32 0, i32 3
  %5 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %param, align 1
  br label %while.body

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %entry
  %dec103 = phi i32 [ 39, %entry ], [ %dec, %if.end16.while.body_crit_edge ]
  %p.0102 = phi ptr [ @pn544_hci_ready.hw_config, %entry ], [ %incdec.ptr, %if.end16.while.body_crit_edge ]
  %6 = ptrtoint ptr %p.0102 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %p.0102, align 1
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %2, align 1
  %arrayidx4 = getelementptr [2 x i8], ptr %p.0102, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx4, align 1
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %3, align 1
  %value = getelementptr inbounds %struct.hw_config, ptr %p.0102, i32 0, i32 1
  %12 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %value, align 1
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %4, align 1
  %call = call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext -112, i8 noundef zeroext 63, ptr noundef nonnull %param, i32 noundef 4, ptr noundef nonnull %res_skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %while.body
  %15 = ptrtoint ptr %res_skb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %res_skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp7.not = icmp eq i32 %18, 1
  br i1 %cmp7.not, label %if.end9, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 19
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 1
  %23 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %value, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp13.not = icmp eq i8 %22, %24
  br i1 %cmp13.not, label %if.end16, label %if.end9.cleanup.sink.split_crit_edge

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end9
  call void @kfree_skb_reason(ptr noundef %16, i32 noundef 0) #6
  %incdec.ptr = getelementptr %struct.hw_config, ptr %p.0102, i32 1
  %dec = add nsw i32 %dec103, -1
  %tobool.not = icmp eq i32 %dec103, 0
  br i1 %tobool.not, label %while.end, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %if.end16
  %25 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %param, align 1
  %call19 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef nonnull %param, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %while.end.cleanup_crit_edge, label %if.end23

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %while.end
  %26 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 61, ptr %param, align 1
  %call26 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext -112, i8 noundef zeroext 2, ptr noundef nonnull %param, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end23.cleanup_crit_edge, label %if.end30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %27 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %param, align 1
  %call33 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 19, i8 noundef zeroext 16, ptr noundef nonnull %param, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end30.cleanup_crit_edge, label %if.end37

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  %call38 = call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 19, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end37.cleanup_crit_edge, label %if.end42

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %28 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %param, align 1
  %call45 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext -108, i8 noundef zeroext 9, ptr noundef nonnull %param, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end42.cleanup_crit_edge, label %if.end49

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49:                                         ; preds = %if.end42
  %29 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %param, align 1
  %call52 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext -108, i8 noundef zeroext 6, ptr noundef nonnull %param, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end49.cleanup_crit_edge, label %if.end56

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56:                                         ; preds = %if.end49
  %call57 = call i32 @nfc_hci_get_param(ptr noundef %hdev, i8 noundef zeroext 5, i8 noundef zeroext 16, ptr noundef nonnull %skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end56.cleanup_crit_edge, label %if.end61

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  %30 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skb, align 4
  %len62 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %len62 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %33)
  %cmp63.not = icmp eq i32 %33, 11
  br i1 %cmp63.not, label %if.end66, label %if.end61.cleanup.sink.split_crit_edge

if.end61.cleanup.sink.split_crit_edge:            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end66:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %data67 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 19
  %34 = ptrtoint ptr %data67 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data67, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %35, i32 noundef 11, i1 noundef zeroext false) #6
  %36 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %skb, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end66, %if.end61.cleanup.sink.split_crit_edge, %if.end9.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %37, %if.end66 ], [ %31, %if.end61.cleanup.sink.split_crit_edge ], [ %16, %if.end.cleanup.sink.split_crit_edge ], [ %16, %if.end9.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end66 ], [ -22, %if.end61.cleanup.sink.split_crit_edge ], [ -5, %if.end9.cleanup.sink.split_crit_edge ], [ -71, %if.end.cleanup.sink.split_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %.sink, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end56.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %while.end.cleanup_crit_edge, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %while.end.cleanup_crit_edge ], [ %call26, %if.end23.cleanup_crit_edge ], [ %call33, %if.end30.cleanup_crit_edge ], [ %call38, %if.end37.cleanup_crit_edge ], [ %call45, %if.end42.cleanup_crit_edge ], [ %call52, %if.end49.cleanup_crit_edge ], [ %call57, %if.end56.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ %call, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %param) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res_skb) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_xmit(ptr noundef %hdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %phy_id = getelementptr inbounds %struct.pn544_hci_info, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_id, align 4
  %call1 = tail call i32 %3(ptr noundef %5, ptr noundef %skb) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_start_poll(ptr noundef %hdev, i32 noundef %im_protocols, i32 noundef %tm_protocols) #0 align 64 {
entry:
  %phases = alloca i8, align 1
  %duration = alloca [2 x i8], align 1
  %activated = alloca i8, align 1
  %i_mode = alloca i8, align 1
  %t_mode = alloca i8, align 1
  %t_merge = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %phases) #6
  %0 = ptrtoint ptr %phases to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %phases, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %duration) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %activated) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %i_mode) #6
  %1 = ptrtoint ptr %i_mode to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 63, ptr %i_mode, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t_mode) #6
  %2 = ptrtoint ptr %t_mode to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %t_mode, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %t_merge) #6
  %3 = ptrtoint ptr %t_merge to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %t_merge, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %im_protocols, i32 noundef %tm_protocols) #10
  %call1 = tail call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 19, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds [2 x i8], ptr %duration, i32 0, i32 1
  %5 = ptrtoint ptr %duration to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 24, ptr %duration, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 106, ptr %4, align 1
  %call3 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext -108, i8 noundef zeroext 7, ptr noundef nonnull %duration, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %activated to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %activated, align 1
  %call7 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext -108, i8 noundef zeroext 9, ptr noundef nonnull %activated, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %and = and i32 %im_protocols, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end10.if.end13_crit_edge, label %if.then11

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %phases to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %phases, align 1
  %10 = or i8 %9, 1
  store i8 %10, ptr %phases, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end10.if.end13_crit_edge
  %and14 = and i32 %im_protocols, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end23_crit_edge, label %if.then16

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %phases to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %phases, align 1
  %13 = or i8 %12, 12
  store i8 %13, ptr %phases, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then16, %if.end13.if.end23_crit_edge
  %14 = ptrtoint ptr %phases to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %phases, align 1
  %16 = or i8 %15, 32
  store i8 %16, ptr %phases, align 1
  %call27 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext -108, i8 noundef zeroext 6, ptr noundef nonnull %phases, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end23.cleanup_crit_edge, label %if.end31

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  %or32 = or i32 %tm_protocols, %im_protocols
  %and33 = and i32 %or32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end31.if.end58_crit_edge, label %if.then35

if.end31.if.end58_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then35:                                        ; preds = %if.end31
  %17 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdev, align 4
  %gb_len = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 30
  %call36 = call ptr @nfc_get_local_general_bytes(ptr noundef %18, ptr noundef %gb_len) #6
  %gb = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 29
  %19 = ptrtoint ptr %gb to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call36, ptr %gb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pn544_hci_start_poll.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pn544_hci_start_poll, %if.then43)) #6
          to label %do.end47 [label %if.then43], !srcloc !73

if.then43:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %gb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gb, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pn544_hci_start_poll.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.11, ptr noundef %21) #6
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %if.then35
  %22 = ptrtoint ptr %gb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gb, align 4
  %cmp49 = icmp eq ptr %23, null
  br i1 %cmp49, label %do.end47.if.end106_crit_edge, label %lor.lhs.false

do.end47.if.end106_crit_edge:                     ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

lor.lhs.false:                                    ; preds = %do.end47
  %24 = ptrtoint ptr %gb_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp52 = icmp eq i32 %25, 0
  br i1 %cmp52, label %lor.lhs.false.if.end106_crit_edge, label %lor.lhs.false.if.end58_crit_edge

lor.lhs.false.if.end58_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

lor.lhs.false.if.end106_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.end58:                                         ; preds = %lor.lhs.false.if.end58_crit_edge, %if.end31.if.end58_crit_edge
  %and59 = and i32 %im_protocols, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end85_crit_edge, label %if.then61

if.end58.if.end85_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then61:                                        ; preds = %if.end58
  %call62 = call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 48, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then61.cleanup_crit_edge, label %if.end66

if.then61.cleanup_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end66:                                         ; preds = %if.then61
  %call67 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 48, i8 noundef zeroext 1, ptr noundef nonnull %i_mode, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.end66.cleanup_crit_edge, label %if.end71

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end71:                                         ; preds = %if.end66
  %gb72 = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 29
  %26 = ptrtoint ptr %gb72 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gb72, align 4
  %gb_len73 = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 30
  %28 = ptrtoint ptr %gb_len73 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gb_len73, align 4
  %call74 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 48, i8 noundef zeroext 2, ptr noundef %27, i32 noundef %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.end71.cleanup_crit_edge, label %if.end78

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end78:                                         ; preds = %if.end71
  %call79 = call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 48, i8 noundef zeroext 16, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.then82, label %if.end78.if.end85_crit_edge

if.end78.if.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end85

if.then82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %call83 = call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 48, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0) #6
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.end78.if.end85_crit_edge, %if.end58.if.end85_crit_edge
  %and86 = and i32 %tm_protocols, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end85.if.end106_crit_edge, label %if.then88

if.end85.if.end106_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then88:                                        ; preds = %if.end85
  %call89 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 49, i8 noundef zeroext 1, ptr noundef nonnull %t_mode, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.then88.cleanup_crit_edge, label %if.end93

if.then88.cleanup_crit_edge:                      ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end93:                                         ; preds = %if.then88
  %gb94 = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 29
  %30 = ptrtoint ptr %gb94 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gb94, align 4
  %gb_len95 = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 30
  %32 = ptrtoint ptr %gb_len95 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gb_len95, align 4
  %call96 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 49, i8 noundef zeroext 3, ptr noundef %31, i32 noundef %33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %if.end93.cleanup_crit_edge, label %if.end100

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end100:                                        ; preds = %if.end93
  %call101 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 49, i8 noundef zeroext 13, ptr noundef nonnull %t_merge, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.end100.cleanup_crit_edge, label %if.end100.if.end106_crit_edge

if.end100.if.end106_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end106:                                        ; preds = %if.end100.if.end106_crit_edge, %if.end85.if.end106_crit_edge, %lor.lhs.false.if.end106_crit_edge, %do.end47.if.end106_crit_edge
  %call107 = call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 19, i8 noundef zeroext 16, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %if.then110, label %if.end106.cleanup_crit_edge

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then110:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  %call111 = call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 19, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then110, %if.end106.cleanup_crit_edge, %if.end100.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %if.then88.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.then61.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %if.end6.cleanup_crit_edge ], [ %call27, %if.end23.cleanup_crit_edge ], [ %call62, %if.then61.cleanup_crit_edge ], [ %call67, %if.end66.cleanup_crit_edge ], [ %call74, %if.end71.cleanup_crit_edge ], [ %call89, %if.then88.cleanup_crit_edge ], [ %call96, %if.end93.cleanup_crit_edge ], [ %call101, %if.end100.cleanup_crit_edge ], [ %call107, %if.then110 ], [ %call107, %if.end106.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t_merge) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %t_mode) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %i_mode) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %activated) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %duration) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %phases) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_dep_link_up(ptr noundef %hdev, ptr nocapture noundef readonly %target, i8 noundef zeroext %comm_mode, ptr nocapture noundef readnone %gb, i32 noundef %gb_len) #0 align 64 {
entry:
  %rgb_skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rgb_skb) #6
  %0 = ptrtoint ptr %rgb_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rgb_skb, align 4
  %hci_reader_gate = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 12
  %1 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hci_reader_gate, align 1
  %call = call i32 @nfc_hci_get_param(ptr noundef %hdev, i8 noundef zeroext %2, i8 noundef zeroext 3, ptr noundef nonnull %rgb_skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %rgb_skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rgb_skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %7 = add i32 %6, -49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -48, i32 %7)
  %8 = icmp ult i32 %7, -48
  br i1 %8, label %if.end.exit_crit_edge, label %if.end5

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.12, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %10, i32 noundef %6, i1 noundef zeroext true) #6
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 4
  %13 = ptrtoint ptr %rgb_skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rgb_skb, align 4
  %data7 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 19
  %15 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data7, align 4
  %len8 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %17 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len8, align 4
  %conv = trunc i32 %18 to i8
  %call9 = call i32 @nfc_set_remote_general_bytes(ptr noundef %12, ptr noundef %16, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end5.exit_crit_edge

if.end5.exit_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hdev, align 4
  %21 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %target, align 4
  %call14 = call i32 @nfc_dep_link_is_up(ptr noundef %20, i32 noundef %22, i8 noundef zeroext %comm_mode, i8 noundef zeroext 0) #6
  br label %exit

exit:                                             ; preds = %if.then12, %if.end5.exit_crit_edge, %if.end.exit_crit_edge
  %r.0 = phi i32 [ %call14, %if.then12 ], [ %call9, %if.end5.exit_crit_edge ], [ -71, %if.end.exit_crit_edge ]
  %23 = ptrtoint ptr %rgb_skb to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rgb_skb, align 4
  call void @kfree_skb_reason(ptr noundef %24, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rgb_skb) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_dep_link_down(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 48, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0) #6
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pn544_hci_target_from_gate(ptr nocapture noundef readnone %hdev, i8 noundef zeroext %gate, ptr nocapture noundef writeonly %target) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %gate to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %gate, label %entry.return_crit_edge [
    i8 20, label %sw.bb
    i8 21, label %sw.bb1
    i8 48, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %supported_protocols = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 1
  %1 = ptrtoint ptr %supported_protocols to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %supported_protocols, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %supported_protocols2 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 1
  %2 = ptrtoint ptr %supported_protocols2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %supported_protocols2, align 4
  %sens_res = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 2
  %3 = ptrtoint ptr %sens_res to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 3072, ptr %sens_res, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %supported_protocols4 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 1
  %4 = ptrtoint ptr %supported_protocols4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32, ptr %supported_protocols4, align 4
  br label %return

return:                                           ; preds = %sw.bb3, %sw.bb1, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -71, %entry.return_crit_edge ], [ 0, %sw.bb3 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_complete_target_discovered(ptr noundef %hdev, i8 noundef zeroext %gate, ptr noundef %target) #0 align 64 {
entry:
  %uid_skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uid_skb) #6
  %0 = ptrtoint ptr %uid_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %uid_skb, align 4, !annotation !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %gate)
  %cmp = icmp eq i8 %gate, 48
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %supported_protocols = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 1
  %1 = ptrtoint ptr %supported_protocols to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %supported_protocols, align 4
  %and = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %call = tail call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext 48, i8 noundef zeroext 19, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.then2.cleanup_crit_edge, label %if.end6

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %hci_reader_gate = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 12
  %3 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 48, ptr %hci_reader_gate, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end
  %and8 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else28, label %if.then10

if.then10:                                        ; preds = %if.else
  %nfcid1_len = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 4
  %4 = ptrtoint ptr %nfcid1_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nfcid1_len, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %5, label %if.then10.cleanup_crit_edge [
    i8 4, label %if.then10.if.end24_crit_edge
    i8 7, label %if.then10.if.end24_crit_edge104
    i8 10, label %if.then10.if.end24_crit_edge105
  ]

if.then10.if.end24_crit_edge105:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then10.if.end24_crit_edge104:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then10.if.end24_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.then10.if.end24_crit_edge, %if.then10.if.end24_crit_edge104, %if.then10.if.end24_crit_edge105
  %nfcid1 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 5
  %conv26 = zext i8 %5 to i32
  %call27 = tail call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext 19, i8 noundef zeroext 50, ptr noundef %nfcid1, i32 noundef %conv26, ptr noundef null) #6
  br label %cleanup

if.else28:                                        ; preds = %if.else
  %and30 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.else64, label %if.then32

if.then32:                                        ; preds = %if.else28
  %call33 = call i32 @nfc_hci_get_param(ptr noundef %hdev, i8 noundef zeroext 20, i8 noundef zeroext 4, ptr noundef nonnull %uid_skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then32.cleanup_crit_edge, label %if.end37

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.then32
  %7 = ptrtoint ptr %uid_skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uid_skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %cmp38.not = icmp eq i32 %10, 8
  br i1 %cmp38.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree_skb_reason(ptr noundef %8, i32 noundef 0) #6
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %data = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp43 = icmp eq i8 %14, 1
  br i1 %cmp43, label %land.lhs.true45, label %if.end41.if.else59_crit_edge

if.end41.if.else59_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else59

land.lhs.true45:                                  ; preds = %if.end41
  %arrayidx47 = getelementptr i8, ptr %12, i32 1
  %15 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %16)
  %cmp49 = icmp eq i8 %16, -2
  br i1 %cmp49, label %if.then51, label %land.lhs.true45.if.else59_crit_edge

land.lhs.true45.if.else59_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else59

if.then51:                                        ; preds = %land.lhs.true45
  call void @kfree_skb_reason(ptr noundef %8, i32 noundef 0) #6
  %call52 = call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext 48, i8 noundef zeroext 19, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.then51.cleanup_crit_edge, label %if.end56

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %supported_protocols to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 32, ptr %supported_protocols, align 4
  %hci_reader_gate58 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 12
  %18 = ptrtoint ptr %hci_reader_gate58 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 48, ptr %hci_reader_gate58, align 1
  br label %cleanup

if.else59:                                        ; preds = %land.lhs.true45.if.else59_crit_edge, %if.end41.if.else59_crit_edge
  %call62 = call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext 20, i8 noundef zeroext 50, ptr noundef %12, i32 noundef 8, ptr noundef null) #6
  %19 = ptrtoint ptr %uid_skb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %uid_skb, align 4
  call void @kfree_skb_reason(ptr noundef %20, i32 noundef 0) #6
  br label %cleanup

if.else64:                                        ; preds = %if.else28
  %and66 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.else64.cleanup_crit_edge, label %if.then68

if.else64.cleanup_crit_edge:                      ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then68:                                        ; preds = %if.else64
  %sens_res = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 2
  %21 = ptrtoint ptr %sens_res to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %sens_res, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17411, i16 %22)
  %cmp70 = icmp eq i16 %22, 17411
  br i1 %cmp70, label %if.then72, label %if.then68.cleanup_crit_edge

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then72:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  %call73 = tail call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext 19, i8 noundef zeroext 18, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %if.then68.cleanup_crit_edge, %if.else64.cleanup_crit_edge, %if.else59, %if.end56, %if.then51.cleanup_crit_edge, %if.then40, %if.then32.cleanup_crit_edge, %if.end24, %if.then10.cleanup_crit_edge, %if.end6, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -71, %if.then40 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then2.cleanup_crit_edge ], [ -71, %if.then10.cleanup_crit_edge ], [ %call33, %if.then32.cleanup_crit_edge ], [ %call52, %if.then51.cleanup_crit_edge ], [ %call, %if.end6 ], [ %call27, %if.end24 ], [ %call52, %if.end56 ], [ %call62, %if.else59 ], [ %call73, %if.then72 ], [ 0, %if.then68.cleanup_crit_edge ], [ 0, %if.else64.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid_skb) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_im_transceive(ptr noundef %hdev, ptr nocapture noundef readonly %target, ptr noundef %skb, ptr noundef %cb, ptr noundef %cb_context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #6
  %hci_reader_gate = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 12
  %0 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hci_reader_gate, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %conv) #10
  %2 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hci_reader_gate, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %3, label %entry.cleanup_crit_edge [
    i8 19, label %sw.bb
    i8 20, label %sw.bb23
    i8 21, label %sw.bb30
    i8 48, label %sw.bb35
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %supported_protocols = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 1
  %5 = ptrtoint ptr %supported_protocols to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %supported_protocols, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.then

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %8)
  %cmp = icmp eq i32 %8, 12
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %13 = and i8 %12, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %13)
  %switch = icmp eq i8 %13, 96
  br i1 %switch, label %if.then13, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %10, i32 2
  %add.ptr16 = getelementptr i8, ptr %10, i32 8
  %14 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %uid.sroa.0.0.copyload = load i8, ptr %add.ptr16, align 1
  %uid.sroa.5.0.add.ptr16.sroa_idx = getelementptr i8, ptr %10, i32 9
  %15 = ptrtoint ptr %uid.sroa.5.0.add.ptr16.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %uid.sroa.5.0.copyload = load i8, ptr %uid.sroa.5.0.add.ptr16.sroa_idx, align 1
  %uid.sroa.6.0.add.ptr16.sroa_idx = getelementptr i8, ptr %10, i32 10
  %16 = ptrtoint ptr %uid.sroa.6.0.add.ptr16.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %uid.sroa.6.0.copyload = load i8, ptr %uid.sroa.6.0.add.ptr16.sroa_idx, align 1
  %uid.sroa.7.0.add.ptr16.sroa_idx = getelementptr i8, ptr %10, i32 11
  %17 = ptrtoint ptr %uid.sroa.7.0.add.ptr16.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %uid.sroa.7.0.copyload = load i8, ptr %uid.sroa.7.0.add.ptr16.sroa_idx, align 1
  %add.ptr17 = getelementptr i8, ptr %10, i32 6
  %18 = call ptr @memmove(ptr %add.ptr17, ptr %add.ptr, i32 6)
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %uid.sroa.0.0.copyload, ptr %add.ptr, align 1
  %uid.sroa.5.0.data14.0.43.sroa_idx = getelementptr i8, ptr %10, i32 3
  %20 = ptrtoint ptr %uid.sroa.5.0.data14.0.43.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %uid.sroa.5.0.copyload, ptr %uid.sroa.5.0.data14.0.43.sroa_idx, align 1
  %uid.sroa.6.0.data14.0.43.sroa_idx = getelementptr i8, ptr %10, i32 4
  %21 = ptrtoint ptr %uid.sroa.6.0.data14.0.43.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %uid.sroa.6.0.copyload, ptr %uid.sroa.6.0.data14.0.43.sroa_idx, align 1
  %uid.sroa.7.0.data14.0.43.sroa_idx = getelementptr i8, ptr %10, i32 5
  %22 = ptrtoint ptr %uid.sroa.7.0.data14.0.43.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %uid.sroa.7.0.copyload, ptr %uid.sroa.7.0.data14.0.43.sroa_idx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then13, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %23 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hci_reader_gate, align 1
  %data20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data20, align 4
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %call22 = tail call i32 @nfc_hci_send_cmd_async(ptr noundef %hdev, i8 noundef zeroext %24, i8 noundef zeroext 33, ptr noundef %26, i32 noundef %28, ptr noundef %cb, ptr noundef %cb_context) #6
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call24 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #6
  %29 = ptrtoint ptr %call24 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %call24, align 1
  %call25 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #6
  %30 = ptrtoint ptr %call25 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %call25, align 1
  %async_cb_type = getelementptr inbounds %struct.pn544_hci_info, ptr %call, i32 0, i32 5
  %31 = ptrtoint ptr %async_cb_type to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %async_cb_type, align 4
  %async_cb = getelementptr inbounds %struct.pn544_hci_info, ptr %call, i32 0, i32 6
  %32 = ptrtoint ptr %async_cb to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cb, ptr %async_cb, align 4
  %async_cb_context = getelementptr inbounds %struct.pn544_hci_info, ptr %call, i32 0, i32 7
  %33 = ptrtoint ptr %async_cb_context to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %cb_context, ptr %async_cb_context, align 4
  %34 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hci_reader_gate, align 1
  %data27 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %36 = ptrtoint ptr %data27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data27, align 4
  %len28 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %38 = ptrtoint ptr %len28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len28, align 4
  %call29 = tail call i32 @nfc_hci_send_cmd_async(ptr noundef %hdev, i8 noundef zeroext %35, i8 noundef zeroext 32, ptr noundef %37, i32 noundef %39, ptr noundef nonnull @pn544_hci_data_exchange_cb, ptr noundef %call) #6
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data32 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %40 = ptrtoint ptr %data32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data32, align 4
  %len33 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %42 = ptrtoint ptr %len33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len33, align 4
  %call34 = tail call i32 @nfc_hci_send_cmd_async(ptr noundef %hdev, i8 noundef zeroext 21, i8 noundef zeroext 35, ptr noundef %41, i32 noundef %43, ptr noundef %cb, ptr noundef %cb_context) #6
  br label %cleanup

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #6
  %44 = ptrtoint ptr %call36 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %call36, align 1
  %45 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %hci_reader_gate, align 1
  %data38 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %47 = ptrtoint ptr %data38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data38, align 4
  %len39 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %49 = ptrtoint ptr %len39 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len39, align 4
  %call40 = tail call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext %46, i8 noundef zeroext 1, ptr noundef %48, i32 noundef %50) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb35, %sw.bb30, %sw.bb23, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %sw.bb35 ], [ %call34, %sw.bb30 ], [ %call29, %sw.bb23 ], [ %call22, %if.end ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_tm_send(ptr noundef %hdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %call, align 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %call1 = tail call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 49, i8 noundef zeroext 1, ptr noundef %2, i32 noundef %4) #6
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_check_presence(ptr noundef %hdev, ptr noundef %target) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pn544_hci_check_presence.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pn544_hci_check_presence, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %supported_protocols = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 1
  %0 = ptrtoint ptr %supported_protocols to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %supported_protocols, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pn544_hci_check_presence.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.17, i32 noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %supported_protocols3 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 1
  %2 = ptrtoint ptr %supported_protocols3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %supported_protocols3, align 4
  %and = and i32 %3, 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %hci_reader_gate = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 12
  %4 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hci_reader_gate, align 1
  %call6 = tail call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext %5, i8 noundef zeroext 48, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  br label %return

if.else:                                          ; preds = %do.end
  %and8 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else26, label %if.then10

if.then10:                                        ; preds = %if.else
  %nfcid1_len = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 4
  %6 = ptrtoint ptr %nfcid1_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nfcid1_len, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %7, label %if.then10.return_crit_edge [
    i8 4, label %if.then10.if.end22_crit_edge
    i8 7, label %if.then10.if.end22_crit_edge56
    i8 10, label %if.then10.if.end22_crit_edge57
  ]

if.then10.if.end22_crit_edge57:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then10.if.end22_crit_edge56:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then10.return_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end22:                                         ; preds = %if.then10.if.end22_crit_edge, %if.then10.if.end22_crit_edge56, %if.then10.if.end22_crit_edge57
  %nfcid1 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 5
  %conv24 = zext i8 %7 to i32
  %call25 = tail call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext 19, i8 noundef zeroext 50, ptr noundef %nfcid1, i32 noundef %conv24, ptr noundef null) #6
  br label %return

if.else26:                                        ; preds = %if.else
  %and28 = and i32 %3, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else31, label %if.else26.return_crit_edge

if.else26.return_crit_edge:                       ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.else31:                                        ; preds = %if.else26
  %and33 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else31.return_crit_edge, label %if.then35

if.else31.return_crit_edge:                       ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then35:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  %hci_reader_gate36 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 12
  %9 = ptrtoint ptr %hci_reader_gate36 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hci_reader_gate36, align 1
  %call37 = tail call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext %10, i8 noundef zeroext 18, ptr noundef null, i32 noundef 0, ptr noundef null) #6
  br label %return

return:                                           ; preds = %if.then35, %if.else31.return_crit_edge, %if.else26.return_crit_edge, %if.end22, %if.then10.return_crit_edge, %if.then5
  %retval.0 = phi i32 [ %call6, %if.then5 ], [ %call25, %if.end22 ], [ %call37, %if.then35 ], [ -95, %if.then10.return_crit_edge ], [ -95, %if.else26.return_crit_edge ], [ 0, %if.else31.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_event_received(ptr noundef %hdev, i8 noundef zeroext %pipe, i8 noundef zeroext %event, ptr noundef %skb) #0 align 64 {
entry:
  %rgb_skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rgb_skb) #6
  %0 = ptrtoint ptr %rgb_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rgb_skb, align 4
  %idxprom = zext i8 %pipe to i32
  %arrayidx = getelementptr %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 16, i32 %idxprom
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pn544_hci_event_received.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pn544_hci_event_received, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %event to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pn544_hci_event_received.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.20, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = zext i8 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %event, label %do.end.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 3, label %sw.bb22
    i8 4, label %sw.bb24
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %4 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %2, label %sw.bb.exit_crit_edge [
    i8 48, label %if.then7
    i8 49, label %if.then12
  ]

sw.bb.exit_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @nfc_hci_target_discovered(ptr noundef %hdev, i8 noundef zeroext 48) #6
  br label %exit

if.then12:                                        ; preds = %sw.bb
  %call13 = call i32 @nfc_hci_get_param(ptr noundef %hdev, i8 noundef zeroext 49, i8 noundef zeroext 2, ptr noundef nonnull %rgb_skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then12.exit_crit_edge, label %if.end17

if.then12.exit_crit_edge:                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end17:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hdev, align 4
  %7 = ptrtoint ptr %rgb_skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rgb_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %call18 = call i32 @nfc_tm_activated(ptr noundef %6, i32 noundef 32, i8 noundef zeroext 1, ptr noundef %10, i32 noundef %12) #6
  %13 = ptrtoint ptr %rgb_skb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rgb_skb, align 4
  call void @kfree_skb_reason(ptr noundef %14, i32 noundef 0) #6
  br label %exit

sw.bb22:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call23 = tail call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext %2, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0) #6
  br label %exit

sw.bb24:                                          ; preds = %do.end
  %len25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp26 = icmp ult i32 %16, 2
  br i1 %cmp26, label %sw.bb24.exit_crit_edge, label %if.end29

sw.bb24.exit_crit_edge:                           ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end29:                                         ; preds = %sw.bb24
  %data30 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %17 = ptrtoint ptr %data30 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data30, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp33.not = icmp eq i8 %20, 0
  br i1 %cmp33.not, label %if.end55, label %do.body36

do.body36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pn544_hci_event_received.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pn544_hci_event_received, %if.then48)) #6
          to label %exit [label %if.then48], !srcloc !73

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %data30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data30, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %22, align 1
  %conv51 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pn544_hci_event_received.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.22, i32 noundef %conv51) #6
  br label %exit

if.end55:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %call56 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 2) #6
  %25 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hdev, align 4
  %call58 = tail call i32 @nfc_tm_data_received(ptr noundef %26, ptr noundef %skb) #6
  br label %cleanup

exit:                                             ; preds = %if.then48, %do.body36, %sw.bb24.exit_crit_edge, %sw.bb22, %if.end17, %if.then12.exit_crit_edge, %if.then7, %sw.bb.exit_crit_edge
  %r.0 = phi i32 [ %call23, %sw.bb22 ], [ %call8, %if.then7 ], [ %call13, %if.then12.exit_crit_edge ], [ %call18, %if.end17 ], [ -22, %sw.bb.exit_crit_edge ], [ -71, %sw.bb24.exit_crit_edge ], [ -71, %if.then48 ], [ -71, %do.body36 ]
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end55, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %exit ], [ %call58, %if.end55 ], [ 1, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rgb_skb) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_fw_download(ptr noundef %hdev, ptr noundef %firmware_name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #6
  %fw_download = getelementptr inbounds %struct.pn544_hci_info, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %fw_download to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_download, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %phy_id = getelementptr inbounds %struct.pn544_hci_info, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy_id, align 4
  %sw_romlib = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 17
  %4 = ptrtoint ptr %sw_romlib to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sw_romlib, align 4
  %call2 = tail call i32 %1(ptr noundef %3, ptr noundef %firmware_name, i8 noundef zeroext %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_discover_se(ptr noundef %hdev) #0 align 64 {
entry:
  %ese_mode = alloca i8, align 1
  %res_skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ese_mode) #6
  %0 = ptrtoint ptr %ese_mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %ese_mode, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res_skb) #6
  %1 = ptrtoint ptr %res_skb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %res_skb, align 4, !annotation !72
  %call = call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext -112, i8 noundef zeroext 33, ptr noundef null, i32 noundef 0, ptr noundef nonnull %res_skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %res_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %res_skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp1 = icmp eq i32 %5, 2
  br i1 %cmp1, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp2 = icmp eq i8 %9, 0
  br i1 %cmp2, label %if.then4, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hdev, align 4
  %call5 = call i32 @nfc_add_se(ptr noundef %11, i32 noundef 0, i16 noundef zeroext 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %se_idx.0 = phi i32 [ 1, %if.then4 ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %if.then.if.end_crit_edge ]
  %12 = ptrtoint ptr %res_skb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %res_skb, align 4
  call void @kfree_skb_reason(ptr noundef %13, i32 noundef 0) #6
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %se_idx.1 = phi i32 [ %se_idx.0, %if.end ], [ 0, %entry.if.end6_crit_edge ]
  %call7 = call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext -95, i8 noundef zeroext 3, ptr noundef nonnull %ese_mode, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then10, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hdev, align 4
  %inc12 = add nuw nsw i32 %se_idx.1, 1
  %call13 = call i32 @nfc_add_se(ptr noundef %15, i32 noundef %se_idx.1, i16 noundef zeroext 2) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end6.if.end14_crit_edge
  %se_idx.2 = phi i32 [ %inc12, %if.then10 ], [ %se_idx.1, %if.end6.if.end14_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %se_idx.2)
  %tobool.not = icmp eq i32 %se_idx.2, 0
  %lnot.ext = zext i1 %tobool.not to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res_skb) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ese_mode) #6
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_enable_se(ptr noundef %hdev, i32 noundef %se_idx) #0 align 64 {
entry:
  %enable = alloca i8, align 1
  %res_skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #6
  %0 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %enable, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res_skb) #6
  %1 = ptrtoint ptr %res_skb to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %res_skb, align 4, !annotation !72
  %2 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdev, align 4
  %call = tail call ptr @nfc_find_se(ptr noundef %3, i32 noundef %se_idx) #6
  %type = getelementptr inbounds %struct.nfc_se, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %5, label %entry.cleanup_crit_edge [
    i16 1, label %while.body.preheader
    i16 2, label %sw.bb14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.preheader:                             ; preds = %entry
  %call1 = call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext -112, i8 noundef zeroext 63, ptr noundef nonnull @pn544_hci_enable_se.uicc_gatelist, i32 noundef 4, ptr noundef nonnull %res_skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %while.body.preheader.cleanup_crit_edge, label %if.end

while.body.preheader.cleanup_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %while.body.preheader
  %7 = ptrtoint ptr %res_skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %res_skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp3.not = icmp eq i32 %10, 1
  br i1 %cmp3.not, label %if.end6, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.then5:                                         ; preds = %if.end.3.if.then5_crit_edge, %if.end.2.if.then5_crit_edge, %if.end.1.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %.lcssa = phi ptr [ %8, %if.end.if.then5_crit_edge ], [ %17, %if.end.1.if.then5_crit_edge ], [ %26, %if.end.2.if.then5_crit_edge ], [ %35, %if.end.3.if.then5_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %.lcssa, i32 noundef 0) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %15 = load i8, ptr getelementptr inbounds ([4 x %struct.uicc_gatelist], ptr @pn544_hci_enable_se.uicc_gatelist, i32 0, i32 0, i32 2), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %15)
  %cmp9.not = icmp eq i8 %14, %15
  br i1 %cmp9.not, label %if.end12, label %if.end6.if.then11_crit_edge

if.end6.if.then11_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.then11:                                        ; preds = %if.end6.3.if.then11_crit_edge, %if.end6.2.if.then11_crit_edge, %if.end6.1.if.then11_crit_edge, %if.end6.if.then11_crit_edge
  %.lcssa35 = phi ptr [ %8, %if.end6.if.then11_crit_edge ], [ %17, %if.end6.1.if.then11_crit_edge ], [ %26, %if.end6.2.if.then11_crit_edge ], [ %35, %if.end6.3.if.then11_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %.lcssa35, i32 noundef 0) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  call void @kfree_skb_reason(ptr noundef %8, i32 noundef 0) #6
  %call1.1 = call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext -112, i8 noundef zeroext 63, ptr noundef getelementptr inbounds ([4 x %struct.uicc_gatelist], ptr @pn544_hci_enable_se.uicc_gatelist, i32 0, i32 1), i32 noundef 4, ptr noundef nonnull %res_skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp.1 = icmp slt i32 %call1.1, 0
  br i1 %cmp.1, label %if.end12.cleanup_crit_edge, label %if.end.1

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.1:                                         ; preds = %if.end12
  %16 = ptrtoint ptr %res_skb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %res_skb, align 4
  %len.1 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %len.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp3.not.1 = icmp eq i32 %19, 1
  br i1 %cmp3.not.1, label %if.end6.1, label %if.end.1.if.then5_crit_edge

if.end.1.if.then5_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.end6.1:                                        ; preds = %if.end.1
  %data.1 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %20 = ptrtoint ptr %data.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.1, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %24 = load i8, ptr getelementptr inbounds ([4 x %struct.uicc_gatelist], ptr @pn544_hci_enable_se.uicc_gatelist, i32 0, i32 1, i32 2), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %24)
  %cmp9.not.1 = icmp eq i8 %23, %24
  br i1 %cmp9.not.1, label %if.end12.1, label %if.end6.1.if.then11_crit_edge

if.end6.1.if.then11_crit_edge:                    ; preds = %if.end6.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.end12.1:                                       ; preds = %if.end6.1
  call void @kfree_skb_reason(ptr noundef %17, i32 noundef 0) #6
  %call1.2 = call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext -112, i8 noundef zeroext 63, ptr noundef getelementptr inbounds ([4 x %struct.uicc_gatelist], ptr @pn544_hci_enable_se.uicc_gatelist, i32 0, i32 2), i32 noundef 4, ptr noundef nonnull %res_skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %cmp.2 = icmp slt i32 %call1.2, 0
  br i1 %cmp.2, label %if.end12.1.cleanup_crit_edge, label %if.end.2

if.end12.1.cleanup_crit_edge:                     ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.2:                                         ; preds = %if.end12.1
  %25 = ptrtoint ptr %res_skb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %res_skb, align 4
  %len.2 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %len.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp3.not.2 = icmp eq i32 %28, 1
  br i1 %cmp3.not.2, label %if.end6.2, label %if.end.2.if.then5_crit_edge

if.end.2.if.then5_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.end6.2:                                        ; preds = %if.end.2
  %data.2 = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 19
  %29 = ptrtoint ptr %data.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.2, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %33 = load i8, ptr getelementptr inbounds ([4 x %struct.uicc_gatelist], ptr @pn544_hci_enable_se.uicc_gatelist, i32 0, i32 2, i32 2), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %33)
  %cmp9.not.2 = icmp eq i8 %32, %33
  br i1 %cmp9.not.2, label %if.end12.2, label %if.end6.2.if.then11_crit_edge

if.end6.2.if.then11_crit_edge:                    ; preds = %if.end6.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.end12.2:                                       ; preds = %if.end6.2
  call void @kfree_skb_reason(ptr noundef %26, i32 noundef 0) #6
  %call1.3 = call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext -112, i8 noundef zeroext 63, ptr noundef getelementptr inbounds ([4 x %struct.uicc_gatelist], ptr @pn544_hci_enable_se.uicc_gatelist, i32 0, i32 3), i32 noundef 4, ptr noundef nonnull %res_skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %cmp.3 = icmp slt i32 %call1.3, 0
  br i1 %cmp.3, label %if.end12.2.cleanup_crit_edge, label %if.end.3

if.end12.2.cleanup_crit_edge:                     ; preds = %if.end12.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.3:                                         ; preds = %if.end12.2
  %34 = ptrtoint ptr %res_skb to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %res_skb, align 4
  %len.3 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %len.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp3.not.3 = icmp eq i32 %37, 1
  br i1 %cmp3.not.3, label %if.end6.3, label %if.end.3.if.then5_crit_edge

if.end.3.if.then5_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.end6.3:                                        ; preds = %if.end.3
  %data.3 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 19
  %38 = ptrtoint ptr %data.3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.3, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %39, align 1
  %42 = load i8, ptr getelementptr inbounds ([4 x %struct.uicc_gatelist], ptr @pn544_hci_enable_se.uicc_gatelist, i32 0, i32 3, i32 2), align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %42)
  %cmp9.not.3 = icmp eq i8 %41, %42
  br i1 %cmp9.not.3, label %if.end12.3, label %if.end6.3.if.then11_crit_edge

if.end6.3.if.then11_crit_edge:                    ; preds = %if.end6.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.end12.3:                                       ; preds = %if.end6.3
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree_skb_reason(ptr noundef %35, i32 noundef 0) #6
  %call13 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext -96, i8 noundef zeroext 1, ptr noundef nonnull %enable, i32 noundef 1) #6
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext -95, i8 noundef zeroext 1, ptr noundef nonnull %enable, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb14, %if.end12.3, %if.end12.2.cleanup_crit_edge, %if.end12.1.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then11, %if.then5, %while.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %sw.bb14 ], [ -71, %if.then5 ], [ -5, %if.then11 ], [ %call13, %if.end12.3 ], [ -22, %entry.cleanup_crit_edge ], [ %call1, %while.body.preheader.cleanup_crit_edge ], [ %call1.1, %if.end12.cleanup_crit_edge ], [ %call1.2, %if.end12.1.cleanup_crit_edge ], [ %call1.3, %if.end12.2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res_skb) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_disable_se(ptr noundef %hdev, i32 noundef %se_idx) #0 align 64 {
entry:
  %disable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %disable) #6
  %0 = ptrtoint ptr %disable to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %disable, align 1
  %1 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hdev, align 4
  %call = tail call ptr @nfc_find_se(ptr noundef %2, i32 noundef %se_idx) #6
  %type = getelementptr inbounds %struct.nfc_se, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %type, align 4
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %4, label %entry.cleanup_crit_edge [
    i16 1, label %entry.cleanup.sink.split_crit_edge
    i16 2, label %sw.bb2
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i8 [ -95, %sw.bb2 ], [ -96, %entry.cleanup.sink.split_crit_edge ]
  %call3 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext %.sink, i8 noundef zeroext 1, ptr noundef nonnull %disable, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call3, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %disable) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_send_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_set_param(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_send_event(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_get_param(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_get_local_general_bytes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_set_remote_general_bytes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_dep_link_is_up(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_send_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn544_hci_data_exchange_cb(ptr nocapture noundef readonly %context, ptr noundef %skb, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %async_cb_type = getelementptr inbounds %struct.pn544_hci_info, ptr %context, i32 0, i32 5
  %0 = ptrtoint ptr %async_cb_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %async_cb_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %cmp = icmp eq i32 %err, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  br i1 %cmp, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %async_cb = getelementptr inbounds %struct.pn544_hci_info, ptr %context, i32 0, i32 6
  %2 = ptrtoint ptr %async_cb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async_cb, align 4
  %async_cb_context = getelementptr inbounds %struct.pn544_hci_info, ptr %context, i32 0, i32 7
  %4 = ptrtoint ptr %async_cb_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async_cb_context, align 4
  tail call void %3(ptr noundef %5, ptr noundef %skb, i32 noundef %err) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br i1 %cmp, label %if.then2, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then2:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then2, %sw.default.sw.epilog_crit_edge, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_target_discovered(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_tm_activated(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_tm_data_received(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_add_se(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_find_se(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @pn544_hci_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/nfc/pn544/pn544.c", i32 923, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/nfc/pn544/pn544.c", i32 933, i32 31}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/nfc/pn544/pn544.c", i32 947, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @pn544_hci_probe._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @pn544_hci_probe._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_pn544_hci_probe, !12, !"__ksymtab_pn544_hci_probe", i1 false, i1 false}
!12 = !{!"../drivers/nfc/pn544/pn544.c", i32 971, i32 1}
!13 = !{ptr @__ksymtab_pn544_hci_remove, !14, !"__ksymtab_pn544_hci_remove", i1 false, i1 false}
!14 = !{!"../drivers/nfc/pn544/pn544.c", i32 981, i32 1}
!15 = !{ptr @__UNIQUE_ID_file275, !16, !"__UNIQUE_ID_file275", i1 false, i1 false}
!16 = !{!"../drivers/nfc/pn544/pn544.c", i32 983, i32 1}
!17 = !{ptr @__UNIQUE_ID_license276, !16, !"__UNIQUE_ID_license276", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_description277, !19, !"__UNIQUE_ID_description277", i1 false, i1 false}
!19 = !{!"../drivers/nfc/pn544/pn544.c", i32 984, i32 1}
!20 = !{ptr @pn544_gates, !21, !"pn544_gates", i1 false, i1 false}
!21 = !{!"../drivers/nfc/pn544/pn544.c", i32 88, i32 34}
!22 = !{ptr @pn544_hci_ops, !23, !"pn544_hci_ops", i1 false, i1 false}
!23 = !{!"../drivers/nfc/pn544/pn544.c", i32 883, i32 33}
!24 = !{ptr @pn544_hci_ready.hw_config, !25, !"hw_config", i1 false, i1 false}
!25 = !{!"../drivers/nfc/pn544/pn544.c", i32 171, i32 4}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/nfc/pn544/pn544.c", i32 316, i32 17}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/nfc/pn544/pn544.c", i32 316, i32 29}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/nfc/pn544/pn544.c", i32 343, i32 2}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @pn544_hci_start_poll._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @pn544_hci_start_poll._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/nfc/pn544/pn544.c", i32 382, i32 3}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @pn544_hci_start_poll.__UNIQUE_ID_ddebug271, !36, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!39 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/nfc/pn544/pn544.c", i32 459, i32 29}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/nfc/pn544/pn544.c", i32 609, i32 2}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @pn544_hci_im_transceive._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @pn544_hci_im_transceive._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/nfc/pn544/pn544.c", i32 684, i32 2}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @pn544_hci_check_presence.__UNIQUE_ID_ddebug272, !48, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!51 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/nfc/pn544/pn544.c", i32 722, i32 2}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @pn544_hci_event_received.__UNIQUE_ID_ddebug273, !53, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!56 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/nfc/pn544/pn544.c", i32 753, i32 4}
!59 = !{ptr @pn544_hci_event_received.__UNIQUE_ID_ddebug274, !58, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!60 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @pn544_hci_enable_se.uicc_gatelist, !62, !"uicc_gatelist", i1 false, i1 false}
!62 = !{!"../drivers/nfc/pn544/pn544.c", i32 817, i32 4}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"auto-init"}
!73 = !{i64 2148778875, i64 2148778880, i64 2148778893, i64 2148778937, i64 2148778971, i64 2148778992}
