; ModuleID = '/llk/IR_all_yes/drivers/target/tcm_fc/tfc_cmd.c_pt.bc'
source_filename = "../drivers/target/tcm_fc/tfc_cmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ft_cmd = type { ptr, ptr, %struct.se_cmd, ptr, i32, %struct.work_struct, [96 x i8], i8, ptr, i32 }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
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
%struct.ft_sess = type { i32, i32, i16, i64, ptr, ptr, %struct.hlist_node, %struct.callback_head, %struct.kref }
%struct.callback_head = type { ptr, ptr }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.fc_frame_header = type { i8, [3 x i8], i8, [3 x i8], i8, [3 x i8], i8, i8, i16, i16, i16, i32 }
%struct.fcp_resp = type { [8 x i8], i16, i8, i8 }
%struct.fcp_resp_with_ext = type { %struct.fcp_resp, %struct.fcp_resp_ext }
%struct.fcp_resp_ext = type { i32, i32, i32 }
%struct.fcp_txrdy = type { i32, i32, [4 x i8] }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.se_tmr_req = type { i8, i8, i32, i64, ptr, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ft_tport = type { ptr, ptr, i32, %struct.callback_head, [64 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.ft_tpg = type { i32, ptr, ptr, %struct.list_head, %struct.se_portal_group, ptr }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.fcp_cmnd = type { %struct.scsi_lun, i8, i8, i8, i8, [16 x i8], i32 }
%struct.scsi_lun = type { [8 x i8] }

@ft_debug_logging = external dso_local local_unnamed_addr global i32, align 4
@__func__.ft_queue_status = private unnamed_addr constant [16 x i8] c"ft_queue_status\00", align 1
@ft_queue_status._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@ft_queue_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.ft_queue_status, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: Failed to send response frame %p, xid <0x%x>\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/target/tcm_fc/tfc_cmd.c\00", [32 x i8] zeroinitializer }, align 32
@ft_queue_status._entry_ptr = internal global ptr @ft_queue_status._entry, section ".printk_index", align 4
@__func__.ft_write_pending = private unnamed_addr constant [17 x i8] c"ft_write_pending\00", align 1
@ft_queue_tm_resp.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tcm_fc\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ft_queue_tm_resp\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tmr fn %d resp %d fcp code %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ft_recv_req.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ft_recv_req\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: unhandled frame r_ctl %x\0A\00", [34 x i8] zeroinitializer }, align 32
@_ft_dump_cmd.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_ft_dump_cmd\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: cmd %p sess %p seq %p se_cmd %p\0A\00", [59 x i8] zeroinitializer }, align 32
@_ft_dump_cmd.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.10, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: cmd %p data_nents %u len %u se_cmd_flags <0x%x>\0A\00", [43 x i8] zeroinitializer }, align 32
@_ft_dump_cmd.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.11, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: cmd %p sg %p page %p len 0x%x off 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@_ft_dump_cmd.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.8, ptr @.str.2, ptr @.str.12, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: cmd %p sid %x did %x ox_id %x rx_id %x seq_id %x e_stat %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/scsi/fc_frame.h\00", [40 x i8] zeroinitializer }, align 32
@ft_send_resp_status.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ft_send_resp_status\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"FCP error response: did %x oxid %x status %x code %x\0A\00", [42 x i8] zeroinitializer }, align 32
@ft_recv_cmd.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&cmd->work)\00", [34 x i8] zeroinitializer }, align 32
@ft_recv_cmd.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ft_recv_cmd\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cmd or seq allocation failure - sending BUSY\0A\00", [50 x i8] zeroinitializer }, align 32
@ft_send_work.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ft_send_work\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"r_ctl %x target_submit_cmd %p\0A\00", [33 x i8] zeroinitializer }, align 32
@ft_send_tm.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ft_send_tm\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid FCP tm_flags %x\0A\00", [39 x i8] zeroinitializer }, align 32
@ft_recv_seq.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.23, ptr @.str.2, ptr @.str.7, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ft_recv_seq\00", [20 x i8] zeroinitializer }, align 32
@switch.table.ft_queue_tm_resp = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 5, i32 9, i32 5, i32 4], [44 x i8] zeroinitializer }, align 32
@switch.table.ft_send_work = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 33, i32 34, i32 32, i32 36], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 4, i64 16, i64 32, i64 64]
@___asan_gen_.25 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 154, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 404, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 479, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 40, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 43, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 48, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 56, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [27 x i8] c"../include/scsi/fc_frame.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 254, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 282, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 449, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 454, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 562, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 364, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [35 x i8] c"../drivers/target/tcm_fc/tfc_cmd.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 256, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [30 x i8] c"switch.table.ft_queue_tm_resp\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [26 x i8] c"switch.table.ft_send_work\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @ft_queue_status._entry, ptr @ft_queue_status._entry_ptr, ptr @ft_queue_status._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ft_recv_cmd.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @switch.table.ft_queue_tm_resp, ptr @switch.table.ft_send_work], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_queue_status._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_queue_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ft_recv_cmd.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ft_queue_tm_resp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ft_send_work to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ft_dump_cmd(ptr noundef %cmd, ptr noundef %caller) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ft_debug_logging to i32))
  %0 = load i32, ptr @ft_debug_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !67

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @_ft_dump_cmd(ptr noundef %cmd, ptr noundef %caller)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_ft_dump_cmd(ptr noundef %cmd, ptr noundef %caller) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_ft_dump_cmd.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_ft_dump_cmd, %if.then)) #5
          to label %do.body4 [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %se_cmd1 = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 8
  %seq = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %seq, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_ft_dump_cmd.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.9, ptr noundef %caller, ptr noundef %cmd, ptr noundef %1, ptr noundef %3, ptr noundef %se_cmd1) #5
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_ft_dump_cmd.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_ft_dump_cmd, %if.then16)) #5
          to label %do.end19 [label %if.then16], !srcloc !68

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #7
  %t_data_nents = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 2, i32 41
  %4 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t_data_nents, align 4
  %data_length = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 2, i32 12
  %6 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_length, align 4
  %se_cmd_flags = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 2, i32 11
  %8 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %se_cmd_flags, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_ft_dump_cmd.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.10, ptr noundef %caller, ptr noundef %cmd, i32 noundef %5, i32 noundef %7, i32 noundef %9) #5
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %do.body4
  %t_data_nents20 = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 2, i32 41
  %10 = ptrtoint ptr %t_data_nents20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t_data_nents20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp101.not = icmp eq i32 %11, 0
  br i1 %cmp101.not, label %do.end19.for.end_crit_edge, label %do.body21.preheader

do.end19.for.end_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body21.preheader:                              ; preds = %do.end19
  %t_data_sg = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 2, i32 39
  %12 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %t_data_sg, align 4
  br label %do.body21

do.body21:                                        ; preds = %for.inc.do.body21_crit_edge, %do.body21.preheader
  %sg.0103 = phi ptr [ %call38, %for.inc.do.body21_crit_edge ], [ %13, %do.body21.preheader ]
  %count.0102 = phi i32 [ %inc, %for.inc.do.body21_crit_edge ], [ 0, %do.body21.preheader ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_ft_dump_cmd.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_ft_dump_cmd, %if.then33)) #5
          to label %for.inc [label %if.then33], !srcloc !68

if.then33:                                        ; preds = %do.body21
  %14 = ptrtoint ptr %sg.0103 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sg.0103, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !67

do.body2.i:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #5, !srcloc !69
  unreachable

sg_page.exit:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = and i32 %15, -4
  %16 = inttoptr i32 %and.i to ptr
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0103, i32 0, i32 2
  %17 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.0103, i32 0, i32 1
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %offset, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_ft_dump_cmd.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.11, ptr noundef %caller, ptr noundef %cmd, ptr noundef %sg.0103, ptr noundef %16, i32 noundef %18, i32 noundef %20) #5
  br label %for.inc

for.inc:                                          ; preds = %sg_page.exit, %do.body21
  %inc = add nuw i32 %count.0102, 1
  %call38 = tail call ptr @sg_next(ptr noundef %sg.0103) #5
  %21 = ptrtoint ptr %t_data_nents20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %t_data_nents20, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.inc.do.body21_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.do.body21_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body21

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end19.for.end_crit_edge
  %seq39 = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 1
  %23 = ptrtoint ptr %seq39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %seq39, align 4
  %tobool40.not = icmp eq ptr %24, null
  br i1 %tobool40.not, label %for.end.if.end61_crit_edge, label %if.then41

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then41:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_ft_dump_cmd.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_ft_dump_cmd, %if.then55)) #5
          to label %if.end61 [label %if.then55], !srcloc !68

if.then55:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  %sid = getelementptr i8, ptr %24, i32 -16
  %25 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sid, align 4
  %did = getelementptr i8, ptr %24, i32 -12
  %27 = ptrtoint ptr %did to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %did, align 32
  %oxid = getelementptr i8, ptr %24, i32 -26
  %29 = ptrtoint ptr %oxid to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %oxid, align 2
  %conv = zext i16 %30 to i32
  %rxid = getelementptr i8, ptr %24, i32 -24
  %31 = ptrtoint ptr %rxid to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rxid, align 4
  %conv56 = zext i16 %32 to i32
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %24, align 4
  %conv57 = zext i8 %34 to i32
  %esb_stat = getelementptr i8, ptr %24, i32 -36
  %35 = ptrtoint ptr %esb_stat to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %esb_stat, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_ft_dump_cmd.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.12, ptr noundef %caller, ptr noundef %cmd, i32 noundef %26, i32 noundef %28, i32 noundef %conv, i32 noundef %conv56, i32 noundef %conv57, i32 noundef %36) #5
  br label %if.end61

if.end61:                                         ; preds = %if.then55, %if.then41, %for.end.if.end61_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ft_release_cmd(ptr noundef readonly %se_cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -8
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %entry.ft_free_cmd.exit_crit_edge, label %if.end.i

entry.ft_free_cmd.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ft_free_cmd.exit

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %req_frame.i = getelementptr i8, ptr %se_cmd, i32 440
  %2 = ptrtoint ptr %req_frame.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req_frame.i, align 8
  %fr_seq.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 3, i32 4
  %4 = ptrtoint ptr %fr_seq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fr_seq.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then3.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @fc_seq_release(ptr noundef nonnull %5) #5
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then3.i, %if.end.i.if.end8.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %3, i32 noundef 0) #5
  %se_sess.i = getelementptr inbounds %struct.ft_sess, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %se_sess.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_sess.i, align 4
  %sess_tag_pool.i.i = getelementptr inbounds %struct.se_session, ptr %7, i32 0, i32 14
  %map_tag.i.i = getelementptr i8, ptr %se_cmd, i32 36
  %8 = ptrtoint ptr %map_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %map_tag.i.i, align 4
  %map_cpu.i.i = getelementptr i8, ptr %se_cmd, i32 40
  %10 = ptrtoint ptr %map_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %map_cpu.i.i, align 8
  tail call void @sbitmap_queue_clear(ptr noundef %sess_tag_pool.i.i, i32 noundef %9, i32 noundef %11) #5
  tail call void @ft_sess_put(ptr noundef %1) #5
  br label %ft_free_cmd.exit

ft_free_cmd.exit:                                 ; preds = %if.end8.i, %entry.ft_free_cmd.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ft_check_stop_free(ptr noundef %se_cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @transport_generic_free_cmd(ptr noundef %se_cmd, i32 noundef 0) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_generic_free_cmd(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ft_queue_status(ptr noundef %se_cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %aborted = getelementptr i8, ptr %se_cmd, i32 588
  %0 = ptrtoint ptr %aborted to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %aborted, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ft_debug_logging to i32))
  %2 = load i32, ptr @ft_debug_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.ft_dump_cmd.exit_crit_edge, label %if.then.i, !prof !67

if.end.ft_dump_cmd.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %ft_dump_cmd.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -8
  tail call fastcc void @_ft_dump_cmd(ptr noundef %add.ptr, ptr noundef nonnull @__func__.ft_queue_status) #5
  br label %ft_dump_cmd.exit

ft_dump_cmd.exit:                                 ; preds = %if.then.i, %if.end.ft_dump_cmd.exit_crit_edge
  %seq = getelementptr i8, ptr %se_cmd, i32 -4
  %3 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %seq, align 4
  %lp = getelementptr i8, ptr %4, i32 -40
  %5 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lp, align 4
  %scsi_sense_length = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 2
  %7 = ptrtoint ptr %scsi_sense_length to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %scsi_sense_length, align 2
  %conv = zext i16 %8 to i32
  %add = add nuw nsw i32 %conv, 24
  %rem.i = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool1.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then.i98

if.then.i98:                                      ; preds = %ft_dump_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call ptr @fc_frame_alloc_fill(ptr noundef %6, i32 noundef %add) #5
  br label %fc_frame_alloc.exit

if.else.i:                                        ; preds = %ft_dump_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call2.i = tail call ptr @_fc_frame_alloc(i32 noundef %add) #5
  br label %fc_frame_alloc.exit

fc_frame_alloc.exit:                              ; preds = %if.else.i, %if.then.i98
  %fp.0.i = phi ptr [ %call.i, %if.then.i98 ], [ %call2.i, %if.else.i ]
  %tobool4.not = icmp eq ptr %fp.0.i, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %fc_frame_alloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %scsi_status = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 1
  %9 = ptrtoint ptr %scsi_status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 40, ptr %scsi_status, align 4
  br label %cleanup

if.end6:                                          ; preds = %fc_frame_alloc.exit
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 6
  %10 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len1.i, align 4
  %add.i = add nuw nsw i32 %conv, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add.i)
  %cmp.not.i = icmp ult i32 %11, %add.i
  br i1 %cmp.not.i, label %if.end6.fc_frame_payload_get.exit_crit_edge, label %if.then.i99

if.end6.fc_frame_payload_get.exit_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %fc_frame_payload_get.exit

if.then.i99:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %11)
  %cmp.i.i = icmp ult i32 %11, 24
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i99.fc_frame_header_get.exit.i_crit_edge, !prof !70

if.then.i99.fc_frame_header_get.exit.i_crit_edge: ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #7
  br label %fc_frame_header_get.exit.i

do.end.i.i:                                       ; preds = %if.then.i99
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 161, i32 noundef 9, ptr noundef null) #5
  br label %fc_frame_header_get.exit.i

fc_frame_header_get.exit.i:                       ; preds = %do.end.i.i, %if.then.i99.fc_frame_header_get.exit.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %13, i32 1
  br label %fc_frame_payload_get.exit

fc_frame_payload_get.exit:                        ; preds = %fc_frame_header_get.exit.i, %if.end6.fc_frame_payload_get.exit_crit_edge
  %pp.0.i = phi ptr [ %add.ptr.i, %fc_frame_header_get.exit.i ], [ null, %if.end6.fc_frame_payload_get.exit_crit_edge ]
  %14 = call ptr @memset(ptr %pp.0.i, i32 0, i32 %add)
  %scsi_status8 = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 1
  %15 = ptrtoint ptr %scsi_status8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %scsi_status8, align 4
  %fr_status = getelementptr inbounds %struct.fcp_resp, ptr %pp.0.i, i32 0, i32 3
  %17 = ptrtoint ptr %fr_status to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %fr_status, align 1
  %18 = ptrtoint ptr %scsi_sense_length to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %scsi_sense_length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool11.not = icmp eq i16 %19, 0
  br i1 %tobool11.not, label %fc_frame_payload_get.exit.if.end17_crit_edge, label %if.then12

fc_frame_payload_get.exit.if.end17_crit_edge:     ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then12:                                        ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv10 = zext i16 %19 to i32
  %fr_flags = getelementptr inbounds %struct.fcp_resp, ptr %pp.0.i, i32 0, i32 2
  %20 = ptrtoint ptr %fr_flags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fr_flags, align 2
  %22 = or i8 %21, 2
  store i8 %22, ptr %fr_flags, align 2
  %fr_sns_len = getelementptr inbounds %struct.fcp_resp_with_ext, ptr %pp.0.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %fr_sns_len to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv10, ptr %fr_sns_len, align 4
  %add.ptr16 = getelementptr %struct.fcp_resp_with_ext, ptr %pp.0.i, i32 1
  %sense_buffer = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 16
  %24 = ptrtoint ptr %sense_buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sense_buffer, align 8
  %26 = call ptr @memcpy(ptr %add.ptr16, ptr %25, i32 %conv10)
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %fc_frame_payload_get.exit.if.end17_crit_edge
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %27 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %se_cmd_flags, align 8
  %and = and i32 %28, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end17.if.end36_crit_edge, label %if.then19

if.end17.if.end36_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %and21 = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %fr_flags30 = getelementptr inbounds %struct.fcp_resp, ptr %pp.0.i, i32 0, i32 2
  %29 = ptrtoint ptr %fr_flags30 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fr_flags30, align 2
  %. = select i1 %tobool22.not, i8 8, i8 4
  %31 = or i8 %30, %.
  store i8 %31, ptr %fr_flags30, align 2
  %residual_count = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 13
  %32 = ptrtoint ptr %residual_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %residual_count, align 8
  %ext35 = getelementptr inbounds %struct.fcp_resp_with_ext, ptr %pp.0.i, i32 0, i32 1
  %34 = ptrtoint ptr %ext35 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %ext35, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then19, %if.end17.if.end36_crit_edge
  %35 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %seq, align 4
  %call38 = tail call ptr @fc_seq_start_next(ptr noundef %36) #5
  %37 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call38, ptr %seq, align 4
  %did = getelementptr i8, ptr %4, i32 -12
  %38 = ptrtoint ptr %did to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %did, align 32
  %sid = getelementptr i8, ptr %4, i32 -16
  %40 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sid, align 4
  %42 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %43)
  %cmp.i.i100 = icmp ult i32 %43, 24
  br i1 %cmp.i.i100, label %do.end.i.i101, label %if.end36.fc_fill_fc_hdr.exit_crit_edge, !prof !70

if.end36.fc_fill_fc_hdr.exit_crit_edge:           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %fc_fill_fc_hdr.exit

do.end.i.i101:                                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 161, i32 noundef 9, ptr noundef null) #5
  br label %fc_fill_fc_hdr.exit

fc_fill_fc_hdr.exit:                              ; preds = %do.end.i.i101, %if.end36.fc_fill_fc_hdr.exit_crit_edge
  %data.i.i.i102 = getelementptr inbounds %struct.sk_buff, ptr %fp.0.i, i32 0, i32 19
  %44 = ptrtoint ptr %data.i.i.i102 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data.i.i.i102, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 7, ptr %45, align 4
  %fh_d_id.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %45, i32 0, i32 1
  %shr.i.i.i = lshr i32 %39, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i8
  %47 = ptrtoint ptr %fh_d_id.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv.i.i.i, ptr %fh_d_id.i.i, align 1
  %shr1.i.i.i = lshr i32 %39, 8
  %conv3.i.i.i = trunc i32 %shr1.i.i.i to i8
  %arrayidx4.i.i.i = getelementptr %struct.fc_frame_header, ptr %45, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv3.i.i.i, ptr %arrayidx4.i.i.i, align 1
  %conv6.i.i.i = trunc i32 %39 to i8
  %arrayidx7.i.i.i = getelementptr %struct.fc_frame_header, ptr %45, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv6.i.i.i, ptr %arrayidx7.i.i.i, align 1
  %fh_s_id.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %45, i32 0, i32 3
  %shr.i1.i.i = lshr i32 %41, 16
  %conv.i2.i.i = trunc i32 %shr.i1.i.i to i8
  %50 = ptrtoint ptr %fh_s_id.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i2.i.i, ptr %fh_s_id.i.i, align 1
  %shr1.i3.i.i = lshr i32 %41, 8
  %conv3.i4.i.i = trunc i32 %shr1.i3.i.i to i8
  %arrayidx4.i5.i.i = getelementptr %struct.fc_frame_header, ptr %45, i32 0, i32 3, i32 1
  %51 = ptrtoint ptr %arrayidx4.i5.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv3.i4.i.i, ptr %arrayidx4.i5.i.i, align 1
  %conv6.i6.i.i = trunc i32 %41 to i8
  %arrayidx7.i7.i.i = getelementptr %struct.fc_frame_header, ptr %45, i32 0, i32 3, i32 2
  %52 = ptrtoint ptr %arrayidx7.i7.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv6.i6.i.i, ptr %arrayidx7.i7.i.i, align 1
  %fh_type.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %45, i32 0, i32 4
  %53 = ptrtoint ptr %fh_type.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 8, ptr %fh_type.i.i, align 4
  %fh_f_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %45, i32 0, i32 5
  %54 = ptrtoint ptr %fh_f_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -104, ptr %fh_f_ctl.i.i, align 1
  %arrayidx4.i12.i.i = getelementptr %struct.fc_frame_header, ptr %45, i32 0, i32 5, i32 1
  %55 = ptrtoint ptr %arrayidx4.i12.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %arrayidx4.i12.i.i, align 1
  %arrayidx7.i14.i.i = getelementptr %struct.fc_frame_header, ptr %45, i32 0, i32 5, i32 2
  %56 = ptrtoint ptr %arrayidx7.i14.i.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %arrayidx7.i14.i.i, align 1
  %fh_cs_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %45, i32 0, i32 2
  %57 = ptrtoint ptr %fh_cs_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %fh_cs_ctl.i.i, align 4
  %fh_df_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %45, i32 0, i32 7
  %58 = ptrtoint ptr %fh_df_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %fh_df_ctl.i.i, align 1
  %fh_parm_offset.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %45, i32 0, i32 11
  %59 = ptrtoint ptr %fh_parm_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %fh_parm_offset.i.i, align 4
  %60 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %seq, align 4
  %call41 = tail call i32 @fc_seq_send(ptr noundef %6, ptr noundef %61, ptr noundef nonnull %fp.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end52, label %if.then43

if.then43:                                        ; preds = %fc_fill_fc_hdr.exit
  %call44 = tail call i32 @___ratelimit(ptr noundef nonnull @ft_queue_status._rs, ptr noundef nonnull @__func__.ft_queue_status) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then43.if.end50_crit_edge, label %do.end

if.then43.if.end50_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

do.end:                                           ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  %xid = getelementptr i8, ptr %4, i32 -28
  %62 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %xid, align 16
  %conv48 = zext i16 %63 to i32
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.ft_queue_status, ptr noundef nonnull %fp.0.i, i32 noundef %conv48) #8
  br label %if.end50

if.end50:                                         ; preds = %do.end, %if.then43.if.end50_crit_edge
  %64 = ptrtoint ptr %scsi_status8 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 40, ptr %scsi_status8, align 4
  br label %cleanup

if.end52:                                         ; preds = %fc_fill_fc_hdr.exit
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %seq, align 4
  tail call void @fc_exch_done(ptr noundef %66) #5
  %call55 = tail call i32 @target_put_sess_cmd(ptr noundef %se_cmd) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end50, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end50 ], [ 0, %if.end52 ], [ -12, %if.then5 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_seq_start_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fc_seq_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_exch_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_put_sess_cmd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ft_write_pending(ptr noundef %se_cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ft_debug_logging to i32))
  %0 = load i32, ptr @ft_debug_logging, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.ft_dump_cmd.exit_crit_edge, label %if.then.i, !prof !67

entry.ft_dump_cmd.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ft_dump_cmd.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -8
  tail call fastcc void @_ft_dump_cmd(ptr noundef %add.ptr, ptr noundef nonnull @__func__.ft_write_pending) #5
  br label %ft_dump_cmd.exit

ft_dump_cmd.exit:                                 ; preds = %if.then.i, %entry.ft_dump_cmd.exit_crit_edge
  %aborted = getelementptr i8, ptr %se_cmd, i32 588
  %1 = ptrtoint ptr %aborted to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %aborted, align 4
  %2 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.end, label %ft_dump_cmd.exit.cleanup_crit_edge

ft_dump_cmd.exit.cleanup_crit_edge:               ; preds = %ft_dump_cmd.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %ft_dump_cmd.exit
  %seq = getelementptr i8, ptr %se_cmd, i32 -4
  %3 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %seq, align 4
  %lp = getelementptr i8, ptr %4, i32 -40
  %5 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lp, align 4
  %call2.i = tail call ptr @_fc_frame_alloc(i32 noundef 12) #5
  %tobool4.not = icmp eq ptr %call2.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 6
  %7 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %8)
  %cmp.not.i = icmp ult i32 %8, 36
  br i1 %cmp.not.i, label %if.end6.fc_frame_payload_get.exit_crit_edge, label %fc_frame_header_get.exit.i

if.end6.fc_frame_payload_get.exit_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %fc_frame_payload_get.exit

fc_frame_header_get.exit.i:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %10, i32 1
  br label %fc_frame_payload_get.exit

fc_frame_payload_get.exit:                        ; preds = %fc_frame_header_get.exit.i, %if.end6.fc_frame_payload_get.exit_crit_edge
  %pp.0.i = phi ptr [ %add.ptr.i, %fc_frame_header_get.exit.i ], [ null, %if.end6.fc_frame_payload_get.exit_crit_edge ]
  %11 = call ptr @memset(ptr %pp.0.i, i32 0, i32 12)
  %data_length = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 12
  %12 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_length, align 4
  %ft_burst_len = getelementptr inbounds %struct.fcp_txrdy, ptr %pp.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %ft_burst_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %ft_burst_len, align 4
  %15 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %seq, align 4
  %call9 = tail call ptr @fc_seq_start_next(ptr noundef %16) #5
  %17 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9, ptr %seq, align 4
  %did = getelementptr i8, ptr %4, i32 -12
  %18 = ptrtoint ptr %did to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %did, align 32
  %sid = getelementptr i8, ptr %4, i32 -16
  %20 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sid, align 4
  %22 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %23)
  %cmp.i.i66 = icmp ult i32 %23, 24
  br i1 %cmp.i.i66, label %do.end.i.i67, label %fc_frame_payload_get.exit.fc_fill_fc_hdr.exit_crit_edge, !prof !70

fc_frame_payload_get.exit.fc_fill_fc_hdr.exit_crit_edge: ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %fc_fill_fc_hdr.exit

do.end.i.i67:                                     ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 161, i32 noundef 9, ptr noundef null) #5
  br label %fc_fill_fc_hdr.exit

fc_fill_fc_hdr.exit:                              ; preds = %do.end.i.i67, %fc_frame_payload_get.exit.fc_fill_fc_hdr.exit_crit_edge
  %data.i.i.i68 = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 19
  %24 = ptrtoint ptr %data.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i.i68, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 5, ptr %25, align 4
  %fh_d_id.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %25, i32 0, i32 1
  %shr.i.i.i = lshr i32 %19, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i8
  %27 = ptrtoint ptr %fh_d_id.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i.i.i, ptr %fh_d_id.i.i, align 1
  %shr1.i.i.i = lshr i32 %19, 8
  %conv3.i.i.i = trunc i32 %shr1.i.i.i to i8
  %arrayidx4.i.i.i = getelementptr %struct.fc_frame_header, ptr %25, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv3.i.i.i, ptr %arrayidx4.i.i.i, align 1
  %conv6.i.i.i = trunc i32 %19 to i8
  %arrayidx7.i.i.i = getelementptr %struct.fc_frame_header, ptr %25, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv6.i.i.i, ptr %arrayidx7.i.i.i, align 1
  %fh_s_id.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %25, i32 0, i32 3
  %shr.i1.i.i = lshr i32 %21, 16
  %conv.i2.i.i = trunc i32 %shr.i1.i.i to i8
  %30 = ptrtoint ptr %fh_s_id.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv.i2.i.i, ptr %fh_s_id.i.i, align 1
  %shr1.i3.i.i = lshr i32 %21, 8
  %conv3.i4.i.i = trunc i32 %shr1.i3.i.i to i8
  %arrayidx4.i5.i.i = getelementptr %struct.fc_frame_header, ptr %25, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %arrayidx4.i5.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv3.i4.i.i, ptr %arrayidx4.i5.i.i, align 1
  %conv6.i6.i.i = trunc i32 %21 to i8
  %arrayidx7.i7.i.i = getelementptr %struct.fc_frame_header, ptr %25, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %arrayidx7.i7.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv6.i6.i.i, ptr %arrayidx7.i7.i.i, align 1
  %fh_type.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %25, i32 0, i32 4
  %33 = ptrtoint ptr %fh_type.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 8, ptr %fh_type.i.i, align 4
  %fh_f_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %25, i32 0, i32 5
  %34 = ptrtoint ptr %fh_f_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -119, ptr %fh_f_ctl.i.i, align 1
  %arrayidx4.i12.i.i = getelementptr %struct.fc_frame_header, ptr %25, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %arrayidx4.i12.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx4.i12.i.i, align 1
  %arrayidx7.i14.i.i = getelementptr %struct.fc_frame_header, ptr %25, i32 0, i32 5, i32 2
  %36 = ptrtoint ptr %arrayidx7.i14.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx7.i14.i.i, align 1
  %fh_cs_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %25, i32 0, i32 2
  %37 = ptrtoint ptr %fh_cs_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %fh_cs_ctl.i.i, align 4
  %fh_df_ctl.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %25, i32 0, i32 7
  %38 = ptrtoint ptr %fh_df_ctl.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %fh_df_ctl.i.i, align 1
  %fh_parm_offset.i.i = getelementptr inbounds %struct.fc_frame_header, ptr %25, i32 0, i32 11
  %39 = ptrtoint ptr %fh_parm_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %fh_parm_offset.i.i, align 4
  %40 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %41)
  %cmp.i = icmp ult i32 %41, 24
  br i1 %cmp.i, label %do.end.i, label %fc_fill_fc_hdr.exit.fc_frame_header_get.exit_crit_edge, !prof !70

fc_fill_fc_hdr.exit.fc_frame_header_get.exit_crit_edge: ; preds = %fc_fill_fc_hdr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %fc_fill_fc_hdr.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 161, i32 noundef 9, ptr noundef null) #5
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %fc_fill_fc_hdr.exit.fc_frame_header_get.exit_crit_edge
  %42 = ptrtoint ptr %data.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i.i.i68, align 4
  %fh_f_ctl = getelementptr inbounds %struct.fc_frame_header, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %fh_f_ctl to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %fh_f_ctl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %tobool13.not = icmp sgt i8 %45, -1
  br i1 %tobool13.not, label %fc_frame_header_get.exit.if.end32_crit_edge, label %if.then14

fc_frame_header_get.exit.if.end32_crit_edge:      ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then14:                                        ; preds = %fc_frame_header_get.exit
  %xid = getelementptr i8, ptr %4, i32 -28
  %46 = ptrtoint ptr %xid to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %xid, align 16
  %lro_xid = getelementptr inbounds %struct.fc_lport, ptr %6, i32 0, i32 32
  %48 = ptrtoint ptr %lro_xid to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %lro_xid, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %47, i16 %49)
  %cmp.not = icmp ugt i16 %47, %49
  br i1 %cmp.not, label %if.then14.if.end32_crit_edge, label %land.lhs.true

if.then14.if.end32_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

land.lhs.true:                                    ; preds = %if.then14
  %50 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %51)
  %cmp18 = icmp eq i8 %51, 5
  br i1 %cmp18, label %if.then20, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then20:                                        ; preds = %land.lhs.true
  %se_cmd_flags = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 11
  %52 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %se_cmd_flags, align 8
  %and21 = and i32 %53, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then20.if.end32_crit_edge, label %land.lhs.true23

if.then20.if.end32_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

land.lhs.true23:                                  ; preds = %if.then20
  %ddp_target = getelementptr inbounds %struct.fc_lport, ptr %6, i32 0, i32 9, i32 4
  %54 = ptrtoint ptr %ddp_target to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ddp_target, align 4
  %t_data_sg = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 39
  %56 = ptrtoint ptr %t_data_sg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %t_data_sg, align 4
  %t_data_nents = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 41
  %58 = ptrtoint ptr %t_data_nents to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %t_data_nents, align 4
  %call25 = tail call i32 %55(ptr noundef %6, i16 noundef zeroext %47, ptr noundef %57, i32 noundef %59) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true23.if.end32_crit_edge, label %if.then27

land.lhs.true23.if.end32_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then27:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %aborted to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load28 = load i8, ptr %aborted, align 4
  %bf.set = or i8 %bf.load28, -128
  store i8 %bf.set, ptr %aborted, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %land.lhs.true23.if.end32_crit_edge, %if.then20.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %if.then14.if.end32_crit_edge, %fc_frame_header_get.exit.if.end32_crit_edge
  %61 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %seq, align 4
  %call34 = tail call i32 @fc_seq_send(ptr noundef %6, ptr noundef %62, ptr noundef nonnull %call2.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end.cleanup_crit_edge, %ft_dump_cmd.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end32 ], [ 0, %ft_dump_cmd.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ft_get_cmd_state(ptr nocapture noundef readnone %se_cmd) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ft_queue_tm_resp(ptr noundef %se_cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %se_cmd, i32 -8
  %se_tmr_req = getelementptr inbounds %struct.se_cmd, ptr %se_cmd, i32 0, i32 22
  %0 = ptrtoint ptr %se_tmr_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tmr_req, align 8
  %aborted = getelementptr i8, ptr %se_cmd, i32 588
  %2 = ptrtoint ptr %aborted to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %aborted, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %response = getelementptr inbounds %struct.se_tmr_req, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %response, align 1
  %switch.tableidx = add i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %switch.tableidx)
  %6 = icmp ult i8 %switch.tableidx, 5
  br i1 %6, label %switch.lookup, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ft_queue_tm_resp, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.body

do.body:                                          ; preds = %switch.lookup, %if.end.do.body_crit_edge
  %code.0 = phi i32 [ %switch.load, %switch.lookup ], [ 5, %if.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_queue_tm_resp.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_queue_tm_resp, %if.then8)) #5
          to label %do.end [label %if.then8], !srcloc !68

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 8
  %conv9 = zext i8 %10 to i32
  %11 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %response, align 1
  %conv11 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_queue_tm_resp.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.5, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %code.0) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %tport.i = getelementptr inbounds %struct.ft_sess, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %tport.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tport.i, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %req_frame.i = getelementptr i8, ptr %se_cmd, i32 440
  %19 = ptrtoint ptr %req_frame.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %req_frame.i, align 8
  tail call fastcc void @ft_send_resp_status(ptr noundef %18, ptr noundef %20, i32 noundef 0, i32 noundef %code.0) #5
  %call14 = tail call i32 @target_put_sess_cmd(ptr noundef %se_cmd) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ft_aborted_task(ptr nocapture noundef %se_cmd) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ft_recv_req(ptr noundef %sess, ptr noundef %fp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %1)
  %cmp.i = icmp ult i32 %1, 24
  br i1 %cmp.i, label %do.end.i, label %entry.fc_frame_header_get.exit_crit_edge, !prof !70

entry.fc_frame_header_get.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 161, i32 noundef 9, ptr noundef null) #5
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %entry.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %5)
  %cond = icmp eq i8 %5, 6
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @ft_recv_cmd(ptr noundef %sess, ptr noundef %fp)
  br label %sw.epilog

do.body:                                          ; preds = %fc_frame_header_get.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_recv_req.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_recv_req, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 4
  %conv6 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_recv_req.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, i32 noundef %conv6) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #5
  tail call void @ft_sess_put(ptr noundef %sess) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ft_recv_cmd(ptr noundef %sess, ptr noundef %fp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tport = getelementptr inbounds %struct.ft_sess, ptr %sess, i32 0, i32 4
  %0 = ptrtoint ptr %tport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tport, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %se_sess2 = getelementptr inbounds %struct.ft_sess, ptr %sess, i32 0, i32 5
  %4 = ptrtoint ptr %se_sess2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_sess2, align 4
  %sess_tag_pool = getelementptr inbounds %struct.se_session, ptr %5, i32 0, i32 14
  %6 = tail call i32 @llvm.read_register.i32(metadata !57) #5
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %9, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !71
  %10 = tail call i32 @llvm.read_register.i32(metadata !57) #5
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu1.i, align 4
  %call2.i = tail call i32 @__sbitmap_queue_get(ptr noundef %sess_tag_pool) #5
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !72
  %14 = tail call i32 @llvm.read_register.i32(metadata !57) #5
  %and.i.i.i6.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i6.i to ptr
  %preempt_count.i.i7.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i7.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i7.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %entry.do.body18_crit_edge, label %if.end

entry.do.body18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body18

if.end:                                           ; preds = %entry
  %sess_cmd_map = getelementptr inbounds %struct.se_session, ptr %5, i32 0, i32 13
  %18 = ptrtoint ptr %sess_cmd_map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sess_cmd_map, align 4
  %arrayidx = getelementptr %struct.ft_cmd, ptr %19, i32 %call2.i
  %20 = call ptr @memset(ptr %arrayidx, i32 0, i32 608)
  %map_tag = getelementptr %struct.ft_cmd, ptr %19, i32 %call2.i, i32 2, i32 8
  %21 = ptrtoint ptr %map_tag to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call2.i, ptr %map_tag, align 4
  %map_cpu = getelementptr %struct.ft_cmd, ptr %19, i32 %call2.i, i32 2, i32 9
  %22 = ptrtoint ptr %map_cpu to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %13, ptr %map_cpu, align 8
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %sess, ptr %arrayidx, align 8
  %call5 = tail call ptr @fc_seq_assign(ptr noundef %3, ptr noundef %fp) #5
  %seq = getelementptr %struct.ft_cmd, ptr %19, i32 %call2.i, i32 1
  %24 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5, ptr %seq, align 4
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %map_tag to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %map_tag, align 4
  %27 = ptrtoint ptr %map_cpu to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %map_cpu, align 8
  tail call void @sbitmap_queue_clear(ptr noundef %sess_tag_pool, i32 noundef %26, i32 noundef %28) #5
  br label %do.body18

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %req_frame = getelementptr %struct.ft_cmd, ptr %19, i32 %call2.i, i32 3
  %29 = ptrtoint ptr %req_frame to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %fp, ptr %req_frame, align 8
  %work = getelementptr %struct.ft_cmd, ptr %19, i32 %call2.i, i32 5
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #5
  %30 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr %struct.ft_cmd, ptr %19, i32 %call2.i, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @ft_recv_cmd.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry13 = getelementptr %struct.ft_cmd, ptr %19, i32 %call2.i, i32 5, i32 1
  %31 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i = getelementptr %struct.ft_cmd, ptr %19, i32 %call2.i, i32 5, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry13, ptr %prev.i, align 4
  %func = getelementptr %struct.ft_cmd, ptr %19, i32 %call2.i, i32 5, i32 2
  %33 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @ft_send_work, ptr %func, align 4
  %34 = ptrtoint ptr %tport to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tport, align 8
  %tpg = getelementptr inbounds %struct.ft_tport, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tpg, align 4
  %workqueue = getelementptr inbounds %struct.ft_tpg, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %workqueue, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %work) #5
  br label %cleanup

do.body18:                                        ; preds = %if.then7, %entry.do.body18_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_recv_cmd.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_recv_cmd, %if.then23)) #5
          to label %do.end26 [label %if.then23], !srcloc !68

if.then23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_recv_cmd.__UNIQUE_ID_ddebug315, ptr noundef nonnull @.str.18) #5
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %do.body18
  tail call fastcc void @ft_send_resp_status(ptr noundef %3, ptr noundef %fp, i32 noundef 8, i32 noundef 0)
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #5
  tail call void @ft_sess_put(ptr noundef %sess) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %if.end9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ft_sess_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_seq_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_frame_alloc_fill(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_fc_frame_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ft_send_resp_status(ptr noundef %lport, ptr noundef %rx_fp, i32 noundef %status, i32 noundef %code) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %rx_fp, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %1)
  %cmp.i = icmp ult i32 %1, 24
  br i1 %cmp.i, label %do.end.i, label %entry.fc_frame_header_get.exit_crit_edge, !prof !70

entry.fc_frame_header_get.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 161, i32 noundef 9, ptr noundef null) #5
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %entry.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %rx_fp, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_send_resp_status.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_send_resp_status, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  %fh_s_id = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %fh_s_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fh_s_id, align 1
  %conv.i = zext i8 %5 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx1.i = getelementptr %struct.fc_frame_header, ptr %3, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %7 to i32
  %shl3.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl3.i, %shl.i
  %arrayidx4.i = getelementptr %struct.fc_frame_header, ptr %3, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %9 to i32
  %or6.i = or i32 %or.i, %conv5.i
  %fh_ox_id = getelementptr inbounds %struct.fc_frame_header, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %fh_ox_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %fh_ox_id, align 4
  %conv = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_send_resp_status.__UNIQUE_ID_ddebug312, ptr noundef nonnull @.str.15, i32 noundef %or6.i, i32 noundef %conv, i32 noundef %status, i32 noundef %code) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %cmp = icmp eq i32 %status, 0
  %spec.select = select i1 %cmp, i32 32, i32 24
  %call2.i = tail call ptr @_fc_frame_alloc(i32 noundef %spec.select) #5
  %tobool9.not = icmp eq ptr %call2.i, null
  br i1 %tobool9.not, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 6
  %12 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len1.i, align 4
  %add.i = add nuw nsw i32 %spec.select, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %add.i)
  %cmp.not.i = icmp ult i32 %13, %add.i
  br i1 %cmp.not.i, label %if.end11.fc_frame_payload_get.exit_crit_edge, label %if.then.i

if.end11.fc_frame_payload_get.exit_crit_edge:     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %fc_frame_payload_get.exit

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %13)
  %cmp.i.i = icmp ult i32 %13, 24
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.fc_frame_header_get.exit.i_crit_edge, !prof !70

if.then.i.fc_frame_header_get.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fc_frame_header_get.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 161, i32 noundef 9, ptr noundef null) #5
  br label %fc_frame_header_get.exit.i

fc_frame_header_get.exit.i:                       ; preds = %do.end.i.i, %if.then.i.fc_frame_header_get.exit.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %15, i32 1
  br label %fc_frame_payload_get.exit

fc_frame_payload_get.exit:                        ; preds = %fc_frame_header_get.exit.i, %if.end11.fc_frame_payload_get.exit_crit_edge
  %pp.0.i = phi ptr [ %add.ptr.i, %fc_frame_header_get.exit.i ], [ null, %if.end11.fc_frame_payload_get.exit_crit_edge ]
  %16 = call ptr @memset(ptr %pp.0.i, i32 0, i32 %spec.select)
  %conv13 = trunc i32 %status to i8
  %fr_status = getelementptr inbounds %struct.fcp_resp, ptr %pp.0.i, i32 0, i32 3
  %17 = ptrtoint ptr %fr_status to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv13, ptr %fr_status, align 1
  br i1 %cmp, label %if.then16, label %fc_frame_payload_get.exit.if.end21_crit_edge

fc_frame_payload_get.exit.if.end21_crit_edge:     ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then16:                                        ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  %fr_rsp_len = getelementptr inbounds %struct.fcp_resp_with_ext, ptr %pp.0.i, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %fr_rsp_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %fr_rsp_len, align 4
  %fr_flags = getelementptr inbounds %struct.fcp_resp, ptr %pp.0.i, i32 0, i32 2
  %19 = ptrtoint ptr %fr_flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fr_flags, align 2
  %21 = or i8 %20, 1
  store i8 %21, ptr %fr_flags, align 2
  %conv20 = trunc i32 %code to i8
  %rsp_code = getelementptr %struct.fcp_resp_with_ext, ptr %pp.0.i, i32 1, i32 0, i32 0, i32 3
  %22 = ptrtoint ptr %rsp_code to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv20, ptr %rsp_code, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %fc_frame_payload_get.exit.if.end21_crit_edge
  tail call void @fc_fill_reply_hdr(ptr noundef nonnull %call2.i, ptr noundef %rx_fp, i32 noundef 7, i32 noundef 0) #5
  %fr_seq = getelementptr inbounds %struct.sk_buff, ptr %call2.i, i32 0, i32 3, i32 4
  %23 = ptrtoint ptr %fr_seq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fr_seq, align 4
  %tobool22.not = icmp eq ptr %24, null
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = tail call i32 @fc_seq_send(ptr noundef %lport, ptr noundef nonnull %24, ptr noundef nonnull %call2.i) #5
  tail call void @fc_exch_done(ptr noundef nonnull %24) #5
  br label %cleanup

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %tt = getelementptr inbounds %struct.fc_lport, ptr %lport, i32 0, i32 9
  %25 = ptrtoint ptr %tt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tt, align 4
  %call25 = tail call i32 %26(ptr noundef %lport, ptr noundef nonnull %call2.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then23, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_fill_reply_hdr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fc_seq_assign(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ft_send_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -456
  %req_frame = getelementptr i8, ptr %work, i32 -8
  %0 = ptrtoint ptr %req_frame to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req_frame, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %3)
  %cmp.i = icmp ult i32 %3, 24
  br i1 %cmp.i, label %do.end.i, label %entry.fc_frame_header_get.exit_crit_edge, !prof !70

entry.fc_frame_header_get.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 161, i32 noundef 9, ptr noundef null) #5
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %entry.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %6 = ptrtoint ptr %req_frame to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req_frame, align 8
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %9)
  %cmp.not.i = icmp ult i32 %9, 56
  br i1 %cmp.not.i, label %fc_frame_header_get.exit.err_crit_edge, label %fc_frame_payload_get.exit

fc_frame_header_get.exit.err_crit_edge:           ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

fc_frame_payload_get.exit:                        ; preds = %fc_frame_header_get.exit
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %11, i32 1
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %fc_frame_payload_get.exit.err_crit_edge, label %if.end

fc_frame_payload_get.exit.err_crit_edge:          ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end:                                           ; preds = %fc_frame_payload_get.exit
  %fc_flags = getelementptr %struct.fc_frame_header, ptr %11, i32 1, i32 5, i32 2
  %12 = ptrtoint ptr %fc_flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %fc_flags, align 1
  %conv = zext i8 %13 to i32
  %and = and i32 %conv, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end5:                                          ; preds = %if.end
  %fc_tm_flags = getelementptr %struct.fc_frame_header, ptr %11, i32 1, i32 5, i32 1
  %14 = ptrtoint ptr %fc_tm_flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fc_tm_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool6.not = icmp eq i8 %15, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @ft_send_tm(ptr noundef %add.ptr)
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %and11 = and i32 %conv, 3
  %16 = zext i32 %and11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and11, label %if.end8.unreachabledefault [
    i32 0, label %if.end8.sw.epilog_crit_edge
    i32 2, label %sw.bb12
    i32 1, label %sw.bb13
    i32 3, label %if.end8.err_crit_edge
  ]

if.end8.err_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end8.unreachabledefault:                       ; preds = %if.end8
  unreachable

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb12, %if.end8.sw.epilog_crit_edge
  %data_dir.0 = phi i32 [ %and11, %sw.bb13 ], [ %and11, %sw.bb12 ], [ 3, %if.end8.sw.epilog_crit_edge ]
  %fc_pri_ta = getelementptr %struct.fc_frame_header, ptr %11, i32 1, i32 5
  %17 = ptrtoint ptr %fc_pri_ta to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fc_pri_ta, align 1
  %19 = and i8 %18, 7
  %and16 = zext i8 %19 to i32
  %switch.tableidx = add nsw i32 %and16, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %20 = icmp ult i32 %switch.tableidx, 4
  br i1 %20, label %switch.lookup, label %sw.epilog.sw.epilog21_crit_edge

sw.epilog.sw.epilog21_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog21

switch.lookup:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ft_send_work, i32 0, i32 %switch.tableidx
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog21

sw.epilog21:                                      ; preds = %switch.lookup, %sw.epilog.sw.epilog21_crit_edge
  %task_attr.0 = phi i32 [ %switch.load, %switch.lookup ], [ 32, %sw.epilog.sw.epilog21_crit_edge ]
  %seq = getelementptr i8, ptr %work, i32 -452
  %22 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %seq, align 4
  tail call void @fc_seq_set_resp(ptr noundef %23, ptr noundef nonnull @ft_recv_seq, ptr noundef %add.ptr) #5
  %24 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %seq, align 4
  %rxid = getelementptr i8, ptr %25, i32 -24
  %26 = ptrtoint ptr %rxid to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rxid, align 4
  %conv26 = zext i16 %27 to i64
  %se_cmd = getelementptr i8, ptr %work, i32 -448
  %tag = getelementptr i8, ptr %work, i32 -432
  %28 = ptrtoint ptr %tag to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv26, ptr %tag, align 8
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 8
  %se_sess = getelementptr inbounds %struct.ft_sess, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %se_sess, align 4
  %ft_sense_buffer = getelementptr i8, ptr %work, i32 44
  %call28 = tail call i64 @scsilun_to_int(ptr noundef nonnull %add.ptr.i) #5
  %fc_dl = getelementptr %struct.fc_frame_header, ptr %11, i32 2, i32 2
  %33 = ptrtoint ptr %fc_dl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fc_dl, align 4
  %call29 = tail call i32 @target_init_cmd(ptr noundef %se_cmd, ptr noundef %32, ptr noundef %ft_sense_buffer, i64 noundef %call28, i32 noundef %34, i32 noundef %task_attr.0, i32 noundef %data_dir.0, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %sw.epilog21.err_crit_edge

sw.epilog21.err_crit_edge:                        ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end32:                                         ; preds = %sw.epilog21
  %fc_cdb = getelementptr %struct.fc_frame_header, ptr %11, i32 1, i32 6
  %call34 = tail call i32 @target_submit_prep(ptr noundef %se_cmd, ptr noundef %fc_cdb, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef 3264) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @target_submit(ptr noundef %se_cmd) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_send_work.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_send_work, %if.then44)) #5
          to label %cleanup [label %if.then44], !srcloc !68

if.then44:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %5, align 4
  %conv45 = zext i8 %36 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_send_work.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.20, i32 noundef %conv45, ptr noundef %add.ptr) #5
  br label %cleanup

err:                                              ; preds = %sw.epilog21.err_crit_edge, %if.end8.err_crit_edge, %if.end.err_crit_edge, %fc_frame_payload_get.exit.err_crit_edge, %fc_frame_header_get.exit.err_crit_edge
  tail call fastcc void @ft_send_resp_code_and_free(ptr noundef %add.ptr, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then44, %if.end37, %if.end32.cleanup_crit_edge, %if.then7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sbitmap_queue_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ft_send_tm(ptr noundef %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %req_frame = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 3
  %0 = ptrtoint ptr %req_frame to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req_frame, align 8
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %3)
  %cmp.not.i = icmp ult i32 %3, 56
  br i1 %cmp.not.i, label %entry.fc_frame_payload_get.exit_crit_edge, label %fc_frame_header_get.exit.i

entry.fc_frame_payload_get.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %fc_frame_payload_get.exit

fc_frame_header_get.exit.i:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i = getelementptr %struct.fc_frame_header, ptr %5, i32 1
  br label %fc_frame_payload_get.exit

fc_frame_payload_get.exit:                        ; preds = %fc_frame_header_get.exit.i, %entry.fc_frame_payload_get.exit_crit_edge
  %pp.0.i = phi ptr [ %add.ptr.i, %fc_frame_header_get.exit.i ], [ null, %entry.fc_frame_payload_get.exit_crit_edge ]
  %fc_tm_flags = getelementptr inbounds %struct.fcp_cmnd, ptr %pp.0.i, i32 0, i32 3
  %6 = ptrtoint ptr %fc_tm_flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %fc_tm_flags, align 2
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %7, label %do.body [
    i8 16, label %fc_frame_payload_get.exit.sw.epilog_crit_edge
    i8 32, label %sw.bb1
    i8 4, label %sw.bb2
    i8 2, label %sw.bb3
    i8 64, label %sw.bb4
  ]

fc_frame_payload_get.exit.sw.epilog_crit_edge:    ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %fc_frame_payload_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_send_tm.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_send_tm, %if.then)) #5
          to label %cleanup.sink.split [label %if.then], !srcloc !68

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %fc_tm_flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fc_tm_flags, align 2
  %conv9 = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_send_tm.__UNIQUE_ID_ddebug313, ptr noundef nonnull @.str.22, i32 noundef %conv9) #5
  br label %cleanup.sink.split

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %fc_frame_payload_get.exit.sw.epilog_crit_edge
  %tm_func.0 = phi i8 [ 3, %sw.bb4 ], [ %7, %sw.bb3 ], [ %7, %sw.bb2 ], [ 6, %sw.bb1 ], [ 5, %fc_frame_payload_get.exit.sw.epilog_crit_edge ]
  %se_cmd = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 2
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd, align 8
  %se_sess = getelementptr inbounds %struct.ft_sess, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %se_sess, align 4
  %ft_sense_buffer = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 6
  %call10 = tail call i64 @scsilun_to_int(ptr noundef %pp.0.i) #5
  %call11 = tail call i32 @target_submit_tmr(ptr noundef %se_cmd, ptr noundef %14, ptr noundef %ft_sense_buffer, i64 noundef %call10, ptr noundef %cmd, i8 noundef zeroext %tm_func.0, i32 noundef 3264, i64 noundef 0, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %sw.epilog.cleanup.sink.split_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.epilog.cleanup.sink.split_crit_edge, %if.then, %do.body
  %.sink = phi i32 [ 2, %do.body ], [ 2, %if.then ], [ 5, %sw.epilog.cleanup.sink.split_crit_edge ]
  tail call fastcc void @ft_send_resp_code_and_free(ptr noundef %cmd, i32 noundef %.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fc_seq_set_resp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ft_recv_seq(ptr nocapture noundef readnone %sp, ptr noundef %fp, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %fp, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %seq = getelementptr inbounds %struct.ft_cmd, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %seq, align 4
  %aborted = getelementptr inbounds %struct.ft_cmd, ptr %arg, i32 0, i32 7
  %1 = ptrtoint ptr %aborted to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %aborted, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %aborted, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %3)
  %cmp.i20 = icmp ult i32 %3, 24
  br i1 %cmp.i20, label %do.end.i, label %if.end.fc_frame_header_get.exit_crit_edge, !prof !70

if.end.fc_frame_header_get.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %fc_frame_header_get.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 161, i32 noundef 9, ptr noundef null) #5
  br label %fc_frame_header_get.exit

fc_frame_header_get.exit:                         ; preds = %do.end.i, %if.end.fc_frame_header_get.exit_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %fp, i32 0, i32 19
  %4 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cond = icmp eq i8 %7, 1
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %fc_frame_header_get.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ft_recv_write_data(ptr noundef %arg, ptr noundef %fp) #5
  br label %cleanup

do.body:                                          ; preds = %fc_frame_header_get.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ft_recv_seq.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ft_recv_seq, %if.then6)) #5
          to label %do.end [label %if.then6], !srcloc !68

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %5, align 4
  %conv8 = zext i8 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ft_recv_seq.__UNIQUE_ID_ddebug311, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.23, i32 noundef %conv8) #5
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  tail call void @ft_invl_hw_context(ptr noundef %arg) #5
  tail call void @kfree_skb_reason(ptr noundef %fp, i32 noundef 0) #5
  %se_cmd = getelementptr inbounds %struct.ft_cmd, ptr %arg, i32 0, i32 2
  %call10 = tail call i32 @transport_generic_free_cmd(ptr noundef %se_cmd, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_init_cmd(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @scsilun_to_int(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_submit_prep(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_submit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ft_send_resp_code_and_free(ptr noundef readonly %cmd, i32 noundef %code) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 8
  %tport.i = getelementptr inbounds %struct.ft_sess, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tport.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tport.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %req_frame.i = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 3
  %6 = ptrtoint ptr %req_frame.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req_frame.i, align 8
  tail call fastcc void @ft_send_resp_status(ptr noundef %5, ptr noundef %7, i32 noundef 0, i32 noundef %code) #5
  %tobool.not.i = icmp eq ptr %cmd, null
  br i1 %tobool.not.i, label %entry.ft_free_cmd.exit_crit_edge, label %if.end.i

entry.ft_free_cmd.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ft_free_cmd.exit

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd, align 8
  %10 = ptrtoint ptr %req_frame.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %req_frame.i, align 8
  %fr_seq.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 4
  %12 = ptrtoint ptr %fr_seq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fr_seq.i, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then3.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @fc_seq_release(ptr noundef nonnull %13) #5
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then3.i, %if.end.i.if.end8.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %11, i32 noundef 0) #5
  %se_sess.i = getelementptr inbounds %struct.ft_sess, ptr %9, i32 0, i32 5
  %14 = ptrtoint ptr %se_sess.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %se_sess.i, align 4
  %sess_tag_pool.i.i = getelementptr inbounds %struct.se_session, ptr %15, i32 0, i32 14
  %map_tag.i.i = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 2, i32 8
  %16 = ptrtoint ptr %map_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %map_tag.i.i, align 4
  %map_cpu.i.i = getelementptr inbounds %struct.ft_cmd, ptr %cmd, i32 0, i32 2, i32 9
  %18 = ptrtoint ptr %map_cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %map_cpu.i.i, align 8
  tail call void @sbitmap_queue_clear(ptr noundef %sess_tag_pool.i.i, i32 noundef %17, i32 noundef %19) #5
  tail call void @ft_sess_put(ptr noundef %9) #5
  br label %ft_free_cmd.exit

ft_free_cmd.exit:                                 ; preds = %if.end8.i, %entry.ft_free_cmd.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @target_submit_tmr(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ft_recv_write_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ft_invl_hw_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !29, !30, !32, !33, !35, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__func__.ft_queue_status, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/tcm_fc/tfc_cmd.c", i32 112, i32 19}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/target/tcm_fc/tfc_cmd.c", i32 154, i32 3}
!4 = !{ptr @ft_queue_status._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ft_queue_status._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @ft_queue_status._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @__func__.ft_write_pending, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/target/tcm_fc/tfc_cmd.c", i32 187, i32 19}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/target/tcm_fc/tfc_cmd.c", i32 404, i32 2}
!13 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ft_queue_tm_resp.__UNIQUE_ID_ddebug314, !12, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/target/tcm_fc/tfc_cmd.c", i32 479, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ft_recv_req.__UNIQUE_ID_ddebug316, !17, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/target/tcm_fc/tfc_cmd.c", i32 40, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @_ft_dump_cmd.__UNIQUE_ID_ddebug307, !21, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/target/tcm_fc/tfc_cmd.c", i32 43, i32 2}
!26 = !{ptr @_ft_dump_cmd.__UNIQUE_ID_ddebug308, !25, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/target/tcm_fc/tfc_cmd.c", i32 48, i32 3}
!29 = !{ptr @_ft_dump_cmd.__UNIQUE_ID_ddebug309, !28, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/target/tcm_fc/tfc_cmd.c", i32 56, i32 3}
!32 = !{ptr @_ft_dump_cmd.__UNIQUE_ID_ddebug310, !31, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/scsi/fc_frame.h", i32 254, i32 2}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/target/tcm_fc/tfc_cmd.c", i32 282, i32 2}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ft_send_resp_status.__UNIQUE_ID_ddebug312, !36, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!39 = !{ptr @ft_recv_cmd.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/target/tcm_fc/tfc_cmd.c", i32 449, i32 2}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/target/tcm_fc/tfc_cmd.c", i32 454, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ft_recv_cmd.__UNIQUE_ID_ddebug315, !43, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/target/tcm_fc/tfc_cmd.c", i32 562, i32 2}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ft_send_work.__UNIQUE_ID_ddebug317, !47, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/target/tcm_fc/tfc_cmd.c", i32 364, i32 3}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @ft_send_tm.__UNIQUE_ID_ddebug313, !51, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/target/tcm_fc/tfc_cmd.c", i32 256, i32 3}
!56 = !{ptr @ft_recv_seq.__UNIQUE_ID_ddebug311, !55, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!57 = !{!"sp"}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2148965378, i64 2148965383, i64 2148965396, i64 2148965440, i64 2148965474, i64 2148965495}
!69 = !{i64 2154350849, i64 2154351341, i64 2154350886, i64 2154350942, i64 2154350976, i64 2154351000, i64 2154351041, i64 2154351062, i64 2154351090, i64 2154351124}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{i64 2154249883}
!72 = !{i64 2154250050}
