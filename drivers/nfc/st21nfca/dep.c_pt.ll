; ModuleID = '/llk/IR_all_yes/drivers/nfc/st21nfca/dep.c_pt.bc'
source_filename = "../drivers/nfc/st21nfca/dep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+st21nfca_tm_send_dep_res\22, \22a\22\09"
module asm "\09.weak\09__crc_st21nfca_tm_send_dep_res\09\09\09\09"
module asm "\09.long\09__crc_st21nfca_tm_send_dep_res\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st21nfca_tm_send_dep_res:\09\09\09\09\09"
module asm "\09.asciz \09\22st21nfca_tm_send_dep_res\22\09\09\09\09\09"
module asm "__kstrtabns_st21nfca_tm_send_dep_res:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+st21nfca_dep_event_received\22, \22a\22\09"
module asm "\09.weak\09__crc_st21nfca_dep_event_received\09\09\09\09"
module asm "\09.long\09__crc_st21nfca_dep_event_received\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st21nfca_dep_event_received:\09\09\09\09\09"
module asm "\09.asciz \09\22st21nfca_dep_event_received\22\09\09\09\09\09"
module asm "__kstrtabns_st21nfca_dep_event_received:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+st21nfca_im_send_atr_req\22, \22a\22\09"
module asm "\09.weak\09__crc_st21nfca_im_send_atr_req\09\09\09\09"
module asm "\09.long\09__crc_st21nfca_im_send_atr_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st21nfca_im_send_atr_req:\09\09\09\09\09"
module asm "\09.asciz \09\22st21nfca_im_send_atr_req\22\09\09\09\09\09"
module asm "__kstrtabns_st21nfca_im_send_atr_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+st21nfca_im_send_dep_req\22, \22a\22\09"
module asm "\09.weak\09__crc_st21nfca_im_send_dep_req\09\09\09\09"
module asm "\09.long\09__crc_st21nfca_im_send_dep_req\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st21nfca_im_send_dep_req:\09\09\09\09\09"
module asm "\09.asciz \09\22st21nfca_im_send_dep_req\22\09\09\09\09\09"
module asm "__kstrtabns_st21nfca_im_send_dep_req:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+st21nfca_dep_init\22, \22a\22\09"
module asm "\09.weak\09__crc_st21nfca_dep_init\09\09\09\09"
module asm "\09.long\09__crc_st21nfca_dep_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st21nfca_dep_init:\09\09\09\09\09"
module asm "\09.asciz \09\22st21nfca_dep_init\22\09\09\09\09\09"
module asm "__kstrtabns_st21nfca_dep_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+st21nfca_dep_deinit\22, \22a\22\09"
module asm "\09.weak\09__crc_st21nfca_dep_deinit\09\09\09\09"
module asm "\09.long\09__crc_st21nfca_dep_deinit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_st21nfca_dep_deinit:\09\09\09\09\09"
module asm "\09.asciz \09\22st21nfca_dep_deinit\22\09\09\09\09\09"
module asm "__kstrtabns_st21nfca_dep_deinit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.st21nfca_hci_info = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, i32, ptr, ptr, %struct.st21nfca_dep_info, %struct.st21nfca_se_info, %struct.st21nfca_vendor_info }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.sk_buff = type { %union.anon.70, %union.anon.73, %union.anon.74, [48 x i8], %union.anon.75, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.77, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.70 = type { %struct.anon.71 }
%struct.anon.71 = type { ptr, ptr, %union.anon.72 }
%union.anon.72 = type { ptr }
%union.anon.73 = type { ptr }
%union.anon.74 = type { i64 }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { i32, ptr }
%union.anon.77 = type { %struct.anon.78 }
%struct.anon.78 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.79, i32, i32, i32, i16, i16, %union.anon.81, i32, %union.anon.82, %union.anon.83, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.79 = type { i32 }
%union.anon.81 = type { i32 }
%union.anon.82 = type { i32 }
%union.anon.83 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.st21nfca_atr_res = type { i8, i8, i8, [10 x i8], i8, i8, i8, i8, i8, [0 x i8] }
%struct.st21nfca_atr_req = type { i8, i8, i8, [10 x i8], i8, i8, i8, i8, [0 x i8] }
%struct.st21nfca_psl_res = type { i8, i8, i8, i8 }
%struct.st21nfca_psl_req = type { i8, i8, i8, i8, i8, i8 }
%struct.st21nfca_dep_req_res = type { i8, i8, i8, i8, i8, i8 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.nfc_target = type { i32, i32, i16, i8, i8, [10 x i8], i8, [8 x i8], i8, [12 x i8], i8, [18 x i8], i8, i8, i8, i8, [8 x i8] }
%struct.nfc_hci_dev = type { ptr, i32, i8, %struct.mutex, %struct.list_head, %struct.work_struct, %struct.timer_list, ptr, %struct.sk_buff_head, %struct.work_struct, %struct.sk_buff_head, ptr, ptr, %struct.nfc_hci_init_data, ptr, [256 x i8], [128 x %struct.nfc_hci_pipe], i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, ptr, ptr, i32, i32 }
%struct.sk_buff_head = type { %union.anon.90, i32, %struct.spinlock }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { ptr, ptr }
%struct.nfc_hci_init_data = type { i8, [50 x %struct.nfc_hci_gate], [9 x i8] }
%struct.nfc_hci_gate = type { i8, i8 }
%struct.nfc_hci_pipe = type { i8, i8 }

@__kstrtab_st21nfca_tm_send_dep_res = external dso_local constant [0 x i8], align 1
@__kstrtabns_st21nfca_tm_send_dep_res = external dso_local constant [0 x i8], align 1
@__ksymtab_st21nfca_tm_send_dep_res = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st21nfca_tm_send_dep_res to i32), ptr @__kstrtab_st21nfca_tm_send_dep_res, ptr @__kstrtabns_st21nfca_tm_send_dep_res }, section "___ksymtab+st21nfca_tm_send_dep_res", align 4
@st21nfca_dep_event_received.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 97, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st21nfca_hci\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"st21nfca_dep_event_received\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/nfc/st21nfca/dep.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dep event: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@st21nfca_dep_event_received._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 407, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"NFC: Unexpected event on card f gate\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st21nfca_dep_event_received._entry_ptr = internal global ptr @st21nfca_dep_event_received._entry, section ".printk_index", align 4
@__kstrtab_st21nfca_dep_event_received = external dso_local constant [0 x i8], align 1
@__kstrtabns_st21nfca_dep_event_received = external dso_local constant [0 x i8], align 1
@__ksymtab_st21nfca_dep_event_received = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st21nfca_dep_event_received to i32), ptr @__kstrtab_st21nfca_dep_event_received, ptr @__kstrtabns_st21nfca_dep_event_received }, section "___ksymtab+st21nfca_dep_event_received", align 4
@st21nfca_im_send_atr_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%d: ST21NFCA Protocol error: %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"st21nfca_im_send_atr_req\00", [39 x i8] zeroinitializer }, align 32
@st21nfca_im_send_atr_req._entry_ptr = internal global ptr @st21nfca_im_send_atr_req._entry, section ".printk_index", align 4
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"14.6.1.1\00", [23 x i8] zeroinitializer }, align 32
@__kstrtab_st21nfca_im_send_atr_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_st21nfca_im_send_atr_req = external dso_local constant [0 x i8], align 1
@__ksymtab_st21nfca_im_send_atr_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st21nfca_im_send_atr_req to i32), ptr @__kstrtab_st21nfca_im_send_atr_req, ptr @__kstrtabns_st21nfca_im_send_atr_req }, section "___ksymtab+st21nfca_im_send_atr_req", align 4
@__kstrtab_st21nfca_im_send_dep_req = external dso_local constant [0 x i8], align 1
@__kstrtabns_st21nfca_im_send_dep_req = external dso_local constant [0 x i8], align 1
@__ksymtab_st21nfca_im_send_dep_req = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st21nfca_im_send_dep_req to i32), ptr @__kstrtab_st21nfca_im_send_dep_req, ptr @__kstrtabns_st21nfca_im_send_dep_req }, section "___ksymtab+st21nfca_im_send_dep_req", align 4
@st21nfca_dep_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&info->dep_info.tx_work)\00", [53 x i8] zeroinitializer }, align 32
@__kstrtab_st21nfca_dep_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_st21nfca_dep_init = external dso_local constant [0 x i8], align 1
@__ksymtab_st21nfca_dep_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st21nfca_dep_init to i32), ptr @__kstrtab_st21nfca_dep_init, ptr @__kstrtabns_st21nfca_dep_init }, section "___ksymtab+st21nfca_dep_init", align 4
@__kstrtab_st21nfca_dep_deinit = external dso_local constant [0 x i8], align 1
@__kstrtabns_st21nfca_dep_deinit = external dso_local constant [0 x i8], align 1
@__ksymtab_st21nfca_dep_deinit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @st21nfca_dep_deinit to i32), ptr @__kstrtab_st21nfca_dep_deinit, ptr @__kstrtabns_st21nfca_dep_deinit }, section "___ksymtab+st21nfca_dep_deinit", align 4
@st21nfca_tm_recv_dep_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Received a ACK/NACK PDU\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"st21nfca_tm_recv_dep_req\00", [39 x i8] zeroinitializer }, align 32
@st21nfca_tm_recv_dep_req._entry_ptr = internal global ptr @st21nfca_tm_recv_dep_req._entry, section ".printk_index", align 4
@st21nfca_tm_recv_dep_req._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Received a SUPERVISOR PDU\0A\00", [35 x i8] zeroinitializer }, align 32
@st21nfca_tm_recv_dep_req._entry_ptr.15 = internal global ptr @st21nfca_tm_recv_dep_req._entry.13, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@st21nfca_im_recv_dep_res_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.16, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"st21nfca_im_recv_dep_res_cb\00", [36 x i8] zeroinitializer }, align 32
@st21nfca_im_recv_dep_res_cb._entry_ptr = internal global ptr @st21nfca_im_recv_dep_res_cb._entry, section ".printk_index", align 4
@st21nfca_im_recv_dep_res_cb._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.16, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@st21nfca_im_recv_dep_res_cb._entry_ptr.18 = internal global ptr @st21nfca_im_recv_dep_res_cb._entry.17, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 6]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 64, i64 128]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 64, i64 128]
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 389, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 407, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 502, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 646, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 336, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 339, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 590, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private constant [30 x i8] c"../drivers/nfc/st21nfca/dep.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 600, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__ksymtab_st21nfca_dep_deinit, ptr @__ksymtab_st21nfca_dep_event_received, ptr @__ksymtab_st21nfca_dep_init, ptr @__ksymtab_st21nfca_im_send_atr_req, ptr @__ksymtab_st21nfca_im_send_dep_req, ptr @__ksymtab_st21nfca_tm_send_dep_res, ptr @st21nfca_dep_event_received._entry, ptr @st21nfca_dep_event_received._entry_ptr, ptr @st21nfca_im_recv_dep_res_cb._entry, ptr @st21nfca_im_recv_dep_res_cb._entry.17, ptr @st21nfca_im_recv_dep_res_cb._entry_ptr, ptr @st21nfca_im_recv_dep_res_cb._entry_ptr.18, ptr @st21nfca_im_send_atr_req._entry, ptr @st21nfca_im_send_atr_req._entry_ptr, ptr @st21nfca_tm_recv_dep_req._entry, ptr @st21nfca_tm_recv_dep_req._entry.13, ptr @st21nfca_tm_recv_dep_req._entry_ptr, ptr @st21nfca_tm_recv_dep_req._entry_ptr.15, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @st21nfca_dep_init.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_dep_event_received._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_im_send_atr_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_dep_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_tm_recv_dep_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_tm_recv_dep_req._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_im_recv_dep_res_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st21nfca_im_recv_dep_res_cb._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st21nfca_tm_send_dep_res(ptr noundef %hdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #4
  %curr_nfc_dep_pni = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %curr_nfc_dep_pni, align 4
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #4
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %call1, align 1
  %call2 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #4
  %3 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 7, ptr %call2, align 1
  %call3 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #4
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -43, ptr %call3, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %conv = trunc i32 %6 to i8
  %call4 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #4
  %7 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %call4, align 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %call6 = tail call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 36, i8 noundef zeroext 16, ptr noundef %9, i32 noundef %11) #4
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  ret i32 %call6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_hci_get_clientdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_send_event(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st21nfca_dep_event_received(ptr noundef %hdev, i8 noundef zeroext %event, ptr noundef %skb) #0 align 64 {
entry:
  %bitrate.i.i.i = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @st21nfca_dep_event_received.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@st21nfca_dep_event_received, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !58

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %event to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @st21nfca_dep_event_received.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.3, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = zext i8 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %event, label %do.end12 [
    i8 19, label %sw.bb
    i8 18, label %do.end.sw.epilog_crit_edge
    i8 17, label %do.end.sw.epilog_crit_edge29
    i8 20, label %do.end.sw.epilog_crit_edge30
    i8 16, label %sw.bb5
  ]

do.end.sw.epilog_crit_edge30:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end.sw.epilog_crit_edge29:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %curr_nfc_dep_pni = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 9, i32 2
  %1 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %curr_nfc_dep_pni, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -44, i8 %5)
  %cond.i = icmp eq i8 %5, -44
  br i1 %cond.i, label %sw.bb.i, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb5
  %arrayidx2.i = getelementptr i8, ptr %3, i32 2
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2.i, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %7, label %sw.bb.i.cleanup_crit_edge [
    i8 0, label %sw.bb4.i
    i8 4, label %sw.bb5.i
    i8 6, label %sw.bb7.i
  ]

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb4.i:                                         ; preds = %sw.bb.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  %sub.i.i = add i32 %10, -1
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.i.i) #4
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %sw.bb4.i.st21nfca_tm_event_send_data.exit.thread_crit_edge, label %if.end.i.i

sw.bb4.i.st21nfca_tm_event_send_data.exit.thread_crit_edge: ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st21nfca_tm_event_send_data.exit.thread

if.end.i.i:                                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %12)
  %cmp.i.i = icmp ult i32 %12, 17
  br i1 %cmp.i.i, label %if.end.i.i.st21nfca_tm_event_send_data.exit.thread_crit_edge, label %if.end4.i.i

if.end.i.i.st21nfca_tm_event_send_data.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st21nfca_tm_event_send_data.exit.thread

if.end4.i.i:                                      ; preds = %if.end.i.i
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %16)
  %cmp5.i.i = icmp ult i8 %16, 17
  br i1 %cmp5.i.i, label %if.end4.i.i.st21nfca_tm_event_send_data.exit.thread_crit_edge, label %if.end8.i.i

if.end4.i.i.st21nfca_tm_event_send_data.exit.thread_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st21nfca_tm_event_send_data.exit.thread

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %call.i.i.i = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %14, align 1
  %conv.i.i.i = zext i8 %18 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -17
  %add.i.i.i = add nuw nsw i32 %conv.i.i.i, 1
  %call.i.i.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i.i.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end8.i.i.st21nfca_tm_event_send_data.exit.thread_crit_edge, label %if.end.i.i.i

if.end8.i.i.st21nfca_tm_event_send_data.exit.thread_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st21nfca_tm_event_send_data.exit.thread

if.end.i.i.i:                                     ; preds = %if.end8.i.i
  %call4.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef 18) #4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %19 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i.i, align 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 18)
  %22 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %14, align 1
  %add7.i.i.i = add i8 %23, 1
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %add7.i.i.i, ptr %20, align 1
  %cmd0.i.i.i = getelementptr inbounds %struct.st21nfca_atr_res, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %cmd0.i.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -43, ptr %cmd0.i.i.i, align 1
  %cmd1.i.i.i = getelementptr inbounds %struct.st21nfca_atr_res, ptr %20, i32 0, i32 2
  %26 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %cmd1.i.i.i, align 1
  %nfcid3.i.i.i = getelementptr inbounds %struct.st21nfca_atr_res, ptr %20, i32 0, i32 3
  %nfcid310.i.i.i = getelementptr inbounds %struct.st21nfca_atr_req, ptr %14, i32 0, i32 3
  %27 = call ptr @memcpy(ptr %nfcid3.i.i.i, ptr %nfcid310.i.i.i, i32 6)
  %bsi.i.i.i = getelementptr inbounds %struct.st21nfca_atr_res, ptr %20, i32 0, i32 5
  %28 = ptrtoint ptr %bsi.i.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %bsi.i.i.i, align 1
  %bri.i.i.i = getelementptr inbounds %struct.st21nfca_atr_res, ptr %20, i32 0, i32 6
  %29 = ptrtoint ptr %bri.i.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %bri.i.i.i, align 1
  %to.i.i.i = getelementptr inbounds %struct.st21nfca_atr_res, ptr %20, i32 0, i32 7
  %30 = ptrtoint ptr %to.i.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 10, ptr %to.i.i.i, align 1
  %ppi.i.i.i = getelementptr inbounds %struct.st21nfca_atr_res, ptr %20, i32 0, i32 8
  %31 = ptrtoint ptr %ppi.i.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 48, ptr %ppi.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %if.end.i.i.i.st21nfca_tm_send_atr_res.exit.i.i_crit_edge, label %if.then13.i.i.i

if.end.i.i.i.st21nfca_tm_send_atr_res.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st21nfca_tm_send_atr_res.exit.i.i

if.then13.i.i.i:                                  ; preds = %if.end.i.i.i
  %call14.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i.i, i32 noundef %sub.i.i.i) #4
  %32 = ptrtoint ptr %ppi.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ppi.i.i.i, align 1
  %34 = or i8 %33, 2
  store i8 %34, ptr %ppi.i.i.i, align 1
  %gbi.i.i.i = getelementptr inbounds %struct.st21nfca_atr_res, ptr %20, i32 0, i32 9
  %gbi19.i.i.i = getelementptr inbounds %struct.st21nfca_atr_req, ptr %14, i32 0, i32 8
  %35 = call ptr @memcpy(ptr %gbi.i.i.i, ptr %gbi19.i.i.i, i32 %sub.i.i.i)
  %36 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hdev, align 4
  %conv23.i.i.i = trunc i32 %sub.i.i.i to i8
  %call24.i.i.i = tail call i32 @nfc_set_remote_general_bytes(ptr noundef %37, ptr noundef %gbi.i.i.i, i8 noundef zeroext %conv23.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call24.i.i.i, 0
  br i1 %cmp.i.i.i, label %st21nfca_tm_send_atr_res.exit.thread33.i.i, label %if.then13.i.i.i.st21nfca_tm_send_atr_res.exit.i.i_crit_edge

if.then13.i.i.i.st21nfca_tm_send_atr_res.exit.i.i_crit_edge: ; preds = %if.then13.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st21nfca_tm_send_atr_res.exit.i.i

st21nfca_tm_send_atr_res.exit.thread33.i.i:       ; preds = %if.then13.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #4
  br label %st21nfca_tm_event_send_data.exit.thread

st21nfca_tm_send_atr_res.exit.i.i:                ; preds = %if.then13.i.i.i.st21nfca_tm_send_atr_res.exit.i.i_crit_edge, %if.end.i.i.i.st21nfca_tm_send_atr_res.exit.i.i_crit_edge
  %curr_nfc_dep_pni.i.i.i = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call.i.i.i, i32 0, i32 9, i32 2
  %38 = ptrtoint ptr %curr_nfc_dep_pni.i.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %curr_nfc_dep_pni.i.i.i, align 4
  %39 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i.i, align 4
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i.i.i, align 4
  %call30.i.i.i = tail call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 36, i8 noundef zeroext 16, ptr noundef %40, i32 noundef %42) #4
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i.i, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i.i)
  %tobool9.not.i.i = icmp eq i32 %call30.i.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end11.i.i, label %st21nfca_tm_send_atr_res.exit.i.i.st21nfca_tm_event_send_data.exit_crit_edge

st21nfca_tm_send_atr_res.exit.i.i.st21nfca_tm_event_send_data.exit_crit_edge: ; preds = %st21nfca_tm_send_atr_res.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st21nfca_tm_event_send_data.exit

if.end11.i.i:                                     ; preds = %st21nfca_tm_send_atr_res.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i.i, align 4
  %sub13.i.i = add i32 %44, -17
  %45 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hdev, align 4
  %gbi.i.i = getelementptr inbounds %struct.st21nfca_atr_req, ptr %14, i32 0, i32 8
  %call14.i.i = tail call i32 @nfc_tm_activated(ptr noundef %46, i32 noundef 32, i8 noundef zeroext 1, ptr noundef %gbi.i.i, i32 noundef %sub13.i.i) #4
  br label %st21nfca_tm_event_send_data.exit

sw.bb5.i:                                         ; preds = %sw.bb.i
  %len.i19.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %47 = ptrtoint ptr %len.i19.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len.i19.i, align 4
  %sub.i20.i = add i32 %48, -1
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.i20.i) #4
  %49 = ptrtoint ptr %len.i19.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len.i19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %50)
  %switch.i.i = icmp ult i32 %50, 6
  br i1 %switch.i.i, label %sw.bb5.i.st21nfca_tm_event_send_data.exit.thread_crit_edge, label %if.end4.i24.i

sw.bb5.i.st21nfca_tm_event_send_data.exit.thread_crit_edge: ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st21nfca_tm_event_send_data.exit.thread

if.end4.i24.i:                                    ; preds = %sw.bb5.i
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bitrate.i.i.i) #4
  %53 = ptrtoint ptr %bitrate.i.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %bitrate.i.i.i, align 2
  %call.i.i.i22.i = tail call ptr @__alloc_skb(i32 noundef 4, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %tobool.not.i.i23.i = icmp eq ptr %call.i.i.i22.i, null
  br i1 %tobool.not.i.i23.i, label %if.end4.i24.i.st21nfca_tm_send_psl_res.exit.i.i_crit_edge, label %if.end.i.i31.i

if.end4.i24.i.st21nfca_tm_send_psl_res.exit.i.i_crit_edge: ; preds = %if.end4.i24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st21nfca_tm_send_psl_res.exit.i.i

if.end.i.i31.i:                                   ; preds = %if.end4.i24.i
  %call1.i.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i22.i, i32 noundef 4) #4
  %data.i.i25.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i22.i, i32 0, i32 19
  %54 = ptrtoint ptr %data.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i25.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 4, ptr %55, align 1
  %cmd0.i.i26.i = getelementptr inbounds %struct.st21nfca_psl_res, ptr %55, i32 0, i32 1
  %57 = ptrtoint ptr %cmd0.i.i26.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 -43, ptr %cmd0.i.i26.i, align 1
  %cmd1.i.i27.i = getelementptr inbounds %struct.st21nfca_psl_res, ptr %55, i32 0, i32 2
  %58 = ptrtoint ptr %cmd1.i.i27.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 5, ptr %cmd1.i.i27.i, align 1
  %did.i.i.i = getelementptr inbounds %struct.st21nfca_psl_req, ptr %52, i32 0, i32 3
  %59 = ptrtoint ptr %did.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %did.i.i.i, align 1
  %did2.i.i.i = getelementptr inbounds %struct.st21nfca_psl_res, ptr %55, i32 0, i32 3
  %61 = ptrtoint ptr %did2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %did2.i.i.i, align 1
  %62 = load ptr, ptr %data.i.i25.i, align 4
  %len.i.i28.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i22.i, i32 0, i32 6
  %63 = ptrtoint ptr %len.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len.i.i28.i, align 4
  %call4.i.i29.i = tail call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 36, i8 noundef zeroext 16, ptr noundef %62, i32 noundef %64) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i29.i)
  %cmp.i.i30.i = icmp slt i32 %call4.i.i29.i, 0
  br i1 %cmp.i.i30.i, label %if.end.i.i31.i.error.i.i.i_crit_edge, label %if.end6.i.i.i

if.end.i.i31.i.error.i.i.i_crit_edge:             ; preds = %if.end.i.i31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.i.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i31.i
  %brs.i.i.i = getelementptr inbounds %struct.st21nfca_psl_req, ptr %52, i32 0, i32 4
  %65 = ptrtoint ptr %brs.i.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %brs.i.i.i, align 1
  %conv.i.i32.i = zext i8 %66 to i32
  %and.i.i.i = and i32 %conv.i.i32.i, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %and10.i.i.i = and i32 %conv.i.i32.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i.i)
  %tobool11.not.i.i.i = icmp eq i32 %and10.i.i.i, 0
  %or.cond.i.i.i = or i1 %tobool7.not.i.i.i, %tobool11.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end6.i.i.i.if.end14.i.i.i_crit_edge, label %if.then12.i.i.i

if.end6.i.i.i.if.end14.i.i.i_crit_edge:           ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14.i.i.i

if.then12.i.i.i:                                  ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %bitrate.i.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 2, ptr %bitrate.i.i.i, align 2
  %arrayidx13.i.i.i = getelementptr inbounds [2 x i8], ptr %bitrate.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 2, ptr %arrayidx13.i.i.i, align 1
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %if.then12.i.i.i, %if.end6.i.i.i.if.end14.i.i.i_crit_edge
  %call15.i.i.i = call i32 @nfc_hci_send_event(ptr noundef %hdev, i8 noundef zeroext 36, i8 noundef zeroext 22, ptr noundef nonnull %bitrate.i.i.i, i32 noundef 2) #4
  br label %error.i.i.i

error.i.i.i:                                      ; preds = %if.end14.i.i.i, %if.end.i.i31.i.error.i.i.i_crit_edge
  %r.0.i.i.i = phi i32 [ %call4.i.i29.i, %if.end.i.i31.i.error.i.i.i_crit_edge ], [ %call15.i.i.i, %if.end14.i.i.i ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i22.i, i32 noundef 0) #4
  br label %st21nfca_tm_send_psl_res.exit.i.i

st21nfca_tm_send_psl_res.exit.i.i:                ; preds = %error.i.i.i, %if.end4.i24.i.st21nfca_tm_send_psl_res.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %r.0.i.i.i, %error.i.i.i ], [ -12, %if.end4.i24.i.st21nfca_tm_send_psl_res.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bitrate.i.i.i) #4
  br label %st21nfca_tm_event_send_data.exit

sw.bb7.i:                                         ; preds = %sw.bb.i
  %call.i.i = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #4
  %len.i34.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %69 = ptrtoint ptr %len.i34.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %len.i34.i, align 4
  %sub.i35.i = add i32 %70, -1
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.i35.i) #4
  %71 = ptrtoint ptr %len.i34.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len.i34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %cmp.i36.i = icmp ult i32 %72, 4
  br i1 %cmp.i36.i, label %sw.bb7.i.st21nfca_tm_event_send_data.exit.thread_crit_edge, label %if.end.i39.i

sw.bb7.i.st21nfca_tm_event_send_data.exit.thread_crit_edge: ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st21nfca_tm_event_send_data.exit.thread

if.end.i39.i:                                     ; preds = %sw.bb7.i
  %73 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i, align 4
  %pfb.i.i = getelementptr inbounds %struct.st21nfca_dep_req_res, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %pfb.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %pfb.i.i, align 1
  %77 = and i8 %76, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i38.i = icmp eq i8 %77, 0
  %spec.select.i.i = select i1 %tobool.not.i38.i, i8 4, i8 5
  %78 = lshr i8 %76, 3
  %.lobit.i.i = and i8 %78, 1
  %size.1.i.i = add nuw nsw i8 %spec.select.i.i, %.lobit.i.i
  %conv14.i.i = zext i8 %size.1.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %conv14.i.i)
  %cmp15.i.i = icmp ult i32 %72, %conv14.i.i
  br i1 %cmp15.i.i, label %if.end.i39.i.st21nfca_tm_event_send_data.exit.thread_crit_edge, label %if.end18.i.i

if.end.i39.i.st21nfca_tm_event_send_data.exit.thread_crit_edge: ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %st21nfca_tm_event_send_data.exit.thread

if.end18.i.i:                                     ; preds = %if.end.i39.i
  %and21.i.i = and i8 %76, -32
  %79 = zext i8 %and21.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %and21.i.i, label %if.end18.i.i.sw.epilog.i.i_crit_edge [
    i8 0, label %sw.bb.i.i
    i8 64, label %do.end.i.i
    i8 -128, label %do.end31.i.i
  ]

if.end18.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %80 = and i8 %76, 3
  %curr_nfc_dep_pni.i.i = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call.i.i, i32 0, i32 9, i32 2
  %81 = ptrtoint ptr %curr_nfc_dep_pni.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %curr_nfc_dep_pni.i.i, align 4
  br label %sw.epilog.i.i

do.end.i.i:                                       ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call27.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #7
  br label %sw.epilog.i.i

do.end31.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call33.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #7
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %do.end31.i.i, %do.end.i.i, %sw.bb.i.i, %if.end18.i.i.sw.epilog.i.i_crit_edge
  %call35.i.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv14.i.i) #4
  %82 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hdev, align 4
  %call36.i.i = tail call i32 @nfc_tm_data_received(ptr noundef %83, ptr noundef %skb) #4
  br label %st21nfca_tm_event_send_data.exit

st21nfca_tm_event_send_data.exit:                 ; preds = %sw.epilog.i.i, %st21nfca_tm_send_psl_res.exit.i.i, %if.end11.i.i, %st21nfca_tm_send_atr_res.exit.i.i.st21nfca_tm_event_send_data.exit_crit_edge
  %retval.0.i20 = phi i32 [ %call30.i.i.i, %st21nfca_tm_send_atr_res.exit.i.i.st21nfca_tm_event_send_data.exit_crit_edge ], [ %call14.i.i, %if.end11.i.i ], [ %retval.0.i.i.i, %st21nfca_tm_send_psl_res.exit.i.i ], [ %call36.i.i, %sw.epilog.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i20)
  %cmp = icmp slt i32 %retval.0.i20, 0
  br i1 %cmp, label %st21nfca_tm_event_send_data.exit.st21nfca_tm_event_send_data.exit.thread_crit_edge, label %st21nfca_tm_event_send_data.exit.cleanup_crit_edge

st21nfca_tm_event_send_data.exit.cleanup_crit_edge: ; preds = %st21nfca_tm_event_send_data.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

st21nfca_tm_event_send_data.exit.st21nfca_tm_event_send_data.exit.thread_crit_edge: ; preds = %st21nfca_tm_event_send_data.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %st21nfca_tm_event_send_data.exit.thread

st21nfca_tm_event_send_data.exit.thread:          ; preds = %st21nfca_tm_event_send_data.exit.st21nfca_tm_event_send_data.exit.thread_crit_edge, %if.end.i39.i.st21nfca_tm_event_send_data.exit.thread_crit_edge, %sw.bb7.i.st21nfca_tm_event_send_data.exit.thread_crit_edge, %sw.bb5.i.st21nfca_tm_event_send_data.exit.thread_crit_edge, %st21nfca_tm_send_atr_res.exit.thread33.i.i, %if.end8.i.i.st21nfca_tm_event_send_data.exit.thread_crit_edge, %if.end4.i.i.st21nfca_tm_event_send_data.exit.thread_crit_edge, %if.end.i.i.st21nfca_tm_event_send_data.exit.thread_crit_edge, %sw.bb4.i.st21nfca_tm_event_send_data.exit.thread_crit_edge
  %retval.0.i2024 = phi i32 [ %retval.0.i20, %st21nfca_tm_event_send_data.exit.st21nfca_tm_event_send_data.exit.thread_crit_edge ], [ -5, %if.end.i39.i.st21nfca_tm_event_send_data.exit.thread_crit_edge ], [ -5, %sw.bb7.i.st21nfca_tm_event_send_data.exit.thread_crit_edge ], [ -5, %sw.bb5.i.st21nfca_tm_event_send_data.exit.thread_crit_edge ], [ -12, %if.end8.i.i.st21nfca_tm_event_send_data.exit.thread_crit_edge ], [ %call24.i.i.i, %st21nfca_tm_send_atr_res.exit.thread33.i.i ], [ -71, %if.end4.i.i.st21nfca_tm_event_send_data.exit.thread_crit_edge ], [ -71, %if.end.i.i.st21nfca_tm_event_send_data.exit.thread_crit_edge ], [ -5, %sw.bb4.i.st21nfca_tm_event_send_data.exit.thread_crit_edge ]
  br label %cleanup

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %84 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hdev, align 4
  %dev = getelementptr inbounds %struct.nfc_dev, ptr %85, i32 0, i32 5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge29, %do.end.sw.epilog_crit_edge30
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end12, %st21nfca_tm_event_send_data.exit.thread, %st21nfca_tm_event_send_data.exit.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end12 ], [ 0, %sw.epilog ], [ %retval.0.i2024, %st21nfca_tm_event_send_data.exit.thread ], [ 0, %st21nfca_tm_event_send_data.exit.cleanup_crit_edge ], [ 0, %sw.bb.i.cleanup_crit_edge ], [ 0, %sw.bb5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st21nfca_im_send_atr_req(ptr noundef %hdev, ptr nocapture noundef readonly %gb, i32 noundef %gb_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #4
  %to = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 9, i32 4
  %0 = ptrtoint ptr %to to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 10, ptr %to, align 1
  %1 = add i32 %gb_len, -49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -66, i32 %1)
  %cmp = icmp ult i32 %1, -66
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 502, ptr noundef nonnull @.str.9) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add3 = add nsw i32 %gb_len, 18
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add3, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %5, i32 1
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call7 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 17) #4
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 17)
  %cmd0 = getelementptr inbounds %struct.st21nfca_atr_req, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %cmd0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -44, ptr %cmd0, align 1
  %cmd1 = getelementptr inbounds %struct.st21nfca_atr_req, ptr %7, i32 0, i32 2
  %nfcid3 = getelementptr inbounds %struct.st21nfca_atr_req, ptr %7, i32 0, i32 3
  %10 = call ptr @memset(ptr %cmd1, i32 0, i32 11)
  %11 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdev, align 4
  %targets = getelementptr inbounds %struct.nfc_dev, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %targets to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %targets, align 8
  %sensf_res_len = getelementptr inbounds %struct.nfc_target, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %sensf_res_len to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sensf_res_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp8.not = icmp eq i8 %16, 0
  br i1 %cmp8.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %16 to i32
  %sensf_res = getelementptr inbounds %struct.nfc_target, ptr %14, i32 0, i32 11
  %17 = call ptr @memcpy(ptr %nfcid3, ptr %sensf_res, i32 %conv)
  br label %if.end18

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @get_random_bytes(ptr noundef %nfcid3, i32 noundef 10) #4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then10
  %did = getelementptr inbounds %struct.st21nfca_atr_req, ptr %7, i32 0, i32 4
  %18 = ptrtoint ptr %did to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %did, align 1
  %bsi = getelementptr inbounds %struct.st21nfca_atr_req, ptr %7, i32 0, i32 5
  %19 = ptrtoint ptr %bsi to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %bsi, align 1
  %bri = getelementptr inbounds %struct.st21nfca_atr_req, ptr %7, i32 0, i32 6
  %20 = ptrtoint ptr %bri to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %bri, align 1
  %ppi = getelementptr inbounds %struct.st21nfca_atr_req, ptr %7, i32 0, i32 7
  %21 = ptrtoint ptr %ppi to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 48, ptr %ppi, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gb_len)
  %tobool19.not = icmp eq i32 %gb_len, 0
  br i1 %tobool19.not, label %if.end18.if.end25_crit_edge, label %if.then20

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %ppi to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 50, ptr %ppi, align 1
  %call.i91 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %gb_len) #4
  %23 = call ptr @memcpy(ptr %call.i91, ptr %gb, i32 %gb_len)
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end18.if.end25_crit_edge
  %gb_len26 = getelementptr inbounds %struct.nfc_hci_dev, ptr %hdev, i32 0, i32 30
  %24 = ptrtoint ptr %gb_len26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gb_len26, align 4
  %26 = trunc i32 %25 to i8
  %conv28 = add i8 %26, 17
  %27 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv28, ptr %7, align 1
  %28 = ptrtoint ptr %to to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %to, align 1
  %30 = or i8 %29, 16
  %call34 = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 1) #4
  %31 = ptrtoint ptr %call34 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %call34, align 1
  %async_cb_type = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 6
  %32 = ptrtoint ptr %async_cb_type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %async_cb_type, align 4
  %async_cb_context = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 8
  %33 = ptrtoint ptr %async_cb_context to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call, ptr %async_cb_context, align 4
  %async_cb = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 7
  %34 = ptrtoint ptr %async_cb to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @st21nfca_im_recv_atr_res_cb, ptr %async_cb, align 4
  %35 = ptrtoint ptr %bri to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bri, align 1
  %bri37 = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 9, i32 7
  %37 = ptrtoint ptr %bri37 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %bri37, align 4
  %38 = ptrtoint ptr %bsi to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bsi, align 1
  %bsi40 = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 9, i32 6
  %40 = ptrtoint ptr %bsi40 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %bsi40, align 1
  %41 = ptrtoint ptr %ppi to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ppi, align 1
  %43 = lshr i8 %42, 4
  %44 = and i8 %43, 3
  %lri = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 9, i32 8
  %45 = ptrtoint ptr %lri to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %lri, align 1
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %48 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len, align 4
  %call47 = tail call i32 @nfc_hci_send_cmd_async(ptr noundef %hdev, i8 noundef zeroext 20, i8 noundef zeroext 16, ptr noundef %47, i32 noundef %49, ptr noundef nonnull @st21nfca_im_recv_atr_res_cb, ptr noundef %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call47, %if.end25 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st21nfca_im_recv_atr_res_cb(ptr nocapture noundef %context, ptr noundef %skb, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %cmp.not = icmp ne i32 %err, 0
  %tobool.not = icmp eq ptr %skb, null
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %entry
  %async_cb_type = getelementptr inbounds %struct.st21nfca_hci_info, ptr %context, i32 0, i32 6
  %0 = ptrtoint ptr %async_cb_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %async_cb_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %sub = add i32 %3, -1
  tail call void @skb_trim(ptr noundef nonnull %skb, i32 noundef %sub) #4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %hdev = getelementptr inbounds %struct.st21nfca_hci_info, ptr %context, i32 0, i32 2
  %6 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %gbi = getelementptr inbounds %struct.st21nfca_atr_res, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %12 = trunc i32 %11 to i8
  %conv = add i8 %12, -18
  %call = tail call i32 @nfc_set_remote_general_bytes(ptr noundef %9, ptr noundef %gbi, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %sw.bb.cleanup_crit_edge, label %if.end8

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  %to = getelementptr inbounds %struct.st21nfca_atr_res, ptr %5, i32 0, i32 7
  %13 = ptrtoint ptr %to to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %to, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %14)
  %cmp10 = icmp ugt i8 %14, 13
  %add = add nuw nsw i8 %14, 1
  %phi.bo = or i8 %add, 16
  %add.sink = select i1 %cmp10, i8 30, i8 %phi.bo
  %15 = getelementptr inbounds %struct.st21nfca_hci_info, ptr %context, i32 0, i32 9, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %add.sink, ptr %15, align 1
  %17 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hdev, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %idx = getelementptr inbounds %struct.st21nfca_hci_info, ptr %context, i32 0, i32 9, i32 3
  %21 = ptrtoint ptr %idx to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %idx, align 1
  %call27 = tail call i32 @nfc_dep_link_is_up(ptr noundef %20, i32 noundef %22, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end8.cleanup_crit_edge, label %if.end31

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end31:                                         ; preds = %if.end8
  %curr_nfc_dep_pni = getelementptr inbounds %struct.st21nfca_hci_info, ptr %context, i32 0, i32 9, i32 2
  %23 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %curr_nfc_dep_pni, align 4
  %ppi = getelementptr inbounds %struct.st21nfca_atr_res, ptr %5, i32 0, i32 8
  %24 = ptrtoint ptr %ppi to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ppi, align 1
  %26 = lshr i8 %25, 4
  %27 = and i8 %26, 3
  %lri = getelementptr inbounds %struct.st21nfca_hci_info, ptr %context, i32 0, i32 9, i32 8
  %28 = ptrtoint ptr %lri to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %lri, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp36.not = icmp eq i8 %27, %29
  br i1 %cmp36.not, label %if.end31.cleanup_crit_edge, label %if.then38

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then38:                                        ; preds = %if.end31
  %30 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hdev, align 4
  %did = getelementptr inbounds %struct.st21nfca_atr_res, ptr %5, i32 0, i32 4
  %32 = ptrtoint ptr %did to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %did, align 1
  %bsi = getelementptr inbounds %struct.st21nfca_atr_res, ptr %5, i32 0, i32 5
  %34 = ptrtoint ptr %bsi to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bsi, align 1
  %bri = getelementptr inbounds %struct.st21nfca_atr_res, ptr %5, i32 0, i32 6
  %36 = ptrtoint ptr %bri to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bri, align 1
  %call.i = tail call ptr @nfc_hci_get_clientdata(ptr noundef %31) #4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 7, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then38.cleanup_crit_edge, label %if.end.i

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %38 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 1
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %41, i32 1
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call2.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 6) #4
  %42 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 6, ptr %43, align 1
  %cmd0.i = getelementptr inbounds %struct.st21nfca_psl_req, ptr %43, i32 0, i32 1
  %45 = ptrtoint ptr %cmd0.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -44, ptr %cmd0.i, align 1
  %cmd1.i = getelementptr inbounds %struct.st21nfca_psl_req, ptr %43, i32 0, i32 2
  %46 = ptrtoint ptr %cmd1.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 4, ptr %cmd1.i, align 1
  %did3.i = getelementptr inbounds %struct.st21nfca_psl_req, ptr %43, i32 0, i32 3
  %47 = ptrtoint ptr %did3.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %33, ptr %did3.i, align 1
  %shl.i = shl i8 %35, 4
  %and.i = and i8 %shl.i, 48
  %48 = and i8 %37, 3
  %or.i = or i8 %and.i, %48
  %brs.i = getelementptr inbounds %struct.st21nfca_psl_req, ptr %43, i32 0, i32 4
  %49 = ptrtoint ptr %brs.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %or.i, ptr %brs.i, align 1
  %fsl.i = getelementptr inbounds %struct.st21nfca_psl_req, ptr %43, i32 0, i32 5
  %50 = ptrtoint ptr %fsl.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %27, ptr %fsl.i, align 1
  %to.i = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call.i, i32 0, i32 9, i32 4
  %51 = ptrtoint ptr %to.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %to.i, align 1
  %53 = or i8 %52, 16
  %call10.i = tail call ptr @skb_push(ptr noundef nonnull %call.i.i, i32 noundef 1) #4
  %54 = ptrtoint ptr %call10.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %call10.i, align 1
  %dep_info.i.i = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call.i, i32 0, i32 9
  %55 = ptrtoint ptr %dep_info.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i.i, ptr %dep_info.i.i, align 4
  %tx_work.i.i = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call.i, i32 0, i32 9, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %56 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %56, ptr noundef %tx_work.i.i) #4
  br label %cleanup

sw.default:                                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end.i, %if.then38.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_hci_send_cmd_async(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @st21nfca_im_send_dep_req(ptr noundef %hdev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #4
  %async_cb_type = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %async_cb_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %async_cb_type, align 4
  %async_cb_context = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %async_cb_context to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %async_cb_context, align 4
  %async_cb = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %async_cb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @st21nfca_im_recv_dep_res_cb, ptr %async_cb, align 4
  %curr_nfc_dep_pni = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %curr_nfc_dep_pni, align 4
  %call1 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #4
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %call1, align 1
  %call2 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #4
  %6 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %call2, align 1
  %call3 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #4
  %7 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -44, ptr %call3, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %conv = trunc i32 %9 to i8
  %call4 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #4
  %10 = ptrtoint ptr %call4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %call4, align 1
  %to = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 9, i32 4
  %11 = ptrtoint ptr %to to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %to, align 1
  %13 = or i8 %12, 16
  %call8 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #4
  %14 = ptrtoint ptr %call8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %call8, align 1
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  %19 = ptrtoint ptr %async_cb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %async_cb, align 4
  %call11 = tail call i32 @nfc_hci_send_cmd_async(ptr noundef %hdev, i8 noundef zeroext 20, i8 noundef zeroext 16, ptr noundef %16, i32 noundef %18, ptr noundef %20, ptr noundef %call) #4
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st21nfca_im_recv_dep_res_cb(ptr noundef %context, ptr noundef %skb, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %cmp.not = icmp ne i32 %err, 0
  %tobool.not = icmp eq ptr %skb, null
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end2:                                          ; preds = %entry
  %async_cb_type = getelementptr inbounds %struct.st21nfca_hci_info, ptr %context, i32 0, i32 6
  %0 = ptrtoint ptr %async_cb_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %async_cb_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %sw.bb, label %if.end2.exit_crit_edge

if.end2.exit_crit_edge:                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

sw.bb:                                            ; preds = %if.end2
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp3 = icmp ult i32 %3, 3
  br i1 %cmp3, label %sw.bb.exit_crit_edge, label %if.end5

sw.bb.exit_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end5:                                          ; preds = %sw.bb
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %pfb = getelementptr inbounds %struct.st21nfca_dep_req_res, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %pfb to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pfb, align 1
  %8 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  %spec.select = select i1 %tobool6.not, i32 3, i32 4
  %9 = lshr i8 %7, 3
  %.lobit = and i8 %9, 1
  %10 = zext i8 %.lobit to i32
  %size.1 = add nuw nsw i32 %spec.select, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %size.1)
  %cmp17 = icmp ult i32 %3, %size.1
  br i1 %cmp17, label %if.end5.exit_crit_edge, label %if.end20

if.end5.exit_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %exit

if.end20:                                         ; preds = %if.end5
  %sub = add i32 %3, -1
  tail call void @skb_trim(ptr noundef nonnull %skb, i32 noundef %sub) #4
  %11 = ptrtoint ptr %pfb to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pfb, align 1
  %13 = and i8 %12, -32
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %13, label %if.end20.cleanup_crit_edge [
    i8 64, label %do.end
    i8 0, label %if.end20.sw.bb26_crit_edge
    i8 -128, label %do.end37
  ]

if.end20.sw.bb26_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb26

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #7
  br label %sw.bb26

sw.bb26:                                          ; preds = %do.end, %if.end20.sw.bb26_crit_edge
  %15 = ptrtoint ptr %pfb to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pfb, align 1
  %17 = add i8 %16, 1
  %18 = and i8 %17, 3
  %curr_nfc_dep_pni = getelementptr inbounds %struct.st21nfca_hci_info, ptr %context, i32 0, i32 9, i32 2
  %19 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %curr_nfc_dep_pni, align 4
  %inc31 = add nuw nsw i32 %size.1, 1
  %call32 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef %inc31) #4
  %hdev = getelementptr inbounds %struct.st21nfca_hci_info, ptr %context, i32 0, i32 2
  %20 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hdev, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call33 = tail call i32 @nfc_tm_data_received(ptr noundef %23, ptr noundef nonnull %skb) #4
  br label %cleanup

do.end37:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #7
  %call40 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef %size.1) #4
  %call41 = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef 1) #4
  %24 = ptrtoint ptr %call41 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 6, ptr %call41, align 1
  %call42 = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef 1) #4
  %25 = ptrtoint ptr %call42 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -44, ptr %call42, align 1
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len, align 4
  %conv44 = trunc i32 %27 to i8
  %call45 = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef 1) #4
  %28 = ptrtoint ptr %call45 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv44, ptr %call45, align 1
  %to = getelementptr inbounds %struct.st21nfca_hci_info, ptr %context, i32 0, i32 9, i32 4
  %29 = ptrtoint ptr %to to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %to, align 1
  %31 = or i8 %30, 16
  %call49 = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef 1) #4
  %32 = ptrtoint ptr %call49 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %call49, align 1
  %dep_info.i = getelementptr inbounds %struct.st21nfca_hci_info, ptr %context, i32 0, i32 9
  %33 = ptrtoint ptr %dep_info.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %skb, ptr %dep_info.i, align 4
  %tx_work.i = getelementptr inbounds %struct.st21nfca_hci_info, ptr %context, i32 0, i32 9, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %34 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %34, ptr noundef %tx_work.i) #4
  br label %cleanup

exit:                                             ; preds = %if.end5.exit_crit_edge, %sw.bb.exit_crit_edge, %if.end2.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %skb, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %exit, %do.end37, %sw.bb26, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @st21nfca_dep_init(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #4
  %tx_work = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 9, i32 1
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #4
  %0 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 9, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @st21nfca_dep_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry7 = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 9, i32 1, i32 1
  %1 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 9, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 9, i32 1, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @st21nfca_tx_work, ptr %func, align 4
  %curr_nfc_dep_pni = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %curr_nfc_dep_pni to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %curr_nfc_dep_pni, align 4
  %idx = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 9, i32 3
  %5 = ptrtoint ptr %idx to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 0, ptr %idx, align 1
  %to = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 9, i32 4
  %6 = ptrtoint ptr %to to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 10, ptr %to, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st21nfca_tx_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -128
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %hdev = getelementptr i8, ptr %work, i32 -120
  %0 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dep_info = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %dep_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dep_info, align 4
  %mutex.i = getelementptr inbounds %struct.nfc_dev, ptr %3, i32 0, i32 5, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #4
  %6 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdev, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %async_cb = getelementptr i8, ptr %work, i32 -12
  %12 = ptrtoint ptr %async_cb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %async_cb, align 4
  %call = tail call i32 @nfc_hci_send_cmd_async(ptr noundef %7, i8 noundef zeroext 20, i8 noundef zeroext 16, ptr noundef %9, i32 noundef %11, ptr noundef %13, ptr noundef nonnull %add.ptr) #4
  tail call void @mutex_unlock(ptr noundef %mutex.i) #4
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @st21nfca_dep_deinit(ptr noundef %hdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nfc_hci_get_clientdata(ptr noundef %hdev) #4
  %tx_work = getelementptr inbounds %struct.st21nfca_hci_info, ptr %call, i32 0, i32 9, i32 1
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_work) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_tm_activated(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_set_remote_general_bytes(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_tm_data_received(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_dep_link_is_up(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !18, !19, !20, !21, !22, !24, !26, !28, !29, !31, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__ksymtab_st21nfca_tm_send_dep_res, !1, !"__ksymtab_st21nfca_tm_send_dep_res", i1 false, i1 false}
!1 = !{!"../drivers/nfc/st21nfca/dep.c", i32 304, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/nfc/st21nfca/dep.c", i32 389, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @st21nfca_dep_event_received.__UNIQUE_ID_ddebug271, !3, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/nfc/st21nfca/dep.c", i32 407, i32 3}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @st21nfca_dep_event_received._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @st21nfca_dep_event_received._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_st21nfca_dep_event_received, !15, !"__ksymtab_st21nfca_dep_event_received", i1 false, i1 false}
!15 = !{!"../drivers/nfc/st21nfca/dep.c", i32 413, i32 1}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/nfc/st21nfca/dep.c", i32 502, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @st21nfca_im_send_atr_req._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @st21nfca_im_send_atr_req._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__ksymtab_st21nfca_im_send_atr_req, !23, !"__ksymtab_st21nfca_im_send_atr_req", i1 false, i1 false}
!23 = !{!"../drivers/nfc/st21nfca/dep.c", i32 553, i32 1}
!24 = !{ptr @__ksymtab_st21nfca_im_send_dep_req, !25, !"__ksymtab_st21nfca_im_send_dep_req", i1 false, i1 false}
!25 = !{!"../drivers/nfc/st21nfca/dep.c", i32 640, i32 1}
!26 = !{ptr @st21nfca_dep_init.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/nfc/st21nfca/dep.c", i32 646, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @__ksymtab_st21nfca_dep_init, !30, !"__ksymtab_st21nfca_dep_init", i1 false, i1 false}
!30 = !{!"../drivers/nfc/st21nfca/dep.c", i32 651, i32 1}
!31 = !{ptr @__ksymtab_st21nfca_dep_deinit, !32, !"__ksymtab_st21nfca_dep_deinit", i1 false, i1 false}
!32 = !{!"../drivers/nfc/st21nfca/dep.c", i32 659, i32 1}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/nfc/st21nfca/dep.c", i32 336, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @st21nfca_tm_recv_dep_req._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @st21nfca_tm_recv_dep_req._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/nfc/st21nfca/dep.c", i32 339, i32 3}
!40 = !{ptr @st21nfca_tm_recv_dep_req._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @st21nfca_tm_recv_dep_req._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/nfc/st21nfca/dep.c", i32 590, i32 4}
!44 = !{ptr @st21nfca_im_recv_dep_res_cb._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @st21nfca_im_recv_dep_res_cb._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @st21nfca_im_recv_dep_res_cb._entry.17, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/nfc/st21nfca/dep.c", i32 600, i32 4}
!48 = !{ptr @st21nfca_im_recv_dep_res_cb._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2148852918, i64 2148852923, i64 2148852936, i64 2148852980, i64 2148853014, i64 2148853035}
