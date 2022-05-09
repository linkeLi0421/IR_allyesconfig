; ModuleID = '/llk/IR_all_yes/drivers/nfc/st21nfca/core.c_pt.bc'
source_filename = "../drivers/nfc/st21nfca/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+st21nfca_hci_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_st21nfca_hci_probe\09\09\09\09"
module asm "\09.long\09__crc_st21nfca_hci_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st21nfca_hci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22st21nfca_hci_probe\22\09\09\09\09\09"
module asm "__kstrtabns_st21nfca_hci_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+st21nfca_hci_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_st21nfca_hci_remove\09\09\09\09"
module asm "\09.long\09__crc_st21nfca_hci_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st21nfca_hci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22st21nfca_hci_remove\22\09\09\09\09\09"
module asm "__kstrtabns_st21nfca_hci_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.18 }
%union.anon.18 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nfc_hci_gate = type { i8, i8 }
%struct.nfc_hci_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nfc_hci_init_data = type { i8, [50 x %struct.nfc_hci_gate], [9 x i8] }
%struct.st21nfca_hci_info = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, i32, ptr, ptr, %struct.st21nfca_dep_info, %struct.st21nfca_se_info, %struct.st21nfca_vendor_info }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.20 }
%union.anon.20 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.st21nfca_dep_info = type <{ ptr, %struct.work_struct, i8, i32, i8, i8, i8, i8, i8 }>
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.st21nfca_se_info = type { [33 x i8], %struct.completion, %struct.timer_list, i32, i8, %struct.timer_list, i8, i32, i32, i8, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.st21nfca_vendor_info = type { %struct.completion, ptr }
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
%struct.st21nfca_pipe_info = type { i8, i8, i8, i8, i8 }
%struct.nfc_hci_dev = type { ptr, i32, i8, %struct.mutex, %struct.list_head, %struct.work_struct, %struct.timer_list, ptr, %struct.sk_buff_head, %struct.work_struct, %struct.sk_buff_head, ptr, ptr, %struct.nfc_hci_init_data, ptr, [256 x i8], [128 x %struct.nfc_hci_pipe], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, ptr, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.90, i32, %struct.spinlock }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.19 }
%union.anon.19 = type { %struct.raw_spinlock }
%struct.nfc_hci_pipe = type { i8, i8 }
%struct.st21nfca_se_status = type { i8, i8 }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nfc_genl_data = type { i32, %struct.mutex }

@st21nfca_hci_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&info->info_lock\00", [47 x i8] zeroinitializer }, align 32
@st21nfca_gates = internal constant { [13 x %struct.nfc_hci_gate], [38 x i8] } { [13 x %struct.nfc_hci_gate] [%struct.nfc_hci_gate { i8 0, i8 1 }, %struct.nfc_hci_gate { i8 6, i8 0 }, %struct.nfc_hci_gate { i8 1, i8 2 }, %struct.nfc_hci_gate { i8 4, i8 -128 }, %struct.nfc_hci_gate { i8 5, i8 -128 }, %struct.nfc_hci_gate { i8 17, i8 -128 }, %struct.nfc_hci_gate { i8 19, i8 -128 }, %struct.nfc_hci_gate { i8 20, i8 -128 }, %struct.nfc_hci_gate { i8 21, i8 -128 }, %struct.nfc_hci_gate { i8 18, i8 -128 }, %struct.nfc_hci_gate { i8 36, i8 -128 }, %struct.nfc_hci_gate { i8 65, i8 -127 }, %struct.nfc_hci_gate { i8 -16, i8 -127 }], [38 x i8] zeroinitializer }, align 32
@dev_mask = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s%2x\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ST21AH\00", [25 x i8] zeroinitializer }, align 32
@st21nfca_hci_ops = internal constant { %struct.nfc_hci_ops, [44 x i8] } { %struct.nfc_hci_ops { ptr @st21nfca_hci_open, ptr @st21nfca_hci_close, ptr @st21nfca_hci_load_session, ptr @st21nfca_hci_ready, ptr @st21nfca_hci_xmit, ptr @st21nfca_hci_start_poll, ptr @st21nfca_hci_stop_poll, ptr @st21nfca_hci_dep_link_up, ptr @st21nfca_hci_dep_link_down, ptr @st21nfca_hci_target_from_gate, ptr @st21nfca_hci_complete_target_discovered, ptr @st21nfca_hci_im_transceive, ptr @st21nfca_hci_tm_send, ptr @st21nfca_hci_check_presence, ptr @st21nfca_hci_event_received, ptr @st21nfca_hci_cmd_received, ptr null, ptr @st21nfca_hci_discover_se, ptr @st21nfca_hci_enable_se, ptr @st21nfca_hci_disable_se, ptr @st21nfca_hci_se_io }, [44 x i8] zeroinitializer }, align 32
@st21nfca_hci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Cannot allocate nfc hdev.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st21nfca_hci_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/nfc/st21nfca/core.c\00", [36 x i8] zeroinitializer }, align 32
@st21nfca_hci_probe._entry_ptr = internal global ptr @st21nfca_hci_probe._entry, section ".printk_index", align 4
@__kstrtab_st21nfca_hci_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_st21nfca_hci_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_st21nfca_hci_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st21nfca_hci_probe to i32), ptr @__kstrtab_st21nfca_hci_probe, ptr @__kstrtabns_st21nfca_hci_probe }, section "___ksymtab+st21nfca_hci_probe", align 4
@__kstrtab_st21nfca_hci_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_st21nfca_hci_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_st21nfca_hci_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st21nfca_hci_remove to i32), ptr @__kstrtab_st21nfca_hci_remove, ptr @__kstrtabns_st21nfca_hci_remove }, section "___ksymtab+st21nfca_hci_remove", align 4
@__UNIQUE_ID_file274 = internal constant [52 x i8] c"st21nfca_hci.file=drivers/nfc/st21nfca/st21nfca_hci\00", section ".modinfo", align 1
@__UNIQUE_ID_license275 = internal constant [25 x i8] c"st21nfca_hci.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description276 = internal constant [53 x i8] c"st21nfca_hci.description=HCI NFC driver for ST21NFCA\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.st21nfca_hci_load_session.pipe_info = private unnamed_addr constant [3 x i8] c"\01\01\00", align 1
@st21nfca_hci_load_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.5, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Unexpected apdu_reader pipe on host %x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"st21nfca_hci_load_session\00", [38 x i8] zeroinitializer }, align 32
@st21nfca_hci_load_session._entry_ptr = internal global ptr @st21nfca_hci_load_session._entry, section ".printk_index", align 4
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"FULL VERSION SOFTWARE INFO: \00", [35 x i8] zeroinitializer }, align 32
@st21nfca_hci_start_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016HCI NFC driver for ST21NFCA: %s protocols 0x%x 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st21nfca_hci_start_poll\00", [40 x i8] zeroinitializer }, align 32
@st21nfca_hci_start_poll._entry_ptr = internal global ptr @st21nfca_hci_start_poll._entry, section ".printk_index", align 4
@st21nfca_hci_im_transceive._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.5, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016HCI NFC driver for ST21NFCA: %s for gate=%d len=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"st21nfca_hci_im_transceive\00", [37 x i8] zeroinitializer }, align 32
@st21nfca_hci_im_transceive._entry_ptr = internal global ptr @st21nfca_hci_im_transceive._entry, section ".printk_index", align 4
@st21nfca_hci_event_received.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.5, ptr @.str.16, i8 0, i8 -33, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st21nfca_hci\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"st21nfca_hci_event_received\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hci event: %d gate: %x\0A\00", [40 x i8] zeroinitializer }, align 32
@st21nfca_admin_event_received.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.17, ptr @.str.5, ptr @.str.18, i8 0, i8 -41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"st21nfca_admin_event_received\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"admin event: %x\0A\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@st21nfca_admin_event_received._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.5, i32 878, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFC: Unexpected event on admin gate\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st21nfca_admin_event_received._entry_ptr = internal global ptr @st21nfca_admin_event_received._entry, section ".printk_index", align 4
@st21nfca_hci_cmd_received.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.22, ptr @.str.5, ptr @.str.23, i8 0, i8 -47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"st21nfca_hci_cmd_received\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cmd: %x\0A\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 8, i64 4, i64 5, i64 17, i64 18, i64 19, i64 20, i64 21, i64 36, i64 65, i64 240]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 8, i64 18, i64 20, i64 21]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 8, i64 18, i64 20, i64 21]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 8, i64 17, i64 19, i64 21]
@__sancov_gen_cov_switch_values.27 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 4, i64 36, i64 65, i64 240]
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 956, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"st21nfca_gates\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 74, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"dev_mask\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 72, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 974, i32 64 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 975, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"st21nfca_hci_ops\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 914, i32 33 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 994, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 168, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 298, i32 17 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 298, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 322, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 766, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 895, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 861, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 878, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [31 x i8] c"../drivers/nfc/st21nfca/core.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 838, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_file274, ptr @__UNIQUE_ID_license275, ptr @__ksymtab_st21nfca_hci_probe, ptr @__ksymtab_st21nfca_hci_remove, ptr @st21nfca_admin_event_received._entry, ptr @st21nfca_admin_event_received._entry_ptr, ptr @st21nfca_hci_im_transceive._entry, ptr @st21nfca_hci_im_transceive._entry_ptr, ptr @st21nfca_hci_load_session._entry, ptr @st21nfca_hci_load_session._entry_ptr, ptr @st21nfca_hci_probe._entry, ptr @st21nfca_hci_probe._entry_ptr, ptr @st21nfca_hci_start_poll._entry, ptr @st21nfca_hci_start_poll._entry_ptr, ptr @st21nfca_hci_probe.__key, ptr @.str, ptr @st21nfca_gates, ptr @dev_mask, ptr @.str.1, ptr @.str.2, ptr @st21nfca_hci_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_hci_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_gates to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_mask to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_hci_ops to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_hci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_hci_load_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_hci_start_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_hci_im_transceive._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_admin_event_received._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st21nfca_hci_probe(ptr noundef %phy_id, ptr noundef %phy_ops, ptr noundef %llc_name, i32 noundef %phy_headroom, i32 noundef %phy_tailroom, i32 noundef %phy_payload, ptr nocapture noundef writeonly %hdev, ptr noundef %se_status) #0 align 64 {
entry:
  %init_data = alloca %struct.nfc_hci_init_data, align 1
  %quirks = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 110, ptr nonnull %init_data) #5
  %0 = getelementptr inbounds i8, ptr %init_data, i32 27
  %1 = call ptr @memset(ptr %0, i32 255, i32 83)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %quirks) #5
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %quirks, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 464) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %phy_ops, ptr %call7.i.i, align 8
  %phy_id2 = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %phy_id2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %phy_id, ptr %phy_id2, align 4
  %state = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 8
  %info_lock = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %info_lock, ptr noundef nonnull @.str, ptr noundef nonnull @st21nfca_hci_probe.__key) #5
  %7 = ptrtoint ptr %init_data to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 13, ptr %init_data, align 1
  %gates = getelementptr inbounds %struct.nfc_hci_init_data, ptr %init_data, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %gates, ptr @st21nfca_gates, i32 26)
  %call3 = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull @dev_mask, i32 noundef 256) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call3)
  %cmp = icmp sgt i32 %call3, 255
  br i1 %cmp, label %if.end.err_alloc_hdev_crit_edge, label %if.end5

if.end.err_alloc_hdev_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_alloc_hdev

if.end5:                                          ; preds = %if.end
  tail call void @_set_bit(i32 noundef %call3, ptr noundef nonnull @dev_mask) #5
  %session_id = getelementptr inbounds %struct.nfc_hci_init_data, ptr %init_data, i32 0, i32 2
  %call7 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %session_id, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %call3) #5
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %quirks) #5
  %9 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %quirks, align 4
  %add = add i32 %phy_headroom, 7
  %call8 = call ptr @nfc_hci_allocate_device(ptr noundef nonnull @st21nfca_hci_ops, ptr noundef nonnull %init_data, i32 noundef %10, i32 noundef 254, ptr noundef %llc_name, i32 noundef %add, i32 noundef %phy_tailroom, i32 noundef %phy_payload) #5
  %hdev9 = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %hdev9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8, ptr %hdev9, align 8
  %tobool11.not = icmp eq ptr %call8, null
  br i1 %tobool11.not, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %err_alloc_hdev

if.end17:                                         ; preds = %if.end5
  %se_status18 = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %se_status18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %se_status, ptr %se_status18, align 4
  call void @nfc_hci_set_clientdata(ptr noundef nonnull %call8, ptr noundef nonnull %call7.i.i) #5
  %13 = ptrtoint ptr %hdev9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev9, align 8
  %call21 = call i32 @nfc_hci_register_device(ptr noundef %14) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  %15 = ptrtoint ptr %hdev9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hdev9, align 8
  br i1 %tobool22.not, label %if.end24, label %err_regdev

if.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %hdev to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %hdev, align 4
  call void @st21nfca_dep_init(ptr noundef %16) #5
  %18 = ptrtoint ptr %hdev9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hdev9, align 8
  call void @st21nfca_se_init(ptr noundef %19) #5
  %20 = ptrtoint ptr %hdev9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hdev9, align 8
  %call29 = call i32 @st21nfca_vendor_cmds_init(ptr noundef %21) #5
  br label %cleanup

err_regdev:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  call void @nfc_hci_free_device(ptr noundef %16) #5
  br label %err_alloc_hdev

err_alloc_hdev:                                   ; preds = %err_regdev, %do.end15, %if.end.err_alloc_hdev_crit_edge
  %r.0 = phi i32 [ %call21, %err_regdev ], [ -12, %do.end15 ], [ -19, %if.end.err_alloc_hdev_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_hdev, %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %err_alloc_hdev ], [ 0, %if.end24 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %quirks) #5
  call void @llvm.lifetime.end.p0(i64 110, ptr nonnull %init_data) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_hci_allocate_device(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_set_clientdata(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @st21nfca_dep_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @st21nfca_se_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st21nfca_vendor_cmds_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @st21nfca_hci_remove(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #5
  tail call void @st21nfca_dep_deinit(ptr noundef %hdev) #5
  tail call void @st21nfca_se_deinit(ptr noundef %hdev) #5
  tail call void @nfc_hci_unregister_device(ptr noundef %hdev) #5
  tail call void @nfc_hci_free_device(ptr noundef %hdev) #5
  tail call void @kfree(ptr noundef %call) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_hci_get_clientdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @st21nfca_dep_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @st21nfca_se_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_open(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #5
  %info_lock = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #5
  %state = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %enable = getelementptr inbounds %struct.nfc_phy_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable, align 4
  %phy_id = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_id, align 4
  %call1 = tail call i32 %5(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %state, align 4
  br label %out

out:                                              ; preds = %if.then3, %if.end.out_crit_edge, %entry.out_crit_edge
  %r.0 = phi i32 [ 0, %if.then3 ], [ %call1, %if.end.out_crit_edge ], [ -16, %entry.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %info_lock) #5
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st21nfca_hci_close(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #5
  %info_lock = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %info_lock, i32 noundef 0) #5
  %state = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %disable = getelementptr inbounds %struct.nfc_phy_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable, align 4
  %phy_id = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy_id, align 4
  tail call void %5(ptr noundef %7) #5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %state, align 4
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %info_lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_load_session(ptr noundef %hdev) #0 align 64 {
entry:
  %skb_pipe_list = alloca ptr, align 4
  %skb_pipe_info = alloca ptr, align 4
  %pipe_list = alloca [2 x i8], align 2
  %pipe_info = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb_pipe_list) #5
  %0 = ptrtoint ptr %skb_pipe_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb_pipe_list, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb_pipe_info) #5
  %1 = ptrtoint ptr %skb_pipe_info to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb_pipe_info, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pipe_list) #5
  %2 = ptrtoint ptr %pipe_list to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 513, ptr %pipe_list, align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %pipe_info) #5
  %3 = call ptr @memcpy(ptr %pipe_info, ptr @__const.st21nfca_hci_load_session.pipe_info, i32 3)
  %call = tail call i32 @nfc_hci_connect_gate(ptr noundef %hdev, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext 1, i8 noundef zeroext 19, ptr noundef nonnull %pipe_list, i32 noundef 2, ptr noundef nonnull %skb_pipe_list) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %4 = ptrtoint ptr %skb_pipe_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %skb_pipe_list, align 4
  %len105 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %len105 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5106.not = icmp eq i32 %7, 0
  br i1 %cmp5106.not, label %for.cond.preheader.for.end67_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end67_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end67

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx6 = getelementptr inbounds [3 x i8], ptr %pipe_info, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc65.for.body_crit_edge, %for.body.lr.ph
  %8 = phi ptr [ %5, %for.body.lr.ph ], [ %37, %for.inc65.for.body_crit_edge ]
  %i.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %inc66, %for.inc65.for.body_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %10, i32 %i.0107
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx6, align 1
  %call8 = call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext 1, i8 noundef zeroext 19, ptr noundef nonnull %pipe_info, i32 noundef 3, ptr noundef nonnull %skb_pipe_info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %for.body.for.inc65_crit_edge

for.body.for.inc65_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc65

if.end10:                                         ; preds = %for.body
  %14 = ptrtoint ptr %skb_pipe_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb_pipe_info, align 4
  %data11 = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data11, align 4
  %dst_gate_id = getelementptr inbounds %struct.st21nfca_pipe_info, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %dst_gate_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dst_gate_id, align 1
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %19, label %if.end10.for.inc65.sink.split_crit_edge [
    i8 -16, label %land.lhs.true
    i8 4, label %if.end10.land.lhs.true42_crit_edge
    i8 5, label %land.lhs.true42.fold.split
    i8 17, label %land.lhs.true42.fold.split119
    i8 19, label %land.lhs.true42.fold.split120
    i8 20, label %land.lhs.true42.fold.split121
    i8 21, label %land.lhs.true42.fold.split122
    i8 18, label %land.lhs.true42.fold.split123
    i8 36, label %land.lhs.true42.fold.split124
    i8 65, label %land.lhs.true42.fold.split125
  ]

if.end10.land.lhs.true42_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true42

if.end10.for.inc65.sink.split_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc65.sink.split

land.lhs.true:                                    ; preds = %if.end10
  %src_host_id = getelementptr inbounds %struct.st21nfca_pipe_info, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %src_host_id to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %src_host_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp15 = icmp eq i8 %22, 2
  br i1 %cmp15, label %do.end, label %land.lhs.true.land.lhs.true42_crit_edge

land.lhs.true.land.lhs.true42_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true42

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 2) #9
  %23 = ptrtoint ptr %skb_pipe_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb_pipe_info, align 4
  br label %for.inc65.sink.split

land.lhs.true42.fold.split:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true42

land.lhs.true42.fold.split119:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true42

land.lhs.true42.fold.split120:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true42

land.lhs.true42.fold.split121:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true42

land.lhs.true42.fold.split122:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true42

land.lhs.true42.fold.split123:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true42

land.lhs.true42.fold.split124:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true42

land.lhs.true42.fold.split125:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true42

land.lhs.true42:                                  ; preds = %land.lhs.true42.fold.split125, %land.lhs.true42.fold.split124, %land.lhs.true42.fold.split123, %land.lhs.true42.fold.split122, %land.lhs.true42.fold.split121, %land.lhs.true42.fold.split120, %land.lhs.true42.fold.split119, %land.lhs.true42.fold.split, %land.lhs.true.land.lhs.true42_crit_edge, %if.end10.land.lhs.true42_crit_edge
  %j.0104.lcssa = phi i32 [ 12, %land.lhs.true.land.lhs.true42_crit_edge ], [ 3, %if.end10.land.lhs.true42_crit_edge ], [ 4, %land.lhs.true42.fold.split ], [ 5, %land.lhs.true42.fold.split119 ], [ 6, %land.lhs.true42.fold.split120 ], [ 7, %land.lhs.true42.fold.split121 ], [ 8, %land.lhs.true42.fold.split122 ], [ 9, %land.lhs.true42.fold.split123 ], [ 10, %land.lhs.true42.fold.split124 ], [ 11, %land.lhs.true42.fold.split125 ]
  %25 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %17, align 1
  %27 = and i8 %26, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %27)
  %cmp44 = icmp eq i8 %27, 6
  br i1 %cmp44, label %if.then46, label %land.lhs.true42.for.inc65.sink.split_crit_edge

land.lhs.true42.for.inc65.sink.split_crit_edge:   ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc65.sink.split

if.then46:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx6, align 1
  %pipe = getelementptr %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 13, i32 1, i32 %j.0104.lcssa, i32 1
  %30 = ptrtoint ptr %pipe to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %pipe, align 1
  %idxprom = zext i8 %19 to i32
  %arrayidx52 = getelementptr %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 15, i32 %idxprom
  %31 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %29, ptr %arrayidx52, align 1
  %idxprom56 = zext i8 %29 to i32
  %arrayidx57 = getelementptr %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 16, i32 %idxprom56
  %32 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %19, ptr %arrayidx57, align 2
  %src_host_id59 = getelementptr inbounds %struct.st21nfca_pipe_info, ptr %17, i32 0, i32 1
  %33 = ptrtoint ptr %src_host_id59 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %src_host_id59, align 1
  %dest_host = getelementptr %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 16, i32 %idxprom56, i32 1
  %35 = ptrtoint ptr %dest_host to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %dest_host, align 1
  br label %for.inc65.sink.split

for.inc65.sink.split:                             ; preds = %if.then46, %land.lhs.true42.for.inc65.sink.split_crit_edge, %do.end, %if.end10.for.inc65.sink.split_crit_edge
  %.sink = phi ptr [ %24, %do.end ], [ %15, %if.end10.for.inc65.sink.split_crit_edge ], [ %15, %if.then46 ], [ %15, %land.lhs.true42.for.inc65.sink.split_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %.sink, i32 noundef 0) #5
  br label %for.inc65

for.inc65:                                        ; preds = %for.inc65.sink.split, %for.body.for.inc65_crit_edge
  %inc66 = add nuw i32 %i.0107, 1
  %36 = ptrtoint ptr %skb_pipe_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %skb_pipe_list, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 4
  %cmp5 = icmp ult i32 %inc66, %39
  br i1 %cmp5, label %for.inc65.for.body_crit_edge, label %for.inc65.for.end67_crit_edge

for.inc65.for.end67_crit_edge:                    ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end67

for.inc65.for.body_crit_edge:                     ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end67:                                        ; preds = %for.inc65.for.end67_crit_edge, %for.cond.preheader.for.end67_crit_edge
  %call68 = call i32 @nfc_hci_connect_gate(ptr noundef %hdev, i8 noundef zeroext 0, i8 noundef zeroext 6, i8 noundef zeroext 0) #5
  %40 = ptrtoint ptr %skb_pipe_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skb_pipe_list, align 4
  call void @kfree_skb_reason(ptr noundef %41, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end67, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call68, %for.end67 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %pipe_info) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pipe_list) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb_pipe_info) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb_pipe_list) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_ready(ptr noundef %hdev) #0 align 64 {
entry:
  %skb = alloca ptr, align 4
  %param = alloca i8, align 1
  %white_list = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #5
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %skb, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %param) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %white_list) #5
  %1 = ptrtoint ptr %white_list to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %white_list, align 1, !annotation !75
  %2 = getelementptr inbounds [2 x i8], ptr %white_list, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !75
  %se_status = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %se_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_status, align 4
  %is_uicc_present = getelementptr inbounds %struct.st21nfca_se_status, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %is_uicc_present to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_uicc_present, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %5, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.end.if.end12_crit_edge, label %if.end.if.end6.thread_crit_edge

if.end.if.end6.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.thread

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.end.thread:                                    ; preds = %entry
  %10 = ptrtoint ptr %white_list to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %white_list, align 1
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %5, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not69 = icmp eq i8 %12, 0
  br i1 %tobool2.not69, label %if.end.thread.if.then8_crit_edge, label %if.end.thread.if.end6.thread_crit_edge

if.end.thread.if.end6.thread_crit_edge:           ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.thread

if.end.thread.if.then8_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8

if.end6.thread:                                   ; preds = %if.end.thread.if.end6.thread_crit_edge, %if.end.if.end6.thread_crit_edge
  %wl_size.070 = phi i32 [ 1, %if.end.thread.if.end6.thread_crit_edge ], [ 0, %if.end.if.end6.thread_crit_edge ]
  %inc4 = add nuw nsw i32 %wl_size.070, 1
  %arrayidx5 = getelementptr [2 x i8], ptr %white_list, i32 0, i32 %wl_size.070
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -64, ptr %arrayidx5, align 1
  br label %if.then8

if.then8:                                         ; preds = %if.end6.thread, %if.end.thread.if.then8_crit_edge
  %wl_size.167 = phi i32 [ %inc4, %if.end6.thread ], [ 1, %if.end.thread.if.then8_crit_edge ]
  %call9 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef nonnull %white_list, i32 noundef %wl_size.167) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then8.cleanup_crit_edge, label %if.then8.if.end12_crit_edge

if.then8.if.end12_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.then8.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %call13 = call i32 @nfc_hci_get_param(ptr noundef %hdev, i8 noundef zeroext 1, i8 noundef zeroext 3, ptr noundef nonnull %skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 19
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 1
  %20 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %param, align 1
  call void @kfree_skb_reason(ptr noundef %15, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp18 = icmp eq i8 %19, 0
  br i1 %cmp18, label %if.then20, label %if.end16.if.end26_crit_edge

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then20:                                        ; preds = %if.end16
  %21 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %param, align 1
  %call21 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 1, i8 noundef zeroext 3, ptr noundef nonnull %param, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then20.cleanup_crit_edge, label %if.then20.if.end26_crit_edge

if.then20.if.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.then20.if.end26_crit_edge, %if.end16.if.end26_crit_edge
  %call27 = call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 19, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end26.cleanup_crit_edge, label %if.end31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  %call32 = call i32 @nfc_hci_get_param(ptr noundef %hdev, i8 noundef zeroext 5, i8 noundef zeroext 1, ptr noundef nonnull %skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end36

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %22 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp37.not = icmp eq i32 %25, 3
  br i1 %cmp37.not, label %if.end40, label %if.end36.cleanup.sink.split_crit_edge

if.end36.cleanup.sink.split_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.end40:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %data41 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %26 = ptrtoint ptr %data41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data41, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %27, i32 noundef 3, i1 noundef zeroext false) #5
  %28 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end40, %if.end36.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %29, %if.end40 ], [ %23, %if.end36.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end40 ], [ -22, %if.end36.cleanup.sink.split_crit_edge ]
  call void @kfree_skb_reason(ptr noundef %.sink, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end31.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then8.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call21, %if.then20.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %white_list) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %param) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_xmit(ptr noundef %hdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %phy_id = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_id, align 4
  %call1 = tail call i32 %3(ptr noundef %5, ptr noundef %skb) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_start_poll(ptr noundef %hdev, i32 noundef %im_protocols, i32 noundef %tm_protocols) #0 align 64 {
entry:
  %pol_req = alloca i32, align 4
  %param = alloca [19 x i8], align 1
  %datarate_skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pol_req) #5
  %0 = ptrtoint ptr %pol_req to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pol_req, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 19, ptr nonnull %param) #5
  %1 = getelementptr inbounds [19 x i8], ptr %param, i32 0, i32 1
  %2 = getelementptr inbounds [19 x i8], ptr %param, i32 0, i32 2
  %3 = getelementptr inbounds [19 x i8], ptr %param, i32 0, i32 3
  %4 = getelementptr inbounds [19 x i8], ptr %param, i32 0, i32 4
  %5 = getelementptr inbounds [19 x i8], ptr %param, i32 0, i32 5
  %6 = getelementptr inbounds [19 x i8], ptr %param, i32 0, i32 6
  %7 = getelementptr inbounds [19 x i8], ptr %param, i32 0, i32 7
  %8 = getelementptr inbounds [19 x i8], ptr %param, i32 0, i32 8
  %9 = getelementptr inbounds [19 x i8], ptr %param, i32 0, i32 9
  %10 = getelementptr inbounds [19 x i8], ptr %param, i32 0, i32 18
  %11 = call ptr @memset(ptr %param, i32 255, i32 19)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datarate_skb) #5
  %12 = ptrtoint ptr %datarate_skb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -1 to ptr), ptr %datarate_skb, align 4, !annotation !75
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %im_protocols, i32 noundef %tm_protocols) #9
  %call1 = tail call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 19, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %im_protocols)
  %tobool.not = icmp eq i32 %im_protocols, 0
  br i1 %tobool.not, label %if.end.if.end64_crit_edge, label %if.then2

if.end.if.end64_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then2:                                         ; preds = %if.end
  %and = and i32 %im_protocols, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.then4, label %if.then2.if.end9_crit_edge

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then4:                                         ; preds = %if.then2
  %call5 = tail call i32 @nfc_hci_disconnect_gate(ptr noundef %hdev, i8 noundef zeroext 17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then4.cleanup_crit_edge, label %if.then4.if.end9_crit_edge

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %if.then2.if.end9_crit_edge
  %and10 = and i32 %im_protocols, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp11 = icmp eq i32 %and10, 0
  br i1 %cmp11, label %if.then12, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then12:                                        ; preds = %if.end9
  %call13 = tail call i32 @nfc_hci_disconnect_gate(ptr noundef %hdev, i8 noundef zeroext 19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then12.cleanup_crit_edge, label %if.then12.if.end17_crit_edge

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.then12.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %and18 = and i32 %im_protocols, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %cmp19 = icmp eq i32 %and18, 0
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end17
  %call21 = tail call i32 @nfc_hci_disconnect_gate(ptr noundef %hdev, i8 noundef zeroext 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then20.cleanup_crit_edge, label %if.then20.if.end42_crit_edge

if.then20.if.end42_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %if.end17
  %13 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hdev, align 4
  %gb_len = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 30
  %call25 = tail call ptr @nfc_get_local_general_bytes(ptr noundef %14, ptr noundef %gb_len) #5
  %gb = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 29
  %15 = ptrtoint ptr %gb to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call25, ptr %gb, align 4
  %cmp27 = icmp eq ptr %call25, null
  br i1 %cmp27, label %if.else.if.then30_crit_edge, label %lor.lhs.false

if.else.if.then30_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.else
  %16 = ptrtoint ptr %gb_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gb_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp29 = icmp eq i32 %17, 0
  br i1 %cmp29, label %lor.lhs.false.if.then30_crit_edge, label %lor.lhs.false.if.end33_crit_edge

lor.lhs.false.if.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.then30:                                        ; preds = %lor.lhs.false.if.then30_crit_edge, %if.else.if.then30_crit_edge
  %and31 = and i32 %im_protocols, -33
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %lor.lhs.false.if.end33_crit_edge
  %im_protocols.addr.0 = phi i32 [ %and31, %if.then30 ], [ %im_protocols, %lor.lhs.false.if.end33_crit_edge ]
  %tm_protocols.addr.0 = phi i32 [ 0, %if.then30 ], [ %tm_protocols, %lor.lhs.false.if.end33_crit_edge ]
  %18 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 7, ptr %param, align 1
  %call34 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 20, i8 noundef zeroext 1, ptr noundef nonnull %param, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end33.cleanup_crit_edge, label %if.end37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %19 = ptrtoint ptr %pol_req to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -65536, ptr %pol_req, align 4
  %call38 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 20, i8 noundef zeroext 2, ptr noundef nonnull %pol_req, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end37.cleanup_crit_edge, label %if.end37.if.end42_crit_edge

if.end37.if.end42_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %if.end37.if.end42_crit_edge, %if.then20.if.end42_crit_edge
  %im_protocols.addr.1 = phi i32 [ %im_protocols, %if.then20.if.end42_crit_edge ], [ %im_protocols.addr.0, %if.end37.if.end42_crit_edge ]
  %tm_protocols.addr.1 = phi i32 [ %tm_protocols, %if.then20.if.end42_crit_edge ], [ %tm_protocols.addr.0, %if.end37.if.end42_crit_edge ]
  %and43 = and i32 %im_protocols.addr.1, 21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %cmp44 = icmp eq i32 %and43, 0
  br i1 %cmp44, label %if.then45, label %if.end42.if.end50_crit_edge

if.end42.if.end50_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then45:                                        ; preds = %if.end42
  %call46 = call i32 @nfc_hci_disconnect_gate(ptr noundef %hdev, i8 noundef zeroext 21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then45.cleanup_crit_edge, label %if.then45.if.end50_crit_edge

if.then45.if.end50_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end50:                                         ; preds = %if.then45.if.end50_crit_edge, %if.end42.if.end50_crit_edge
  %and51 = and i32 %im_protocols.addr.1, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %cmp52 = icmp eq i32 %and51, 0
  br i1 %cmp52, label %if.then53, label %if.end50.if.end58_crit_edge

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then53:                                        ; preds = %if.end50
  %call54 = call i32 @nfc_hci_disconnect_gate(ptr noundef %hdev, i8 noundef zeroext 18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then53.cleanup_crit_edge, label %if.then53.if.end58_crit_edge

if.then53.if.end58_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then53.cleanup_crit_edge:                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end58:                                         ; preds = %if.then53.if.end58_crit_edge, %if.end50.if.end58_crit_edge
  %call59 = call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 19, i8 noundef zeroext 16, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then61, label %if.end58.if.end64_crit_edge

if.end58.if.end64_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %call62 = call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 19, i8 noundef zeroext 17, ptr noundef null, i32 noundef 0) #5
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end58.if.end64_crit_edge, %if.end.if.end64_crit_edge
  %tm_protocols.addr.2 = phi i32 [ %tm_protocols.addr.1, %if.then61 ], [ %tm_protocols.addr.1, %if.end58.if.end64_crit_edge ], [ %tm_protocols, %if.end.if.end64_crit_edge ]
  %r.0 = phi i32 [ %call59, %if.then61 ], [ %call59, %if.end58.if.end64_crit_edge ], [ %call1, %if.end.if.end64_crit_edge ]
  %and65 = and i32 %tm_protocols.addr.2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.cleanup_crit_edge, label %if.then67

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then67:                                        ; preds = %if.end64
  %call68 = call i32 @nfc_hci_get_param(ptr noundef %hdev, i8 noundef zeroext 36, i8 noundef zeroext 8, ptr noundef nonnull %datarate_skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp slt i32 %call68, 0
  br i1 %cmp69, label %if.then67.cleanup_crit_edge, label %if.end71

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end71:                                         ; preds = %if.then67
  %20 = ptrtoint ptr %datarate_skb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %datarate_skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp72.not = icmp eq i32 %23, 0
  br i1 %cmp72.not, label %if.end71.if.end84_crit_edge, label %land.lhs.true

if.end71.if.end84_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

land.lhs.true:                                    ; preds = %if.end71
  %data = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 19
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp74.not = icmp eq i8 %27, 1
  br i1 %cmp74.not, label %land.lhs.true.if.end84_crit_edge, label %if.then76

land.lhs.true.if.end84_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.then76:                                        ; preds = %land.lhs.true
  %28 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %param, align 1
  %call79 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 36, i8 noundef zeroext 8, ptr noundef nonnull %param, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.then82, label %if.then76.if.end84_crit_edge

if.then76.if.end84_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.then82:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %datarate_skb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %datarate_skb, align 4
  call void @kfree_skb_reason(ptr noundef %30, i32 noundef 0) #5
  br label %cleanup

if.end84:                                         ; preds = %if.then76.if.end84_crit_edge, %land.lhs.true.if.end84_crit_edge, %if.end71.if.end84_crit_edge
  %31 = ptrtoint ptr %datarate_skb to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %datarate_skb, align 4
  call void @kfree_skb_reason(ptr noundef %32, i32 noundef 0) #5
  %33 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %param, align 1
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 8, ptr %1, align 1
  %call88 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 36, i8 noundef zeroext 6, ptr noundef nonnull %param, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %if.end84.cleanup_crit_edge, label %if.end92

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end92:                                         ; preds = %if.end84
  %35 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 64, ptr %param, align 1
  %call95 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 36, i8 noundef zeroext 7, ptr noundef nonnull %param, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %if.end92.cleanup_crit_edge, label %if.end99

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end99:                                         ; preds = %if.end92
  %call100 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 36, i8 noundef zeroext 5, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.end99.cleanup_crit_edge, label %if.end104

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end104:                                        ; preds = %if.end99
  %36 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %param, align 1
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %1, align 1
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %2, align 1
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -2, ptr %3, align 1
  %40 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 83, ptr %4, align 1
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 84, ptr %5, align 1
  %42 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 77, ptr %6, align 1
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 105, ptr %7, align 1
  %44 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 99, ptr %8, align 1
  %45 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 114, ptr %9, align 1
  %46 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %10, align 1
  %call117 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 36, i8 noundef zeroext 4, ptr noundef nonnull %param, i32 noundef 19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %if.end104.cleanup_crit_edge, label %if.end121

if.end104.cleanup_crit_edge:                      ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end121:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %param to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %param, align 1
  %call124 = call i32 @nfc_hci_set_param(ptr noundef %hdev, i8 noundef zeroext 36, i8 noundef zeroext 1, ptr noundef nonnull %param, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end121, %if.end104.cleanup_crit_edge, %if.end99.cleanup_crit_edge, %if.end92.cleanup_crit_edge, %if.end84.cleanup_crit_edge, %if.then82, %if.then67.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.then53.cleanup_crit_edge, %if.then45.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call79, %if.then82 ], [ %call1, %entry.cleanup_crit_edge ], [ %call5, %if.then4.cleanup_crit_edge ], [ %call13, %if.then12.cleanup_crit_edge ], [ %call21, %if.then20.cleanup_crit_edge ], [ %call34, %if.end33.cleanup_crit_edge ], [ %call38, %if.end37.cleanup_crit_edge ], [ %call46, %if.then45.cleanup_crit_edge ], [ %call54, %if.then53.cleanup_crit_edge ], [ %call68, %if.then67.cleanup_crit_edge ], [ %call88, %if.end84.cleanup_crit_edge ], [ %call95, %if.end92.cleanup_crit_edge ], [ %call100, %if.end99.cleanup_crit_edge ], [ %call117, %if.end104.cleanup_crit_edge ], [ %call124, %if.end121 ], [ %r.0, %if.end64.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datarate_skb) #5
  call void @llvm.lifetime.end.p0(i64 19, ptr nonnull %param) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pol_req) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st21nfca_hci_stop_poll(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext 1, i8 noundef zeroext 48, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_dep_link_up(ptr noundef %hdev, ptr nocapture noundef readonly %target, i8 noundef zeroext %comm_mode, ptr noundef %gb, i32 noundef %gb_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #5
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  %idx1 = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %idx1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %idx1, align 1
  %call2 = tail call i32 @st21nfca_im_send_atr_req(ptr noundef %hdev, ptr noundef %gb, i32 noundef %gb_len) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_dep_link_down(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #5
  %state = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %state, align 4
  %call1 = tail call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext 1, i8 noundef zeroext 48, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_target_from_gate(ptr noundef %hdev, i8 noundef zeroext %gate, ptr nocapture noundef writeonly %target) #0 align 64 {
entry:
  %inventory_skb.i = alloca ptr, align 4
  %uid_skb.i = alloca ptr, align 4
  %sak_skb.i = alloca ptr, align 4
  %atqa_skb.i = alloca ptr, align 4
  %uid = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %uid)
  %0 = call ptr @memset(ptr %uid, i32 255, i32 10)
  %1 = zext i8 %gate to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %gate, label %entry.cleanup_crit_edge [
    i8 20, label %sw.bb
    i8 21, label %sw.bb1
    i8 18, label %sw.bb30
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %supported_protocols = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 1
  %2 = ptrtoint ptr %supported_protocols to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8, ptr %supported_protocols, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %atqa_skb.i) #5
  %3 = ptrtoint ptr %atqa_skb.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %atqa_skb.i, align 4
  %call.i = call i32 @nfc_hci_get_param(ptr noundef %hdev, i8 noundef zeroext 21, i8 noundef zeroext 3, ptr noundef nonnull %atqa_skb.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb1.st21nfca_get_iso14443_3_atqa.exit.thread_crit_edge, label %if.end.i

sw.bb1.st21nfca_get_iso14443_3_atqa.exit.thread_crit_edge: ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %st21nfca_get_iso14443_3_atqa.exit.thread

if.end.i:                                         ; preds = %sw.bb1
  %4 = ptrtoint ptr %atqa_skb.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %atqa_skb.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1.not.i = icmp eq i32 %7, 2
  br i1 %cmp1.not.i, label %if.end, label %if.end.i.st21nfca_get_iso14443_3_atqa.exit.thread_crit_edge

if.end.i.st21nfca_get_iso14443_3_atqa.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %st21nfca_get_iso14443_3_atqa.exit.thread

st21nfca_get_iso14443_3_atqa.exit.thread:         ; preds = %if.end.i.st21nfca_get_iso14443_3_atqa.exit.thread_crit_edge, %sw.bb1.st21nfca_get_iso14443_3_atqa.exit.thread_crit_edge
  %r.0.i.ph = phi i32 [ -71, %if.end.i.st21nfca_get_iso14443_3_atqa.exit.thread_crit_edge ], [ %call.i, %sw.bb1.st21nfca_get_iso14443_3_atqa.exit.thread_crit_edge ]
  %8 = ptrtoint ptr %atqa_skb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %atqa_skb.i, align 4
  call void @kfree_skb_reason(ptr noundef %9, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %atqa_skb.i) #5
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %14 = ptrtoint ptr %atqa_skb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %atqa_skb.i, align 4
  call void @kfree_skb_reason(ptr noundef %15, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %atqa_skb.i) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %13)
  %cmp4 = icmp eq i16 %13, 12
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %supported_protocols7 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 1
  %16 = ptrtoint ptr %supported_protocols7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %supported_protocols7, align 4
  %sens_res = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 2
  %17 = ptrtoint ptr %sens_res to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 3072, ptr %sens_res, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sak_skb.i) #5
  %18 = ptrtoint ptr %sak_skb.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sak_skb.i, align 4
  %call.i61 = call i32 @nfc_hci_get_param(ptr noundef %hdev, i8 noundef zeroext 21, i8 noundef zeroext 4, ptr noundef nonnull %sak_skb.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp.i62 = icmp slt i32 %call.i61, 0
  br i1 %cmp.i62, label %if.else.st21nfca_get_iso14443_3_sak.exit.thread_crit_edge, label %if.end.i65

if.else.st21nfca_get_iso14443_3_sak.exit.thread_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %st21nfca_get_iso14443_3_sak.exit.thread

if.end.i65:                                       ; preds = %if.else
  %19 = ptrtoint ptr %sak_skb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sak_skb.i, align 4
  %len.i63 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %len.i63 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp1.not.i64 = icmp eq i32 %22, 1
  br i1 %cmp1.not.i64, label %if.end12, label %if.end.i65.st21nfca_get_iso14443_3_sak.exit.thread_crit_edge

if.end.i65.st21nfca_get_iso14443_3_sak.exit.thread_crit_edge: ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %st21nfca_get_iso14443_3_sak.exit.thread

st21nfca_get_iso14443_3_sak.exit.thread:          ; preds = %if.end.i65.st21nfca_get_iso14443_3_sak.exit.thread_crit_edge, %if.else.st21nfca_get_iso14443_3_sak.exit.thread_crit_edge
  %r.0.i68.ph = phi i32 [ -71, %if.end.i65.st21nfca_get_iso14443_3_sak.exit.thread_crit_edge ], [ %call.i61, %if.else.st21nfca_get_iso14443_3_sak.exit.thread_crit_edge ]
  %23 = ptrtoint ptr %sak_skb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sak_skb.i, align 4
  call void @kfree_skb_reason(ptr noundef %24, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sak_skb.i) #5
  br label %cleanup

if.end12:                                         ; preds = %if.end.i65
  %data.i66 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 19
  %25 = ptrtoint ptr %data.i66 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i66, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %29 = ptrtoint ptr %sak_skb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sak_skb.i, align 4
  call void @kfree_skb_reason(ptr noundef %30, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sak_skb.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uid_skb.i) #5
  %31 = ptrtoint ptr %uid_skb.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %uid_skb.i, align 4
  %call.i69 = call i32 @nfc_hci_get_param(ptr noundef %hdev, i8 noundef zeroext 21, i8 noundef zeroext 2, ptr noundef nonnull %uid_skb.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp.i70 = icmp slt i32 %call.i69, 0
  br i1 %cmp.i70, label %if.end12.st21nfca_get_iso14443_3_uid.exit.thread_crit_edge, label %if.end.i71

if.end12.st21nfca_get_iso14443_3_uid.exit.thread_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %st21nfca_get_iso14443_3_uid.exit.thread

if.end.i71:                                       ; preds = %if.end12
  %32 = ptrtoint ptr %uid_skb.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %uid_skb.i, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len1.i, align 4
  %36 = add i32 %35, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %36)
  %37 = icmp ult i32 %36, -10
  br i1 %37, label %if.end.i71.st21nfca_get_iso14443_3_uid.exit.thread_crit_edge, label %if.end17

if.end.i71.st21nfca_get_iso14443_3_uid.exit.thread_crit_edge: ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %st21nfca_get_iso14443_3_uid.exit.thread

st21nfca_get_iso14443_3_uid.exit.thread:          ; preds = %if.end.i71.st21nfca_get_iso14443_3_uid.exit.thread_crit_edge, %if.end12.st21nfca_get_iso14443_3_uid.exit.thread_crit_edge
  %r.0.i73.ph = phi i32 [ -71, %if.end.i71.st21nfca_get_iso14443_3_uid.exit.thread_crit_edge ], [ %call.i69, %if.end12.st21nfca_get_iso14443_3_uid.exit.thread_crit_edge ]
  %38 = ptrtoint ptr %uid_skb.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %uid_skb.i, align 4
  call void @kfree_skb_reason(ptr noundef %39, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid_skb.i) #5
  br label %cleanup

if.end17:                                         ; preds = %if.end.i71
  %data.i72 = getelementptr inbounds %struct.sk_buff, ptr %33, i32 0, i32 19
  %40 = ptrtoint ptr %data.i72 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i72, align 4
  %42 = call ptr @memcpy(ptr %uid, ptr %41, i32 %35)
  %43 = ptrtoint ptr %uid_skb.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %uid_skb.i, align 4
  call void @kfree_skb_reason(ptr noundef %44, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid_skb.i) #5
  %call18 = call i32 @nfc_hci_sak_to_protocol(i8 noundef zeroext %28) #5
  %supported_protocols19 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 1
  %45 = ptrtoint ptr %supported_protocols19 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call18, ptr %supported_protocols19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18)
  %cmp21 = icmp eq i32 %call18, -1
  br i1 %cmp21, label %if.end17.cleanup_crit_edge, label %if.end24

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %sens_res25 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 2
  %46 = ptrtoint ptr %sens_res25 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %13, ptr %sens_res25, align 4
  %sel_res = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 3
  %47 = ptrtoint ptr %sel_res to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %28, ptr %sel_res, align 2
  %nfcid1 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 5
  %48 = call ptr @memcpy(ptr %nfcid1, ptr %uid, i32 %35)
  %conv28 = trunc i32 %35 to i8
  %nfcid1_len = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 4
  %49 = ptrtoint ptr %nfcid1_len to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv28, ptr %nfcid1_len, align 1
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  %supported_protocols31 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 1
  %50 = ptrtoint ptr %supported_protocols31 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 128, ptr %supported_protocols31, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inventory_skb.i) #5
  %51 = ptrtoint ptr %inventory_skb.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %inventory_skb.i, align 4
  %call.i74 = call i32 @nfc_hci_get_param(ptr noundef %hdev, i8 noundef zeroext 18, i8 noundef zeroext 1, ptr noundef nonnull %inventory_skb.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %cmp.i75 = icmp slt i32 %call.i74, 0
  br i1 %cmp.i75, label %sw.bb30.st21nfca_get_iso15693_inventory.exit.thread_crit_edge, label %if.end.i77

sw.bb30.st21nfca_get_iso15693_inventory.exit.thread_crit_edge: ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #7
  br label %st21nfca_get_iso15693_inventory.exit.thread

if.end.i77:                                       ; preds = %sw.bb30
  %52 = ptrtoint ptr %inventory_skb.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %inventory_skb.i, align 4
  %call1.i = call ptr @skb_pull(ptr noundef %53, i32 noundef 2) #5
  %54 = ptrtoint ptr %inventory_skb.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %inventory_skb.i, align 4
  %len.i76 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %len.i76 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len.i76, align 4
  %58 = add i32 %57, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %58)
  %59 = icmp ult i32 %58, -8
  br i1 %59, label %if.end.i77.st21nfca_get_iso15693_inventory.exit.thread_crit_edge, label %st21nfca_get_iso15693_inventory.exit

if.end.i77.st21nfca_get_iso15693_inventory.exit.thread_crit_edge: ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #7
  br label %st21nfca_get_iso15693_inventory.exit.thread

st21nfca_get_iso15693_inventory.exit.thread:      ; preds = %if.end.i77.st21nfca_get_iso15693_inventory.exit.thread_crit_edge, %sw.bb30.st21nfca_get_iso15693_inventory.exit.thread_crit_edge
  %r.0.i80.ph = phi i32 [ -71, %if.end.i77.st21nfca_get_iso15693_inventory.exit.thread_crit_edge ], [ %call.i74, %sw.bb30.st21nfca_get_iso15693_inventory.exit.thread_crit_edge ]
  %60 = ptrtoint ptr %inventory_skb.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %inventory_skb.i, align 4
  call void @kfree_skb_reason(ptr noundef %61, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inventory_skb.i) #5
  br label %cleanup

st21nfca_get_iso15693_inventory.exit:             ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #7
  %iso15693_uid.i = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 16
  %data.i78 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 19
  %62 = ptrtoint ptr %data.i78 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i78, align 4
  %64 = call ptr @memcpy(ptr %iso15693_uid.i, ptr %63, i32 %57)
  %65 = load ptr, ptr %data.i78, align 4
  %arrayidx.i = getelementptr i8, ptr %65, i32 1
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i, align 1
  %iso15693_dsfid.i = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 15
  %68 = ptrtoint ptr %iso15693_dsfid.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %iso15693_dsfid.i, align 2
  %is_iso15693.i = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 14
  %69 = ptrtoint ptr %is_iso15693.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %is_iso15693.i, align 1
  %70 = ptrtoint ptr %inventory_skb.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %inventory_skb.i, align 4
  call void @kfree_skb_reason(ptr noundef %71, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inventory_skb.i) #5
  br label %cleanup

cleanup:                                          ; preds = %st21nfca_get_iso15693_inventory.exit, %st21nfca_get_iso15693_inventory.exit.thread, %if.end24, %if.end17.cleanup_crit_edge, %st21nfca_get_iso14443_3_uid.exit.thread, %st21nfca_get_iso14443_3_sak.exit.thread, %if.then6, %st21nfca_get_iso14443_3_atqa.exit.thread, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -71, %if.end17.cleanup_crit_edge ], [ -71, %entry.cleanup_crit_edge ], [ %r.0.i.ph, %st21nfca_get_iso14443_3_atqa.exit.thread ], [ %r.0.i68.ph, %st21nfca_get_iso14443_3_sak.exit.thread ], [ %r.0.i73.ph, %st21nfca_get_iso14443_3_uid.exit.thread ], [ %r.0.i80.ph, %st21nfca_get_iso15693_inventory.exit.thread ], [ 0, %st21nfca_get_iso15693_inventory.exit ], [ 0, %if.then6 ], [ 0, %if.end24 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %uid)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_complete_target_discovered(ptr noundef %hdev, i8 noundef zeroext %gate, ptr nocapture noundef %target) #0 align 64 {
entry:
  %nfcid_skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nfcid_skb) #5
  %0 = ptrtoint ptr %nfcid_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %nfcid_skb, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %gate)
  %cmp = icmp eq i8 %gate, 20
  br i1 %cmp, label %if.then, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.then:                                          ; preds = %entry
  %call = call i32 @nfc_hci_get_param(ptr noundef %hdev, i8 noundef zeroext 20, i8 noundef zeroext 3, ptr noundef nonnull %nfcid_skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp slt i32 %call, 0
  br i1 %cmp2, label %if.then.exit_crit_edge, label %if.end

if.then.exit_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end:                                           ; preds = %if.then
  %1 = ptrtoint ptr %nfcid_skb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nfcid_skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %4)
  %cmp5 = icmp ugt i32 %4, 18
  br i1 %cmp5, label %if.end.exit_crit_edge, label %if.end8

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp10.not = icmp eq i32 %4, 0
  br i1 %cmp10.not, label %if.else28, label %if.then12

if.then12:                                        ; preds = %if.end8
  %sensf_res = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 11
  %data = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = call ptr @memcpy(ptr %sensf_res, ptr %6, i32 %4)
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %conv15 = trunc i32 %9 to i8
  %sensf_res_len = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 10
  %10 = ptrtoint ptr %sensf_res_len to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv15, ptr %sensf_res_len, align 4
  %11 = ptrtoint ptr %sensf_res to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sensf_res, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp18 = icmp eq i8 %12, 1
  br i1 %cmp18, label %land.lhs.true, label %if.then12.if.else_crit_edge

if.then12.if.else_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.then12
  %arrayidx21 = getelementptr %struct.nfc_target, ptr %target, i32 0, i32 11, i32 1
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %14)
  %cmp23 = icmp eq i8 %14, -2
  br i1 %cmp23, label %land.lhs.true.if.end47_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then12.if.else_crit_edge
  br label %if.end47

if.else28:                                        ; preds = %if.end8
  call void @kfree_skb_reason(ptr noundef %2, i32 noundef 0) #5
  %15 = ptrtoint ptr %nfcid_skb to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %nfcid_skb, align 4
  %call29 = call i32 @nfc_hci_get_param(ptr noundef %hdev, i8 noundef zeroext 20, i8 noundef zeroext 4, ptr noundef nonnull %nfcid_skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.else28.exit_crit_edge, label %if.end33

if.else28.exit_crit_edge:                         ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end33:                                         ; preds = %if.else28
  %16 = ptrtoint ptr %nfcid_skb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nfcid_skb, align 4
  %len34 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %len34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %19)
  %cmp35 = icmp ugt i32 %19, 10
  br i1 %cmp35, label %if.end33.exit_crit_edge, label %if.end38

if.end33.exit_crit_edge:                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %exit

if.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %sensf_res39 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 11
  %data41 = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %20 = ptrtoint ptr %data41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data41, align 4
  %22 = call ptr @memcpy(ptr %sensf_res39, ptr %21, i32 %19)
  %23 = ptrtoint ptr %len34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len34, align 4
  %conv44 = trunc i32 %24 to i8
  %sensf_res_len45 = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 10
  %25 = ptrtoint ptr %sensf_res_len45 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv44, ptr %sensf_res_len45, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end38, %if.else, %land.lhs.true.if.end47_crit_edge
  %.sink = phi i32 [ 8, %if.else ], [ 32, %if.end38 ], [ 32, %land.lhs.true.if.end47_crit_edge ]
  %supported_protocols = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 1
  %26 = ptrtoint ptr %supported_protocols to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %supported_protocols, align 4
  %hci_reader_gate = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 12
  %27 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 20, ptr %hci_reader_gate, align 1
  br label %exit

exit:                                             ; preds = %if.end47, %if.end33.exit_crit_edge, %if.else28.exit_crit_edge, %if.end.exit_crit_edge, %if.then.exit_crit_edge, %entry.exit_crit_edge
  %r.0 = phi i32 [ %call, %if.then.exit_crit_edge ], [ %call29, %if.else28.exit_crit_edge ], [ -71, %if.end.exit_crit_edge ], [ -71, %if.end33.exit_crit_edge ], [ 1, %if.end47 ], [ 1, %entry.exit_crit_edge ]
  %28 = ptrtoint ptr %nfcid_skb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nfcid_skb, align 4
  call void @kfree_skb_reason(ptr noundef %29, i32 noundef 0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nfcid_skb) #5
  ret i32 %r.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_im_transceive(ptr noundef %hdev, ptr nocapture noundef readonly %target, ptr noundef %skb, ptr noundef %cb, ptr noundef %cb_context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #5
  %hci_reader_gate = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 12
  %0 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hci_reader_gate, align 1
  %conv = zext i8 %1 to i32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef %3) #9
  %4 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hci_reader_gate, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %5, label %entry.cleanup_crit_edge [
    i8 20, label %sw.bb
    i8 21, label %sw.bb10
    i8 18, label %sw.bb16
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %supported_protocols = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 1
  %7 = ptrtoint ptr %supported_protocols to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %supported_protocols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %8)
  %cmp = icmp eq i32 %8, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @st21nfca_im_send_dep_req(ptr noundef %hdev, ptr noundef %skb) #5
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #5
  %9 = ptrtoint ptr %call6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 26, ptr %call6, align 1
  %10 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hci_reader_gate, align 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %call9 = tail call i32 @nfc_hci_send_cmd_async(ptr noundef %hdev, i8 noundef zeroext %11, i8 noundef zeroext 16, ptr noundef %13, i32 noundef %15, ptr noundef %cb, ptr noundef %cb_context) #5
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #5
  %16 = ptrtoint ptr %call11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 26, ptr %call11, align 1
  %17 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hci_reader_gate, align 1
  %data13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data13, align 4
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %call15 = tail call i32 @nfc_hci_send_cmd_async(ptr noundef %hdev, i8 noundef zeroext %18, i8 noundef zeroext 16, ptr noundef %20, i32 noundef %22, ptr noundef %cb, ptr noundef %cb_context) #5
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %async_cb_type = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 6
  %23 = ptrtoint ptr %async_cb_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %async_cb_type, align 4
  %async_cb = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 7
  %24 = ptrtoint ptr %async_cb to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cb, ptr %async_cb, align 4
  %async_cb_context = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 8
  %25 = ptrtoint ptr %async_cb_context to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %cb_context, ptr %async_cb_context, align 4
  %call17 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #5
  %26 = ptrtoint ptr %call17 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 23, ptr %call17, align 1
  %27 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hci_reader_gate, align 1
  %data19 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %29 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data19, align 4
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 4
  %call21 = tail call i32 @nfc_hci_send_cmd_async(ptr noundef %hdev, i8 noundef zeroext %28, i8 noundef zeroext 16, ptr noundef %30, i32 noundef %32, ptr noundef nonnull @st21nfca_hci_data_exchange_cb, ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb16, %sw.bb10, %if.end, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %sw.bb16 ], [ %call15, %sw.bb10 ], [ %call5, %if.then ], [ %call9, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_tm_send(ptr noundef %hdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @st21nfca_tm_send_dep_res(ptr noundef %hdev, ptr noundef %skb) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_check_presence(ptr noundef %hdev, ptr nocapture noundef readonly %target) #0 align 64 {
entry:
  %fwi = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fwi) #5
  %0 = ptrtoint ptr %fwi to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 17, ptr %fwi, align 1
  %hci_reader_gate = getelementptr inbounds %struct.nfc_target, ptr %target, i32 0, i32 12
  %1 = ptrtoint ptr %hci_reader_gate to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hci_reader_gate, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %2, label %entry.cleanup_crit_edge [
    i8 19, label %entry.sw.bb_crit_edge
    i8 17, label %entry.sw.bb_crit_edge8
    i8 21, label %sw.bb2
  ]

entry.sw.bb_crit_edge8:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge8
  %call = call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext %2, i8 noundef zeroext 16, ptr noundef nonnull %fwi, i32 noundef 1, ptr noundef null) #5
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @nfc_hci_send_cmd(ptr noundef %hdev, i8 noundef zeroext 21, i8 noundef zeroext 48, ptr noundef null, i32 noundef 0, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.bb2 ], [ %call, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fwi) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st21nfca_hci_event_received(ptr noundef %hdev, i8 noundef zeroext %pipe, i8 noundef zeroext %event, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i8 %pipe to i32
  %arrayidx = getelementptr %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 16, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 2
  %dest_host = getelementptr %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 16, i32 %idxprom, i32 1
  %2 = ptrtoint ptr %dest_host to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dest_host, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st21nfca_hci_event_received.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st21nfca_hci_event_received, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %event to i32
  %conv7 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st21nfca_hci_event_received.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.16, i32 noundef %conv, i32 noundef %conv7) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %1, label %do.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 36, label %sw.bb10
    i8 65, label %sw.bb12
    i8 -16, label %sw.bb14
    i8 4, label %sw.bb16
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @st21nfca_admin_event_received(ptr noundef %hdev, i8 noundef zeroext %event, ptr noundef %skb)
  br label %cleanup

sw.bb10:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 @st21nfca_dep_event_received(ptr noundef %hdev, i8 noundef zeroext %event, ptr noundef %skb) #5
  br label %cleanup

sw.bb12:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 @st21nfca_connectivity_event_received(ptr noundef %hdev, i8 noundef zeroext %3, i8 noundef zeroext %event, ptr noundef %skb) #5
  br label %cleanup

sw.bb14:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 @st21nfca_apdu_reader_event_received(ptr noundef %hdev, i8 noundef zeroext %event, ptr noundef %skb) #5
  br label %cleanup

sw.bb16:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %call17 = tail call i32 @st21nfca_hci_loopback_event_received(ptr noundef %hdev, i8 noundef zeroext %event, ptr noundef %skb) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %sw.bb16 ], [ %call15, %sw.bb14 ], [ %call13, %sw.bb12 ], [ %call11, %sw.bb10 ], [ 0, %sw.bb ], [ 1, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st21nfca_hci_cmd_received(ptr noundef %hdev, i8 noundef zeroext %pipe, i8 noundef zeroext %cmd, ptr nocapture noundef readnone %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #5
  %idxprom = zext i8 %pipe to i32
  %arrayidx = getelementptr %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 16, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st21nfca_hci_cmd_received.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st21nfca_hci_cmd_received, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %cmd to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st21nfca_hci_cmd_received.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.23, i32 noundef %conv) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %cmd)
  %cond = icmp eq i8 %cmd, 3
  br i1 %cond, label %sw.bb, label %do.end.sw.epilog_crit_edge

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %1)
  %cmp.not = icmp eq i8 %1, -16
  br i1 %cmp.not, label %sw.bb.if.end15_crit_edge, label %land.lhs.true

sw.bb.if.end15_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

land.lhs.true:                                    ; preds = %sw.bb
  %dest_host = getelementptr %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 16, i32 %idxprom, i32 1
  %2 = ptrtoint ptr %dest_host to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dest_host, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp12.not = icmp eq i8 %3, 2
  br i1 %cmp12.not, label %land.lhs.true.if.end15_crit_edge, label %if.then14

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %count_pipes = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 10, i32 8
  %4 = ptrtoint ptr %count_pipes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count_pipes, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %count_pipes, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true.if.end15_crit_edge, %sw.bb.if.end15_crit_edge
  %count_pipes17 = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 10, i32 8
  %6 = ptrtoint ptr %count_pipes17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count_pipes17, align 4
  %expected_pipes = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 10, i32 7
  %8 = ptrtoint ptr %expected_pipes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %expected_pipes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp19 = icmp eq i32 %7, %9
  br i1 %cmp19, label %if.then21, label %if.end15.sw.epilog_crit_edge

if.end15.sw.epilog_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then21:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %se_active_timer = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 10, i32 5
  %call23 = tail call i32 @del_timer_sync(ptr noundef %se_active_timer) #5
  %se_active = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 10, i32 6
  %10 = ptrtoint ptr %se_active to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %se_active, align 4
  %11 = ptrtoint ptr %count_pipes17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %count_pipes17, align 4
  %req_completion = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 10, i32 1
  tail call void @complete(ptr noundef %req_completion) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then21, %if.end15.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st21nfca_hci_discover_se(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st21nfca_hci_enable_se(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st21nfca_hci_disable_se(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st21nfca_hci_se_io(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_connect_gate(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_send_cmd(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_set_param(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_get_param(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_send_event(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_disconnect_gate(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_get_local_general_bytes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st21nfca_im_send_atr_req(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_sak_to_protocol(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st21nfca_im_send_dep_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_send_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st21nfca_hci_data_exchange_cb(ptr nocapture noundef readonly %context, ptr noundef %skb, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %async_cb_type = getelementptr inbounds %struct.st21nfca_hci_info, ptr %context, i32 0, i32 6
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %sub = add i32 %3, -1
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %async_cb = getelementptr inbounds %struct.st21nfca_hci_info, ptr %context, i32 0, i32 7
  %4 = ptrtoint ptr %async_cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async_cb, align 4
  %async_cb_context = getelementptr inbounds %struct.st21nfca_hci_info, ptr %context, i32 0, i32 8
  %6 = ptrtoint ptr %async_cb_context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %async_cb_context, align 4
  tail call void %5(ptr noundef %7, ptr noundef %skb, i32 noundef %err) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br i1 %cmp, label %if.then2, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then2:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then2, %sw.default.sw.epilog_crit_edge, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st21nfca_tm_send_dep_res(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @st21nfca_admin_event_received(ptr noundef %hdev, i8 noundef zeroext %event, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st21nfca_admin_event_received.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st21nfca_admin_event_received, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %event to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st21nfca_admin_event_received.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.18, i32 noundef %conv) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %event)
  %cond = icmp eq i8 %event, 3
  br i1 %cond, label %sw.bb, label %do.end23

sw.bb:                                            ; preds = %do.end
  %se_active = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 10, i32 6
  %0 = ptrtoint ptr %se_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %se_active, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool5.not = icmp eq i8 %1, 0
  br i1 %tobool5.not, label %sw.bb.sw.epilog_crit_edge, label %if.then6

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then6:                                         ; preds = %sw.bb
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %tobool8.not = icmp sgt i8 %5, -1
  %se_active_timer = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 10, i32 5
  br i1 %tobool8.not, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 @del_timer_sync(ptr noundef %se_active_timer) #5
  %6 = ptrtoint ptr %se_active to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %se_active, align 4
  %req_completion = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 10, i32 1
  tail call void @complete(ptr noundef %req_completion) #5
  br label %sw.epilog

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %7, 200
  %call18 = tail call i32 @mod_timer(ptr noundef %se_active_timer, i32 noundef %add) #5
  br label %sw.epilog

do.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hdev, align 4
  %dev = getelementptr inbounds %struct.nfc_dev, ptr %9, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end23, %if.else, %if.then9, %sw.bb.sw.epilog_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st21nfca_dep_event_received(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st21nfca_connectivity_event_received(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st21nfca_apdu_reader_event_received(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st21nfca_hci_loopback_event_received(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !31, !32, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !62, !64, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @st21nfca_hci_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/nfc/st21nfca/core.c", i32 956, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/nfc/st21nfca/core.c", i32 974, i32 64}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/nfc/st21nfca/core.c", i32 975, i32 5}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/nfc/st21nfca/core.c", i32 994, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @st21nfca_hci_probe._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @st21nfca_hci_probe._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_st21nfca_hci_probe, !14, !"__ksymtab_st21nfca_hci_probe", i1 false, i1 false}
!14 = !{!"../drivers/nfc/st21nfca/core.c", i32 1022, i32 1}
!15 = !{ptr @__ksymtab_st21nfca_hci_remove, !16, !"__ksymtab_st21nfca_hci_remove", i1 false, i1 false}
!16 = !{!"../drivers/nfc/st21nfca/core.c", i32 1034, i32 1}
!17 = !{ptr @__UNIQUE_ID_file274, !18, !"__UNIQUE_ID_file274", i1 false, i1 false}
!18 = !{!"../drivers/nfc/st21nfca/core.c", i32 1036, i32 1}
!19 = !{ptr @__UNIQUE_ID_license275, !18, !"__UNIQUE_ID_license275", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_description276, !21, !"__UNIQUE_ID_description276", i1 false, i1 false}
!21 = !{!"../drivers/nfc/st21nfca/core.c", i32 1037, i32 1}
!22 = !{ptr @dev_mask, !23, !"dev_mask", i1 false, i1 false}
!23 = !{!"../drivers/nfc/st21nfca/core.c", i32 72, i32 8}
!24 = !{ptr @st21nfca_gates, !25, !"st21nfca_gates", i1 false, i1 false}
!25 = !{!"../drivers/nfc/st21nfca/core.c", i32 74, i32 34}
!26 = !{ptr @st21nfca_hci_ops, !27, !"st21nfca_hci_ops", i1 false, i1 false}
!27 = !{!"../drivers/nfc/st21nfca/core.c", i32 914, i32 33}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/nfc/st21nfca/core.c", i32 168, i32 4}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @st21nfca_hci_load_session._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @st21nfca_hci_load_session._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/nfc/st21nfca/core.c", i32 298, i32 17}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/nfc/st21nfca/core.c", i32 298, i32 29}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/nfc/st21nfca/core.c", i32 322, i32 2}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @st21nfca_hci_start_poll._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @st21nfca_hci_start_poll._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/nfc/st21nfca/core.c", i32 766, i32 2}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @st21nfca_hci_im_transceive._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @st21nfca_hci_im_transceive._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/nfc/st21nfca/core.c", i32 895, i32 2}
!49 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @st21nfca_hci_event_received.__UNIQUE_ID_ddebug273, !48, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/nfc/st21nfca/core.c", i32 861, i32 2}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @st21nfca_admin_event_received.__UNIQUE_ID_ddebug272, !53, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/nfc/st21nfca/core.c", i32 878, i32 3}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @st21nfca_admin_event_received._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @st21nfca_admin_event_received._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/nfc/st21nfca/core.c", i32 838, i32 2}
!64 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @st21nfca_hci_cmd_received.__UNIQUE_ID_ddebug271, !63, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{i8 0, i8 2}
!77 = !{i64 2148978746, i64 2148978751, i64 2148978764, i64 2148978808, i64 2148978842, i64 2148978863}
