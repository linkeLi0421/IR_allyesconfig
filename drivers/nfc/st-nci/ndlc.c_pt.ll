; ModuleID = '/llk/IR_all_yes/drivers/nfc/st-nci/ndlc.c_pt.bc'
source_filename = "../drivers/nfc/st-nci/ndlc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ndlc_open\22, \22a\22\09"
module asm "\09.weak\09__crc_ndlc_open\09\09\09\09"
module asm "\09.long\09__crc_ndlc_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ndlc_open:\09\09\09\09\09"
module asm "\09.asciz \09\22ndlc_open\22\09\09\09\09\09"
module asm "__kstrtabns_ndlc_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ndlc_close\22, \22a\22\09"
module asm "\09.weak\09__crc_ndlc_close\09\09\09\09"
module asm "\09.long\09__crc_ndlc_close\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ndlc_close:\09\09\09\09\09"
module asm "\09.asciz \09\22ndlc_close\22\09\09\09\09\09"
module asm "__kstrtabns_ndlc_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ndlc_send\22, \22a\22\09"
module asm "\09.weak\09__crc_ndlc_send\09\09\09\09"
module asm "\09.long\09__crc_ndlc_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ndlc_send:\09\09\09\09\09"
module asm "\09.asciz \09\22ndlc_send\22\09\09\09\09\09"
module asm "__kstrtabns_ndlc_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ndlc_recv\22, \22a\22\09"
module asm "\09.weak\09__crc_ndlc_recv\09\09\09\09"
module asm "\09.long\09__crc_ndlc_recv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ndlc_recv:\09\09\09\09\09"
module asm "\09.asciz \09\22ndlc_recv\22\09\09\09\09\09"
module asm "__kstrtabns_ndlc_recv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ndlc_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_ndlc_probe\09\09\09\09"
module asm "\09.long\09__crc_ndlc_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ndlc_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22ndlc_probe\22\09\09\09\09\09"
module asm "__kstrtabns_ndlc_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ndlc_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_ndlc_remove\09\09\09\09"
module asm "\09.long\09__crc_ndlc_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ndlc_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22ndlc_remove\22\09\09\09\09\09"
module asm "__kstrtabns_ndlc_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.llt_ndlc = type { ptr, ptr, ptr, %struct.timer_list, i8, %struct.timer_list, i8, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.work_struct, ptr, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sk_buff_head = type { %union.anon.93, i32, %struct.spinlock }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.nfc_phy_ops = type { ptr, ptr, ptr }
%struct.nci_mode_set_cmd = type { i8, i8 }
%struct.sk_buff = type { %union.anon.73, %union.anon.76, %union.anon.77, [48 x i8], %union.anon.78, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.80, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.73 = type { %struct.anon.74 }
%struct.anon.74 = type { ptr, ptr, %union.anon.75 }
%union.anon.75 = type { ptr }
%union.anon.76 = type { ptr }
%union.anon.77 = type { i64 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { i32, ptr }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.82, i32, i32, i32, i16, i16, %union.anon.84, i32, %union.anon.85, %union.anon.86, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.82 = type { i32 }
%union.anon.84 = type { i32 }
%union.anon.85 = type { i32 }
%union.anon.86 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }

@__kstrtab_ndlc_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_ndlc_open = external dso_local constant [0 x i8], align 1
@__ksymtab_ndlc_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ndlc_open to i32), ptr @__kstrtab_ndlc_open, ptr @__kstrtabns_ndlc_open }, section "___ksymtab+ndlc_open", align 4
@__kstrtab_ndlc_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_ndlc_close = external dso_local constant [0 x i8], align 1
@__ksymtab_ndlc_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ndlc_close to i32), ptr @__kstrtab_ndlc_close, ptr @__kstrtabns_ndlc_close }, section "___ksymtab+ndlc_close", align 4
@__kstrtab_ndlc_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_ndlc_send = external dso_local constant [0 x i8], align 1
@__ksymtab_ndlc_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ndlc_send to i32), ptr @__kstrtab_ndlc_send, ptr @__kstrtabns_ndlc_send }, section "___ksymtab+ndlc_send", align 4
@ndlc_recv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013NULL Frame -> link is dead\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ndlc_recv\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/nfc/st-nci/ndlc.c\00", [38 x i8] zeroinitializer }, align 32
@ndlc_recv._entry_ptr = internal global ptr @ndlc_recv._entry, section ".printk_index", align 4
@ndlc_recv.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st_nci\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"incoming frame\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ndlc: \00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_ndlc_recv = external dso_local constant [0 x i8], align 1
@__kstrtabns_ndlc_recv = external dso_local constant [0 x i8], align 1
@__ksymtab_ndlc_recv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ndlc_recv to i32), ptr @__kstrtab_ndlc_recv, ptr @__kstrtabns_ndlc_recv }, section "___ksymtab+ndlc_recv", align 4
@ndlc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&ndlc->t1_timer)\00", [46 x i8] zeroinitializer }, align 32
@ndlc_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&ndlc->t2_timer)\00", [46 x i8] zeroinitializer }, align 32
@ndlc_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&ndlc->sm_work)\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_ndlc_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_ndlc_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_ndlc_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ndlc_probe to i32), ptr @__kstrtab_ndlc_probe, ptr @__kstrtabns_ndlc_probe }, section "___ksymtab+ndlc_probe", align 4
@__kstrtab_ndlc_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_ndlc_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_ndlc_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ndlc_remove to i32), ptr @__kstrtab_ndlc_remove, ptr @__kstrtabns_ndlc_remove }, section "___ksymtab+ndlc_remove", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@llt_ndlc_sm_work.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"llt_ndlc_sm_work\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Handle T1(recv SUPERVISOR) elapsed (T1 now inactive)\0A\00", [42 x i8] zeroinitializer }, align 32
@llt_ndlc_sm_work.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 53, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Handle T2(recv DATA) elapsed (T2 now inactive)\0A\00", [48 x i8] zeroinitializer }, align 32
@llt_ndlc_send_queue.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"llt_ndlc_send_queue\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sendQlen=%d unackQlen=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@llt_ndlc_send_queue.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.17, ptr @.str.2, ptr @.str.4, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ndlc frame written\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@llt_ndlc_rcv_queue.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"llt_ndlc_rcv_queue\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rcvQlen=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@llt_ndlc_requeue_data_pending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013UNKNOWN Packet Control Byte=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"llt_ndlc_requeue_data_pending\00", [34 x i8] zeroinitializer }, align 32
@llt_ndlc_requeue_data_pending._entry_ptr = internal global ptr @llt_ndlc_requeue_data_pending._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 192]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 128, i64 192]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 226, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 230, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 270, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 271, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 277, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 1984, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 204, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 213, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 95, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 100, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 154, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [29 x i8] c"../drivers/nfc/st-nci/ndlc.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 139, i32 4 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__ksymtab_ndlc_close, ptr @__ksymtab_ndlc_open, ptr @__ksymtab_ndlc_probe, ptr @__ksymtab_ndlc_recv, ptr @__ksymtab_ndlc_remove, ptr @__ksymtab_ndlc_send, ptr @llt_ndlc_requeue_data_pending._entry, ptr @llt_ndlc_requeue_data_pending._entry_ptr, ptr @ndlc_recv._entry, ptr @ndlc_recv._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ndlc_probe.__key, ptr @.str.8, ptr @ndlc_probe.__key.9, ptr @.str.10, ptr @ndlc_probe.__key.11, ptr @.str.12, ptr @skb_queue_head_init.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndlc_recv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndlc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndlc_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndlc_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llt_ndlc_requeue_data_pending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ndlc_open(ptr nocapture noundef %ndlc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %enable = getelementptr inbounds %struct.nfc_phy_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable, align 4
  %phy_id = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 2
  %4 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_id, align 4
  %call = tail call i32 %3(ptr noundef %5) #4
  %powered = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 13
  %6 = ptrtoint ptr %powered to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %powered, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ndlc_close(ptr nocapture noundef %ndlc) #0 align 64 {
entry:
  %cmd = alloca %struct.nci_mode_set_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #4
  %0 = getelementptr inbounds %struct.nci_mode_set_cmd, ptr %cmd, i32 0, i32 1
  %1 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 2, ptr %cmd, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %0, align 1
  %ops = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %enable = getelementptr inbounds %struct.nfc_phy_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %enable, align 4
  %phy_id = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 2
  %7 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_id, align 4
  %call = tail call i32 %6(ptr noundef %8) #4
  %9 = ptrtoint ptr %ndlc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndlc, align 4
  %call1 = call i32 @nci_prop_cmd(ptr noundef %10, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %cmd) #4
  %powered = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 13
  %11 = ptrtoint ptr %powered to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %powered, align 4
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %disable = getelementptr inbounds %struct.nfc_phy_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disable, align 4
  %16 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_id, align 4
  call void %15(ptr noundef %17) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_prop_cmd(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ndlc_send(ptr noundef %ndlc, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #4
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -124, ptr %call, align 1
  %send_q = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 8
  tail call void @skb_queue_tail(ptr noundef %send_q, ptr noundef %skb) #4
  %sm_work = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %sm_work) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ndlc_recv(ptr noundef %ndlc, ptr noundef %skb) #0 align 64 {
entry:
  %cmd.i = alloca %struct.nci_mode_set_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %do.end, label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  %hard_fault = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 12
  %0 = ptrtoint ptr %hard_fault to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -121, ptr %hard_fault, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i) #4
  %1 = getelementptr inbounds %struct.nci_mode_set_cmd, ptr %cmd.i, i32 0, i32 1
  %2 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 2, ptr %cmd.i, align 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %1, align 1
  %ops.i = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %enable.i = getelementptr inbounds %struct.nfc_phy_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable.i, align 4
  %phy_id.i = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 2
  %8 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_id.i, align 4
  %call.i = tail call i32 %7(ptr noundef %9) #4
  %10 = ptrtoint ptr %ndlc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndlc, align 4
  %call1.i = call i32 @nci_prop_cmd(ptr noundef %11, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %cmd.i) #4
  %powered.i = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 13
  %12 = ptrtoint ptr %powered.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %powered.i, align 4
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %disable.i = getelementptr inbounds %struct.nfc_phy_ops, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disable.i, align 4
  %17 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy_id.i, align 4
  call void %16(ptr noundef %18) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #4
  br label %if.end10

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ndlc_recv.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ndlc_recv, %if.then7)) #4
          to label %do.end8 [label %if.then7], !srcloc !69

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ndlc_recv.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #4
  br label %do.end8

do.end8:                                          ; preds = %if.then7, %do.body2
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %20, i32 noundef %22, i1 noundef zeroext false) #4
  %rcv_q = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 7
  tail call void @skb_queue_tail(ptr noundef %rcv_q, ptr noundef nonnull %skb) #4
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %do.end
  %sm_work = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %23 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %23, ptr noundef %sm_work) #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ndlc_probe(ptr noundef %phy_id, ptr noundef %phy_ops, ptr noundef %dev, i32 noundef %phy_headroom, i32 noundef %phy_tailroom, ptr nocapture noundef writeonly %ndlc_id, ptr noundef %se_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 340, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ops = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %phy_ops, ptr %ops, align 4
  %phy_id1 = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %phy_id1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %phy_id, ptr %phy_id1, align 4
  %dev2 = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 11
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev2, align 4
  %powered = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 13
  %3 = ptrtoint ptr %powered to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %powered, align 4
  %4 = ptrtoint ptr %ndlc_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %ndlc_id, align 4
  %t1_timer = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %t1_timer, ptr noundef nonnull @ndlc_t1_timeout, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @ndlc_probe.__key) #4
  %t2_timer = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %t2_timer, ptr noundef nonnull @ndlc_t2_timeout, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @ndlc_probe.__key.9) #4
  %rcv_q = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 7
  %lock.i = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 7, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #4
  %5 = ptrtoint ptr %rcv_q to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %rcv_q, ptr %rcv_q, align 4
  %prev.i.i = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 7, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rcv_q, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i.i, align 4
  %send_q = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 8
  %lock.i32 = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 8, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i32, ptr noundef nonnull @.str.13, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #4
  %8 = ptrtoint ptr %send_q to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %send_q, ptr %send_q, align 4
  %prev.i.i33 = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 8, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i33 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %send_q, ptr %prev.i.i33, align 4
  %qlen.i.i34 = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %qlen.i.i34 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i.i34, align 4
  %ack_pending_q = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 9
  %lock.i35 = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 9, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i35, ptr noundef nonnull @.str.13, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #4
  %11 = ptrtoint ptr %ack_pending_q to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ack_pending_q, ptr %ack_pending_q, align 4
  %prev.i.i36 = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 9, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i36 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %ack_pending_q, ptr %prev.i.i36, align 4
  %qlen.i.i37 = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %qlen.i.i37 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %qlen.i.i37, align 4
  %sm_work = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 10
  tail call void @__init_work(ptr noundef %sm_work, i32 noundef 0) #4
  %14 = ptrtoint ptr %sm_work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %sm_work, align 4
  %lockdep_map = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 10, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.12, ptr noundef nonnull @ndlc_probe.__key.11, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry10 = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 10, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry10, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.llt_ndlc, ptr %call.i, i32 0, i32 10, i32 2
  %17 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @llt_ndlc_sm_work, ptr %func, align 4
  %call14 = tail call i32 @st_nci_probe(ptr noundef nonnull %call.i, i32 noundef %phy_headroom, i32 noundef %phy_tailroom, ptr noundef %se_status) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ndlc_t1_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_work = getelementptr i8, ptr %t, i32 272
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %sm_work) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ndlc_t2_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_work = getelementptr i8, ptr %t, i32 220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %sm_work) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @llt_ndlc_sm_work(ptr noundef %work) #0 align 64 {
entry:
  %cmd.i = alloca %struct.nci_mode_set_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -284
  tail call fastcc void @llt_ndlc_send_queue(ptr noundef %add.ptr)
  tail call fastcc void @llt_ndlc_rcv_queue(ptr noundef %add.ptr)
  %t1_active = getelementptr i8, ptr %work, i32 -224
  %0 = ptrtoint ptr %t1_active to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %t1_active, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %land.lhs.true

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %pprev.i.i = getelementptr i8, ptr %work, i32 -268
  %2 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.not, label %do.body, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llt_ndlc_sm_work.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llt_ndlc_sm_work, %if.then6)) #4
          to label %do.end [label %if.then6], !srcloc !69

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llt_ndlc_sm_work.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.15) #4
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %4 = ptrtoint ptr %t1_active to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %t1_active, align 4
  tail call fastcc void @llt_ndlc_requeue_data_pending(ptr noundef %add.ptr)
  tail call fastcc void @llt_ndlc_send_queue(ptr noundef %add.ptr)
  br label %if.end8

if.end8:                                          ; preds = %do.end, %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %t2_active = getelementptr i8, ptr %work, i32 -172
  %5 = ptrtoint ptr %t2_active to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %t2_active, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool9.not = icmp eq i8 %6, 0
  br i1 %tobool9.not, label %if.end8.if.end36_crit_edge, label %land.lhs.true10

if.end8.if.end36_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

land.lhs.true10:                                  ; preds = %if.end8
  %t2_timer = getelementptr i8, ptr %work, i32 -220
  %pprev.i.i54 = getelementptr i8, ptr %work, i32 -216
  %7 = ptrtoint ptr %pprev.i.i54 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %pprev.i.i54, align 4
  %tobool.not.i.i55.not = icmp eq ptr %8, null
  br i1 %tobool.not.i.i55.not, label %do.body14, label %land.lhs.true10.if.end36_crit_edge

land.lhs.true10.if.end36_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

do.body14:                                        ; preds = %land.lhs.true10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llt_ndlc_sm_work.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llt_ndlc_sm_work, %if.then26)) #4
          to label %do.end29 [label %if.then26], !srcloc !69

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llt_ndlc_sm_work.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.16) #4
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %do.body14
  %9 = ptrtoint ptr %t2_active to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %t2_active, align 4
  %10 = ptrtoint ptr %t1_active to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %t1_active, align 4
  %t1_timer32 = getelementptr i8, ptr %work, i32 -272
  %call33 = tail call i32 @del_timer_sync(ptr noundef %t1_timer32) #4
  %call35 = tail call i32 @del_timer_sync(ptr noundef %t2_timer) #4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i) #4
  %11 = getelementptr inbounds %struct.nci_mode_set_cmd, ptr %cmd.i, i32 0, i32 1
  %12 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %cmd.i, align 1
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %11, align 1
  %ops.i = getelementptr i8, ptr %work, i32 -280
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %enable.i = getelementptr inbounds %struct.nfc_phy_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enable.i, align 4
  %phy_id.i = getelementptr i8, ptr %work, i32 -276
  %18 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %phy_id.i, align 4
  %call.i = tail call i32 %17(ptr noundef %19) #4
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  %call1.i = call i32 @nci_prop_cmd(ptr noundef %21, i8 noundef zeroext 1, i32 noundef 2, ptr noundef nonnull %cmd.i) #4
  %powered.i = getelementptr i8, ptr %work, i32 52
  %22 = ptrtoint ptr %powered.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %powered.i, align 4
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %disable.i = getelementptr inbounds %struct.nfc_phy_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %disable.i, align 4
  %27 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy_id.i, align 4
  call void %26(ptr noundef %28) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #4
  %hard_fault = getelementptr i8, ptr %work, i32 48
  %29 = ptrtoint ptr %hard_fault to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -121, ptr %hard_fault, align 4
  br label %if.end36

if.end36:                                         ; preds = %do.end29, %land.lhs.true10.if.end36_crit_edge, %if.end8.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @st_nci_probe(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ndlc_remove(ptr noundef %ndlc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ndlc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndlc, align 4
  tail call void @st_nci_remove(ptr noundef %1) #4
  %t1_timer = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 3
  %call = tail call i32 @del_timer_sync(ptr noundef %t1_timer) #4
  %t2_timer = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 5
  %call1 = tail call i32 @del_timer_sync(ptr noundef %t2_timer) #4
  %t2_active = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 6
  %2 = ptrtoint ptr %t2_active to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %t2_active, align 4
  %t1_active = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 4
  %3 = ptrtoint ptr %t1_active to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %t1_active, align 4
  %rcv_q = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 7
  tail call void @skb_queue_purge(ptr noundef %rcv_q) #4
  %send_q = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %send_q) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @st_nci_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @llt_ndlc_send_queue(ptr noundef %ndlc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %send_q = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 8
  %qlen = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llt_ndlc_send_queue.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llt_ndlc_send_queue, %if.then4)) #4
          to label %if.end8 [label %if.then4], !srcloc !69

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen, align 4
  %qlen7 = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %qlen7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen7, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llt_ndlc_send_queue.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.18, i32 noundef %3, i32 noundef %5) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %do.body, %entry.if.end8_crit_edge
  %6 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not68 = icmp eq i32 %7, 0
  br i1 %tobool11.not68, label %if.end8.while.end_crit_edge, label %while.body.lr.ph

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end8
  %ops = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 1
  %phy_id = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 2
  %ack_pending_q36 = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 9
  %t1_active = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 4
  %t1_timer = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 3
  %t2_active = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 6
  %t2_timer = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 5
  br label %while.body

while.body:                                       ; preds = %if.end35.while.body_crit_edge, %while.body.lr.ph
  %call13 = tail call ptr @skb_dequeue(ptr noundef %send_q) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llt_ndlc_send_queue.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llt_ndlc_send_queue, %if.then27)) #4
          to label %do.end30 [label %if.then27], !srcloc !69

if.then27:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llt_ndlc_send_queue.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.19) #4
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %while.body
  %data = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 6
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %9, i32 noundef %11, i1 noundef zeroext false) #4
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy_id, align 4
  %call33 = tail call i32 %15(ptr noundef %17, ptr noundef %call13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %if.then34, label %if.end35

if.then34:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #6
  %hard_fault = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 12
  %18 = ptrtoint ptr %hard_fault to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call33, ptr %hard_fault, align 4
  br label %while.end

if.end35:                                         ; preds = %do.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call13, i32 0, i32 3
  %20 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cb, align 8
  tail call void @skb_queue_tail(ptr noundef %ack_pending_q36, ptr noundef %call13) #4
  %21 = ptrtoint ptr %t1_active to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %t1_active, align 4
  %add = add i32 %19, 10
  %call38 = tail call i32 @mod_timer(ptr noundef %t1_timer, i32 noundef %add) #4
  %22 = ptrtoint ptr %t2_active to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %t2_active, align 4
  %add40 = add i32 %19, 120
  %call41 = tail call i32 @mod_timer(ptr noundef %t2_timer, i32 noundef %add40) #4
  %23 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %qlen, align 4
  %tobool11.not = icmp eq i32 %24, 0
  br i1 %tobool11.not, label %if.end35.while.end_crit_edge, label %if.end35.while.body_crit_edge

if.end35.while.body_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end35.while.end_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end35.while.end_crit_edge, %if.then34, %if.end8.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @llt_ndlc_rcv_queue(ptr noundef %ndlc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rcv_q = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 7
  %qlen = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @llt_ndlc_rcv_queue.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@llt_ndlc_rcv_queue, %if.then4)) #4
          to label %if.end7 [label %if.then4], !srcloc !69

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @llt_ndlc_rcv_queue.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.21, i32 noundef %3) #4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %do.body, %entry.if.end7_crit_edge
  %call964 = tail call ptr @skb_dequeue(ptr noundef %rcv_q) #4
  %cmp.not65 = icmp eq ptr %call964, null
  br i1 %cmp.not65, label %if.end7.while.end_crit_edge, label %while.body.lr.ph

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end7
  %t1_active25 = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 4
  %t1_timer26 = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 3
  %ack_pending_q = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 9
  %t2_timer = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 5
  %t2_active = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end38.while.body_crit_edge, %while.body.lr.ph
  %call966 = phi ptr [ %call964, %while.body.lr.ph ], [ %call9, %if.end38.while.body_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %call966, i32 0, i32 19
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %call10 = tail call ptr @skb_pull(ptr noundef nonnull %call966, i32 noundef 1) #4
  %and = and i8 %7, -64
  %8 = zext i8 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %and, label %if.else36 [
    i8 -64, label %if.then13
    i8 -128, label %if.then34
  ]

if.then13:                                        ; preds = %while.body
  %9 = and i8 %7, 48
  %and15 = zext i8 %9 to i32
  %10 = zext i32 %and15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %and15, label %sw.default [
    i32 32, label %sw.bb
    i32 16, label %sw.bb19
    i32 48, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  %call16 = tail call ptr @skb_dequeue(ptr noundef %ack_pending_q) #4
  tail call void @kfree_skb_reason(ptr noundef %call16, i32 noundef 0) #4
  %call17 = tail call i32 @del_timer_sync(ptr noundef %t1_timer26) #4
  %call18 = tail call i32 @del_timer_sync(ptr noundef %t2_timer) #4
  %11 = ptrtoint ptr %t2_active to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %t2_active, align 4
  %12 = ptrtoint ptr %t1_active25 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %t1_active25, align 4
  br label %if.end38

sw.bb19:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @llt_ndlc_requeue_data_pending(ptr noundef %ndlc)
  tail call fastcc void @llt_ndlc_send_queue(ptr noundef %ndlc)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %14 = ptrtoint ptr %t1_active25 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %t1_active25, align 4
  %add = add i32 %13, 10
  %call23 = tail call i32 @mod_timer(ptr noundef %t1_timer26, i32 noundef %add) #4
  br label %if.end38

sw.bb24:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %16 = ptrtoint ptr %t1_active25 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %t1_active25, align 4
  %add28 = add i32 %15, 40
  %call29 = tail call i32 @mod_timer(ptr noundef %t1_timer26, i32 noundef %add28) #4
  br label %if.end38

sw.default:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %call966, i32 noundef 0) #4
  br label %if.end38

if.then34:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %ndlc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndlc, align 4
  %call35 = tail call i32 @nci_recv_frame(ptr noundef %18, ptr noundef nonnull %call966) #4
  br label %if.end38

if.else36:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree_skb_reason(ptr noundef nonnull %call966, i32 noundef 0) #4
  br label %if.end38

if.end38:                                         ; preds = %if.else36, %if.then34, %sw.default, %sw.bb24, %sw.bb19, %sw.bb
  %call9 = tail call ptr @skb_dequeue(ptr noundef %rcv_q) #4
  %cmp.not = icmp eq ptr %call9, null
  br i1 %cmp.not, label %if.end38.while.end_crit_edge, label %if.end38.while.body_crit_edge

if.end38.while.body_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end38.while.end_crit_edge, %if.end7.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @llt_ndlc_requeue_data_pending(ptr noundef %ndlc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ack_pending_q = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 9
  %call23 = tail call ptr @skb_dequeue_tail(ptr noundef %ack_pending_q) #4
  %tobool.not24 = icmp eq ptr %call23, null
  br i1 %tobool.not24, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %send_q = getelementptr inbounds %struct.llt_ndlc, ptr %ndlc, i32 0, i32 8
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call25 = phi ptr [ %call23, %while.body.lr.ph ], [ %call, %while.cond.backedge.while.body_crit_edge ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %call25, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %and = and i8 %3, -64
  %4 = zext i8 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %and, label %do.end [
    i8 -64, label %while.body.sw.epilog_crit_edge
    i8 -128, label %sw.bb6
  ]

while.body.sw.epilog_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %3 to i32
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %conv) #7
  tail call void @kfree_skb_reason(ptr noundef nonnull %call25, i32 noundef 0) #4
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.epilog, %do.end
  %call = tail call ptr @skb_dequeue_tail(ptr noundef %ack_pending_q) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

sw.epilog:                                        ; preds = %sw.bb6, %while.body.sw.epilog_crit_edge
  %.sink = phi i8 [ -5, %sw.bb6 ], [ -3, %while.body.sw.epilog_crit_edge ]
  %and8 = and i8 %3, %.sink
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %and8, ptr %1, align 1
  tail call void @skb_queue_head(ptr noundef %send_q, ptr noundef nonnull %call25) #4
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue_tail(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !19, !21, !23, !24, !26, !27, !29, !30, !32, !34, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__ksymtab_ndlc_open, !1, !"__ksymtab_ndlc_open", i1 false, i1 false}
!1 = !{!"../drivers/nfc/st-nci/ndlc.c", i32 53, i32 1}
!2 = !{ptr @__ksymtab_ndlc_close, !3, !"__ksymtab_ndlc_close", i1 false, i1 false}
!3 = !{!"../drivers/nfc/st-nci/ndlc.c", i32 71, i32 1}
!4 = !{ptr @__ksymtab_ndlc_send, !5, !"__ksymtab_ndlc_send", i1 false, i1 false}
!5 = !{!"../drivers/nfc/st-nci/ndlc.c", i32 86, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/nfc/st-nci/ndlc.c", i32 226, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ndlc_recv._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @ndlc_recv._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/nfc/st-nci/ndlc.c", i32 230, i32 3}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ndlc_recv.__UNIQUE_ID_ddebug280, !13, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!16 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__ksymtab_ndlc_recv, !20, !"__ksymtab_ndlc_recv", i1 false, i1 false}
!20 = !{!"../drivers/nfc/st-nci/ndlc.c", i32 236, i32 1}
!21 = !{ptr @ndlc_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/nfc/st-nci/ndlc.c", i32 270, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ndlc_probe.__key.9, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/nfc/st-nci/ndlc.c", i32 271, i32 2}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ndlc_probe.__key.11, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/nfc/st-nci/ndlc.c", i32 277, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @__ksymtab_ndlc_probe, !31, !"__ksymtab_ndlc_probe", i1 false, i1 false}
!31 = !{!"../drivers/nfc/st-nci/ndlc.c", i32 281, i32 1}
!32 = !{ptr @__ksymtab_ndlc_remove, !33, !"__ksymtab_ndlc_remove", i1 false, i1 false}
!33 = !{!"../drivers/nfc/st-nci/ndlc.c", i32 296, i32 1}
!34 = !{ptr @skb_queue_head_init.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/nfc/st-nci/ndlc.c", i32 204, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @llt_ndlc_sm_work.__UNIQUE_ID_ddebug278, !38, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/nfc/st-nci/ndlc.c", i32 213, i32 3}
!43 = !{ptr @llt_ndlc_sm_work.__UNIQUE_ID_ddebug279, !42, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/nfc/st-nci/ndlc.c", i32 95, i32 3}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @llt_ndlc_send_queue.__UNIQUE_ID_ddebug275, !45, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!48 = !{ptr @llt_ndlc_send_queue.__UNIQUE_ID_ddebug276, !49, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!49 = !{!"../drivers/nfc/st-nci/ndlc.c", i32 100, i32 3}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/nfc/st-nci/ndlc.c", i32 154, i32 3}
!53 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @llt_ndlc_rcv_queue.__UNIQUE_ID_ddebug277, !52, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/nfc/st-nci/ndlc.c", i32 139, i32 4}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @llt_ndlc_requeue_data_pending._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @llt_ndlc_requeue_data_pending._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2148238123, i64 2148238128, i64 2148238141, i64 2148238185, i64 2148238219, i64 2148238240}
!70 = !{i8 0, i8 2}
