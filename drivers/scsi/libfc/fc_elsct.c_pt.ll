; ModuleID = '/llk/IR_all_yes/drivers/scsi/libfc/fc_elsct.c_pt.bc'
source_filename = "../drivers/scsi/libfc/fc_elsct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fc_elsct_send\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_elsct_send\09\09\09\09"
module asm "\09.long\09__crc_fc_elsct_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_elsct_send:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_elsct_send\22\09\09\09\09\09"
module asm "__kstrtabns_fc_elsct_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fc_elsct_init\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_elsct_init\09\09\09\09"
module asm "\09.long\09__crc_fc_elsct_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_elsct_init:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_elsct_init\22\09\09\09\09\09"
module asm "__kstrtabns_fc_elsct_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.uts_namespace = type { %struct.new_utsname, ptr, ptr, %struct.ns_common }
%struct.new_utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.sk_buff = type { %union.anon.79, %union.anon.82, %union.anon.83, [48 x i8], %union.anon.84, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.86, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr, %union.anon.81 }
%union.anon.81 = type { ptr }
%union.anon.82 = type { ptr }
%union.anon.83 = type { i64 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { i32, ptr }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.88, i32, i32, i32, i16, i16, %union.anon.90, i32, %union.anon.91, %union.anon.92, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.88 = type { i32 }
%union.anon.90 = type { i32 }
%union.anon.91 = type { i32 }
%union.anon.92 = type { i16 }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.fc_els_adisc = type <{ i8, [3 x i8], i8, [3 x i8], i64, i64, i8, [3 x i8] }>
%struct.fc_els_flogi = type <{ i8, [3 x i8], %struct.fc_els_csp, i64, i64, [4 x %struct.fc_els_cssp], [16 x i8] }>
%struct.fc_els_csp = type { i8, i8, i16, i16, i16, %union.anon.104, i32 }
%union.anon.104 = type { %struct.anon.106 }
%struct.anon.106 = type { i32 }
%struct.fc_els_cssp = type { i16, i16, i16, i16, i16, i16, i8, i8, [2 x i8] }
%struct.anon.105 = type { i16, i16 }
%struct.fc_els_logo = type { i8, [3 x i8], i8, [3 x i8], i64 }
%struct.fc_els_rec = type { i8, [3 x i8], i8, [3 x i8], i16, i16 }
%struct.fc_els_prli = type { i8, i8, i16 }
%struct.anon.107 = type { %struct.fc_els_prli, %struct.fc_els_spp }
%struct.fc_els_spp = type { i8, i8, i8, i8, i32, i32, i32 }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.fc_host_attrs = type { i64, i64, i64, i32, [32 x i8], i32, i32, i16, i32, i32, i32, i32, [64 x i8], [64 x i8], [256 x i8], [256 x i8], [64 x i8], [64 x i8], [64 x i8], [64 x i8], [8 x i8], [256 x i8], i32, i32, i32, [32 x i8], i32, i64, [256 x i8], [256 x i8], i32, %struct.fc_fpin_stats, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i16, [20 x i8], ptr, [20 x i8], ptr, ptr, i8 }
%struct.fc_fpin_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_ct_hdr = type { i8, [3 x i8], i8, i8, i8, i8, i16, i16, i8, i8, i8, i8 }
%struct.fc_ct_req = type { %struct.fc_ct_hdr, %union.anon.108 }
%union.anon.108 = type <{ %struct.fc_fdmi_dprt, [28 x i8] }>
%struct.fc_fdmi_dprt = type { %struct.fc_fdmi_port_name }
%struct.fc_fdmi_port_name = type { i64 }
%struct.fc_fdmi_attr_entry = type <{ i16, i16, [1 x i8] }>
%struct.fc_ns_gid_ft = type { i8, i8, i8, i8 }
%struct.fc_ns_fid = type { i8, [3 x i8] }
%struct.fc_ns_rft = type { %struct.fc_ns_fid, %struct.fc_ns_fts }
%struct.fc_ns_rff_id = type { %struct.fc_ns_fid, [2 x i8], i8, i8 }
%struct.fc_ns_rn_id = type <{ %struct.fc_ns_fid, i64 }>
%struct.fc_ns_rspn = type { %struct.fc_ns_fid, i8, [0 x i8] }

@__kstrtab_fc_elsct_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_elsct_send = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_elsct_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_elsct_send to i32), ptr @__kstrtab_fc_elsct_send, ptr @__kstrtabns_fc_elsct_send }, section "___ksymtab+fc_elsct_send", align 4
@__kstrtab_fc_elsct_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_elsct_init = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_elsct_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_elsct_init to i32), ptr @__kstrtab_fc_elsct_init, ptr @__kstrtabns_fc_elsct_init }, section "___ksymtab+fc_elsct_init", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"response no error\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"response timeout\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"response closed\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"response unknown error\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"accept\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reject\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"response unknown ELS\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CT accept\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CT reject\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"response unknown CT\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"short CT response\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"response not ELS or CT\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s v%s\00", [25 x i8] zeroinitializer }, align 32
@init_uts_ns = external dso_local global %struct.uts_namespace, align 4
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/scsi/fc_frame.h\00", [40 x i8] zeroinitializer }, align 32
@switch.table.fc_els_resp_type = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 3, i64 4, i64 5, i64 14, i64 19, i64 32, i64 81, i64 82, i64 98]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 512, i64 529, i64 768, i64 784]
@__sancov_gen_cov_switch_values.16 = internal global [9 x i64] [i64 7, i64 32, i64 274, i64 370, i64 531, i64 535, i64 536, i64 543, i64 569]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 32]
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 88, i32 10 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 91, i32 10 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 94, i32 10 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 97, i32 10 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 106, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 109, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 112, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 121, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 124, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 127, i32 12 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 131, i32 11 }
@___asan_gen_.52 = private constant [33 x i8] c"../drivers/scsi/libfc/fc_elsct.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 135, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 332, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant [34 x i8] c"../drivers/scsi/libfc/fc_encode.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 357, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [27 x i8] c"../include/scsi/fc_frame.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 254, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [30 x i8] c"switch.table.fc_els_resp_type\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__ksymtab_fc_elsct_init, ptr @__ksymtab_fc_elsct_send, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @switch.table.fc_els_resp_type], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fc_els_resp_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fc_elsct_send(ptr noundef %lport, i32 noundef %did, ptr noundef %fp, i32 noundef %op, ptr noundef %resp, ptr noundef %arg, i32 noundef %timer_msec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %op, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %0)
  %1 = icmp ult i32 %0, 144
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %op, label %if.then.if.then3_crit_edge [
    i32 82, label %sw.bb.i
    i32 3, label %sw.bb1.i
    i32 4, label %sw.bb2.i
    i32 81, label %sw.bb3.i
    i32 5, label %sw.bb4.i
    i32 14, label %sw.bb5.i
    i32 19, label %sw.bb6.i
    i32 32, label %sw.bb7.i
    i32 98, label %sw.bb8.i
  ]

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

sw.bb.i:                                          ; preds = %if.then
  %len1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %3 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %4)
  %cmp.not.i.i.i = icmp ult i32 %4, 52
  br i1 %cmp.not.i.i.i, label %sw.bb.i.fc_adisc_fill.exit.i_crit_edge, label %fc_frame_header_get.exit.i.i.i

sw.bb.i.fc_adisc_fill.exit.i_crit_edge:           ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_adisc_fill.exit.i

fc_frame_header_get.exit.i.i.i:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.fc_frame_header, ptr %6, i32 1
  br label %fc_adisc_fill.exit.i

fc_adisc_fill.exit.i:                             ; preds = %fc_frame_header_get.exit.i.i.i, %sw.bb.i.fc_adisc_fill.exit.i_crit_edge
  %pp.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %fc_frame_header_get.exit.i.i.i ], [ null, %sw.bb.i.fc_adisc_fill.exit.i_crit_edge ]
  %7 = getelementptr inbounds i8, ptr %pp.0.i.i.i, i32 1
  %8 = call ptr @memset(ptr %7, i32 0, i32 27)
  %9 = ptrtoint ptr %pp.0.i.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 82, ptr %pp.0.i.i.i, align 1
  %wwpn.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 19
  %10 = ptrtoint ptr %wwpn.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %wwpn.i.i, align 8
  %adisc_wwpn.i.i = getelementptr inbounds %struct.fc_els_adisc, ptr %pp.0.i.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %adisc_wwpn.i.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %11, ptr %adisc_wwpn.i.i, align 1
  %wwnn.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 20
  %13 = ptrtoint ptr %wwnn.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %wwnn.i.i, align 8
  %adisc_wwnn.i.i = getelementptr inbounds %struct.fc_els_adisc, ptr %pp.0.i.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %adisc_wwnn.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %adisc_wwnn.i.i, align 1
  %adisc_port_id.i.i = getelementptr inbounds %struct.fc_els_adisc, ptr %pp.0.i.i.i, i32 0, i32 7
  %port_id.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 18
  %16 = ptrtoint ptr %port_id.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_id.i.i, align 8
  %shr.i.i.i = lshr i32 %17, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i8
  %18 = ptrtoint ptr %adisc_port_id.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i.i.i, ptr %adisc_port_id.i.i, align 1
  %shr1.i.i.i = lshr i32 %17, 8
  %conv3.i.i.i = trunc i32 %shr1.i.i.i to i8
  %arrayidx4.i.i.i = getelementptr %struct.fc_els_adisc, ptr %pp.0.i.i.i, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv3.i.i.i, ptr %arrayidx4.i.i.i, align 1
  %conv6.i.i.i = trunc i32 %17 to i8
  %arrayidx7.i.i.i = getelementptr %struct.fc_els_adisc, ptr %pp.0.i.i.i, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv6.i.i.i, ptr %arrayidx7.i.i.i, align 1
  br label %if.end4

sw.bb1.i:                                         ; preds = %if.then
  %len1.i.i1.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %21 = ptrtoint ptr %len1.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len1.i.i1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 140, i32 %22)
  %cmp.not.i.i2.i = icmp ult i32 %22, 140
  br i1 %cmp.not.i.i2.i, label %sw.bb1.i.fc_plogi_fill.exit.i_crit_edge, label %fc_frame_header_get.exit.i.i5.i

sw.bb1.i.fc_plogi_fill.exit.i_crit_edge:          ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_plogi_fill.exit.i

fc_frame_header_get.exit.i.i5.i:                  ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.i3.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i.i3.i, align 4
  %add.ptr.i.i4.i = getelementptr %struct.fc_frame_header, ptr %24, i32 1
  br label %fc_plogi_fill.exit.i

fc_plogi_fill.exit.i:                             ; preds = %fc_frame_header_get.exit.i.i5.i, %sw.bb1.i.fc_plogi_fill.exit.i_crit_edge
  %pp.0.i.i6.i = phi ptr [ %add.ptr.i.i4.i, %fc_frame_header_get.exit.i.i5.i ], [ null, %sw.bb1.i.fc_plogi_fill.exit.i_crit_edge ]
  %25 = getelementptr inbounds i8, ptr %pp.0.i.i6.i, i32 1
  %26 = call ptr @memset(ptr %25, i32 0, i32 115)
  %27 = ptrtoint ptr %pp.0.i.i6.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 3, ptr %pp.0.i.i6.i, align 1
  %wwpn.i7.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 19
  %28 = ptrtoint ptr %wwpn.i7.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %wwpn.i7.i, align 8
  %fl_wwpn.i.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i6.i, i32 0, i32 3
  %30 = ptrtoint ptr %fl_wwpn.i.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %29, ptr %fl_wwpn.i.i, align 1
  %wwnn.i8.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 20
  %31 = ptrtoint ptr %wwnn.i8.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %wwnn.i8.i, align 8
  %fl_wwnn.i.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i6.i, i32 0, i32 4
  %33 = ptrtoint ptr %fl_wwnn.i.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 8)
  store i64 %32, ptr %fl_wwnn.i.i, align 1
  %fl_csp.i.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i6.i, i32 0, i32 2
  %34 = ptrtoint ptr %fl_csp.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 32, ptr %fl_csp.i.i, align 4
  %sp_lo_ver.i.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i6.i, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %sp_lo_ver.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 32, ptr %sp_lo_ver.i.i, align 1
  %sp_bb_cred.i.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i6.i, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %sp_bb_cred.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 10, ptr %sp_bb_cred.i.i, align 2
  %mfs.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 26
  %37 = ptrtoint ptr %mfs.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mfs.i.i, align 4
  %conv1.i.i = trunc i32 %38 to i16
  %sp_bb_data.i.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i6.i, i32 0, i32 2, i32 4
  %39 = ptrtoint ptr %sp_bb_data.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv1.i.i, ptr %sp_bb_data.i.i, align 2
  %arrayidx.i.i = getelementptr %struct.fc_els_flogi, ptr %pp.0.i.i6.i, i32 0, i32 5, i32 2
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 -30720, ptr %arrayidx.i.i, align 2
  %sp_features.i.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i6.i, i32 0, i32 2, i32 3
  %41 = ptrtoint ptr %sp_features.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -32768, ptr %sp_features.i.i, align 4
  %sp_u.i.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i6.i, i32 0, i32 2, i32 5
  %42 = ptrtoint ptr %sp_u.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 255, ptr %sp_u.i.i, align 4
  %_sp_rel_off.i.i = getelementptr inbounds %struct.anon.105, ptr %sp_u.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %_sp_rel_off.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 31, ptr %_sp_rel_off.i.i, align 2
  %e_d_tov.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 22
  %44 = ptrtoint ptr %e_d_tov.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %e_d_tov.i.i, align 4
  %sp_e_d_tov.i.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i6.i, i32 0, i32 2, i32 6
  %46 = ptrtoint ptr %sp_e_d_tov.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %sp_e_d_tov.i.i, align 4
  %47 = load i32, ptr %mfs.i.i, align 4
  %conv4.i.i = trunc i32 %47 to i16
  %cp_rdfs.i.i = getelementptr %struct.fc_els_flogi, ptr %pp.0.i.i6.i, i32 0, i32 5, i32 2, i32 3
  %48 = ptrtoint ptr %cp_rdfs.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv4.i.i, ptr %cp_rdfs.i.i, align 2
  %cp_con_seq.i.i = getelementptr %struct.fc_els_flogi, ptr %pp.0.i.i6.i, i32 0, i32 5, i32 2, i32 4
  %49 = ptrtoint ptr %cp_con_seq.i.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 255, ptr %cp_con_seq.i.i, align 2
  %cp_open_seq.i.i = getelementptr %struct.fc_els_flogi, ptr %pp.0.i.i6.i, i32 0, i32 5, i32 2, i32 7
  %50 = ptrtoint ptr %cp_open_seq.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %cp_open_seq.i.i, align 1
  br label %if.end4

sw.bb2.i:                                         ; preds = %if.then
  %len1.i.i9.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %51 = ptrtoint ptr %len1.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len1.i.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 140, i32 %52)
  %cmp.not.i.i10.i = icmp ult i32 %52, 140
  br i1 %cmp.not.i.i10.i, label %sw.bb2.i.fc_frame_payload_get.exit.i.i_crit_edge, label %fc_frame_header_get.exit.i.i13.i

sw.bb2.i.fc_frame_payload_get.exit.i.i_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_payload_get.exit.i.i

fc_frame_header_get.exit.i.i13.i:                 ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.i11.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %53 = ptrtoint ptr %data.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i.i.i11.i, align 4
  %add.ptr.i.i12.i = getelementptr %struct.fc_frame_header, ptr %54, i32 1
  br label %fc_frame_payload_get.exit.i.i

fc_frame_payload_get.exit.i.i:                    ; preds = %fc_frame_header_get.exit.i.i13.i, %sw.bb2.i.fc_frame_payload_get.exit.i.i_crit_edge
  %pp.0.i.i14.i = phi ptr [ %add.ptr.i.i12.i, %fc_frame_header_get.exit.i.i13.i ], [ null, %sw.bb2.i.fc_frame_payload_get.exit.i.i_crit_edge ]
  %55 = getelementptr inbounds i8, ptr %pp.0.i.i14.i, i32 1
  %56 = call ptr @memset(ptr %55, i32 0, i32 115)
  %57 = ptrtoint ptr %pp.0.i.i14.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 4, ptr %pp.0.i.i14.i, align 1
  %wwpn.i15.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 19
  %58 = ptrtoint ptr %wwpn.i15.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %wwpn.i15.i, align 8
  %fl_wwpn.i16.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i14.i, i32 0, i32 3
  %60 = ptrtoint ptr %fl_wwpn.i16.i to i32
  call void @__asan_storeN_noabort(i32 %60, i32 8)
  store i64 %59, ptr %fl_wwpn.i16.i, align 1
  %wwnn.i17.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 20
  %61 = ptrtoint ptr %wwnn.i17.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %wwnn.i17.i, align 8
  %fl_wwnn.i18.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i14.i, i32 0, i32 4
  %63 = ptrtoint ptr %fl_wwnn.i18.i to i32
  call void @__asan_storeN_noabort(i32 %63, i32 8)
  store i64 %62, ptr %fl_wwnn.i18.i, align 1
  %fl_csp.i19.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i14.i, i32 0, i32 2
  %64 = ptrtoint ptr %fl_csp.i19.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 32, ptr %fl_csp.i19.i, align 4
  %sp_lo_ver.i20.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i14.i, i32 0, i32 2, i32 1
  %65 = ptrtoint ptr %sp_lo_ver.i20.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 32, ptr %sp_lo_ver.i20.i, align 1
  %sp_bb_cred.i21.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i14.i, i32 0, i32 2, i32 2
  %66 = ptrtoint ptr %sp_bb_cred.i21.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 10, ptr %sp_bb_cred.i21.i, align 2
  %mfs.i22.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 26
  %67 = ptrtoint ptr %mfs.i22.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mfs.i22.i, align 4
  %conv.i.i = trunc i32 %68 to i16
  %sp_bb_data.i23.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i14.i, i32 0, i32 2, i32 4
  %69 = ptrtoint ptr %sp_bb_data.i23.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i.i, ptr %sp_bb_data.i23.i, align 2
  %arrayidx.i24.i = getelementptr %struct.fc_els_flogi, ptr %pp.0.i.i14.i, i32 0, i32 5, i32 2
  %70 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 -30720, ptr %arrayidx.i24.i, align 2
  %does_npiv.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 25
  %71 = ptrtoint ptr %does_npiv.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load.i.i = load i8, ptr %does_npiv.i.i, align 8
  %72 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i.i = icmp eq i8 %72, 0
  br i1 %tobool.not.i.i, label %fc_frame_payload_get.exit.i.i.if.end4_crit_edge, label %if.then.i.i

fc_frame_payload_get.exit.i.i.if.end4_crit_edge:  ; preds = %fc_frame_payload_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then.i.i:                                      ; preds = %fc_frame_payload_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sp_features.i25.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i14.i, i32 0, i32 2, i32 3
  %73 = ptrtoint ptr %sp_features.i25.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 -32768, ptr %sp_features.i25.i, align 4
  br label %if.end4

sw.bb3.i:                                         ; preds = %if.then
  %len1.i.i26.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %74 = ptrtoint ptr %len1.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len1.i.i26.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 140, i32 %75)
  %cmp.not.i.i27.i = icmp ult i32 %75, 140
  br i1 %cmp.not.i.i27.i, label %sw.bb3.i.fc_fdisc_fill.exit.i_crit_edge, label %fc_frame_header_get.exit.i.i30.i

sw.bb3.i.fc_fdisc_fill.exit.i_crit_edge:          ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_fdisc_fill.exit.i

fc_frame_header_get.exit.i.i30.i:                 ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.i28.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %76 = ptrtoint ptr %data.i.i.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i.i.i.i28.i, align 4
  %add.ptr.i.i29.i = getelementptr %struct.fc_frame_header, ptr %77, i32 1
  br label %fc_fdisc_fill.exit.i

fc_fdisc_fill.exit.i:                             ; preds = %fc_frame_header_get.exit.i.i30.i, %sw.bb3.i.fc_fdisc_fill.exit.i_crit_edge
  %pp.0.i.i31.i = phi ptr [ %add.ptr.i.i29.i, %fc_frame_header_get.exit.i.i30.i ], [ null, %sw.bb3.i.fc_fdisc_fill.exit.i_crit_edge ]
  %78 = getelementptr inbounds i8, ptr %pp.0.i.i31.i, i32 1
  %79 = call ptr @memset(ptr %78, i32 0, i32 115)
  %80 = ptrtoint ptr %pp.0.i.i31.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 81, ptr %pp.0.i.i31.i, align 1
  %wwpn.i32.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 19
  %81 = ptrtoint ptr %wwpn.i32.i to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %wwpn.i32.i, align 8
  %fl_wwpn.i33.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i31.i, i32 0, i32 3
  %83 = ptrtoint ptr %fl_wwpn.i33.i to i32
  call void @__asan_storeN_noabort(i32 %83, i32 8)
  store i64 %82, ptr %fl_wwpn.i33.i, align 1
  %wwnn.i34.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 20
  %84 = ptrtoint ptr %wwnn.i34.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %wwnn.i34.i, align 8
  %fl_wwnn.i35.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i31.i, i32 0, i32 4
  %86 = ptrtoint ptr %fl_wwnn.i35.i to i32
  call void @__asan_storeN_noabort(i32 %86, i32 8)
  store i64 %85, ptr %fl_wwnn.i35.i, align 1
  %fl_csp.i36.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i31.i, i32 0, i32 2
  %87 = ptrtoint ptr %fl_csp.i36.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 32, ptr %fl_csp.i36.i, align 4
  %sp_lo_ver.i37.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i31.i, i32 0, i32 2, i32 1
  %88 = ptrtoint ptr %sp_lo_ver.i37.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 32, ptr %sp_lo_ver.i37.i, align 1
  %sp_bb_cred.i38.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i31.i, i32 0, i32 2, i32 2
  %89 = ptrtoint ptr %sp_bb_cred.i38.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 10, ptr %sp_bb_cred.i38.i, align 2
  %mfs.i39.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 26
  %90 = ptrtoint ptr %mfs.i39.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mfs.i39.i, align 4
  %conv.i40.i = trunc i32 %91 to i16
  %sp_bb_data.i41.i = getelementptr inbounds %struct.fc_els_flogi, ptr %pp.0.i.i31.i, i32 0, i32 2, i32 4
  %92 = ptrtoint ptr %sp_bb_data.i41.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv.i40.i, ptr %sp_bb_data.i41.i, align 2
  %arrayidx.i42.i = getelementptr %struct.fc_els_flogi, ptr %pp.0.i.i31.i, i32 0, i32 5, i32 2
  %93 = ptrtoint ptr %arrayidx.i42.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 -30720, ptr %arrayidx.i42.i, align 2
  br label %if.end4

sw.bb4.i:                                         ; preds = %if.then
  %len1.i.i44.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %94 = ptrtoint ptr %len1.i.i44.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %len1.i.i44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %95)
  %cmp.not.i.i45.i = icmp ult i32 %95, 40
  br i1 %cmp.not.i.i45.i, label %sw.bb4.i.fc_logo_fill.exit.i_crit_edge, label %fc_frame_header_get.exit.i.i48.i

sw.bb4.i.fc_logo_fill.exit.i_crit_edge:           ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_logo_fill.exit.i

fc_frame_header_get.exit.i.i48.i:                 ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.i46.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %96 = ptrtoint ptr %data.i.i.i.i46.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %data.i.i.i.i46.i, align 4
  %add.ptr.i.i47.i = getelementptr %struct.fc_frame_header, ptr %97, i32 1
  br label %fc_logo_fill.exit.i

fc_logo_fill.exit.i:                              ; preds = %fc_frame_header_get.exit.i.i48.i, %sw.bb4.i.fc_logo_fill.exit.i_crit_edge
  %pp.0.i.i49.i = phi ptr [ %add.ptr.i.i47.i, %fc_frame_header_get.exit.i.i48.i ], [ null, %sw.bb4.i.fc_logo_fill.exit.i_crit_edge ]
  %98 = call ptr @memset(ptr %pp.0.i.i49.i, i32 0, i32 16)
  %99 = ptrtoint ptr %pp.0.i.i49.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 5, ptr %pp.0.i.i49.i, align 8
  %fl_n_port_id.i.i = getelementptr inbounds %struct.fc_els_logo, ptr %pp.0.i.i49.i, i32 0, i32 3
  %port_id.i50.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 18
  %100 = ptrtoint ptr %port_id.i50.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %port_id.i50.i, align 8
  %shr.i.i51.i = lshr i32 %101, 16
  %conv.i.i52.i = trunc i32 %shr.i.i51.i to i8
  %102 = ptrtoint ptr %fl_n_port_id.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv.i.i52.i, ptr %fl_n_port_id.i.i, align 1
  %shr1.i.i53.i = lshr i32 %101, 8
  %conv3.i.i54.i = trunc i32 %shr1.i.i53.i to i8
  %arrayidx4.i.i55.i = getelementptr %struct.fc_els_logo, ptr %pp.0.i.i49.i, i32 0, i32 3, i32 1
  %103 = ptrtoint ptr %arrayidx4.i.i55.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv3.i.i54.i, ptr %arrayidx4.i.i55.i, align 1
  %conv6.i.i56.i = trunc i32 %101 to i8
  %arrayidx7.i.i57.i = getelementptr %struct.fc_els_logo, ptr %pp.0.i.i49.i, i32 0, i32 3, i32 2
  %104 = ptrtoint ptr %arrayidx7.i.i57.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv6.i.i56.i, ptr %arrayidx7.i.i57.i, align 1
  %wwpn.i58.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 19
  %105 = ptrtoint ptr %wwpn.i58.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %wwpn.i58.i, align 8
  %fl_n_port_wwn.i.i = getelementptr inbounds %struct.fc_els_logo, ptr %pp.0.i.i49.i, i32 0, i32 4
  %107 = ptrtoint ptr %fl_n_port_wwn.i.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %106, ptr %fl_n_port_wwn.i.i, align 8
  br label %if.end4

sw.bb5.i:                                         ; preds = %if.then
  %len1.i.i60.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %108 = ptrtoint ptr %len1.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %len1.i.i60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %109)
  %cmp.not.i.i61.i = icmp ult i32 %109, 28
  br i1 %cmp.not.i.i61.i, label %sw.bb5.i.fc_rtv_fill.exit.i_crit_edge, label %fc_frame_header_get.exit.i.i64.i

sw.bb5.i.fc_rtv_fill.exit.i_crit_edge:            ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_rtv_fill.exit.i

fc_frame_header_get.exit.i.i64.i:                 ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.i62.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %110 = ptrtoint ptr %data.i.i.i.i62.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data.i.i.i.i62.i, align 4
  %add.ptr.i.i63.i = getelementptr %struct.fc_frame_header, ptr %111, i32 1
  br label %fc_rtv_fill.exit.i

fc_rtv_fill.exit.i:                               ; preds = %fc_frame_header_get.exit.i.i64.i, %sw.bb5.i.fc_rtv_fill.exit.i_crit_edge
  %pp.0.i.i65.i = phi ptr [ %add.ptr.i.i63.i, %fc_frame_header_get.exit.i.i64.i ], [ null, %sw.bb5.i.fc_rtv_fill.exit.i_crit_edge ]
  %112 = ptrtoint ptr %pp.0.i.i65.i to i32
  call void @__asan_storeN_noabort(i32 %112, i32 4)
  store i32 234881024, ptr %pp.0.i.i65.i, align 1
  br label %if.end4

sw.bb6.i:                                         ; preds = %if.then
  %fr_seq.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 3, i32 4
  %113 = ptrtoint ptr %fr_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %fr_seq.i.i, align 4
  %len1.i.i67.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %115 = ptrtoint ptr %len1.i.i67.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %len1.i.i67.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %116)
  %cmp.not.i.i68.i = icmp ult i32 %116, 36
  br i1 %cmp.not.i.i68.i, label %sw.bb6.i.fc_rec_fill.exit.i_crit_edge, label %fc_frame_header_get.exit.i.i71.i

sw.bb6.i.fc_rec_fill.exit.i_crit_edge:            ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_rec_fill.exit.i

fc_frame_header_get.exit.i.i71.i:                 ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.i69.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %117 = ptrtoint ptr %data.i.i.i.i69.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data.i.i.i.i69.i, align 4
  %add.ptr.i.i70.i = getelementptr %struct.fc_frame_header, ptr %118, i32 1
  br label %fc_rec_fill.exit.i

fc_rec_fill.exit.i:                               ; preds = %fc_frame_header_get.exit.i.i71.i, %sw.bb6.i.fc_rec_fill.exit.i_crit_edge
  %pp.0.i.i72.i = phi ptr [ %add.ptr.i.i70.i, %fc_frame_header_get.exit.i.i71.i ], [ null, %sw.bb6.i.fc_rec_fill.exit.i_crit_edge ]
  %119 = call ptr @memset(ptr %pp.0.i.i72.i, i32 0, i32 12)
  %120 = ptrtoint ptr %pp.0.i.i72.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 19, ptr %pp.0.i.i72.i, align 2
  %rec_s_id.i.i = getelementptr inbounds %struct.fc_els_rec, ptr %pp.0.i.i72.i, i32 0, i32 3
  %port_id.i73.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 18
  %121 = ptrtoint ptr %port_id.i73.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %port_id.i73.i, align 8
  %shr.i.i74.i = lshr i32 %122, 16
  %conv.i.i75.i = trunc i32 %shr.i.i74.i to i8
  %123 = ptrtoint ptr %rec_s_id.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %conv.i.i75.i, ptr %rec_s_id.i.i, align 1
  %shr1.i.i76.i = lshr i32 %122, 8
  %conv3.i.i77.i = trunc i32 %shr1.i.i76.i to i8
  %arrayidx4.i.i78.i = getelementptr %struct.fc_els_rec, ptr %pp.0.i.i72.i, i32 0, i32 3, i32 1
  %124 = ptrtoint ptr %arrayidx4.i.i78.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv3.i.i77.i, ptr %arrayidx4.i.i78.i, align 1
  %conv6.i.i79.i = trunc i32 %122 to i8
  %arrayidx7.i.i80.i = getelementptr %struct.fc_els_rec, ptr %pp.0.i.i72.i, i32 0, i32 3, i32 2
  %125 = ptrtoint ptr %arrayidx7.i.i80.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv6.i.i79.i, ptr %arrayidx7.i.i80.i, align 1
  %oxid.i.i = getelementptr i8, ptr %114, i32 -26
  %126 = ptrtoint ptr %oxid.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %oxid.i.i, align 2
  %rec_ox_id.i.i = getelementptr inbounds %struct.fc_els_rec, ptr %pp.0.i.i72.i, i32 0, i32 4
  %128 = ptrtoint ptr %rec_ox_id.i.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %rec_ox_id.i.i, align 2
  %rxid.i.i = getelementptr i8, ptr %114, i32 -24
  %129 = ptrtoint ptr %rxid.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %rxid.i.i, align 4
  %rec_rx_id.i.i = getelementptr inbounds %struct.fc_els_rec, ptr %pp.0.i.i72.i, i32 0, i32 5
  %131 = ptrtoint ptr %rec_rx_id.i.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %rec_rx_id.i.i, align 2
  br label %if.end4

sw.bb7.i:                                         ; preds = %if.then
  %len1.i.i82.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %132 = ptrtoint ptr %len1.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %len1.i.i82.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %133)
  %cmp.not.i.i83.i = icmp ult i32 %133, 44
  br i1 %cmp.not.i.i83.i, label %sw.bb7.i.fc_prli_fill.exit.i_crit_edge, label %fc_frame_header_get.exit.i.i86.i

sw.bb7.i.fc_prli_fill.exit.i_crit_edge:           ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_prli_fill.exit.i

fc_frame_header_get.exit.i.i86.i:                 ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.i84.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %134 = ptrtoint ptr %data.i.i.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %data.i.i.i.i84.i, align 4
  %add.ptr.i.i85.i = getelementptr %struct.fc_frame_header, ptr %135, i32 1
  br label %fc_prli_fill.exit.i

fc_prli_fill.exit.i:                              ; preds = %fc_frame_header_get.exit.i.i86.i, %sw.bb7.i.fc_prli_fill.exit.i_crit_edge
  %pp.0.i.i87.i = phi ptr [ %add.ptr.i.i85.i, %fc_frame_header_get.exit.i.i86.i ], [ null, %sw.bb7.i.fc_prli_fill.exit.i_crit_edge ]
  %136 = getelementptr inbounds i8, ptr %pp.0.i.i87.i, i32 4
  %137 = call ptr @memset(ptr %136, i32 0, i32 16)
  %138 = ptrtoint ptr %pp.0.i.i87.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 32, ptr %pp.0.i.i87.i, align 4
  %prli_spp_len.i.i = getelementptr inbounds %struct.fc_els_prli, ptr %pp.0.i.i87.i, i32 0, i32 1
  %139 = ptrtoint ptr %prli_spp_len.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 16, ptr %prli_spp_len.i.i, align 1
  %prli_len.i.i = getelementptr inbounds %struct.fc_els_prli, ptr %pp.0.i.i87.i, i32 0, i32 2
  %140 = ptrtoint ptr %prli_len.i.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 20, ptr %prli_len.i.i, align 2
  %141 = ptrtoint ptr %136 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 8, ptr %136, align 4
  %spp_flags.i.i = getelementptr inbounds %struct.anon.107, ptr %pp.0.i.i87.i, i32 0, i32 1, i32 2
  %142 = ptrtoint ptr %spp_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 32, ptr %spp_flags.i.i, align 2
  %service_params.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 21
  %143 = ptrtoint ptr %service_params.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %service_params.i.i, align 8
  %spp_params.i.i = getelementptr inbounds %struct.anon.107, ptr %pp.0.i.i87.i, i32 0, i32 1, i32 6
  %145 = ptrtoint ptr %spp_params.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %spp_params.i.i, align 4
  br label %if.end4

sw.bb8.i:                                         ; preds = %if.then
  %len1.i.i89.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %146 = ptrtoint ptr %len1.i.i89.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %len1.i.i89.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %147)
  %cmp.not.i.i90.i = icmp ult i32 %147, 32
  br i1 %cmp.not.i.i90.i, label %sw.bb8.i.fc_scr_fill.exit.i_crit_edge, label %fc_frame_header_get.exit.i.i93.i

sw.bb8.i.fc_scr_fill.exit.i_crit_edge:            ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_scr_fill.exit.i

fc_frame_header_get.exit.i.i93.i:                 ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.i91.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %148 = ptrtoint ptr %data.i.i.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %data.i.i.i.i91.i, align 4
  %add.ptr.i.i92.i = getelementptr %struct.fc_frame_header, ptr %149, i32 1
  br label %fc_scr_fill.exit.i

fc_scr_fill.exit.i:                               ; preds = %fc_frame_header_get.exit.i.i93.i, %sw.bb8.i.fc_scr_fill.exit.i_crit_edge
  %pp.0.i.i94.i = phi ptr [ %add.ptr.i.i92.i, %fc_frame_header_get.exit.i.i93.i ], [ null, %sw.bb8.i.fc_scr_fill.exit.i_crit_edge ]
  %150 = ptrtoint ptr %pp.0.i.i94.i to i32
  call void @__asan_storeN_noabort(i32 %150, i32 8)
  store i64 7061644215716937731, ptr %pp.0.i.i94.i, align 1
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777210, i32 %did)
  %cond.i = icmp eq i32 %did, 16777210
  br i1 %cond.i, label %sw.bb.i18, label %sw.default.i

sw.bb.i18:                                        ; preds = %if.else
  %151 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %lport, align 8
  %shost_data.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %152, i32 0, i32 51
  %153 = ptrtoint ptr %shost_data.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %shost_data.i.i, align 8
  %155 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %155, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %op, label %sw.bb.i18.if.then3_crit_edge [
    i32 512, label %sw.bb.i.i
    i32 529, label %sw.bb209.i.i
    i32 784, label %sw.bb430.i.i
    i32 768, label %sw.bb436.i.i
  ]

sw.bb.i18.if.then3_crit_edge:                     ; preds = %sw.bb.i18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

sw.bb.i.i:                                        ; preds = %sw.bb.i18
  %fdmi_version.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %154, i32 0, i32 45
  %156 = ptrtoint ptr %fdmi_version.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %fdmi_version.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %157)
  %cmp.i.i = icmp eq i8 %157, 2
  %spec.select.i.i = select i1 %cmp.i.i, i32 876, i32 720
  %spec.select1.i.i = select i1 %cmp.i.i, i32 18, i32 11
  %len1.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %158 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %len1.i.i.i.i, align 4
  %add.i.i.i.i = add nuw nsw i32 %spec.select.i.i, 40
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %add.i.i.i.i)
  %cmp.not.i.i.i.i = icmp ult i32 %159, %add.i.i.i.i
  br i1 %cmp.not.i.i.i.i, label %sw.bb.i.i.fc_ct_hdr_fill.exit.i.i_crit_edge, label %if.then.i.i.i.i

sw.bb.i.i.fc_ct_hdr_fill.exit.i.i_crit_edge:      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_hdr_fill.exit.i.i

if.then.i.i.i.i:                                  ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %159)
  %cmp.i.i.i.i.i = icmp ult i32 %159, 24
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.then.i.i.i.i.fc_frame_header_get.exit.i.i.i.i_crit_edge, !prof !43

if.then.i.i.i.i.fc_frame_header_get.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_header_get.exit.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 161, i32 noundef 9, ptr noundef null) #6
  br label %fc_frame_header_get.exit.i.i.i.i

fc_frame_header_get.exit.i.i.i.i:                 ; preds = %do.end.i.i.i.i.i, %if.then.i.i.i.i.fc_frame_header_get.exit.i.i.i.i_crit_edge
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %160 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr %struct.fc_frame_header, ptr %161, i32 1
  br label %fc_ct_hdr_fill.exit.i.i

fc_ct_hdr_fill.exit.i.i:                          ; preds = %fc_frame_header_get.exit.i.i.i.i, %sw.bb.i.i.fc_ct_hdr_fill.exit.i.i_crit_edge
  %pp.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %fc_frame_header_get.exit.i.i.i.i ], [ null, %sw.bb.i.i.fc_ct_hdr_fill.exit.i.i_crit_edge ]
  %add.i.i.i = add nuw nsw i32 %spec.select.i.i, 16
  %162 = call ptr @memset(ptr %pp.0.i.i.i.i, i32 0, i32 %add.i.i.i)
  %163 = ptrtoint ptr %pp.0.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %pp.0.i.i.i.i, align 4
  %ct_fs_type.i.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i.i.i, i32 0, i32 2
  %164 = ptrtoint ptr %ct_fs_type.i.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 -6, ptr %ct_fs_type.i.i.i, align 4
  %ct_fs_subtype.i.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i.i.i, i32 0, i32 3
  %165 = ptrtoint ptr %ct_fs_subtype.i.i.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 16, ptr %ct_fs_subtype.i.i.i, align 1
  %ct_cmd.i.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i.i.i, i32 0, i32 6
  %166 = ptrtoint ptr %ct_cmd.i.i.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 512, ptr %ct_cmd.i.i.i, align 4
  %wwpn.i.i19 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 19
  %167 = ptrtoint ptr %wwpn.i.i19 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %wwpn.i.i19, align 8
  %payload.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 0, i32 1
  %169 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_storeN_noabort(i32 %169, i32 8)
  store i64 %168, ptr %payload.i.i, align 1
  %port.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 0, i32 1, i32 1
  %170 = ptrtoint ptr %port.i.i to i32
  call void @__asan_storeN_noabort(i32 %170, i32 4)
  store i32 1, ptr %port.i.i, align 1
  %171 = load i64, ptr %wwpn.i.i19, align 8
  %port26.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 0, i32 1, i32 1, i32 4
  %172 = ptrtoint ptr %port26.i.i to i32
  call void @__asan_storeN_noabort(i32 %172, i32 8)
  store i64 %171, ptr %port26.i.i, align 1
  %hba_attrs28.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 0, i32 1, i32 1, i32 12
  %173 = ptrtoint ptr %hba_attrs28.i.i to i32
  call void @__asan_storeN_noabort(i32 %173, i32 4)
  store i32 %spec.select1.i.i, ptr %hba_attrs28.i.i, align 1
  %attr.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 0, i32 1, i32 1, i32 16
  %174 = ptrtoint ptr %attr.i.i to i32
  call void @__asan_storeN_noabort(i32 %174, i32 2)
  store i16 1, ptr %attr.i.i, align 1
  %len34.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 0, i32 1, i32 1, i32 18
  %175 = ptrtoint ptr %len34.i.i to i32
  call void @__asan_storeN_noabort(i32 %175, i32 2)
  store i16 12, ptr %len34.i.i, align 1
  %wwnn.i.i20 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 20
  %176 = ptrtoint ptr %wwnn.i.i20 to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %wwnn.i.i20, align 8
  %value.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 0, i32 1, i32 1, i32 20
  %178 = ptrtoint ptr %value.i.i to i32
  call void @__asan_storeN_noabort(i32 %178, i32 8)
  store i64 %177, ptr %value.i.i, align 1
  %add.ptr.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 1
  %179 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_storeN_noabort(i32 %179, i32 2)
  store i16 2, ptr %add.ptr.i.i, align 1
  %len41.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 1, i32 0, i32 1, i32 1
  %180 = ptrtoint ptr %len41.i.i to i32
  call void @__asan_storeN_noabort(i32 %180, i32 2)
  store i16 68, ptr %len41.i.i, align 1
  %181 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %lport, align 8
  %shost_data43.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %182, i32 0, i32 51
  %183 = ptrtoint ptr %shost_data43.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %shost_data43.i.i, align 8
  %manufacturer.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %184, i32 0, i32 13
  %value.i.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 1, i32 0, i32 2
  %call.i.i.i = tail call i32 @strscpy(ptr noundef %value.i.i.i, ptr noundef %manufacturer.i.i, i32 noundef 64) #6
  %185 = add i32 %call.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %185)
  %186 = icmp ult i32 %185, 62
  br i1 %186, label %if.then.i.i.i, label %fc_ct_hdr_fill.exit.i.i.fc_ct_ms_fill_attr.exit.i.i_crit_edge

fc_ct_hdr_fill.exit.i.i.fc_ct_ms_fill_attr.exit.i.i_crit_edge: ; preds = %fc_ct_hdr_fill.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_ms_fill_attr.exit.i.i

if.then.i.i.i:                                    ; preds = %fc_ct_hdr_fill.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i.i21 = getelementptr i8, ptr %value.i.i.i, i32 %call.i.i.i
  %add.ptr5.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i21, i32 1
  %sub6.i.i.i = sub nuw nsw i32 63, %call.i.i.i
  %187 = call ptr @memset(ptr %add.ptr5.i.i.i, i32 0, i32 %sub6.i.i.i)
  br label %fc_ct_ms_fill_attr.exit.i.i

fc_ct_ms_fill_attr.exit.i.i:                      ; preds = %if.then.i.i.i, %fc_ct_hdr_fill.exit.i.i.fc_ct_ms_fill_attr.exit.i.i_crit_edge
  %add.ptr47.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 2, i32 1
  %188 = ptrtoint ptr %add.ptr47.i.i to i32
  call void @__asan_storeN_noabort(i32 %188, i32 2)
  store i16 3, ptr %add.ptr47.i.i, align 1
  %len51.i.i = getelementptr inbounds %struct.fc_fdmi_attr_entry, ptr %add.ptr47.i.i, i32 0, i32 1
  %189 = ptrtoint ptr %len51.i.i to i32
  call void @__asan_storeN_noabort(i32 %189, i32 2)
  store i16 68, ptr %len51.i.i, align 1
  %190 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %lport, align 8
  %shost_data53.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %191, i32 0, i32 51
  %192 = ptrtoint ptr %shost_data53.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %shost_data53.i.i, align 8
  %serial_number.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %193, i32 0, i32 12
  %value.i5.i.i = getelementptr inbounds %struct.fc_fdmi_attr_entry, ptr %add.ptr47.i.i, i32 0, i32 2
  %call.i6.i.i = tail call i32 @strscpy(ptr noundef %value.i5.i.i, ptr noundef %serial_number.i.i, i32 noundef 64) #6
  %194 = add i32 %call.i6.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %194)
  %195 = icmp ult i32 %194, 62
  br i1 %195, label %if.then.i14.i.i, label %fc_ct_ms_fill_attr.exit.i.i.fc_ct_ms_fill_attr.exit15.i.i_crit_edge

fc_ct_ms_fill_attr.exit.i.i.fc_ct_ms_fill_attr.exit15.i.i_crit_edge: ; preds = %fc_ct_ms_fill_attr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_ms_fill_attr.exit15.i.i

if.then.i14.i.i:                                  ; preds = %fc_ct_ms_fill_attr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i11.i.i = getelementptr i8, ptr %value.i5.i.i, i32 %call.i6.i.i
  %add.ptr5.i12.i.i = getelementptr i8, ptr %add.ptr.i11.i.i, i32 1
  %sub6.i13.i.i = sub nuw nsw i32 63, %call.i6.i.i
  %196 = call ptr @memset(ptr %add.ptr5.i12.i.i, i32 0, i32 %sub6.i13.i.i)
  br label %fc_ct_ms_fill_attr.exit15.i.i

fc_ct_ms_fill_attr.exit15.i.i:                    ; preds = %if.then.i14.i.i, %fc_ct_ms_fill_attr.exit.i.i.fc_ct_ms_fill_attr.exit15.i.i_crit_edge
  %add.ptr57.i.i = getelementptr i8, ptr %value.i5.i.i, i32 64
  %197 = ptrtoint ptr %add.ptr57.i.i to i32
  call void @__asan_storeN_noabort(i32 %197, i32 2)
  store i16 4, ptr %add.ptr57.i.i, align 1
  %len61.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 3, i32 1, i32 1, i32 10
  %198 = ptrtoint ptr %len61.i.i to i32
  call void @__asan_storeN_noabort(i32 %198, i32 2)
  store i16 68, ptr %len61.i.i, align 1
  %199 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %lport, align 8
  %shost_data63.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %200, i32 0, i32 51
  %201 = ptrtoint ptr %shost_data63.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %shost_data63.i.i, align 8
  %model.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %202, i32 0, i32 14
  %value.i16.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 3, i32 1, i32 1, i32 12
  %call.i17.i.i = tail call i32 @strscpy(ptr noundef %value.i16.i.i, ptr noundef %model.i.i, i32 noundef 64) #6
  %203 = add i32 %call.i17.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %203)
  %204 = icmp ult i32 %203, 62
  br i1 %204, label %if.then.i25.i.i, label %fc_ct_ms_fill_attr.exit15.i.i.fc_ct_ms_fill_attr.exit26.i.i_crit_edge

fc_ct_ms_fill_attr.exit15.i.i.fc_ct_ms_fill_attr.exit26.i.i_crit_edge: ; preds = %fc_ct_ms_fill_attr.exit15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_ms_fill_attr.exit26.i.i

if.then.i25.i.i:                                  ; preds = %fc_ct_ms_fill_attr.exit15.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i22.i.i = getelementptr i8, ptr %value.i16.i.i, i32 %call.i17.i.i
  %add.ptr5.i23.i.i = getelementptr i8, ptr %add.ptr.i22.i.i, i32 1
  %sub6.i24.i.i = sub nuw nsw i32 63, %call.i17.i.i
  %205 = call ptr @memset(ptr %add.ptr5.i23.i.i, i32 0, i32 %sub6.i24.i.i)
  br label %fc_ct_ms_fill_attr.exit26.i.i

fc_ct_ms_fill_attr.exit26.i.i:                    ; preds = %if.then.i25.i.i, %fc_ct_ms_fill_attr.exit15.i.i.fc_ct_ms_fill_attr.exit26.i.i_crit_edge
  %add.ptr67.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 4, i32 1, i32 1, i32 24
  %206 = ptrtoint ptr %add.ptr67.i.i to i32
  call void @__asan_storeN_noabort(i32 %206, i32 2)
  store i16 5, ptr %add.ptr67.i.i, align 1
  %len71.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 4, i32 1, i32 1, i32 26
  %207 = ptrtoint ptr %len71.i.i to i32
  call void @__asan_storeN_noabort(i32 %207, i32 2)
  store i16 68, ptr %len71.i.i, align 1
  %208 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %lport, align 8
  %shost_data73.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %209, i32 0, i32 51
  %210 = ptrtoint ptr %shost_data73.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %shost_data73.i.i, align 8
  %model_description.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %211, i32 0, i32 15
  %value.i27.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 5
  %call.i28.i.i = tail call i32 @strscpy(ptr noundef %value.i27.i.i, ptr noundef %model_description.i.i, i32 noundef 64) #6
  %212 = add i32 %call.i28.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %212)
  %213 = icmp ult i32 %212, 62
  br i1 %213, label %if.then.i36.i.i, label %fc_ct_ms_fill_attr.exit26.i.i.fc_ct_ms_fill_attr.exit37.i.i_crit_edge

fc_ct_ms_fill_attr.exit26.i.i.fc_ct_ms_fill_attr.exit37.i.i_crit_edge: ; preds = %fc_ct_ms_fill_attr.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_ms_fill_attr.exit37.i.i

if.then.i36.i.i:                                  ; preds = %fc_ct_ms_fill_attr.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i33.i.i = getelementptr i8, ptr %value.i27.i.i, i32 %call.i28.i.i
  %add.ptr5.i34.i.i = getelementptr i8, ptr %add.ptr.i33.i.i, i32 1
  %sub6.i35.i.i = sub nuw nsw i32 63, %call.i28.i.i
  %214 = call ptr @memset(ptr %add.ptr5.i34.i.i, i32 0, i32 %sub6.i35.i.i)
  br label %fc_ct_ms_fill_attr.exit37.i.i

fc_ct_ms_fill_attr.exit37.i.i:                    ; preds = %if.then.i36.i.i, %fc_ct_ms_fill_attr.exit26.i.i.fc_ct_ms_fill_attr.exit37.i.i_crit_edge
  %add.ptr77.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 6, i32 0, i32 8
  %215 = ptrtoint ptr %add.ptr77.i.i to i32
  call void @__asan_storeN_noabort(i32 %215, i32 2)
  store i16 6, ptr %add.ptr77.i.i, align 1
  %len81.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 6, i32 0, i32 10
  %216 = ptrtoint ptr %len81.i.i to i32
  call void @__asan_storeN_noabort(i32 %216, i32 2)
  store i16 68, ptr %len81.i.i, align 1
  %217 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %lport, align 8
  %shost_data83.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %218, i32 0, i32 51
  %219 = ptrtoint ptr %shost_data83.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %shost_data83.i.i, align 8
  %hardware_version.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %220, i32 0, i32 16
  %value.i38.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 6, i32 1
  %call.i39.i.i = tail call i32 @strscpy(ptr noundef %value.i38.i.i, ptr noundef %hardware_version.i.i, i32 noundef 64) #6
  %221 = add i32 %call.i39.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %221)
  %222 = icmp ult i32 %221, 62
  br i1 %222, label %if.then.i47.i.i, label %fc_ct_ms_fill_attr.exit37.i.i.fc_ct_ms_fill_attr.exit48.i.i_crit_edge

fc_ct_ms_fill_attr.exit37.i.i.fc_ct_ms_fill_attr.exit48.i.i_crit_edge: ; preds = %fc_ct_ms_fill_attr.exit37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_ms_fill_attr.exit48.i.i

if.then.i47.i.i:                                  ; preds = %fc_ct_ms_fill_attr.exit37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i44.i.i = getelementptr i8, ptr %value.i38.i.i, i32 %call.i39.i.i
  %add.ptr5.i45.i.i = getelementptr i8, ptr %add.ptr.i44.i.i, i32 1
  %sub6.i46.i.i = sub nuw nsw i32 63, %call.i39.i.i
  %223 = call ptr @memset(ptr %add.ptr5.i45.i.i, i32 0, i32 %sub6.i46.i.i)
  br label %fc_ct_ms_fill_attr.exit48.i.i

fc_ct_ms_fill_attr.exit48.i.i:                    ; preds = %if.then.i47.i.i, %fc_ct_ms_fill_attr.exit37.i.i.fc_ct_ms_fill_attr.exit48.i.i_crit_edge
  %add.ptr87.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 7, i32 1, i32 1, i32 4
  %224 = ptrtoint ptr %add.ptr87.i.i to i32
  call void @__asan_storeN_noabort(i32 %224, i32 2)
  store i16 7, ptr %add.ptr87.i.i, align 1
  %len91.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 7, i32 1, i32 1, i32 6
  %225 = ptrtoint ptr %len91.i.i to i32
  call void @__asan_storeN_noabort(i32 %225, i32 2)
  store i16 68, ptr %len91.i.i, align 1
  %226 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %lport, align 8
  %shost_data93.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %227, i32 0, i32 51
  %228 = ptrtoint ptr %shost_data93.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %shost_data93.i.i, align 8
  %driver_version.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %229, i32 0, i32 17
  %value.i49.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 7, i32 1, i32 1, i32 8
  %call.i50.i.i = tail call i32 @strscpy(ptr noundef %value.i49.i.i, ptr noundef %driver_version.i.i, i32 noundef 64) #6
  %230 = add i32 %call.i50.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %230)
  %231 = icmp ult i32 %230, 62
  br i1 %231, label %if.then.i58.i.i, label %fc_ct_ms_fill_attr.exit48.i.i.fc_ct_ms_fill_attr.exit59.i.i_crit_edge

fc_ct_ms_fill_attr.exit48.i.i.fc_ct_ms_fill_attr.exit59.i.i_crit_edge: ; preds = %fc_ct_ms_fill_attr.exit48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_ms_fill_attr.exit59.i.i

if.then.i58.i.i:                                  ; preds = %fc_ct_ms_fill_attr.exit48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i55.i.i = getelementptr i8, ptr %value.i49.i.i, i32 %call.i50.i.i
  %add.ptr5.i56.i.i = getelementptr i8, ptr %add.ptr.i55.i.i, i32 1
  %sub6.i57.i.i = sub nuw nsw i32 63, %call.i50.i.i
  %232 = call ptr @memset(ptr %add.ptr5.i56.i.i, i32 0, i32 %sub6.i57.i.i)
  br label %fc_ct_ms_fill_attr.exit59.i.i

fc_ct_ms_fill_attr.exit59.i.i:                    ; preds = %if.then.i58.i.i, %fc_ct_ms_fill_attr.exit48.i.i.fc_ct_ms_fill_attr.exit59.i.i_crit_edge
  %add.ptr97.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 8, i32 1, i32 1, i32 20
  %233 = ptrtoint ptr %add.ptr97.i.i to i32
  call void @__asan_storeN_noabort(i32 %233, i32 2)
  store i16 8, ptr %add.ptr97.i.i, align 1
  %len101.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 8, i32 1, i32 1, i32 22
  %234 = ptrtoint ptr %len101.i.i to i32
  call void @__asan_storeN_noabort(i32 %234, i32 2)
  store i16 68, ptr %len101.i.i, align 1
  %value.i60.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 8, i32 1, i32 1, i32 24
  %call.i61.i.i = tail call i32 @strscpy(ptr noundef %value.i60.i.i, ptr noundef nonnull @.str.12, i32 noundef 64) #6
  %235 = add i32 %call.i61.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %235)
  %236 = icmp ult i32 %235, 62
  br i1 %236, label %if.then.i69.i.i, label %fc_ct_ms_fill_attr.exit59.i.i.fc_ct_ms_fill_attr.exit70.i.i_crit_edge

fc_ct_ms_fill_attr.exit59.i.i.fc_ct_ms_fill_attr.exit70.i.i_crit_edge: ; preds = %fc_ct_ms_fill_attr.exit59.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_ms_fill_attr.exit70.i.i

if.then.i69.i.i:                                  ; preds = %fc_ct_ms_fill_attr.exit59.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i66.i.i = getelementptr i8, ptr %value.i60.i.i, i32 %call.i61.i.i
  %add.ptr5.i67.i.i = getelementptr i8, ptr %add.ptr.i66.i.i, i32 1
  %sub6.i68.i.i = sub nuw nsw i32 63, %call.i61.i.i
  %237 = call ptr @memset(ptr %add.ptr5.i67.i.i, i32 0, i32 %sub6.i68.i.i)
  br label %fc_ct_ms_fill_attr.exit70.i.i

fc_ct_ms_fill_attr.exit70.i.i:                    ; preds = %if.then.i69.i.i, %fc_ct_ms_fill_attr.exit59.i.i.fc_ct_ms_fill_attr.exit70.i.i_crit_edge
  %add.ptr104.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 10, i32 0, i32 6
  %238 = ptrtoint ptr %add.ptr104.i.i to i32
  call void @__asan_storeN_noabort(i32 %238, i32 2)
  store i16 9, ptr %add.ptr104.i.i, align 1
  %len108.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 10, i32 0, i32 7
  %239 = ptrtoint ptr %len108.i.i to i32
  call void @__asan_storeN_noabort(i32 %239, i32 2)
  store i16 68, ptr %len108.i.i, align 1
  %240 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %lport, align 8
  %shost_data110.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %241, i32 0, i32 51
  %242 = ptrtoint ptr %shost_data110.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %shost_data110.i.i, align 8
  %firmware_version.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %243, i32 0, i32 18
  %value.i71.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 10, i32 0, i32 8
  %call.i72.i.i = tail call i32 @strscpy(ptr noundef %value.i71.i.i, ptr noundef %firmware_version.i.i, i32 noundef 64) #6
  %244 = add i32 %call.i72.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %244)
  %245 = icmp ult i32 %244, 62
  br i1 %245, label %if.then.i80.i.i, label %fc_ct_ms_fill_attr.exit70.i.i.fc_ct_ms_fill_attr.exit81.i.i_crit_edge

fc_ct_ms_fill_attr.exit70.i.i.fc_ct_ms_fill_attr.exit81.i.i_crit_edge: ; preds = %fc_ct_ms_fill_attr.exit70.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_ms_fill_attr.exit81.i.i

if.then.i80.i.i:                                  ; preds = %fc_ct_ms_fill_attr.exit70.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i77.i.i = getelementptr i8, ptr %value.i71.i.i, i32 %call.i72.i.i
  %add.ptr5.i78.i.i = getelementptr i8, ptr %add.ptr.i77.i.i, i32 1
  %sub6.i79.i.i = sub nuw nsw i32 63, %call.i72.i.i
  %246 = call ptr @memset(ptr %add.ptr5.i78.i.i, i32 0, i32 %sub6.i79.i.i)
  br label %fc_ct_ms_fill_attr.exit81.i.i

fc_ct_ms_fill_attr.exit81.i.i:                    ; preds = %if.then.i80.i.i, %fc_ct_ms_fill_attr.exit70.i.i.fc_ct_ms_fill_attr.exit81.i.i_crit_edge
  %add.ptr114.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 11, i32 1, i32 1
  %247 = ptrtoint ptr %add.ptr114.i.i to i32
  call void @__asan_storeN_noabort(i32 %247, i32 2)
  store i16 10, ptr %add.ptr114.i.i, align 1
  %len118.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 11, i32 1, i32 1, i32 2
  %248 = ptrtoint ptr %len118.i.i to i32
  call void @__asan_storeN_noabort(i32 %248, i32 2)
  store i16 132, ptr %len118.i.i, align 1
  %value119.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 11, i32 1, i32 1, i32 4
  %call124.i.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %value119.i.i, i32 noundef 128, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_uts_ns, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 2)) #6
  %add.ptr127.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 14
  %249 = ptrtoint ptr %add.ptr127.i.i to i32
  call void @__asan_storeN_noabort(i32 %249, i32 2)
  store i16 11, ptr %add.ptr127.i.i, align 1
  %len131.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 14, i32 0, i32 1, i32 1
  %250 = ptrtoint ptr %len131.i.i to i32
  call void @__asan_storeN_noabort(i32 %250, i32 2)
  store i16 8, ptr %len131.i.i, align 1
  %251 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %lport, align 8
  %shost_data133.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %252, i32 0, i32 51
  %253 = ptrtoint ptr %shost_data133.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %shost_data133.i.i, align 8
  %max_ct_payload.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %254, i32 0, i32 8
  %255 = ptrtoint ptr %max_ct_payload.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %max_ct_payload.i.i, align 8
  %value134.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 14, i32 0, i32 2
  %257 = ptrtoint ptr %value134.i.i to i32
  call void @__asan_storeN_noabort(i32 %257, i32 4)
  store i32 %256, ptr %value134.i.i, align 1
  %258 = ptrtoint ptr %fdmi_version.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %fdmi_version.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %259)
  %cmp137.i.i = icmp eq i8 %259, 2
  br i1 %cmp137.i.i, label %if.then139.i.i, label %fc_ct_ms_fill_attr.exit81.i.i.if.end4_crit_edge

fc_ct_ms_fill_attr.exit81.i.i.if.end4_crit_edge:  ; preds = %fc_ct_ms_fill_attr.exit81.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then139.i.i:                                   ; preds = %fc_ct_ms_fill_attr.exit81.i.i
  %add.ptr142.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 14, i32 0, i32 6
  %260 = ptrtoint ptr %add.ptr142.i.i to i32
  call void @__asan_storeN_noabort(i32 %260, i32 2)
  store i16 12, ptr %add.ptr142.i.i, align 1
  %len146.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 14, i32 0, i32 7
  %261 = ptrtoint ptr %len146.i.i to i32
  call void @__asan_storeN_noabort(i32 %261, i32 2)
  store i16 68, ptr %len146.i.i, align 1
  %262 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %lport, align 8
  %shost_data148.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %263, i32 0, i32 51
  %264 = ptrtoint ptr %shost_data148.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %shost_data148.i.i, align 8
  %symbolic_name.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %265, i32 0, i32 28
  %value.i82.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 14, i32 0, i32 8
  %call.i83.i.i = tail call i32 @strscpy(ptr noundef %value.i82.i.i, ptr noundef %symbolic_name.i.i, i32 noundef 64) #6
  %266 = add i32 %call.i83.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %266)
  %267 = icmp ult i32 %266, 62
  br i1 %267, label %if.then.i91.i.i, label %if.then139.i.i.fc_ct_ms_fill_attr.exit92.i.i_crit_edge

if.then139.i.i.fc_ct_ms_fill_attr.exit92.i.i_crit_edge: ; preds = %if.then139.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_ms_fill_attr.exit92.i.i

if.then.i91.i.i:                                  ; preds = %if.then139.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i88.i.i = getelementptr i8, ptr %value.i82.i.i, i32 %call.i83.i.i
  %add.ptr5.i89.i.i = getelementptr i8, ptr %add.ptr.i88.i.i, i32 1
  %sub6.i90.i.i = sub nuw nsw i32 63, %call.i83.i.i
  %268 = call ptr @memset(ptr %add.ptr5.i89.i.i, i32 0, i32 %sub6.i90.i.i)
  br label %fc_ct_ms_fill_attr.exit92.i.i

fc_ct_ms_fill_attr.exit92.i.i:                    ; preds = %if.then.i91.i.i, %if.then139.i.i.fc_ct_ms_fill_attr.exit92.i.i_crit_edge
  %add.ptr152.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 15, i32 1, i32 1
  %269 = ptrtoint ptr %add.ptr152.i.i to i32
  call void @__asan_storeN_noabort(i32 %269, i32 2)
  store i16 13, ptr %add.ptr152.i.i, align 1
  %len156.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 15, i32 1, i32 1, i32 2
  %270 = ptrtoint ptr %len156.i.i to i32
  call void @__asan_storeN_noabort(i32 %270, i32 2)
  store i16 8, ptr %len156.i.i, align 1
  %value157.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 15, i32 1, i32 1, i32 4
  %271 = ptrtoint ptr %value157.i.i to i32
  call void @__asan_storeN_noabort(i32 %271, i32 4)
  store i32 0, ptr %value157.i.i, align 1
  %add.ptr160.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 15, i32 1, i32 1, i32 8
  %272 = ptrtoint ptr %add.ptr160.i.i to i32
  call void @__asan_storeN_noabort(i32 %272, i32 2)
  store i16 14, ptr %add.ptr160.i.i, align 1
  %len164.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 15, i32 1, i32 1, i32 10
  %273 = ptrtoint ptr %len164.i.i to i32
  call void @__asan_storeN_noabort(i32 %273, i32 2)
  store i16 8, ptr %len164.i.i, align 1
  %274 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %lport, align 8
  %shost_data166.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %275, i32 0, i32 51
  %276 = ptrtoint ptr %shost_data166.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %shost_data166.i.i, align 8
  %num_ports.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %277, i32 0, i32 9
  %278 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %num_ports.i.i, align 4
  %value167.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 15, i32 1, i32 1, i32 12
  %280 = ptrtoint ptr %value167.i.i to i32
  call void @__asan_storeN_noabort(i32 %280, i32 4)
  store i32 %279, ptr %value167.i.i, align 1
  %add.ptr170.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 15, i32 1, i32 1, i32 16
  %281 = ptrtoint ptr %add.ptr170.i.i to i32
  call void @__asan_storeN_noabort(i32 %281, i32 2)
  store i16 15, ptr %add.ptr170.i.i, align 1
  %len174.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 15, i32 1, i32 1, i32 18
  %282 = ptrtoint ptr %len174.i.i to i32
  call void @__asan_storeN_noabort(i32 %282, i32 2)
  store i16 12, ptr %len174.i.i, align 1
  %283 = load ptr, ptr %lport, align 8
  %shost_data176.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %283, i32 0, i32 51
  %284 = ptrtoint ptr %shost_data176.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %shost_data176.i.i, align 8
  %fabric_name.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %285, i32 0, i32 27
  %286 = ptrtoint ptr %fabric_name.i.i to i32
  call void @__asan_load8_noabort(i32 %286)
  %287 = load i64, ptr %fabric_name.i.i, align 8
  %value177.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 15, i32 1, i32 1, i32 20
  %288 = ptrtoint ptr %value177.i.i to i32
  call void @__asan_storeN_noabort(i32 %288, i32 8)
  store i64 %287, ptr %value177.i.i, align 1
  %add.ptr180.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 16
  %289 = ptrtoint ptr %add.ptr180.i.i to i32
  call void @__asan_storeN_noabort(i32 %289, i32 2)
  store i16 16, ptr %add.ptr180.i.i, align 1
  %len184.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 16, i32 0, i32 1, i32 1
  %290 = ptrtoint ptr %len184.i.i to i32
  call void @__asan_storeN_noabort(i32 %290, i32 2)
  store i16 68, ptr %len184.i.i, align 1
  %291 = load ptr, ptr %lport, align 8
  %shost_data186.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %291, i32 0, i32 51
  %292 = ptrtoint ptr %shost_data186.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %shost_data186.i.i, align 8
  %bootbios_version.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %293, i32 0, i32 21
  %value.i93.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 16, i32 0, i32 2
  %call.i94.i.i = tail call i32 @strscpy(ptr noundef %value.i93.i.i, ptr noundef %bootbios_version.i.i, i32 noundef 64) #6
  %294 = add i32 %call.i94.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %294)
  %295 = icmp ult i32 %294, 62
  br i1 %295, label %if.then.i102.i.i, label %fc_ct_ms_fill_attr.exit92.i.i.fc_ct_ms_fill_attr.exit103.i.i_crit_edge

fc_ct_ms_fill_attr.exit92.i.i.fc_ct_ms_fill_attr.exit103.i.i_crit_edge: ; preds = %fc_ct_ms_fill_attr.exit92.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_ms_fill_attr.exit103.i.i

if.then.i102.i.i:                                 ; preds = %fc_ct_ms_fill_attr.exit92.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i99.i.i = getelementptr i8, ptr %value.i93.i.i, i32 %call.i94.i.i
  %add.ptr5.i100.i.i = getelementptr i8, ptr %add.ptr.i99.i.i, i32 1
  %sub6.i101.i.i = sub nuw nsw i32 63, %call.i94.i.i
  %296 = call ptr @memset(ptr %add.ptr5.i100.i.i, i32 0, i32 %sub6.i101.i.i)
  br label %fc_ct_ms_fill_attr.exit103.i.i

fc_ct_ms_fill_attr.exit103.i.i:                   ; preds = %if.then.i102.i.i, %fc_ct_ms_fill_attr.exit92.i.i.fc_ct_ms_fill_attr.exit103.i.i_crit_edge
  %add.ptr190.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 17, i32 1
  %297 = ptrtoint ptr %add.ptr190.i.i to i32
  call void @__asan_storeN_noabort(i32 %297, i32 2)
  store i16 17, ptr %add.ptr190.i.i, align 1
  %len194.i.i = getelementptr inbounds %struct.fc_fdmi_attr_entry, ptr %add.ptr190.i.i, i32 0, i32 1
  %298 = ptrtoint ptr %len194.i.i to i32
  call void @__asan_storeN_noabort(i32 %298, i32 2)
  store i16 8, ptr %len194.i.i, align 1
  %299 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %lport, align 8
  %shost_data196.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %300, i32 0, i32 51
  %301 = ptrtoint ptr %shost_data196.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %shost_data196.i.i, align 8
  %bootbios_state.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %302, i32 0, i32 11
  %303 = ptrtoint ptr %bootbios_state.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %bootbios_state.i.i, align 4
  %value197.i.i = getelementptr inbounds %struct.fc_fdmi_attr_entry, ptr %add.ptr190.i.i, i32 0, i32 2
  %305 = ptrtoint ptr %value197.i.i to i32
  call void @__asan_storeN_noabort(i32 %305, i32 4)
  store i32 %304, ptr %value197.i.i, align 1
  %add.ptr200.i.i = getelementptr i8, ptr %value197.i.i, i32 4
  %306 = ptrtoint ptr %add.ptr200.i.i to i32
  call void @__asan_storeN_noabort(i32 %306, i32 2)
  store i16 224, ptr %add.ptr200.i.i, align 1
  %len204.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 17, i32 1, i32 1, i32 2
  %307 = ptrtoint ptr %len204.i.i to i32
  call void @__asan_storeN_noabort(i32 %307, i32 2)
  store i16 12, ptr %len204.i.i, align 1
  %308 = load ptr, ptr %lport, align 8
  %shost_data206.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %308, i32 0, i32 51
  %309 = ptrtoint ptr %shost_data206.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %shost_data206.i.i, align 8
  %vendor_identifier.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %310, i32 0, i32 20
  %value.i104.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i.i.i, i32 17, i32 1, i32 1, i32 4
  %call.i105.i.i = tail call i32 @strscpy(ptr noundef %value.i104.i.i, ptr noundef %vendor_identifier.i.i, i32 noundef 8) #6
  %311 = add i32 %call.i105.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %311)
  %312 = icmp ult i32 %311, 6
  br i1 %312, label %if.then.i113.i.i, label %fc_ct_ms_fill_attr.exit103.i.i.if.end4_crit_edge

fc_ct_ms_fill_attr.exit103.i.i.if.end4_crit_edge: ; preds = %fc_ct_ms_fill_attr.exit103.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then.i113.i.i:                                 ; preds = %fc_ct_ms_fill_attr.exit103.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i110.i.i = getelementptr i8, ptr %value.i104.i.i, i32 %call.i105.i.i
  %add.ptr5.i111.i.i = getelementptr i8, ptr %add.ptr.i110.i.i, i32 1
  %sub6.i112.i.i = sub nuw nsw i32 7, %call.i105.i.i
  %313 = call ptr @memset(ptr %add.ptr5.i111.i.i, i32 0, i32 %sub6.i112.i.i)
  br label %if.end4

sw.bb209.i.i:                                     ; preds = %sw.bb.i18
  %fdmi_version219.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %154, i32 0, i32 45
  %314 = ptrtoint ptr %fdmi_version219.i.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %fdmi_version219.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %315)
  %cmp221.i.i = icmp eq i8 %315, 2
  %spec.select2.i.i = select i1 %cmp221.i.i, i32 924, i32 592
  %spec.select3.i.i = select i1 %cmp221.i.i, i32 16, i32 6
  %len1.i.i115.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %316 = ptrtoint ptr %len1.i.i115.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %len1.i.i115.i.i, align 4
  %add.i.i116.i.i = add nuw nsw i32 %spec.select2.i.i, 40
  call void @__sanitizer_cov_trace_cmp4(i32 %317, i32 %add.i.i116.i.i)
  %cmp.not.i.i117.i.i = icmp ult i32 %317, %add.i.i116.i.i
  br i1 %cmp.not.i.i117.i.i, label %sw.bb209.i.i.fc_ct_hdr_fill.exit129.i.i_crit_edge, label %if.then.i.i119.i.i

sw.bb209.i.i.fc_ct_hdr_fill.exit129.i.i_crit_edge: ; preds = %sw.bb209.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_hdr_fill.exit129.i.i

if.then.i.i119.i.i:                               ; preds = %sw.bb209.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %317)
  %cmp.i.i.i118.i.i = icmp ult i32 %317, 24
  br i1 %cmp.i.i.i118.i.i, label %do.end.i.i.i120.i.i, label %if.then.i.i119.i.i.fc_frame_header_get.exit.i.i123.i.i_crit_edge, !prof !43

if.then.i.i119.i.i.fc_frame_header_get.exit.i.i123.i.i_crit_edge: ; preds = %if.then.i.i119.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_header_get.exit.i.i123.i.i

do.end.i.i.i120.i.i:                              ; preds = %if.then.i.i119.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 161, i32 noundef 9, ptr noundef null) #6
  br label %fc_frame_header_get.exit.i.i123.i.i

fc_frame_header_get.exit.i.i123.i.i:              ; preds = %do.end.i.i.i120.i.i, %if.then.i.i119.i.i.fc_frame_header_get.exit.i.i123.i.i_crit_edge
  %data.i.i.i.i121.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %318 = ptrtoint ptr %data.i.i.i.i121.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %data.i.i.i.i121.i.i, align 4
  %add.ptr.i.i122.i.i = getelementptr %struct.fc_frame_header, ptr %319, i32 1
  br label %fc_ct_hdr_fill.exit129.i.i

fc_ct_hdr_fill.exit129.i.i:                       ; preds = %fc_frame_header_get.exit.i.i123.i.i, %sw.bb209.i.i.fc_ct_hdr_fill.exit129.i.i_crit_edge
  %pp.0.i.i124.i.i = phi ptr [ %add.ptr.i.i122.i.i, %fc_frame_header_get.exit.i.i123.i.i ], [ null, %sw.bb209.i.i.fc_ct_hdr_fill.exit129.i.i_crit_edge ]
  %add.i125.i.i = add nuw nsw i32 %spec.select2.i.i, 16
  %320 = call ptr @memset(ptr %pp.0.i.i124.i.i, i32 0, i32 %add.i125.i.i)
  %321 = ptrtoint ptr %pp.0.i.i124.i.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 1, ptr %pp.0.i.i124.i.i, align 4
  %ct_fs_type.i126.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i124.i.i, i32 0, i32 2
  %322 = ptrtoint ptr %ct_fs_type.i126.i.i to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 -6, ptr %ct_fs_type.i126.i.i, align 4
  %ct_fs_subtype.i127.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i124.i.i, i32 0, i32 3
  %323 = ptrtoint ptr %ct_fs_subtype.i127.i.i to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 16, ptr %ct_fs_subtype.i127.i.i, align 1
  %ct_cmd.i128.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i124.i.i, i32 0, i32 6
  %324 = ptrtoint ptr %ct_cmd.i128.i.i to i32
  call void @__asan_store2_noabort(i32 %324)
  store i16 529, ptr %ct_cmd.i128.i.i, align 4
  %wwpn237.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 19
  %325 = ptrtoint ptr %wwpn237.i.i to i32
  call void @__asan_load8_noabort(i32 %325)
  %326 = load i64, ptr %wwpn237.i.i, align 8
  %payload238.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 0, i32 1
  %327 = ptrtoint ptr %payload238.i.i to i32
  call void @__asan_storeN_noabort(i32 %327, i32 8)
  store i64 %326, ptr %payload238.i.i, align 1
  %hba_attrs242.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 0, i32 1, i32 1
  %328 = ptrtoint ptr %hba_attrs242.i.i to i32
  call void @__asan_storeN_noabort(i32 %328, i32 4)
  store i32 %spec.select3.i.i, ptr %hba_attrs242.i.i, align 1
  %attr246.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 0, i32 1, i32 1, i32 4
  %329 = ptrtoint ptr %attr246.i.i to i32
  call void @__asan_storeN_noabort(i32 %329, i32 2)
  store i16 1, ptr %attr246.i.i, align 1
  %len251.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 0, i32 1, i32 1, i32 6
  %330 = ptrtoint ptr %len251.i.i to i32
  call void @__asan_storeN_noabort(i32 %330, i32 2)
  store i16 36, ptr %len251.i.i, align 1
  %value252.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 0, i32 1, i32 1, i32 8
  %331 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %lport, align 8
  %shost_data254.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %332, i32 0, i32 51
  %333 = ptrtoint ptr %shost_data254.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %shost_data254.i.i, align 8
  %supported_fc4s.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %334, i32 0, i32 4
  %335 = call ptr @memcpy(ptr %value252.i.i, ptr %supported_fc4s.i.i, i32 32)
  %add.ptr258.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 1, i32 0, i32 8
  %336 = ptrtoint ptr %add.ptr258.i.i to i32
  call void @__asan_storeN_noabort(i32 %336, i32 2)
  store i16 2, ptr %add.ptr258.i.i, align 1
  %len262.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 1, i32 0, i32 10
  %337 = ptrtoint ptr %len262.i.i to i32
  call void @__asan_storeN_noabort(i32 %337, i32 2)
  store i16 8, ptr %len262.i.i, align 1
  %338 = load ptr, ptr %lport, align 8
  %shost_data264.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %338, i32 0, i32 51
  %339 = ptrtoint ptr %shost_data264.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %shost_data264.i.i, align 8
  %supported_speeds.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %340, i32 0, i32 5
  %341 = ptrtoint ptr %supported_speeds.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %supported_speeds.i.i, align 4
  %value265.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 1, i32 1
  %343 = ptrtoint ptr %value265.i.i to i32
  call void @__asan_storeN_noabort(i32 %343, i32 4)
  store i32 %342, ptr %value265.i.i, align 1
  %add.ptr268.i.i = getelementptr i8, ptr %value265.i.i, i32 4
  %344 = ptrtoint ptr %add.ptr268.i.i to i32
  call void @__asan_storeN_noabort(i32 %344, i32 2)
  store i16 3, ptr %add.ptr268.i.i, align 1
  %len272.i.i = getelementptr i8, ptr %value265.i.i, i32 6
  %345 = ptrtoint ptr %len272.i.i to i32
  call void @__asan_storeN_noabort(i32 %345, i32 2)
  store i16 8, ptr %len272.i.i, align 1
  %link_speed.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 30
  %346 = ptrtoint ptr %link_speed.i.i to i32
  call void @__asan_load2_noabort(i32 %346)
  %347 = load i16, ptr %link_speed.i.i, align 4
  %conv273.i.i = zext i16 %347 to i32
  %value274.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 1, i32 1, i32 1
  %348 = ptrtoint ptr %value274.i.i to i32
  call void @__asan_storeN_noabort(i32 %348, i32 4)
  store i32 %conv273.i.i, ptr %value274.i.i, align 1
  %add.ptr277.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 1, i32 1, i32 1, i32 4
  %349 = ptrtoint ptr %add.ptr277.i.i to i32
  call void @__asan_storeN_noabort(i32 %349, i32 2)
  store i16 4, ptr %add.ptr277.i.i, align 1
  %len281.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 1, i32 1, i32 1, i32 6
  %350 = ptrtoint ptr %len281.i.i to i32
  call void @__asan_storeN_noabort(i32 %350, i32 2)
  store i16 8, ptr %len281.i.i, align 1
  %351 = load ptr, ptr %lport, align 8
  %shost_data283.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %351, i32 0, i32 51
  %352 = ptrtoint ptr %shost_data283.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %shost_data283.i.i, align 8
  %maxframe_size.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %353, i32 0, i32 6
  %354 = ptrtoint ptr %maxframe_size.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %maxframe_size.i.i, align 8
  %value284.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 1, i32 1, i32 1, i32 8
  %356 = ptrtoint ptr %value284.i.i to i32
  call void @__asan_storeN_noabort(i32 %356, i32 4)
  store i32 %355, ptr %value284.i.i, align 1
  %add.ptr287.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 1, i32 1, i32 1, i32 12
  %357 = ptrtoint ptr %add.ptr287.i.i to i32
  call void @__asan_storeN_noabort(i32 %357, i32 2)
  store i16 5, ptr %add.ptr287.i.i, align 1
  %len291.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 1, i32 1, i32 1, i32 14
  %358 = ptrtoint ptr %len291.i.i to i32
  call void @__asan_storeN_noabort(i32 %358, i32 2)
  store i16 260, ptr %len291.i.i, align 1
  %359 = load ptr, ptr %lport, align 8
  %init_name.i.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %359, i32 0, i32 49, i32 3
  %360 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %361, null
  br i1 %tobool.not.i.i.i, label %if.end.i132.i.i, label %fc_ct_hdr_fill.exit129.i.i.dev_name.exit134.i.i_crit_edge

fc_ct_hdr_fill.exit129.i.i.dev_name.exit134.i.i_crit_edge: ; preds = %fc_ct_hdr_fill.exit129.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit134.i.i

if.end.i132.i.i:                                  ; preds = %fc_ct_hdr_fill.exit129.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %shost_gendev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %359, i32 0, i32 49
  %362 = ptrtoint ptr %shost_gendev.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %shost_gendev.i.i, align 4
  br label %dev_name.exit134.i.i

dev_name.exit134.i.i:                             ; preds = %if.end.i132.i.i, %fc_ct_hdr_fill.exit129.i.i.dev_name.exit134.i.i_crit_edge
  %retval.0.i210.i.i = phi ptr [ %363, %if.end.i132.i.i ], [ %361, %fc_ct_hdr_fill.exit129.i.i.dev_name.exit134.i.i_crit_edge ]
  %call297.i.i = tail call i32 @strnlen(ptr noundef %retval.0.i210.i.i, i32 noundef 256) #9
  %value.i135.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 1, i32 1, i32 1, i32 16
  %call.i136.i.i = tail call i32 @strscpy(ptr noundef %value.i135.i.i, ptr noundef %retval.0.i210.i.i, i32 noundef %call297.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136.i.i)
  %cmp.i137.i.i = icmp sgt i32 %call.i136.i.i, 0
  %add.i138.i.i = add i32 %call.i136.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i138.i.i, i32 %call297.i.i)
  %cmp2.i139.i.i = icmp ult i32 %add.i138.i.i, %call297.i.i
  %or.cond.i140.i.i = and i1 %cmp.i137.i.i, %cmp2.i139.i.i
  br i1 %or.cond.i140.i.i, label %if.then.i144.i.i, label %dev_name.exit134.i.i.fc_ct_ms_fill_attr.exit146.i.i_crit_edge

dev_name.exit134.i.i.fc_ct_ms_fill_attr.exit146.i.i_crit_edge: ; preds = %dev_name.exit134.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_ms_fill_attr.exit146.i.i

if.then.i144.i.i:                                 ; preds = %dev_name.exit134.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i141.i.i = getelementptr i8, ptr %value.i135.i.i, i32 %call.i136.i.i
  %add.ptr5.i142.i.i = getelementptr i8, ptr %add.ptr.i141.i.i, i32 1
  %364 = xor i32 %call.i136.i.i, -1
  %sub6.i143.i.i = add i32 %call297.i.i, %364
  %365 = call ptr @memset(ptr %add.ptr5.i142.i.i, i32 0, i32 %sub6.i143.i.i)
  br label %fc_ct_ms_fill_attr.exit146.i.i

fc_ct_ms_fill_attr.exit146.i.i:                   ; preds = %if.then.i144.i.i, %dev_name.exit134.i.i.fc_ct_ms_fill_attr.exit146.i.i_crit_edge
  %add.ptr300.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 6, i32 1, i32 1, i32 12
  %366 = ptrtoint ptr %add.ptr300.i.i to i32
  call void @__asan_storeN_noabort(i32 %366, i32 2)
  store i16 6, ptr %add.ptr300.i.i, align 1
  %len304.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 6, i32 1, i32 1, i32 14
  %367 = ptrtoint ptr %len304.i.i to i32
  call void @__asan_storeN_noabort(i32 %367, i32 2)
  store i16 260, ptr %len304.i.i, align 1
  %368 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %lport, align 8
  %shost_data306.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %369, i32 0, i32 51
  %370 = ptrtoint ptr %shost_data306.i.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %shost_data306.i.i, align 8
  %system_hostname.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %371, i32 0, i32 29
  %372 = ptrtoint ptr %system_hostname.i.i to i32
  call void @__asan_load1_noabort(i32 %372)
  %char0.i.i = load i8, ptr %system_hostname.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i.i)
  %tobool.not.i.i22 = icmp eq i8 %char0.i.i, 0
  br i1 %tobool.not.i.i22, label %if.else.i.i, label %if.then309.i.i

if.then309.i.i:                                   ; preds = %fc_ct_ms_fill_attr.exit146.i.i
  %call318.i.i = tail call i32 @strnlen(ptr noundef %system_hostname.i.i, i32 noundef 256) #9
  %value.i147.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 6, i32 1, i32 1, i32 16
  %call.i148.i.i = tail call i32 @strscpy(ptr noundef %value.i147.i.i, ptr noundef %system_hostname.i.i, i32 noundef %call318.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148.i.i)
  %cmp.i149.i.i = icmp sgt i32 %call.i148.i.i, 0
  %add.i150.i.i = add i32 %call.i148.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i150.i.i, i32 %call318.i.i)
  %cmp2.i151.i.i = icmp ult i32 %add.i150.i.i, %call318.i.i
  %or.cond.i152.i.i = and i1 %cmp.i149.i.i, %cmp2.i151.i.i
  br i1 %or.cond.i152.i.i, label %if.then.i156.i.i, label %if.then309.i.i.if.end321.i.i_crit_edge

if.then309.i.i.if.end321.i.i_crit_edge:           ; preds = %if.then309.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end321.i.i

if.then.i156.i.i:                                 ; preds = %if.then309.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i153.i.i = getelementptr i8, ptr %value.i147.i.i, i32 %call.i148.i.i
  %add.ptr5.i154.i.i = getelementptr i8, ptr %add.ptr.i153.i.i, i32 1
  %373 = xor i32 %call.i148.i.i, -1
  %sub6.i155.i.i = add i32 %call318.i.i, %373
  %374 = call ptr @memset(ptr %add.ptr5.i154.i.i, i32 0, i32 %sub6.i155.i.i)
  br label %if.end321.i.i

if.else.i.i:                                      ; preds = %fc_ct_ms_fill_attr.exit146.i.i
  %value.i159.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 6, i32 1, i32 1, i32 16
  %call.i160.i.i = tail call i32 @strscpy(ptr noundef %value.i159.i.i, ptr noundef getelementptr inbounds (%struct.uts_namespace, ptr @init_uts_ns, i32 0, i32 0, i32 1), i32 noundef 256) #6
  %375 = add i32 %call.i160.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %375)
  %376 = icmp ult i32 %375, 254
  br i1 %376, label %if.then.i168.i.i, label %if.else.i.i.if.end321.i.i_crit_edge

if.else.i.i.if.end321.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end321.i.i

if.then.i168.i.i:                                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i165.i.i = getelementptr i8, ptr %value.i159.i.i, i32 %call.i160.i.i
  %add.ptr5.i166.i.i = getelementptr i8, ptr %add.ptr.i165.i.i, i32 1
  %sub6.i167.i.i = sub nuw nsw i32 255, %call.i160.i.i
  %377 = call ptr @memset(ptr %add.ptr5.i166.i.i, i32 0, i32 %sub6.i167.i.i)
  br label %if.end321.i.i

if.end321.i.i:                                    ; preds = %if.then.i168.i.i, %if.else.i.i.if.end321.i.i_crit_edge, %if.then.i156.i.i, %if.then309.i.i.if.end321.i.i_crit_edge
  %378 = ptrtoint ptr %fdmi_version219.i.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %fdmi_version219.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %379)
  %cmp324.i.i = icmp eq i8 %379, 2
  br i1 %cmp324.i.i, label %if.then326.i.i, label %if.end321.i.i.if.end4_crit_edge

if.end321.i.i.if.end4_crit_edge:                  ; preds = %if.end321.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then326.i.i:                                   ; preds = %if.end321.i.i
  %add.ptr329.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 11, i32 1, i32 1, i32 12
  %380 = ptrtoint ptr %add.ptr329.i.i to i32
  call void @__asan_storeN_noabort(i32 %380, i32 2)
  store i16 7, ptr %add.ptr329.i.i, align 1
  %len333.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 11, i32 1, i32 1, i32 14
  %381 = ptrtoint ptr %len333.i.i to i32
  call void @__asan_storeN_noabort(i32 %381, i32 2)
  store i16 12, ptr %len333.i.i, align 1
  %382 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %lport, align 8
  %shost_data335.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %383, i32 0, i32 51
  %384 = ptrtoint ptr %shost_data335.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %shost_data335.i.i, align 8
  %386 = ptrtoint ptr %385 to i32
  call void @__asan_load8_noabort(i32 %386)
  %387 = load i64, ptr %385, align 8
  %value336.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 11, i32 1, i32 1, i32 16
  %388 = ptrtoint ptr %value336.i.i to i32
  call void @__asan_storeN_noabort(i32 %388, i32 8)
  store i64 %387, ptr %value336.i.i, align 1
  %add.ptr339.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 11, i32 1, i32 1, i32 24
  %389 = ptrtoint ptr %add.ptr339.i.i to i32
  call void @__asan_storeN_noabort(i32 %389, i32 2)
  store i16 8, ptr %add.ptr339.i.i, align 1
  %len343.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 11, i32 1, i32 1, i32 26
  %390 = ptrtoint ptr %len343.i.i to i32
  call void @__asan_storeN_noabort(i32 %390, i32 2)
  store i16 12, ptr %len343.i.i, align 1
  %391 = ptrtoint ptr %wwpn237.i.i to i32
  call void @__asan_load8_noabort(i32 %391)
  %392 = load i64, ptr %wwpn237.i.i, align 8
  %value345.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 12
  %393 = ptrtoint ptr %value345.i.i to i32
  call void @__asan_storeN_noabort(i32 %393, i32 8)
  store i64 %392, ptr %value345.i.i, align 1
  %add.ptr348.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 12, i32 0, i32 6
  %394 = ptrtoint ptr %add.ptr348.i.i to i32
  call void @__asan_storeN_noabort(i32 %394, i32 2)
  store i16 9, ptr %add.ptr348.i.i, align 1
  %len352.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 12, i32 0, i32 7
  %395 = ptrtoint ptr %len352.i.i to i32
  call void @__asan_storeN_noabort(i32 %395, i32 2)
  store i16 260, ptr %len352.i.i, align 1
  %396 = load ptr, ptr %lport, align 8
  %shost_data354.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %396, i32 0, i32 51
  %397 = ptrtoint ptr %shost_data354.i.i to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %shost_data354.i.i, align 8
  %symbolic_name355.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %398, i32 0, i32 28
  %value.i171.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 12, i32 0, i32 8
  %call.i172.i.i = tail call i32 @strscpy(ptr noundef %value.i171.i.i, ptr noundef %symbolic_name355.i.i, i32 noundef 256) #6
  %399 = add i32 %call.i172.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %399)
  %400 = icmp ult i32 %399, 254
  br i1 %400, label %if.then.i180.i.i, label %if.then326.i.i.fc_ct_ms_fill_attr.exit182.i.i_crit_edge

if.then326.i.i.fc_ct_ms_fill_attr.exit182.i.i_crit_edge: ; preds = %if.then326.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_ms_fill_attr.exit182.i.i

if.then.i180.i.i:                                 ; preds = %if.then326.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i177.i.i = getelementptr i8, ptr %value.i171.i.i, i32 %call.i172.i.i
  %add.ptr5.i178.i.i = getelementptr i8, ptr %add.ptr.i177.i.i, i32 1
  %sub6.i179.i.i = sub nuw nsw i32 255, %call.i172.i.i
  %401 = call ptr @memset(ptr %add.ptr5.i178.i.i, i32 0, i32 %sub6.i179.i.i)
  br label %fc_ct_ms_fill_attr.exit182.i.i

fc_ct_ms_fill_attr.exit182.i.i:                   ; preds = %if.then.i180.i.i, %if.then326.i.i.fc_ct_ms_fill_attr.exit182.i.i_crit_edge
  %add.ptr359.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 17, i32 0, i32 6
  %402 = ptrtoint ptr %add.ptr359.i.i to i32
  call void @__asan_storeN_noabort(i32 %402, i32 2)
  store i16 10, ptr %add.ptr359.i.i, align 1
  %len363.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 17, i32 0, i32 7
  %403 = ptrtoint ptr %len363.i.i to i32
  call void @__asan_storeN_noabort(i32 %403, i32 2)
  store i16 8, ptr %len363.i.i, align 1
  %404 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %lport, align 8
  %shost_data365.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %405, i32 0, i32 51
  %406 = ptrtoint ptr %shost_data365.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %shost_data365.i.i, align 8
  %port_type.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %407, i32 0, i32 23
  %408 = ptrtoint ptr %port_type.i.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %port_type.i.i, align 4
  %value366.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 17, i32 0, i32 8
  %410 = ptrtoint ptr %value366.i.i to i32
  call void @__asan_storeN_noabort(i32 %410, i32 4)
  store i32 %409, ptr %value366.i.i, align 1
  %add.ptr369.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 17, i32 1
  %411 = ptrtoint ptr %add.ptr369.i.i to i32
  call void @__asan_storeN_noabort(i32 %411, i32 2)
  store i16 11, ptr %add.ptr369.i.i, align 1
  %len373.i.i = getelementptr inbounds %struct.fc_fdmi_attr_entry, ptr %add.ptr369.i.i, i32 0, i32 1
  %412 = ptrtoint ptr %len373.i.i to i32
  call void @__asan_storeN_noabort(i32 %412, i32 2)
  store i16 8, ptr %len373.i.i, align 1
  %413 = load ptr, ptr %lport, align 8
  %shost_data375.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %413, i32 0, i32 51
  %414 = ptrtoint ptr %shost_data375.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %shost_data375.i.i, align 8
  %supported_classes.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %415, i32 0, i32 3
  %416 = ptrtoint ptr %supported_classes.i.i to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %supported_classes.i.i, align 8
  %value376.i.i = getelementptr inbounds %struct.fc_fdmi_attr_entry, ptr %add.ptr369.i.i, i32 0, i32 2
  %418 = ptrtoint ptr %value376.i.i to i32
  call void @__asan_storeN_noabort(i32 %418, i32 4)
  store i32 %417, ptr %value376.i.i, align 1
  %add.ptr379.i.i = getelementptr i8, ptr %value376.i.i, i32 4
  %419 = ptrtoint ptr %add.ptr379.i.i to i32
  call void @__asan_storeN_noabort(i32 %419, i32 2)
  store i16 12, ptr %add.ptr379.i.i, align 1
  %len383.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 17, i32 1, i32 1, i32 2
  %420 = ptrtoint ptr %len383.i.i to i32
  call void @__asan_storeN_noabort(i32 %420, i32 2)
  store i16 12, ptr %len383.i.i, align 1
  %421 = load ptr, ptr %lport, align 8
  %shost_data385.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %421, i32 0, i32 51
  %422 = ptrtoint ptr %shost_data385.i.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %shost_data385.i.i, align 8
  %fabric_name386.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %423, i32 0, i32 27
  %424 = ptrtoint ptr %fabric_name386.i.i to i32
  call void @__asan_load8_noabort(i32 %424)
  %425 = load i64, ptr %fabric_name386.i.i, align 8
  %value387.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 17, i32 1, i32 1, i32 4
  %426 = ptrtoint ptr %value387.i.i to i32
  call void @__asan_storeN_noabort(i32 %426, i32 8)
  store i64 %425, ptr %value387.i.i, align 1
  %add.ptr390.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 17, i32 1, i32 1, i32 12
  %427 = ptrtoint ptr %add.ptr390.i.i to i32
  call void @__asan_storeN_noabort(i32 %427, i32 2)
  store i16 13, ptr %add.ptr390.i.i, align 1
  %len394.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 17, i32 1, i32 1, i32 14
  %428 = ptrtoint ptr %len394.i.i to i32
  call void @__asan_storeN_noabort(i32 %428, i32 2)
  store i16 36, ptr %len394.i.i, align 1
  %value395.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 17, i32 1, i32 1, i32 16
  %429 = load ptr, ptr %lport, align 8
  %shost_data397.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %429, i32 0, i32 51
  %430 = ptrtoint ptr %shost_data397.i.i to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %shost_data397.i.i, align 8
  %active_fc4s.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %431, i32 0, i32 25
  %432 = call ptr @memcpy(ptr %value395.i.i, ptr %active_fc4s.i.i, i32 32)
  %add.ptr401.i.i = getelementptr i8, ptr %value395.i.i, i32 32
  %433 = ptrtoint ptr %add.ptr401.i.i to i32
  call void @__asan_storeN_noabort(i32 %433, i32 2)
  store i16 257, ptr %add.ptr401.i.i, align 1
  %len405.i.i = getelementptr i8, ptr %value395.i.i, i32 34
  %434 = ptrtoint ptr %len405.i.i to i32
  call void @__asan_storeN_noabort(i32 %434, i32 2)
  store i16 8, ptr %len405.i.i, align 1
  %435 = load ptr, ptr %lport, align 8
  %shost_data407.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %435, i32 0, i32 51
  %436 = ptrtoint ptr %shost_data407.i.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %shost_data407.i.i, align 8
  %port_state.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %437, i32 0, i32 24
  %438 = ptrtoint ptr %port_state.i.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load i32, ptr %port_state.i.i, align 8
  %value408.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 18, i32 1, i32 1
  %440 = ptrtoint ptr %value408.i.i to i32
  call void @__asan_storeN_noabort(i32 %440, i32 4)
  store i32 %439, ptr %value408.i.i, align 1
  %add.ptr411.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 18, i32 1, i32 1, i32 4
  %441 = ptrtoint ptr %add.ptr411.i.i to i32
  call void @__asan_storeN_noabort(i32 %441, i32 2)
  store i16 258, ptr %add.ptr411.i.i, align 1
  %len415.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 18, i32 1, i32 1, i32 6
  %442 = ptrtoint ptr %len415.i.i to i32
  call void @__asan_storeN_noabort(i32 %442, i32 2)
  store i16 8, ptr %len415.i.i, align 1
  %443 = load ptr, ptr %lport, align 8
  %shost_data417.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %443, i32 0, i32 51
  %444 = ptrtoint ptr %shost_data417.i.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %shost_data417.i.i, align 8
  %num_discovered_ports.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %445, i32 0, i32 10
  %446 = ptrtoint ptr %num_discovered_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %num_discovered_ports.i.i, align 8
  %value418.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 18, i32 1, i32 1, i32 8
  %448 = ptrtoint ptr %value418.i.i to i32
  call void @__asan_storeN_noabort(i32 %448, i32 4)
  store i32 %447, ptr %value418.i.i, align 1
  %add.ptr421.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 18, i32 1, i32 1, i32 12
  %449 = ptrtoint ptr %add.ptr421.i.i to i32
  call void @__asan_storeN_noabort(i32 %449, i32 2)
  store i16 259, ptr %add.ptr421.i.i, align 1
  %len425.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 18, i32 1, i32 1, i32 14
  %450 = ptrtoint ptr %len425.i.i to i32
  call void @__asan_storeN_noabort(i32 %450, i32 2)
  store i16 8, ptr %len425.i.i, align 1
  %451 = load ptr, ptr %lport, align 8
  %shost_data427.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %451, i32 0, i32 51
  %452 = ptrtoint ptr %shost_data427.i.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %shost_data427.i.i, align 8
  %port_id.i.i23 = getelementptr inbounds %struct.fc_host_attrs, ptr %453, i32 0, i32 22
  %454 = ptrtoint ptr %port_id.i.i23 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %port_id.i.i23, align 8
  %value428.i.i = getelementptr %struct.fc_ct_req, ptr %pp.0.i.i124.i.i, i32 18, i32 1, i32 1, i32 16
  %456 = ptrtoint ptr %value428.i.i to i32
  call void @__asan_storeN_noabort(i32 %456, i32 4)
  store i32 %455, ptr %value428.i.i, align 1
  br label %if.end4

sw.bb430.i.i:                                     ; preds = %sw.bb.i18
  %len1.i.i183.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %457 = ptrtoint ptr %len1.i.i183.i.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load i32, ptr %len1.i.i183.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %458)
  %cmp.not.i.i184.i.i = icmp ult i32 %458, 48
  br i1 %cmp.not.i.i184.i.i, label %sw.bb430.i.i.fc_ct_hdr_fill.exit195.i.i_crit_edge, label %fc_frame_header_get.exit.i.i190.i.i

sw.bb430.i.i.fc_ct_hdr_fill.exit195.i.i_crit_edge: ; preds = %sw.bb430.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_hdr_fill.exit195.i.i

fc_frame_header_get.exit.i.i190.i.i:              ; preds = %sw.bb430.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.i188.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %459 = ptrtoint ptr %data.i.i.i.i188.i.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %data.i.i.i.i188.i.i, align 4
  %add.ptr.i.i189.i.i = getelementptr %struct.fc_frame_header, ptr %460, i32 1
  br label %fc_ct_hdr_fill.exit195.i.i

fc_ct_hdr_fill.exit195.i.i:                       ; preds = %fc_frame_header_get.exit.i.i190.i.i, %sw.bb430.i.i.fc_ct_hdr_fill.exit195.i.i_crit_edge
  %pp.0.i.i191.i.i = phi ptr [ %add.ptr.i.i189.i.i, %fc_frame_header_get.exit.i.i190.i.i ], [ null, %sw.bb430.i.i.fc_ct_hdr_fill.exit195.i.i_crit_edge ]
  %461 = call ptr @memset(ptr %pp.0.i.i191.i.i, i32 0, i32 24)
  %462 = ptrtoint ptr %pp.0.i.i191.i.i to i32
  call void @__asan_store1_noabort(i32 %462)
  store i8 1, ptr %pp.0.i.i191.i.i, align 4
  %ct_fs_type.i192.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i191.i.i, i32 0, i32 2
  %463 = ptrtoint ptr %ct_fs_type.i192.i.i to i32
  call void @__asan_store1_noabort(i32 %463)
  store i8 -6, ptr %ct_fs_type.i192.i.i, align 4
  %ct_fs_subtype.i193.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i191.i.i, i32 0, i32 3
  %464 = ptrtoint ptr %ct_fs_subtype.i193.i.i to i32
  call void @__asan_store1_noabort(i32 %464)
  store i8 16, ptr %ct_fs_subtype.i193.i.i, align 1
  %ct_cmd.i194.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i191.i.i, i32 0, i32 6
  %465 = ptrtoint ptr %ct_cmd.i194.i.i to i32
  call void @__asan_store2_noabort(i32 %465)
  store i16 784, ptr %ct_cmd.i194.i.i, align 4
  %wwpn432.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 19
  %466 = ptrtoint ptr %wwpn432.i.i to i32
  call void @__asan_load8_noabort(i32 %466)
  %467 = load i64, ptr %wwpn432.i.i, align 8
  %payload433.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i191.i.i, i32 0, i32 1
  %468 = ptrtoint ptr %payload433.i.i to i32
  call void @__asan_storeN_noabort(i32 %468, i32 8)
  store i64 %467, ptr %payload433.i.i, align 1
  br label %if.end4

sw.bb436.i.i:                                     ; preds = %sw.bb.i18
  %len1.i.i196.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %469 = ptrtoint ptr %len1.i.i196.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %len1.i.i196.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %470)
  %cmp.not.i.i197.i.i = icmp ult i32 %470, 48
  br i1 %cmp.not.i.i197.i.i, label %sw.bb436.i.i.fc_ct_hdr_fill.exit208.i.i_crit_edge, label %fc_frame_header_get.exit.i.i203.i.i

sw.bb436.i.i.fc_ct_hdr_fill.exit208.i.i_crit_edge: ; preds = %sw.bb436.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_hdr_fill.exit208.i.i

fc_frame_header_get.exit.i.i203.i.i:              ; preds = %sw.bb436.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.i201.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %471 = ptrtoint ptr %data.i.i.i.i201.i.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %data.i.i.i.i201.i.i, align 4
  %add.ptr.i.i202.i.i = getelementptr %struct.fc_frame_header, ptr %472, i32 1
  br label %fc_ct_hdr_fill.exit208.i.i

fc_ct_hdr_fill.exit208.i.i:                       ; preds = %fc_frame_header_get.exit.i.i203.i.i, %sw.bb436.i.i.fc_ct_hdr_fill.exit208.i.i_crit_edge
  %pp.0.i.i204.i.i = phi ptr [ %add.ptr.i.i202.i.i, %fc_frame_header_get.exit.i.i203.i.i ], [ null, %sw.bb436.i.i.fc_ct_hdr_fill.exit208.i.i_crit_edge ]
  %473 = call ptr @memset(ptr %pp.0.i.i204.i.i, i32 0, i32 24)
  %474 = ptrtoint ptr %pp.0.i.i204.i.i to i32
  call void @__asan_store1_noabort(i32 %474)
  store i8 1, ptr %pp.0.i.i204.i.i, align 4
  %ct_fs_type.i205.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i204.i.i, i32 0, i32 2
  %475 = ptrtoint ptr %ct_fs_type.i205.i.i to i32
  call void @__asan_store1_noabort(i32 %475)
  store i8 -6, ptr %ct_fs_type.i205.i.i, align 4
  %ct_fs_subtype.i206.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i204.i.i, i32 0, i32 3
  %476 = ptrtoint ptr %ct_fs_subtype.i206.i.i to i32
  call void @__asan_store1_noabort(i32 %476)
  store i8 16, ptr %ct_fs_subtype.i206.i.i, align 1
  %ct_cmd.i207.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i204.i.i, i32 0, i32 6
  %477 = ptrtoint ptr %ct_cmd.i207.i.i to i32
  call void @__asan_store2_noabort(i32 %477)
  store i16 768, ptr %ct_cmd.i207.i.i, align 4
  %wwpn438.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 19
  %478 = ptrtoint ptr %wwpn438.i.i to i32
  call void @__asan_load8_noabort(i32 %478)
  %479 = load i64, ptr %wwpn438.i.i, align 8
  %payload439.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i204.i.i, i32 0, i32 1
  %480 = ptrtoint ptr %payload439.i.i to i32
  call void @__asan_storeN_noabort(i32 %480, i32 8)
  store i64 %479, ptr %payload439.i.i, align 1
  br label %if.end4

sw.default.i:                                     ; preds = %if.else
  %481 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %481, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %op, label %sw.default.i.if.then3_crit_edge [
    i32 370, label %sw.bb.i13.i
    i32 274, label %sw.bb1.i.i
    i32 535, label %sw.bb6.i.i
    i32 543, label %sw.bb12.i.i
    i32 531, label %sw.bb28.i.i
    i32 536, label %sw.bb36.i.i
    i32 569, label %sw.bb54.i.i
  ]

sw.default.i.if.then3_crit_edge:                  ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

sw.bb.i13.i:                                      ; preds = %sw.default.i
  %len1.i.i.i11.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %482 = ptrtoint ptr %len1.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %len1.i.i.i11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %483)
  %cmp.not.i.i.i12.i = icmp ult i32 %483, 44
  br i1 %cmp.not.i.i.i12.i, label %sw.bb.i13.i.fc_ct_hdr_fill.exit.i22.i_crit_edge, label %fc_frame_header_get.exit.i.i.i16.i

sw.bb.i13.i.fc_ct_hdr_fill.exit.i22.i_crit_edge:  ; preds = %sw.bb.i13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_hdr_fill.exit.i22.i

fc_frame_header_get.exit.i.i.i16.i:               ; preds = %sw.bb.i13.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.i.i14.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %484 = ptrtoint ptr %data.i.i.i.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %data.i.i.i.i.i14.i, align 4
  %add.ptr.i.i.i15.i = getelementptr %struct.fc_frame_header, ptr %485, i32 1
  br label %fc_ct_hdr_fill.exit.i22.i

fc_ct_hdr_fill.exit.i22.i:                        ; preds = %fc_frame_header_get.exit.i.i.i16.i, %sw.bb.i13.i.fc_ct_hdr_fill.exit.i22.i_crit_edge
  %pp.0.i.i.i17.i = phi ptr [ %add.ptr.i.i.i15.i, %fc_frame_header_get.exit.i.i.i16.i ], [ null, %sw.bb.i13.i.fc_ct_hdr_fill.exit.i22.i_crit_edge ]
  %486 = call ptr @memset(ptr %pp.0.i.i.i17.i, i32 0, i32 20)
  %487 = ptrtoint ptr %pp.0.i.i.i17.i to i32
  call void @__asan_store1_noabort(i32 %487)
  store i8 1, ptr %pp.0.i.i.i17.i, align 4
  %ct_fs_type.i.i18.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i.i17.i, i32 0, i32 2
  %488 = ptrtoint ptr %ct_fs_type.i.i18.i to i32
  call void @__asan_store1_noabort(i32 %488)
  store i8 -4, ptr %ct_fs_type.i.i18.i, align 4
  %ct_fs_subtype.i.i19.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i.i17.i, i32 0, i32 3
  %489 = ptrtoint ptr %ct_fs_subtype.i.i19.i to i32
  call void @__asan_store1_noabort(i32 %489)
  store i8 2, ptr %ct_fs_subtype.i.i19.i, align 1
  %ct_cmd.i.i20.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i.i17.i, i32 0, i32 6
  %490 = ptrtoint ptr %ct_cmd.i.i20.i to i32
  call void @__asan_store2_noabort(i32 %490)
  store i16 370, ptr %ct_cmd.i.i20.i, align 4
  %payload.i21.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i.i17.i, i32 0, i32 1
  %fn_fc4_type.i.i = getelementptr inbounds %struct.fc_ns_gid_ft, ptr %payload.i21.i, i32 0, i32 3
  %491 = ptrtoint ptr %fn_fc4_type.i.i to i32
  call void @__asan_store1_noabort(i32 %491)
  store i8 8, ptr %fn_fc4_type.i.i, align 1
  br label %if.end4

sw.bb1.i.i:                                       ; preds = %sw.default.i
  %len1.i.i123.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %492 = ptrtoint ptr %len1.i.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load i32, ptr %len1.i.i123.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %493)
  %cmp.not.i.i124.i.i = icmp ult i32 %493, 44
  br i1 %cmp.not.i.i124.i.i, label %sw.bb1.i.i.fc_ct_hdr_fill.exit135.i.i_crit_edge, label %fc_frame_header_get.exit.i.i130.i.i

sw.bb1.i.i.fc_ct_hdr_fill.exit135.i.i_crit_edge:  ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_hdr_fill.exit135.i.i

fc_frame_header_get.exit.i.i130.i.i:              ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.i128.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %494 = ptrtoint ptr %data.i.i.i.i128.i.i to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %data.i.i.i.i128.i.i, align 4
  %add.ptr.i.i129.i.i = getelementptr %struct.fc_frame_header, ptr %495, i32 1
  br label %fc_ct_hdr_fill.exit135.i.i

fc_ct_hdr_fill.exit135.i.i:                       ; preds = %fc_frame_header_get.exit.i.i130.i.i, %sw.bb1.i.i.fc_ct_hdr_fill.exit135.i.i_crit_edge
  %pp.0.i.i131.i.i = phi ptr [ %add.ptr.i.i129.i.i, %fc_frame_header_get.exit.i.i130.i.i ], [ null, %sw.bb1.i.i.fc_ct_hdr_fill.exit135.i.i_crit_edge ]
  %496 = call ptr @memset(ptr %pp.0.i.i131.i.i, i32 0, i32 20)
  %497 = ptrtoint ptr %pp.0.i.i131.i.i to i32
  call void @__asan_store1_noabort(i32 %497)
  store i8 1, ptr %pp.0.i.i131.i.i, align 4
  %ct_fs_type.i132.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i131.i.i, i32 0, i32 2
  %498 = ptrtoint ptr %ct_fs_type.i132.i.i to i32
  call void @__asan_store1_noabort(i32 %498)
  store i8 -4, ptr %ct_fs_type.i132.i.i, align 4
  %ct_fs_subtype.i133.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i131.i.i, i32 0, i32 3
  %499 = ptrtoint ptr %ct_fs_subtype.i133.i.i to i32
  call void @__asan_store1_noabort(i32 %499)
  store i8 2, ptr %ct_fs_subtype.i133.i.i, align 1
  %ct_cmd.i134.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i131.i.i, i32 0, i32 6
  %500 = ptrtoint ptr %ct_cmd.i134.i.i to i32
  call void @__asan_store2_noabort(i32 %500)
  store i16 274, ptr %ct_cmd.i134.i.i, align 4
  %payload3.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i131.i.i, i32 0, i32 1
  %fn_fc4_type4.i.i = getelementptr %struct.fc_ns_gid_ft, ptr %payload3.i.i, i32 0, i32 3
  %fp_fid.i.i = getelementptr inbounds %struct.fc_ns_fid, ptr %payload3.i.i, i32 0, i32 1
  %shr.i.i.i24 = lshr i32 %did, 16
  %conv.i.i.i25 = trunc i32 %shr.i.i.i24 to i8
  %501 = ptrtoint ptr %fp_fid.i.i to i32
  call void @__asan_store1_noabort(i32 %501)
  store i8 %conv.i.i.i25, ptr %fp_fid.i.i, align 1
  %shr1.i.i.i26 = lshr i32 %did, 8
  %conv3.i.i.i27 = trunc i32 %shr1.i.i.i26 to i8
  %arrayidx4.i.i.i28 = getelementptr %struct.fc_ns_fid, ptr %payload3.i.i, i32 0, i32 1, i32 1
  %502 = ptrtoint ptr %arrayidx4.i.i.i28 to i32
  call void @__asan_store1_noabort(i32 %502)
  store i8 %conv3.i.i.i27, ptr %arrayidx4.i.i.i28, align 1
  %conv6.i.i.i29 = trunc i32 %did to i8
  %503 = ptrtoint ptr %fn_fc4_type4.i.i to i32
  call void @__asan_store1_noabort(i32 %503)
  store i8 %conv6.i.i.i29, ptr %fn_fc4_type4.i.i, align 1
  br label %if.end4

sw.bb6.i.i:                                       ; preds = %sw.default.i
  %len1.i.i136.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %504 = ptrtoint ptr %len1.i.i136.i.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %len1.i.i136.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %505)
  %cmp.not.i.i137.i.i = icmp ult i32 %505, 76
  br i1 %cmp.not.i.i137.i.i, label %sw.bb6.i.i.fc_ct_hdr_fill.exit148.i.i_crit_edge, label %fc_frame_header_get.exit.i.i143.i.i

sw.bb6.i.i.fc_ct_hdr_fill.exit148.i.i_crit_edge:  ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_hdr_fill.exit148.i.i

fc_frame_header_get.exit.i.i143.i.i:              ; preds = %sw.bb6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.i141.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %506 = ptrtoint ptr %data.i.i.i.i141.i.i to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %data.i.i.i.i141.i.i, align 4
  %add.ptr.i.i142.i.i = getelementptr %struct.fc_frame_header, ptr %507, i32 1
  br label %fc_ct_hdr_fill.exit148.i.i

fc_ct_hdr_fill.exit148.i.i:                       ; preds = %fc_frame_header_get.exit.i.i143.i.i, %sw.bb6.i.i.fc_ct_hdr_fill.exit148.i.i_crit_edge
  %pp.0.i.i144.i.i = phi ptr [ %add.ptr.i.i142.i.i, %fc_frame_header_get.exit.i.i143.i.i ], [ null, %sw.bb6.i.i.fc_ct_hdr_fill.exit148.i.i_crit_edge ]
  %508 = call ptr @memset(ptr %pp.0.i.i144.i.i, i32 0, i32 52)
  %509 = ptrtoint ptr %pp.0.i.i144.i.i to i32
  call void @__asan_store1_noabort(i32 %509)
  store i8 1, ptr %pp.0.i.i144.i.i, align 4
  %ct_fs_type.i145.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i144.i.i, i32 0, i32 2
  %510 = ptrtoint ptr %ct_fs_type.i145.i.i to i32
  call void @__asan_store1_noabort(i32 %510)
  store i8 -4, ptr %ct_fs_type.i145.i.i, align 4
  %ct_fs_subtype.i146.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i144.i.i, i32 0, i32 3
  %511 = ptrtoint ptr %ct_fs_subtype.i146.i.i to i32
  call void @__asan_store1_noabort(i32 %511)
  store i8 2, ptr %ct_fs_subtype.i146.i.i, align 1
  %ct_cmd.i147.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i144.i.i, i32 0, i32 6
  %512 = ptrtoint ptr %ct_cmd.i147.i.i to i32
  call void @__asan_store2_noabort(i32 %512)
  store i16 535, ptr %ct_cmd.i147.i.i, align 4
  %payload8.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i144.i.i, i32 0, i32 1
  %fp_fid9.i.i = getelementptr inbounds %struct.fc_ns_fid, ptr %payload8.i.i, i32 0, i32 1
  %port_id.i23.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 18
  %513 = ptrtoint ptr %port_id.i23.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %port_id.i23.i, align 8
  %shr.i149.i.i = lshr i32 %514, 16
  %conv.i150.i.i = trunc i32 %shr.i149.i.i to i8
  %515 = ptrtoint ptr %fp_fid9.i.i to i32
  call void @__asan_store1_noabort(i32 %515)
  store i8 %conv.i150.i.i, ptr %fp_fid9.i.i, align 1
  %shr1.i151.i.i = lshr i32 %514, 8
  %conv3.i152.i.i = trunc i32 %shr1.i151.i.i to i8
  %arrayidx4.i153.i.i = getelementptr %struct.fc_ns_fid, ptr %payload8.i.i, i32 0, i32 1, i32 1
  %516 = ptrtoint ptr %arrayidx4.i153.i.i to i32
  call void @__asan_store1_noabort(i32 %516)
  store i8 %conv3.i152.i.i, ptr %arrayidx4.i153.i.i, align 1
  %conv6.i154.i.i = trunc i32 %514 to i8
  %arrayidx7.i155.i.i = getelementptr %struct.fc_ns_fid, ptr %payload8.i.i, i32 0, i32 1, i32 2
  %517 = ptrtoint ptr %arrayidx7.i155.i.i to i32
  call void @__asan_store1_noabort(i32 %517)
  store i8 %conv6.i154.i.i, ptr %arrayidx7.i155.i.i, align 1
  %fts.i.i = getelementptr inbounds %struct.fc_ns_rft, ptr %payload8.i.i, i32 0, i32 1
  %fcts.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 34
  %518 = call ptr @memcpy(ptr %fts.i.i, ptr %fcts.i.i, i32 32)
  br label %if.end4

sw.bb12.i.i:                                      ; preds = %sw.default.i
  %len1.i.i156.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %519 = ptrtoint ptr %len1.i.i156.i.i to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %len1.i.i156.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %520)
  %cmp.not.i.i157.i.i = icmp ult i32 %520, 48
  br i1 %cmp.not.i.i157.i.i, label %sw.bb12.i.i.fc_ct_hdr_fill.exit168.i.i_crit_edge, label %fc_frame_header_get.exit.i.i163.i.i

sw.bb12.i.i.fc_ct_hdr_fill.exit168.i.i_crit_edge: ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_hdr_fill.exit168.i.i

fc_frame_header_get.exit.i.i163.i.i:              ; preds = %sw.bb12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.i161.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %521 = ptrtoint ptr %data.i.i.i.i161.i.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %data.i.i.i.i161.i.i, align 4
  %add.ptr.i.i162.i.i = getelementptr %struct.fc_frame_header, ptr %522, i32 1
  br label %fc_ct_hdr_fill.exit168.i.i

fc_ct_hdr_fill.exit168.i.i:                       ; preds = %fc_frame_header_get.exit.i.i163.i.i, %sw.bb12.i.i.fc_ct_hdr_fill.exit168.i.i_crit_edge
  %pp.0.i.i164.i.i = phi ptr [ %add.ptr.i.i162.i.i, %fc_frame_header_get.exit.i.i163.i.i ], [ null, %sw.bb12.i.i.fc_ct_hdr_fill.exit168.i.i_crit_edge ]
  %523 = call ptr @memset(ptr %pp.0.i.i164.i.i, i32 0, i32 24)
  %524 = ptrtoint ptr %pp.0.i.i164.i.i to i32
  call void @__asan_store1_noabort(i32 %524)
  store i8 1, ptr %pp.0.i.i164.i.i, align 4
  %ct_fs_type.i165.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i164.i.i, i32 0, i32 2
  %525 = ptrtoint ptr %ct_fs_type.i165.i.i to i32
  call void @__asan_store1_noabort(i32 %525)
  store i8 -4, ptr %ct_fs_type.i165.i.i, align 4
  %ct_fs_subtype.i166.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i164.i.i, i32 0, i32 3
  %526 = ptrtoint ptr %ct_fs_subtype.i166.i.i to i32
  call void @__asan_store1_noabort(i32 %526)
  store i8 2, ptr %ct_fs_subtype.i166.i.i, align 1
  %ct_cmd.i167.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i164.i.i, i32 0, i32 6
  %527 = ptrtoint ptr %ct_cmd.i167.i.i to i32
  call void @__asan_store2_noabort(i32 %527)
  store i16 543, ptr %ct_cmd.i167.i.i, align 4
  %payload14.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i164.i.i, i32 0, i32 1
  %fp_fid15.i.i = getelementptr inbounds %struct.fc_ns_fid, ptr %payload14.i.i, i32 0, i32 1
  %port_id17.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 18
  %528 = ptrtoint ptr %port_id17.i.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %port_id17.i.i, align 8
  %shr.i169.i.i = lshr i32 %529, 16
  %conv.i170.i.i = trunc i32 %shr.i169.i.i to i8
  %530 = ptrtoint ptr %fp_fid15.i.i to i32
  call void @__asan_store1_noabort(i32 %530)
  store i8 %conv.i170.i.i, ptr %fp_fid15.i.i, align 1
  %shr1.i171.i.i = lshr i32 %529, 8
  %conv3.i172.i.i = trunc i32 %shr1.i171.i.i to i8
  %arrayidx4.i173.i.i = getelementptr %struct.fc_ns_fid, ptr %payload14.i.i, i32 0, i32 1, i32 1
  %531 = ptrtoint ptr %arrayidx4.i173.i.i to i32
  call void @__asan_store1_noabort(i32 %531)
  store i8 %conv3.i172.i.i, ptr %arrayidx4.i173.i.i, align 1
  %conv6.i174.i.i = trunc i32 %529 to i8
  %arrayidx7.i175.i.i = getelementptr %struct.fc_ns_fid, ptr %payload14.i.i, i32 0, i32 1, i32 2
  %532 = ptrtoint ptr %arrayidx7.i175.i.i to i32
  call void @__asan_store1_noabort(i32 %532)
  store i8 %conv6.i174.i.i, ptr %arrayidx7.i175.i.i, align 1
  %fr_type.i.i = getelementptr inbounds %struct.fc_ns_rff_id, ptr %payload14.i.i, i32 0, i32 3
  %533 = ptrtoint ptr %fr_type.i.i to i32
  call void @__asan_store1_noabort(i32 %533)
  store i8 8, ptr %fr_type.i.i, align 1
  %service_params.i.i30 = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 21
  %534 = ptrtoint ptr %service_params.i.i30 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %service_params.i.i30, align 8
  %and.i.i = and i32 %535, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i24.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i24.i, label %fc_ct_hdr_fill.exit168.i.i.if.end.i.i_crit_edge, label %if.then.i.i31

fc_ct_hdr_fill.exit168.i.i.if.end.i.i_crit_edge:  ; preds = %fc_ct_hdr_fill.exit168.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i31:                                    ; preds = %fc_ct_hdr_fill.exit168.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %fr_feat.i.i = getelementptr inbounds %struct.fc_ns_rff_id, ptr %payload14.i.i, i32 0, i32 2
  %536 = ptrtoint ptr %fr_feat.i.i to i32
  call void @__asan_store1_noabort(i32 %536)
  store i8 2, ptr %fr_feat.i.i, align 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i31, %fc_ct_hdr_fill.exit168.i.i.if.end.i.i_crit_edge
  %537 = ptrtoint ptr %service_params.i.i30 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %service_params.i.i30, align 8
  %and21.i.i = and i32 %538, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end.i.i.if.end4_crit_edge, label %if.then23.i.i

if.end.i.i.if.end4_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then23.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %fr_feat25.i.i = getelementptr inbounds %struct.fc_ns_rff_id, ptr %payload14.i.i, i32 0, i32 2
  %539 = ptrtoint ptr %fr_feat25.i.i to i32
  call void @__asan_load1_noabort(i32 %539)
  %540 = load i8, ptr %fr_feat25.i.i, align 2
  %541 = or i8 %540, 1
  store i8 %541, ptr %fr_feat25.i.i, align 2
  br label %if.end4

sw.bb28.i.i:                                      ; preds = %sw.default.i
  %len1.i.i176.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %542 = ptrtoint ptr %len1.i.i176.i.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %len1.i.i176.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %543)
  %cmp.not.i.i177.i.i = icmp ult i32 %543, 52
  br i1 %cmp.not.i.i177.i.i, label %sw.bb28.i.i.fc_ct_hdr_fill.exit188.i.i_crit_edge, label %fc_frame_header_get.exit.i.i183.i.i

sw.bb28.i.i.fc_ct_hdr_fill.exit188.i.i_crit_edge: ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_hdr_fill.exit188.i.i

fc_frame_header_get.exit.i.i183.i.i:              ; preds = %sw.bb28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i.i.i.i181.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %544 = ptrtoint ptr %data.i.i.i.i181.i.i to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %data.i.i.i.i181.i.i, align 4
  %add.ptr.i.i182.i.i = getelementptr %struct.fc_frame_header, ptr %545, i32 1
  br label %fc_ct_hdr_fill.exit188.i.i

fc_ct_hdr_fill.exit188.i.i:                       ; preds = %fc_frame_header_get.exit.i.i183.i.i, %sw.bb28.i.i.fc_ct_hdr_fill.exit188.i.i_crit_edge
  %pp.0.i.i184.i.i = phi ptr [ %add.ptr.i.i182.i.i, %fc_frame_header_get.exit.i.i183.i.i ], [ null, %sw.bb28.i.i.fc_ct_hdr_fill.exit188.i.i_crit_edge ]
  %546 = call ptr @memset(ptr %pp.0.i.i184.i.i, i32 0, i32 28)
  %547 = ptrtoint ptr %pp.0.i.i184.i.i to i32
  call void @__asan_store1_noabort(i32 %547)
  store i8 1, ptr %pp.0.i.i184.i.i, align 4
  %ct_fs_type.i185.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i184.i.i, i32 0, i32 2
  %548 = ptrtoint ptr %ct_fs_type.i185.i.i to i32
  call void @__asan_store1_noabort(i32 %548)
  store i8 -4, ptr %ct_fs_type.i185.i.i, align 4
  %ct_fs_subtype.i186.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i184.i.i, i32 0, i32 3
  %549 = ptrtoint ptr %ct_fs_subtype.i186.i.i to i32
  call void @__asan_store1_noabort(i32 %549)
  store i8 2, ptr %ct_fs_subtype.i186.i.i, align 1
  %ct_cmd.i187.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i184.i.i, i32 0, i32 6
  %550 = ptrtoint ptr %ct_cmd.i187.i.i to i32
  call void @__asan_store2_noabort(i32 %550)
  store i16 531, ptr %ct_cmd.i187.i.i, align 4
  %payload30.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i184.i.i, i32 0, i32 1
  %fp_fid32.i.i = getelementptr inbounds %struct.fc_ns_fid, ptr %payload30.i.i, i32 0, i32 1
  %port_id34.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 18
  %551 = ptrtoint ptr %port_id34.i.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %port_id34.i.i, align 8
  %shr.i189.i.i = lshr i32 %552, 16
  %conv.i190.i.i = trunc i32 %shr.i189.i.i to i8
  %553 = ptrtoint ptr %fp_fid32.i.i to i32
  call void @__asan_store1_noabort(i32 %553)
  store i8 %conv.i190.i.i, ptr %fp_fid32.i.i, align 1
  %shr1.i191.i.i = lshr i32 %552, 8
  %conv3.i192.i.i = trunc i32 %shr1.i191.i.i to i8
  %arrayidx4.i193.i.i = getelementptr %struct.fc_ns_fid, ptr %payload30.i.i, i32 0, i32 1, i32 1
  %554 = ptrtoint ptr %arrayidx4.i193.i.i to i32
  call void @__asan_store1_noabort(i32 %554)
  store i8 %conv3.i192.i.i, ptr %arrayidx4.i193.i.i, align 1
  %conv6.i194.i.i = trunc i32 %552 to i8
  %arrayidx7.i195.i.i = getelementptr %struct.fc_ns_fid, ptr %payload30.i.i, i32 0, i32 1, i32 2
  %555 = ptrtoint ptr %arrayidx7.i195.i.i to i32
  call void @__asan_store1_noabort(i32 %555)
  store i8 %conv6.i194.i.i, ptr %arrayidx7.i195.i.i, align 1
  %wwnn.i25.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 20
  %556 = ptrtoint ptr %wwnn.i25.i to i32
  call void @__asan_load8_noabort(i32 %556)
  %557 = load i64, ptr %wwnn.i25.i, align 8
  %fr_wwn.i.i = getelementptr inbounds %struct.fc_ns_rn_id, ptr %payload30.i.i, i32 0, i32 1
  %558 = ptrtoint ptr %fr_wwn.i.i to i32
  call void @__asan_storeN_noabort(i32 %558, i32 8)
  store i64 %557, ptr %fr_wwn.i.i, align 1
  br label %if.end4

sw.bb36.i.i:                                      ; preds = %sw.default.i
  %559 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %lport, align 8
  %shost_data.i26.i = getelementptr inbounds %struct.Scsi_Host, ptr %560, i32 0, i32 51
  %561 = ptrtoint ptr %shost_data.i26.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %shost_data.i26.i, align 8
  %symbolic_name.i27.i = getelementptr inbounds %struct.fc_host_attrs, ptr %562, i32 0, i32 28
  %call38.i.i = tail call i32 @strnlen(ptr noundef %symbolic_name.i27.i, i32 noundef 255) #9
  %len1.i.i196.i28.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %563 = ptrtoint ptr %len1.i.i196.i28.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load i32, ptr %len1.i.i196.i28.i, align 4
  %add.i.i.i29.i = add i32 %call38.i.i, 45
  call void @__sanitizer_cov_trace_cmp4(i32 %564, i32 %add.i.i.i29.i)
  %cmp.not.i.i197.i30.i = icmp ult i32 %564, %add.i.i.i29.i
  br i1 %cmp.not.i.i197.i30.i, label %sw.bb36.i.i.fc_ct_hdr_fill.exit208.i39.i_crit_edge, label %if.then.i.i199.i.i

sw.bb36.i.i.fc_ct_hdr_fill.exit208.i39.i_crit_edge: ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_hdr_fill.exit208.i39.i

if.then.i.i199.i.i:                               ; preds = %sw.bb36.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %564)
  %cmp.i.i.i198.i.i = icmp ult i32 %564, 24
  br i1 %cmp.i.i.i198.i.i, label %do.end.i.i.i200.i.i, label %if.then.i.i199.i.i.fc_frame_header_get.exit.i.i203.i33.i_crit_edge, !prof !43

if.then.i.i199.i.i.fc_frame_header_get.exit.i.i203.i33.i_crit_edge: ; preds = %if.then.i.i199.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_header_get.exit.i.i203.i33.i

do.end.i.i.i200.i.i:                              ; preds = %if.then.i.i199.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 161, i32 noundef 9, ptr noundef null) #6
  br label %fc_frame_header_get.exit.i.i203.i33.i

fc_frame_header_get.exit.i.i203.i33.i:            ; preds = %do.end.i.i.i200.i.i, %if.then.i.i199.i.i.fc_frame_header_get.exit.i.i203.i33.i_crit_edge
  %data.i.i.i.i201.i31.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %565 = ptrtoint ptr %data.i.i.i.i201.i31.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load ptr, ptr %data.i.i.i.i201.i31.i, align 4
  %add.ptr.i.i202.i32.i = getelementptr %struct.fc_frame_header, ptr %566, i32 1
  br label %fc_ct_hdr_fill.exit208.i39.i

fc_ct_hdr_fill.exit208.i39.i:                     ; preds = %fc_frame_header_get.exit.i.i203.i33.i, %sw.bb36.i.i.fc_ct_hdr_fill.exit208.i39.i_crit_edge
  %pp.0.i.i204.i34.i = phi ptr [ %add.ptr.i.i202.i32.i, %fc_frame_header_get.exit.i.i203.i33.i ], [ null, %sw.bb36.i.i.fc_ct_hdr_fill.exit208.i39.i_crit_edge ]
  %add.i.i35.i = add i32 %call38.i.i, 21
  %567 = call ptr @memset(ptr %pp.0.i.i204.i34.i, i32 0, i32 %add.i.i35.i)
  %568 = ptrtoint ptr %pp.0.i.i204.i34.i to i32
  call void @__asan_store1_noabort(i32 %568)
  store i8 1, ptr %pp.0.i.i204.i34.i, align 4
  %ct_fs_type.i205.i36.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i204.i34.i, i32 0, i32 2
  %569 = ptrtoint ptr %ct_fs_type.i205.i36.i to i32
  call void @__asan_store1_noabort(i32 %569)
  store i8 -4, ptr %ct_fs_type.i205.i36.i, align 4
  %ct_fs_subtype.i206.i37.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i204.i34.i, i32 0, i32 3
  %570 = ptrtoint ptr %ct_fs_subtype.i206.i37.i to i32
  call void @__asan_store1_noabort(i32 %570)
  store i8 2, ptr %ct_fs_subtype.i206.i37.i, align 1
  %ct_cmd.i207.i38.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i204.i34.i, i32 0, i32 6
  %571 = ptrtoint ptr %ct_cmd.i207.i38.i to i32
  call void @__asan_store2_noabort(i32 %571)
  store i16 536, ptr %ct_cmd.i207.i38.i, align 4
  %payload40.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i204.i34.i, i32 0, i32 1
  %fp_fid42.i.i = getelementptr inbounds %struct.fc_ns_fid, ptr %payload40.i.i, i32 0, i32 1
  %port_id44.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 18
  %572 = ptrtoint ptr %port_id44.i.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %port_id44.i.i, align 8
  %shr.i209.i.i = lshr i32 %573, 16
  %conv.i210.i.i = trunc i32 %shr.i209.i.i to i8
  %574 = ptrtoint ptr %fp_fid42.i.i to i32
  call void @__asan_store1_noabort(i32 %574)
  store i8 %conv.i210.i.i, ptr %fp_fid42.i.i, align 1
  %shr1.i211.i.i = lshr i32 %573, 8
  %conv3.i212.i.i = trunc i32 %shr1.i211.i.i to i8
  %arrayidx4.i213.i.i = getelementptr %struct.fc_ns_fid, ptr %payload40.i.i, i32 0, i32 1, i32 1
  %575 = ptrtoint ptr %arrayidx4.i213.i.i to i32
  call void @__asan_store1_noabort(i32 %575)
  store i8 %conv3.i212.i.i, ptr %arrayidx4.i213.i.i, align 1
  %conv6.i214.i.i = trunc i32 %573 to i8
  %arrayidx7.i215.i.i = getelementptr %struct.fc_ns_fid, ptr %payload40.i.i, i32 0, i32 1, i32 2
  %576 = ptrtoint ptr %arrayidx7.i215.i.i to i32
  call void @__asan_store1_noabort(i32 %576)
  store i8 %conv6.i214.i.i, ptr %arrayidx7.i215.i.i, align 1
  %fr_name.i.i = getelementptr inbounds %struct.fc_ns_rspn, ptr %payload40.i.i, i32 0, i32 2
  %577 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load ptr, ptr %lport, align 8
  %shost_data48.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %578, i32 0, i32 51
  %579 = ptrtoint ptr %shost_data48.i.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %shost_data48.i.i, align 8
  %symbolic_name49.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %580, i32 0, i32 28
  %call51.i.i = tail call ptr @strncpy(ptr noundef %fr_name.i.i, ptr noundef %symbolic_name49.i.i, i32 noundef %call38.i.i) #6
  %conv52.i.i = trunc i32 %call38.i.i to i8
  %fr_name_len.i.i = getelementptr inbounds %struct.fc_ns_rspn, ptr %payload40.i.i, i32 0, i32 1
  %581 = ptrtoint ptr %fr_name_len.i.i to i32
  call void @__asan_store1_noabort(i32 %581)
  store i8 %conv52.i.i, ptr %fr_name_len.i.i, align 4
  br label %if.end4

sw.bb54.i.i:                                      ; preds = %sw.default.i
  %582 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load ptr, ptr %lport, align 8
  %shost_data56.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %583, i32 0, i32 51
  %584 = ptrtoint ptr %shost_data56.i.i to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load ptr, ptr %shost_data56.i.i, align 8
  %symbolic_name57.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %585, i32 0, i32 28
  %call59.i.i = tail call i32 @strnlen(ptr noundef %symbolic_name57.i.i, i32 noundef 255) #9
  %len1.i.i216.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %586 = ptrtoint ptr %len1.i.i216.i.i to i32
  call void @__asan_load4_noabort(i32 %586)
  %587 = load i32, ptr %len1.i.i216.i.i, align 4
  %add.i.i217.i.i = add i32 %call59.i.i, 49
  call void @__sanitizer_cov_trace_cmp4(i32 %587, i32 %add.i.i217.i.i)
  %cmp.not.i.i218.i.i = icmp ult i32 %587, %add.i.i217.i.i
  br i1 %cmp.not.i.i218.i.i, label %sw.bb54.i.i.fc_ct_hdr_fill.exit230.i.i_crit_edge, label %if.then.i.i220.i.i

sw.bb54.i.i.fc_ct_hdr_fill.exit230.i.i_crit_edge: ; preds = %sw.bb54.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_ct_hdr_fill.exit230.i.i

if.then.i.i220.i.i:                               ; preds = %sw.bb54.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %587)
  %cmp.i.i.i219.i.i = icmp ult i32 %587, 24
  br i1 %cmp.i.i.i219.i.i, label %do.end.i.i.i221.i.i, label %if.then.i.i220.i.i.fc_frame_header_get.exit.i.i224.i.i_crit_edge, !prof !43

if.then.i.i220.i.i.fc_frame_header_get.exit.i.i224.i.i_crit_edge: ; preds = %if.then.i.i220.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_header_get.exit.i.i224.i.i

do.end.i.i.i221.i.i:                              ; preds = %if.then.i.i220.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 161, i32 noundef 9, ptr noundef null) #6
  br label %fc_frame_header_get.exit.i.i224.i.i

fc_frame_header_get.exit.i.i224.i.i:              ; preds = %do.end.i.i.i221.i.i, %if.then.i.i220.i.i.fc_frame_header_get.exit.i.i224.i.i_crit_edge
  %data.i.i.i.i222.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %588 = ptrtoint ptr %data.i.i.i.i222.i.i to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %data.i.i.i.i222.i.i, align 4
  %add.ptr.i.i223.i.i = getelementptr %struct.fc_frame_header, ptr %589, i32 1
  br label %fc_ct_hdr_fill.exit230.i.i

fc_ct_hdr_fill.exit230.i.i:                       ; preds = %fc_frame_header_get.exit.i.i224.i.i, %sw.bb54.i.i.fc_ct_hdr_fill.exit230.i.i_crit_edge
  %pp.0.i.i225.i.i = phi ptr [ %add.ptr.i.i223.i.i, %fc_frame_header_get.exit.i.i224.i.i ], [ null, %sw.bb54.i.i.fc_ct_hdr_fill.exit230.i.i_crit_edge ]
  %add.i226.i.i = add i32 %call59.i.i, 25
  %590 = call ptr @memset(ptr %pp.0.i.i225.i.i, i32 0, i32 %add.i226.i.i)
  %591 = ptrtoint ptr %pp.0.i.i225.i.i to i32
  call void @__asan_store1_noabort(i32 %591)
  store i8 1, ptr %pp.0.i.i225.i.i, align 4
  %ct_fs_type.i227.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i225.i.i, i32 0, i32 2
  %592 = ptrtoint ptr %ct_fs_type.i227.i.i to i32
  call void @__asan_store1_noabort(i32 %592)
  store i8 -4, ptr %ct_fs_type.i227.i.i, align 4
  %ct_fs_subtype.i228.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i225.i.i, i32 0, i32 3
  %593 = ptrtoint ptr %ct_fs_subtype.i228.i.i to i32
  call void @__asan_store1_noabort(i32 %593)
  store i8 2, ptr %ct_fs_subtype.i228.i.i, align 1
  %ct_cmd.i229.i.i = getelementptr inbounds %struct.fc_ct_hdr, ptr %pp.0.i.i225.i.i, i32 0, i32 6
  %594 = ptrtoint ptr %ct_cmd.i229.i.i to i32
  call void @__asan_store2_noabort(i32 %594)
  store i16 569, ptr %ct_cmd.i229.i.i, align 4
  %wwnn62.i.i = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 20
  %595 = ptrtoint ptr %wwnn62.i.i to i32
  call void @__asan_load8_noabort(i32 %595)
  %596 = load i64, ptr %wwnn62.i.i, align 8
  %payload63.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i225.i.i, i32 0, i32 1
  %597 = ptrtoint ptr %payload63.i.i to i32
  call void @__asan_storeN_noabort(i32 %597, i32 8)
  store i64 %596, ptr %payload63.i.i, align 1
  %fr_name66.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i225.i.i, i32 0, i32 1, i32 1, i32 1
  %598 = ptrtoint ptr %lport to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load ptr, ptr %lport, align 8
  %shost_data69.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %599, i32 0, i32 51
  %600 = ptrtoint ptr %shost_data69.i.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load ptr, ptr %shost_data69.i.i, align 8
  %symbolic_name70.i.i = getelementptr inbounds %struct.fc_host_attrs, ptr %601, i32 0, i32 28
  %call72.i.i = tail call ptr @strncpy(ptr noundef %fr_name66.i.i, ptr noundef %symbolic_name70.i.i, i32 noundef %call59.i.i) #6
  %conv73.i.i = trunc i32 %call59.i.i to i8
  %fr_name_len75.i.i = getelementptr inbounds %struct.fc_ct_req, ptr %pp.0.i.i225.i.i, i32 0, i32 1, i32 1
  %602 = ptrtoint ptr %fr_name_len75.i.i to i32
  call void @__asan_store1_noabort(i32 %602)
  store i8 %conv73.i.i, ptr %fr_name_len75.i.i, align 4
  br label %if.end4

if.then3:                                         ; preds = %sw.default.i.if.then3_crit_edge, %sw.bb.i18.if.then3_crit_edge, %if.then.if.then3_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #6
  br label %cleanup

if.end4:                                          ; preds = %fc_ct_hdr_fill.exit230.i.i, %fc_ct_hdr_fill.exit208.i39.i, %fc_ct_hdr_fill.exit188.i.i, %if.then23.i.i, %if.end.i.i.if.end4_crit_edge, %fc_ct_hdr_fill.exit148.i.i, %fc_ct_hdr_fill.exit135.i.i, %fc_ct_hdr_fill.exit.i22.i, %fc_ct_hdr_fill.exit208.i.i, %fc_ct_hdr_fill.exit195.i.i, %fc_ct_ms_fill_attr.exit182.i.i, %if.end321.i.i.if.end4_crit_edge, %if.then.i113.i.i, %fc_ct_ms_fill_attr.exit103.i.i.if.end4_crit_edge, %fc_ct_ms_fill_attr.exit81.i.i.if.end4_crit_edge, %fc_scr_fill.exit.i, %fc_prli_fill.exit.i, %fc_rec_fill.exit.i, %fc_rtv_fill.exit.i, %fc_logo_fill.exit.i, %fc_fdisc_fill.exit.i, %if.then.i.i, %fc_frame_payload_get.exit.i.i.if.end4_crit_edge, %fc_plogi_fill.exit.i, %fc_adisc_fill.exit.i
  %did.addr.0.ph = phi i32 [ 16777212, %fc_ct_hdr_fill.exit.i22.i ], [ 16777212, %fc_ct_hdr_fill.exit135.i.i ], [ 16777212, %fc_ct_hdr_fill.exit148.i.i ], [ 16777212, %if.end.i.i.if.end4_crit_edge ], [ 16777212, %if.then23.i.i ], [ 16777212, %fc_ct_hdr_fill.exit188.i.i ], [ 16777212, %fc_ct_hdr_fill.exit208.i39.i ], [ 16777212, %fc_ct_hdr_fill.exit230.i.i ], [ 16777210, %fc_ct_ms_fill_attr.exit81.i.i.if.end4_crit_edge ], [ 16777210, %fc_ct_ms_fill_attr.exit103.i.i.if.end4_crit_edge ], [ 16777210, %if.then.i113.i.i ], [ 16777210, %if.end321.i.i.if.end4_crit_edge ], [ 16777210, %fc_ct_ms_fill_attr.exit182.i.i ], [ 16777210, %fc_ct_hdr_fill.exit195.i.i ], [ 16777210, %fc_ct_hdr_fill.exit208.i.i ], [ %did, %fc_scr_fill.exit.i ], [ %did, %fc_prli_fill.exit.i ], [ %did, %fc_rec_fill.exit.i ], [ %did, %fc_rtv_fill.exit.i ], [ %did, %fc_logo_fill.exit.i ], [ %did, %fc_fdisc_fill.exit.i ], [ %did, %if.then.i.i ], [ %did, %fc_frame_payload_get.exit.i.i.if.end4_crit_edge ], [ %did, %fc_plogi_fill.exit.i ], [ %did, %fc_adisc_fill.exit.i ]
  %r_ctl.2.ph = phi i8 [ 2, %fc_ct_hdr_fill.exit.i22.i ], [ 2, %fc_ct_hdr_fill.exit135.i.i ], [ 2, %fc_ct_hdr_fill.exit148.i.i ], [ 2, %if.end.i.i.if.end4_crit_edge ], [ 2, %if.then23.i.i ], [ 2, %fc_ct_hdr_fill.exit188.i.i ], [ 2, %fc_ct_hdr_fill.exit208.i39.i ], [ 2, %fc_ct_hdr_fill.exit230.i.i ], [ 2, %fc_ct_ms_fill_attr.exit81.i.i.if.end4_crit_edge ], [ 2, %fc_ct_ms_fill_attr.exit103.i.i.if.end4_crit_edge ], [ 2, %if.then.i113.i.i ], [ 2, %if.end321.i.i.if.end4_crit_edge ], [ 2, %fc_ct_ms_fill_attr.exit182.i.i ], [ 2, %fc_ct_hdr_fill.exit195.i.i ], [ 2, %fc_ct_hdr_fill.exit208.i.i ], [ 34, %fc_scr_fill.exit.i ], [ 34, %fc_prli_fill.exit.i ], [ 34, %fc_rec_fill.exit.i ], [ 34, %fc_rtv_fill.exit.i ], [ 34, %fc_logo_fill.exit.i ], [ 34, %fc_fdisc_fill.exit.i ], [ 34, %if.then.i.i ], [ 34, %fc_frame_payload_get.exit.i.i.if.end4_crit_edge ], [ 34, %fc_plogi_fill.exit.i ], [ 34, %fc_adisc_fill.exit.i ]
  %fh_type.2.ph = phi i8 [ 32, %fc_ct_hdr_fill.exit.i22.i ], [ 32, %fc_ct_hdr_fill.exit135.i.i ], [ 32, %fc_ct_hdr_fill.exit148.i.i ], [ 32, %if.end.i.i.if.end4_crit_edge ], [ 32, %if.then23.i.i ], [ 32, %fc_ct_hdr_fill.exit188.i.i ], [ 32, %fc_ct_hdr_fill.exit208.i39.i ], [ 32, %fc_ct_hdr_fill.exit230.i.i ], [ 32, %fc_ct_ms_fill_attr.exit81.i.i.if.end4_crit_edge ], [ 32, %fc_ct_ms_fill_attr.exit103.i.i.if.end4_crit_edge ], [ 32, %if.then.i113.i.i ], [ 32, %if.end321.i.i.if.end4_crit_edge ], [ 32, %fc_ct_ms_fill_attr.exit182.i.i ], [ 32, %fc_ct_hdr_fill.exit195.i.i ], [ 32, %fc_ct_hdr_fill.exit208.i.i ], [ 1, %fc_scr_fill.exit.i ], [ 1, %fc_prli_fill.exit.i ], [ 1, %fc_rec_fill.exit.i ], [ 1, %fc_rtv_fill.exit.i ], [ 1, %fc_logo_fill.exit.i ], [ 1, %fc_fdisc_fill.exit.i ], [ 1, %if.then.i.i ], [ 1, %fc_frame_payload_get.exit.i.i.if.end4_crit_edge ], [ 1, %fc_plogi_fill.exit.i ], [ 1, %fc_adisc_fill.exit.i ]
  %port_id = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 18
  %603 = ptrtoint ptr %port_id to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %port_id, align 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %605 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %606)
  %cmp.i.i33 = icmp ult i32 %606, 24
  br i1 %cmp.i.i33, label %do.end.i.i, label %if.end4.fc_fill_fc_hdr.exit_crit_edge, !prof !43

if.end4.fc_fill_fc_hdr.exit_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_fill_fc_hdr.exit

do.end.i.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 161, i32 noundef 9, ptr noundef null) #6
  br label %fc_fill_fc_hdr.exit

fc_fill_fc_hdr.exit:                              ; preds = %do.end.i.i, %if.end4.fc_fill_fc_hdr.exit_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %607 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %data.i.i.i, align 4
  %609 = ptrtoint ptr %608 to i32
  call void @__asan_store1_noabort(i32 %609)
  store i8 %r_ctl.2.ph, ptr %608, align 4
  %fh_d_id.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %608, i32 0, i32 1
  %shr.i.i.i35 = lshr i32 %did.addr.0.ph, 16
  %conv.i.i.i36 = trunc i32 %shr.i.i.i35 to i8
  %610 = ptrtoint ptr %fh_d_id.i.i to i32
  call void @__asan_store1_noabort(i32 %610)
  store i8 %conv.i.i.i36, ptr %fh_d_id.i.i, align 1
  %shr1.i.i.i37 = lshr i32 %did.addr.0.ph, 8
  %conv3.i.i.i38 = trunc i32 %shr1.i.i.i37 to i8
  %arrayidx4.i.i.i39 = getelementptr %struct.fc_frame_header, ptr %608, i32 0, i32 1, i32 1
  %611 = ptrtoint ptr %arrayidx4.i.i.i39 to i32
  call void @__asan_store1_noabort(i32 %611)
  store i8 %conv3.i.i.i38, ptr %arrayidx4.i.i.i39, align 1
  %conv6.i.i.i40 = trunc i32 %did.addr.0.ph to i8
  %arrayidx7.i.i.i41 = getelementptr %struct.fc_frame_header, ptr %608, i32 0, i32 1, i32 2
  %612 = ptrtoint ptr %arrayidx7.i.i.i41 to i32
  call void @__asan_store1_noabort(i32 %612)
  store i8 %conv6.i.i.i40, ptr %arrayidx7.i.i.i41, align 1
  %fh_s_id.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %608, i32 0, i32 3
  %shr.i1.i.i = lshr i32 %604, 16
  %conv.i2.i.i = trunc i32 %shr.i1.i.i to i8
  %613 = ptrtoint ptr %fh_s_id.i.i to i32
  call void @__asan_store1_noabort(i32 %613)
  store i8 %conv.i2.i.i, ptr %fh_s_id.i.i, align 1
  %shr1.i3.i.i = lshr i32 %604, 8
  %conv3.i4.i.i = trunc i32 %shr1.i3.i.i to i8
  %arrayidx4.i5.i.i = getelementptr %struct.fc_frame_header, ptr %608, i32 0, i32 3, i32 1
  %614 = ptrtoint ptr %arrayidx4.i5.i.i to i32
  call void @__asan_store1_noabort(i32 %614)
  store i8 %conv3.i4.i.i, ptr %arrayidx4.i5.i.i, align 1
  %conv6.i6.i.i = trunc i32 %604 to i8
  %arrayidx7.i7.i.i = getelementptr %struct.fc_frame_header, ptr %608, i32 0, i32 3, i32 2
  %615 = ptrtoint ptr %arrayidx7.i7.i.i to i32
  call void @__asan_store1_noabort(i32 %615)
  store i8 %conv6.i6.i.i, ptr %arrayidx7.i7.i.i, align 1
  %fh_type.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %608, i32 0, i32 4
  %616 = ptrtoint ptr %fh_type.i.i to i32
  call void @__asan_store1_noabort(i32 %616)
  store i8 %fh_type.2.ph, ptr %fh_type.i.i, align 4
  %fh_f_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %608, i32 0, i32 5
  %617 = ptrtoint ptr %fh_f_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %617)
  store i8 41, ptr %fh_f_ctl.i.i, align 1
  %arrayidx4.i8.i.i = getelementptr %struct.fc_frame_header, ptr %608, i32 0, i32 5, i32 1
  %618 = ptrtoint ptr %arrayidx4.i8.i.i to i32
  call void @__asan_store1_noabort(i32 %618)
  store i8 0, ptr %arrayidx4.i8.i.i, align 1
  %arrayidx7.i9.i.i = getelementptr %struct.fc_frame_header, ptr %608, i32 0, i32 5, i32 2
  %619 = ptrtoint ptr %arrayidx7.i9.i.i to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 0, ptr %arrayidx7.i9.i.i, align 1
  %fh_cs_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %608, i32 0, i32 2
  %620 = ptrtoint ptr %fh_cs_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %620)
  store i8 0, ptr %fh_cs_ctl.i.i, align 4
  %fh_df_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %608, i32 0, i32 7
  %621 = ptrtoint ptr %fh_df_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %621)
  store i8 0, ptr %fh_df_ctl.i.i, align 1
  %fh_parm_offset.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %608, i32 0, i32 11
  %622 = ptrtoint ptr %fh_parm_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %622)
  store i32 0, ptr %fh_parm_offset.i.i, align 4
  %call5 = tail call ptr @fc_exch_seq_send(ptr noundef %lport, ptr noundef %fp, ptr noundef %resp, ptr noundef null, ptr noundef %arg, i32 noundef %timer_msec) #6
  br label %cleanup

cleanup:                                          ; preds = %fc_fill_fc_hdr.exit, %if.then3
  %retval.0 = phi ptr [ null, %if.then3 ], [ %call5, %fc_fill_fc_hdr.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_exch_seq_send(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fc_elsct_init(ptr nocapture noundef %lport) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %elsct_send = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %elsct_send to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elsct_send, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %elsct_send to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @fc_elsct_send, ptr %elsct_send, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local nonnull ptr @fc_els_resp_type(ptr noundef %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %fp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %fp to i32
  %sub = sub i32 0, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %1 = icmp ult i32 %sub, 3
  br i1 %1, label %switch.lookup, label %if.then.if.end23_crit_edge

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.else:                                          ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %3)
  %cmp.i35 = icmp ult i32 %3, 24
  br i1 %cmp.i35, label %do.end.i, label %if.else.fc_frame_header_get.exit_crit_edge, !prof !43

if.else.fc_frame_header_get.exit_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 161, i32 noundef 9, ptr noundef null) #6
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %if.else.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %fh_type = getelementptr inbounds %struct.fc_frame_header, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %fh_type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fh_type, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %7, label %fc_frame_header_get.exit.if.end23_crit_edge [
    i8 1, label %sw.bb5
    i8 32, label %sw.bb12
  ]

fc_frame_header_get.exit.if.end23_crit_edge:      ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

sw.bb5:                                           ; preds = %fc_frame_header_get.exit
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %10)
  %cmp.not.i.i = icmp ult i32 %10, 25
  br i1 %cmp.not.i.i, label %sw.bb5.if.end23_crit_edge, label %fc_frame_payload_get.exit.i

sw.bb5.if.end23_crit_edge:                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

fc_frame_payload_get.exit.i:                      ; preds = %sw.bb5
  %add.ptr.i.i = getelementptr %struct.fc_frame_header, ptr %5, i32 1
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %fc_frame_payload_get.exit.i.if.end23_crit_edge, label %fc_frame_payload_op.exit

fc_frame_payload_get.exit.i.if.end23_crit_edge:   ; preds = %fc_frame_payload_get.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

fc_frame_payload_op.exit:                         ; preds = %fc_frame_payload_get.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %switch.selectcmp = icmp eq i8 %12, 2
  %switch.select = select i1 %switch.selectcmp, ptr @.str.4, ptr @.str.6
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %switch.selectcmp44 = icmp eq i8 %12, 1
  %switch.select45 = select i1 %switch.selectcmp44, ptr @.str.5, ptr %switch.select
  br label %if.end23

sw.bb12:                                          ; preds = %fc_frame_header_get.exit
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 40
  br i1 %cmp.not.i, label %sw.bb12.if.end23_crit_edge, label %fc_frame_payload_get.exit

sw.bb12.if.end23_crit_edge:                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

fc_frame_payload_get.exit:                        ; preds = %sw.bb12
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %16, i32 1
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %fc_frame_payload_get.exit.if.end23_crit_edge, label %if.then14

fc_frame_payload_get.exit.if.end23_crit_edge:     ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then14:                                        ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ct_cmd = getelementptr %struct.fc_frame_header, ptr %16, i32 1, i32 4
  %17 = ptrtoint ptr %ct_cmd to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ct_cmd, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32767, i16 %18)
  %switch.selectcmp31 = icmp eq i16 %18, -32767
  %switch.select32 = select i1 %switch.selectcmp31, ptr @.str.8, ptr @.str.9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32766, i16 %18)
  %switch.selectcmp33 = icmp eq i16 %18, -32766
  %switch.select34 = select i1 %switch.selectcmp33, ptr @.str.7, ptr %switch.select32
  br label %if.end23

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.fc_els_resp_type, i32 0, i32 %sub
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end23

if.end23:                                         ; preds = %switch.lookup, %if.then14, %fc_frame_payload_get.exit.if.end23_crit_edge, %sw.bb12.if.end23_crit_edge, %fc_frame_payload_op.exit, %fc_frame_payload_get.exit.i.if.end23_crit_edge, %sw.bb5.if.end23_crit_edge, %fc_frame_header_get.exit.if.end23_crit_edge, %if.then.if.end23_crit_edge
  %msg.0 = phi ptr [ %switch.select34, %if.then14 ], [ @.str.10, %fc_frame_payload_get.exit.if.end23_crit_edge ], [ @.str.11, %fc_frame_header_get.exit.if.end23_crit_edge ], [ @.str.6, %fc_frame_payload_get.exit.i.if.end23_crit_edge ], [ @.str.6, %sw.bb5.if.end23_crit_edge ], [ @.str.10, %sw.bb12.if.end23_crit_edge ], [ %switch.select45, %fc_frame_payload_op.exit ], [ %switch.load, %switch.lookup ], [ @.str.3, %if.then.if.end23_crit_edge ]
  ret ptr %msg.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__ksymtab_fc_elsct_send, !1, !"__ksymtab_fc_elsct_send", i1 false, i1 false}
!1 = !{!"../drivers/scsi/libfc/fc_elsct.c", i32 60, i32 1}
!2 = !{ptr @__ksymtab_fc_elsct_init, !3, !"__ksymtab_fc_elsct_init", i1 false, i1 false}
!3 = !{!"../drivers/scsi/libfc/fc_elsct.c", i32 73, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/libfc/fc_elsct.c", i32 88, i32 10}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/libfc/fc_elsct.c", i32 91, i32 10}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/libfc/fc_elsct.c", i32 94, i32 10}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/libfc/fc_elsct.c", i32 97, i32 10}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/libfc/fc_elsct.c", i32 106, i32 11}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/libfc/fc_elsct.c", i32 109, i32 11}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/libfc/fc_elsct.c", i32 112, i32 11}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/libfc/fc_elsct.c", i32 121, i32 12}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/libfc/fc_elsct.c", i32 124, i32 12}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/libfc/fc_elsct.c", i32 127, i32 12}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/libfc/fc_elsct.c", i32 131, i32 11}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/scsi/libfc/fc_elsct.c", i32 135, i32 10}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/libfc/fc_encode.h", i32 332, i32 4}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/scsi/libfc/fc_encode.h", i32 357, i32 4}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../include/scsi/fc_frame.h", i32 254, i32 2}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"branch_weights", i32 1, i32 2000}
