; ModuleID = '/llk/IR_all_yes/drivers/nvme/target/discovery.c_pt.bc'
source_filename = "../drivers/nvme/target/discovery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvmet_subsys = type { i32, %struct.mutex, %struct.kref, %struct.xarray, i32, i32, i16, i16, %struct.list_head, %struct.list_head, i8, i16, i64, [20 x i8], i8, ptr, i8, %struct.config_group, %struct.config_group, %struct.config_group, ptr, ptr, ptr, %struct.config_group, i32, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.nvmet_port = type { %struct.list_head, %struct.nvmf_disc_rsp_page_entry, %struct.config_group, %struct.config_group, %struct.list_head, %struct.config_group, %struct.list_head, %struct.list_head, %struct.config_group, %struct.nvmet_ana_group, ptr, ptr, i8, i32, ptr, i8 }
%struct.nvmf_disc_rsp_page_entry = type { i8, i8, i8, i8, i16, i16, i16, i16, [20 x i8], [32 x i8], [192 x i8], [256 x i8], [256 x i8], %union.tsas }
%union.tsas = type { %struct.rdma }
%struct.rdma = type { i8, i8, i8, [5 x i8], i16, [246 x i8] }
%struct.nvmet_ana_group = type { %struct.config_group, ptr, i32 }
%struct.nvmet_fabrics_ops = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvmet_subsys_link = type { %struct.list_head, ptr }
%struct.nvmet_req = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [8 x %struct.bio_vec], %union.anon.87, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i16, i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%union.anon.87 = type { %struct.anon.90 }
%struct.anon.90 = type { %struct.bio, ptr, %struct.work_struct, i8 }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvmet_ctrl = type { ptr, ptr, i8, %struct.mutex, i64, i32, i32, %struct.uuid_t, i16, i32, ptr, i32, i32, [4 x ptr], i32, %struct.list_head, %struct.work_struct, %struct.list_head, %struct.kref, %struct.delayed_work, %struct.work_struct, ptr, ptr, i32, [256 x i8], [256 x i8], ptr, %struct.xarray, %struct.spinlock, i64, [128 x %struct.nvme_error_slot], i8 }
%struct.uuid_t = type { [16 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.nvme_error_slot = type { i64, i16, i16, i16, i16, i64, i32, i8, [3 x i8], i64, [24 x i8] }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%union.nvme_data_ptr = type { %struct.anon.79 }
%struct.anon.79 = type { i64, i64 }
%struct.nvme_get_log_page_command = type { i8, i8, i16, i32, [2 x i64], %union.nvme_data_ptr, i8, i8, i16, i16, i16, %union.anon.80, [3 x i8], i8, i32 }
%union.anon.80 = type { i64 }
%struct.nvmf_disc_rsp_page_hdr = type { i64, i64, i16, [1006 x i8], [0 x %struct.nvmf_disc_rsp_page_entry] }
%struct.nvme_identify = type { i8, i8, i16, i32, [2 x i64], %union.nvme_data_ptr, i8, i8, i16, [3 x i8], i8, [4 x i32] }
%struct.nvme_id_ctrl = type { i16, i16, [20 x i8], [40 x i8], [8 x i8], i8, [3 x i8], i8, i8, i16, i32, i32, i32, i32, i32, [11 x i8], i8, [16 x i8], i16, i16, i16, [122 x i8], i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i32, i32, [16 x i8], [16 x i8], i32, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, [4 x i8], i8, i8, i32, i32, [160 x i8], i8, i8, i16, i32, i16, i16, i8, i8, i16, i16, i8, i8, i16, [2 x i8], i32, i32, [224 x i8], [256 x i8], [768 x i8], i32, i32, i16, i8, i8, [244 x i8], [32 x %struct.nvme_id_power_state], [1024 x i8] }
%struct.nvme_id_power_state = type { i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, i8, i8, i16, i8, [9 x i8] }

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@nvmet_config_sem = external dso_local global %struct.rw_semaphore, align 4
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/nvme/target/discovery.c\00", [32 x i8] zeroinitializer }, align 32
@nvmet_genctr = internal global { i64, [24 x i8] } zeroinitializer, align 32
@nvmet_disc_subsys = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@nvmet_ports = external dso_local local_unnamed_addr global ptr, align 4
@nvmet_parse_discovery_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013nvmet: got cmd %d while not ready\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvmet_parse_discovery_cmd\00", [38 x i8] zeroinitializer }, align 32
@nvmet_parse_discovery_cmd._entry_ptr = internal global ptr @nvmet_parse_discovery_cmd._entry, section ".printk_index", align 4
@nvmet_parse_discovery_cmd.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.2, ptr @.str, ptr @.str.4, i8 0, i8 96, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nvmet\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unhandled cmd %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvmet: unhandled cmd %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nqn.2014-08.org.nvmexpress.discovery\00", [59 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"5.17.0\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 6, i64 9, i64 10, i64 12, i64 24]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 8, i64 11, i64 15]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 11, i64 15]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 33, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [13 x i8] c"nvmet_genctr\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 13, i32 12 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"nvmet_disc_subsys\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 11, i32 22 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 360, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 387, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 397, i32 22 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [35 x i8] c"../drivers/nvme/target/discovery.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 274, i32 10 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @nvmet_parse_discovery_cmd._entry, ptr @nvmet_parse_discovery_cmd._entry_ptr, ptr @.str, ptr @nvmet_genctr, ptr @nvmet_disc_subsys, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_genctr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_disc_subsys to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvmet_parse_discovery_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_port_disc_changed(ptr noundef %port, ptr noundef %subsys) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rw_semaphore, ptr @nvmet_config_sem, i32 0, i32 6), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !29

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 33, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = load i64, ptr @nvmet_genctr, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr @nvmet_genctr, align 8
  %2 = load ptr, ptr @nvmet_disc_subsys, align 4
  %lock = getelementptr inbounds %struct.nvmet_subsys, ptr %2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %3 = load ptr, ptr @nvmet_disc_subsys, align 4
  %ctrls = getelementptr inbounds %struct.nvmet_subsys, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %ctrls to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn57 = load ptr, ptr %ctrls, align 4
  %cmp26.not60 = icmp eq ptr %.pn57, %ctrls
  br i1 %cmp26.not60, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %tobool29.not = icmp eq ptr %subsys, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn61 = phi ptr [ %.pn57, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %ctrl.062 = getelementptr i8, ptr %.pn61, i32 -228
  br i1 %tobool29.not, label %for.body.if.end32_crit_edge, label %land.lhs.true

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

land.lhs.true:                                    ; preds = %for.body
  %hostnqn = getelementptr i8, ptr %.pn61, i32 424
  %call30 = tail call zeroext i1 @nvmet_host_allowed(ptr noundef nonnull %subsys, ptr noundef %hostnqn) #11
  br i1 %call30, label %land.lhs.true.if.end32_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true.if.end32_crit_edge, %for.body.if.end32_crit_edge
  %port1.i = getelementptr i8, ptr %.pn61, i32 -84
  %5 = ptrtoint ptr %port1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port1.i, align 8
  %cmp.not.i = icmp eq ptr %6, %port
  br i1 %cmp.not.i, label %if.end.i, label %if.end32.for.inc_crit_edge

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.i:                                         ; preds = %if.end32
  %aen_enabled.i.i = getelementptr i8, ptr %.pn61, i32 -80
  %7 = ptrtoint ptr %aen_enabled.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %aen_enabled.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %tobool.not.i.i = icmp sgt i32 %8, -1
  br i1 %tobool.not.i.i, label %if.end.i.for.inc_crit_edge, label %nvmet_aen_bit_disabled.exit.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

nvmet_aen_bit_disabled.exit.i:                    ; preds = %if.end.i
  %aen_masked.i.i = getelementptr i8, ptr %.pn61, i32 -76
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %aen_masked.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.i.not.i, label %if.end3.i, label %nvmet_aen_bit_disabled.exit.i.for.inc_crit_edge

nvmet_aen_bit_disabled.exit.i.for.inc_crit_edge:  ; preds = %nvmet_aen_bit_disabled.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end3.i:                                        ; preds = %nvmet_aen_bit_disabled.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nvmet_add_async_event(ptr noundef %ctrl.062, i8 noundef zeroext 2, i8 noundef zeroext -16, i8 noundef zeroext 112) #11
  br label %for.inc

for.inc:                                          ; preds = %if.end3.i, %nvmet_aen_bit_disabled.exit.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %if.end32.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn61 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn61, align 4
  %10 = load ptr, ptr @nvmet_disc_subsys, align 4
  %ctrls25 = getelementptr inbounds %struct.nvmet_subsys, ptr %10, i32 0, i32 8
  %cmp26.not = icmp eq ptr %.pn, %ctrls25
  br i1 %cmp26.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %.lcssa = phi ptr [ %3, %if.end.for.end_crit_edge ], [ %10, %for.inc.for.end_crit_edge ]
  %lock38 = getelementptr inbounds %struct.nvmet_subsys, ptr %.lcssa, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock38) #11
  %tr_ops = getelementptr inbounds %struct.nvmet_port, ptr %port, i32 0, i32 14
  %11 = ptrtoint ptr %tr_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tr_ops, align 4
  %tobool39.not = icmp eq ptr %12, null
  br i1 %tobool39.not, label %for.end.if.end46_crit_edge, label %land.lhs.true40

for.end.if.end46_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

land.lhs.true40:                                  ; preds = %for.end
  %discovery_chg = getelementptr inbounds %struct.nvmet_fabrics_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %discovery_chg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %discovery_chg, align 4
  %tobool42.not = icmp eq ptr %14, null
  br i1 %tobool42.not, label %land.lhs.true40.if.end46_crit_edge, label %if.then43

land.lhs.true40.if.end46_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then43:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %14(ptr noundef %port) #11
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %land.lhs.true40.if.end46_crit_edge, %for.end.if.end46_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmet_host_allowed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_subsys_disc_changed(ptr noundef readnone %subsys, ptr noundef readonly %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rw_semaphore, ptr @nvmet_config_sem, i32 0, i32 6), i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !29

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %1 = load i64, ptr @nvmet_genctr, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr @nvmet_genctr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvmet_ports to i32))
  %2 = load ptr, ptr @nvmet_ports, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn66 = load ptr, ptr %2, align 4
  %cmp25.not68 = icmp eq ptr %.pn66, %2
  br i1 %cmp25.not68, label %if.end.for.end54_crit_edge, label %for.body.lr.ph

if.end.for.end54_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end54

for.body.lr.ph:                                   ; preds = %if.end
  %tobool.not.i = icmp eq ptr %host, null
  br label %for.body

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %4 = ptrtoint ptr %.pn69 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn69, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nvmet_ports to i32))
  %5 = load ptr, ptr @nvmet_ports, align 4
  %cmp25.not = icmp eq ptr %.pn, %5
  br i1 %cmp25.not, label %for.cond.loopexit.for.end54_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.loopexit.for.end54_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end54

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %.pn69 = phi ptr [ %.pn66, %for.body.lr.ph ], [ %.pn, %for.cond.loopexit.for.body_crit_edge ]
  %port.070 = getelementptr i8, ptr %.pn69, i32 -1288
  %subsystems = getelementptr i8, ptr %.pn69, i32 -96
  %6 = ptrtoint ptr %subsystems to i32
  call void @__asan_load4_noabort(i32 %6)
  %s.063 = load ptr, ptr %subsystems, align 4
  %cmp35.not64 = icmp eq ptr %s.063, %subsystems
  br i1 %cmp35.not64, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body38_crit_edge

for.body.for.body38_crit_edge:                    ; preds = %for.body
  br label %for.body38

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

for.body38:                                       ; preds = %for.inc.for.body38_crit_edge, %for.body.for.body38_crit_edge
  %s.065 = phi ptr [ %s.0, %for.inc.for.body38_crit_edge ], [ %s.063, %for.body.for.body38_crit_edge ]
  %subsys39 = getelementptr inbounds %struct.nvmet_subsys_link, ptr %s.065, i32 0, i32 1
  %7 = ptrtoint ptr %subsys39 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %subsys39, align 4
  %cmp40.not = icmp eq ptr %8, %subsys
  br i1 %cmp40.not, label %if.end42, label %for.body38.for.inc_crit_edge

for.body38.for.inc_crit_edge:                     ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end42:                                         ; preds = %for.body38
  %9 = load ptr, ptr @nvmet_disc_subsys, align 4
  %lock.i = getelementptr inbounds %struct.nvmet_subsys, ptr %9, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  %10 = load ptr, ptr @nvmet_disc_subsys, align 4
  %ctrls.i = getelementptr inbounds %struct.nvmet_subsys, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %ctrls.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn1.i = load ptr, ptr %ctrls.i, align 4
  %cmp.not4.i = icmp eq ptr %.pn1.i, %ctrls.i
  br i1 %cmp.not4.i, label %if.end42.__nvmet_subsys_disc_changed.exit_crit_edge, label %if.end42.for.body.i_crit_edge

if.end42.for.body.i_crit_edge:                    ; preds = %if.end42
  br label %for.body.i

if.end42.__nvmet_subsys_disc_changed.exit_crit_edge: ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %__nvmet_subsys_disc_changed.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end42.for.body.i_crit_edge
  %.pn5.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn1.i, %if.end42.for.body.i_crit_edge ]
  %ctrl.06.i = getelementptr i8, ptr %.pn5.i, i32 -228
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %12 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %host, align 4
  %hostnqn.i = getelementptr i8, ptr %.pn5.i, i32 424
  %call2.i = tail call i32 @strcmp(ptr noundef %13, ptr noundef %hostnqn.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %port1.i.i = getelementptr i8, ptr %.pn5.i, i32 -84
  %14 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port1.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %15, %port.070
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.end.i
  %aen_enabled.i.i.i = getelementptr i8, ptr %.pn5.i, i32 -80
  %16 = ptrtoint ptr %aen_enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %aen_enabled.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool.not.i.i.i = icmp sgt i32 %17, -1
  br i1 %tobool.not.i.i.i, label %if.end.i.i.for.inc.i_crit_edge, label %nvmet_aen_bit_disabled.exit.i.i

if.end.i.i.for.inc.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

nvmet_aen_bit_disabled.exit.i.i:                  ; preds = %if.end.i.i
  %aen_masked.i.i.i = getelementptr i8, ptr %.pn5.i, i32 -76
  %call.i.i.i = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %aen_masked.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.i.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.i.not.i.i, label %if.end3.i.i, label %nvmet_aen_bit_disabled.exit.i.i.for.inc.i_crit_edge

nvmet_aen_bit_disabled.exit.i.i.for.inc.i_crit_edge: ; preds = %nvmet_aen_bit_disabled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end3.i.i:                                      ; preds = %nvmet_aen_bit_disabled.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nvmet_add_async_event(ptr noundef %ctrl.06.i, i8 noundef zeroext 2, i8 noundef zeroext -16, i8 noundef zeroext 112) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end3.i.i, %nvmet_aen_bit_disabled.exit.i.i.for.inc.i_crit_edge, %if.end.i.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge
  %18 = ptrtoint ptr %.pn5.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn5.i, align 4
  %19 = load ptr, ptr @nvmet_disc_subsys, align 4
  %ctrls1.i = getelementptr inbounds %struct.nvmet_subsys, ptr %19, i32 0, i32 8
  %cmp.not.i = icmp eq ptr %.pn.i, %ctrls1.i
  br i1 %cmp.not.i, label %for.inc.i.__nvmet_subsys_disc_changed.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.__nvmet_subsys_disc_changed.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__nvmet_subsys_disc_changed.exit

__nvmet_subsys_disc_changed.exit:                 ; preds = %for.inc.i.__nvmet_subsys_disc_changed.exit_crit_edge, %if.end42.__nvmet_subsys_disc_changed.exit_crit_edge
  %.lcssa.i = phi ptr [ %10, %if.end42.__nvmet_subsys_disc_changed.exit_crit_edge ], [ %19, %for.inc.i.__nvmet_subsys_disc_changed.exit_crit_edge ]
  %lock9.i = getelementptr inbounds %struct.nvmet_subsys, ptr %.lcssa.i, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %lock9.i) #11
  br label %for.inc

for.inc:                                          ; preds = %__nvmet_subsys_disc_changed.exit, %for.body38.for.inc_crit_edge
  %20 = ptrtoint ptr %s.065 to i32
  call void @__asan_load4_noabort(i32 %20)
  %s.0 = load ptr, ptr %s.065, align 4
  %cmp35.not = icmp eq ptr %s.0, %subsystems
  br i1 %cmp35.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body38_crit_edge

for.inc.for.body38_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body38

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

for.end54:                                        ; preds = %for.cond.loopexit.for.end54_crit_edge, %if.end.for.end54_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_referral_enable(ptr noundef %parent, ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @nvmet_config_sem) #11
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %port, align 4
  %cmp.i.not = icmp eq ptr %1, %port
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %referrals = getelementptr inbounds %struct.nvmet_port, ptr %parent, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.nvmet_port, ptr %parent, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %port, ptr noundef %3, ptr noundef %referrals) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %port, ptr %prev.i, align 4
  %5 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %referrals, ptr %port, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %port, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %port, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  %enabled = getelementptr inbounds %struct.nvmet_port, ptr %port, i32 0, i32 12
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %enabled, align 4
  tail call void @nvmet_port_disc_changed(ptr noundef %parent, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %list_add_tail.exit, %entry.if.end_crit_edge
  tail call void @up_write(ptr noundef nonnull @nvmet_config_sem) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_referral_disable(ptr noundef %parent, ptr noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @nvmet_config_sem) #11
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %port, align 4
  %cmp.i.not = icmp eq ptr %1, %port
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %enabled = getelementptr inbounds %struct.nvmet_port, ptr %port, i32 0, i32 12
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %port) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %port, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %9 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %port, ptr %port, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %port, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %port, ptr %prev.i3.i, align 4
  tail call void @nvmet_port_disc_changed(ptr noundef %parent, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %list_del_init.exit, %entry.if.end_crit_edge
  tail call void @up_write(ptr noundef nonnull @nvmet_config_sem) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @nvmet_parse_discovery_cmd(ptr nocapture noundef %req) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %sq = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sq, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %csts = getelementptr inbounds %struct.nvmet_ctrl, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %csts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %csts, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 8
  br i1 %tobool.not, label %do.end, label %if.end, !prof !29

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %9 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv) #15
  %error_loc = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %10 = ptrtoint ptr %error_loc to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %error_loc, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %9, label %do.body17 [
    i8 9, label %sw.bb
    i8 10, label %sw.bb7
    i8 12, label %sw.bb9
    i8 24, label %sw.bb11
    i8 2, label %sw.bb13
    i8 6, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %execute = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %12 = ptrtoint ptr %execute to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @nvmet_execute_disc_set_features, ptr %execute, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %execute8 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %13 = ptrtoint ptr %execute8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @nvmet_execute_disc_get_features, ptr %execute8, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %execute10 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %14 = ptrtoint ptr %execute10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @nvmet_execute_async_event, ptr %execute10, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %execute12 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %15 = ptrtoint ptr %execute12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @nvmet_execute_keep_alive, ptr %execute12, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %execute14 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %16 = ptrtoint ptr %execute14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @nvmet_execute_disc_get_log_page, ptr %execute14, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %execute16 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 14
  %17 = ptrtoint ptr %execute16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @nvmet_execute_disc_identify, ptr %execute16, align 4
  br label %cleanup

do.body17:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nvmet_parse_discovery_cmd.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nvmet_parse_discovery_cmd, %if.then27)) #11
          to label %do.end32 [label %if.then27], !srcloc !30

if.then27:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %1, align 8
  %conv29 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @nvmet_parse_discovery_cmd.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.5, i32 noundef %conv29) #11
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %do.body17
  %error_loc33 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %20 = ptrtoint ptr %error_loc33 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %error_loc33, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end32, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb, %do.end
  %retval.0 = phi i16 [ 16385, %do.end ], [ 16385, %do.end32 ], [ 0, %sw.bb15 ], [ 0, %sw.bb13 ], [ 0, %sw.bb11 ], [ 0, %sw.bb9 ], [ 0, %sw.bb7 ], [ 0, %sw.bb ]
  ret i16 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_execute_disc_set_features(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %cdw101 = getelementptr inbounds %struct.nvme_common_command, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cdw101 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cdw101, align 8
  %call = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef 0) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = lshr i32 %3, 24
  %trunc = trunc i32 %4 to i8
  %5 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %trunc, label %sw.default [
    i8 15, label %sw.bb
    i8 11, label %sw.bb3
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call zeroext i16 @nvmet_set_feat_kato(ptr noundef %req) #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call zeroext i16 @nvmet_set_feat_async_event(ptr noundef %req, i32 noundef -2147483648) #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %error_loc = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %6 = ptrtoint ptr %error_loc to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 40, ptr %error_loc, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb
  %stat.0 = phi i16 [ 16386, %sw.default ], [ %call4, %sw.bb3 ], [ %call2, %sw.bb ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %stat.0) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_execute_disc_get_features(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %cdw101 = getelementptr inbounds %struct.nvme_common_command, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cdw101 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cdw101, align 8
  %call = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef 0) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = lshr i32 %3, 24
  %trunc = trunc i32 %4 to i8
  %5 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %trunc, label %sw.default [
    i8 15, label %sw.bb
    i8 11, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nvmet_get_feat_kato(ptr noundef %req) #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nvmet_get_feat_async_event(ptr noundef %req) #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %error_loc = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %6 = ptrtoint ptr %error_loc to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 40, ptr %error_loc, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  %stat.0 = phi i16 [ 16386, %sw.default ], [ 0, %sw.bb2 ], [ 0, %sw.bb ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %stat.0) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_execute_async_event(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_execute_keep_alive(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_execute_disc_get_log_page(ptr noundef %req) #0 align 64 {
entry:
  %traddr = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sq = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sq, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 8
  %call = tail call i64 @nvmet_get_log_page_offset(ptr noundef %5) #11
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 8
  %call3 = tail call i32 @nvmet_get_log_page_len(ptr noundef %7) #11
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %traddr) #11
  %8 = call ptr @memset(ptr %traddr, i32 255, i32 256)
  %call4 = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef %call3) #11
  br i1 %call4, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req, align 8
  %lid = getelementptr inbounds %struct.nvme_get_log_page_command, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %lid to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %lid, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 112, i8 %12)
  %cmp.not = icmp eq i8 %12, 112
  br i1 %cmp.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %error_loc = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %13 = ptrtoint ptr %error_loc to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 40, ptr %error_loc, align 4
  br label %out

if.end8:                                          ; preds = %if.end
  %and = and i64 %call, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %error_loc10 = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %14 = ptrtoint ptr %error_loc10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 48, ptr %error_loc10, align 4
  br label %out

if.end11:                                         ; preds = %if.end8
  tail call void @down_read(ptr noundef nonnull @nvmet_config_sem) #11
  %port.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 13
  %15 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %port.i, align 8
  %subsystems.i = getelementptr inbounds %struct.nvmet_port, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %subsystems.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %p.039.i = load ptr, ptr %subsystems.i, align 4
  %cmp.not41.i = icmp eq ptr %p.039.i, %subsystems.i
  br i1 %cmp.not41.i, label %if.end11.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end11.for.end.i_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end11
  %18 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sq, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %hostnqn.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %21, i32 0, i32 25
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %p.043.i = phi ptr [ %p.039.i, %for.body.lr.ph.i ], [ %p.0.i, %for.body.i.for.body.i_crit_edge ]
  %entries.042.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %spec.select.i, %for.body.i.for.body.i_crit_edge ]
  %subsys.i = getelementptr inbounds %struct.nvmet_subsys_link, ptr %p.043.i, i32 0, i32 1
  %22 = ptrtoint ptr %subsys.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %subsys.i, align 4
  %call.i = tail call zeroext i1 @nvmet_host_allowed(ptr noundef %23, ptr noundef %hostnqn.i) #11
  %inc.i = zext i1 %call.i to i32
  %spec.select.i = add i32 %entries.042.i, %inc.i
  %24 = ptrtoint ptr %p.043.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %p.0.i = load ptr, ptr %p.043.i, align 4
  %25 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port.i, align 8
  %subsystems4.i = getelementptr inbounds %struct.nvmet_port, ptr %26, i32 0, i32 4
  %cmp.not.i = icmp eq ptr %p.0.i, %subsystems4.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end11.for.end.i_crit_edge
  %entries.0.lcssa.i = phi i32 [ 1, %if.end11.for.end.i_crit_edge ], [ %spec.select.i, %for.body.i.for.end.i_crit_edge ]
  %.lcssa.i = phi ptr [ %16, %if.end11.for.end.i_crit_edge ], [ %26, %for.body.i.for.end.i_crit_edge ]
  %referrals.i = getelementptr inbounds %struct.nvmet_port, ptr %.lcssa.i, i32 0, i32 6
  br label %for.cond15.i

for.cond15.i:                                     ; preds = %for.cond15.i.for.cond15.i_crit_edge, %for.end.i
  %entries.2.i = phi i32 [ %entries.0.lcssa.i, %for.end.i ], [ %inc22.i, %for.cond15.i.for.cond15.i_crit_edge ]
  %r.0.in.i = phi ptr [ %referrals.i, %for.end.i ], [ %r.0.i, %for.cond15.i.for.cond15.i_crit_edge ]
  %27 = ptrtoint ptr %r.0.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %r.0.i = load ptr, ptr %r.0.in.i, align 4
  %cmp19.not.i = icmp eq ptr %r.0.i, %referrals.i
  %inc22.i = add i32 %entries.2.i, 1
  br i1 %cmp19.not.i, label %if.end8.i.i, label %for.cond15.i.for.cond15.i_crit_edge

for.cond15.i.for.cond15.i_crit_edge:              ; preds = %for.cond15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond15.i

if.end8.i.i:                                      ; preds = %for.cond15.i
  %mul = shl i32 %entries.2.i, 10
  %add = add i32 %mul, 1024
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %tobool14.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool14.not, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @up_read(ptr noundef nonnull @nvmet_config_sem) #11
  br label %out

if.end16:                                         ; preds = %if.end8.i.i
  %28 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %port.i, align 8
  %ops.i = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 15
  %30 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i, align 8
  %disc_traddr.i = getelementptr inbounds %struct.nvmet_fabrics_ops, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %disc_traddr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %disc_traddr.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  call void %33(ptr noundef %req, ptr noundef %29, ptr noundef nonnull %traddr) #11
  br label %nvmet_set_disc_traddr.exit

if.else.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %traddr3.i = getelementptr inbounds %struct.nvmet_port, ptr %29, i32 0, i32 1, i32 12
  %34 = call ptr @memcpy(ptr %traddr, ptr %traddr3.i, i32 256)
  br label %nvmet_set_disc_traddr.exit

nvmet_set_disc_traddr.exit:                       ; preds = %if.else.i, %if.then.i
  %35 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %port.i, align 8
  %37 = load ptr, ptr @nvmet_disc_subsys, align 4
  %subsysnqn = getelementptr inbounds %struct.nvmet_subsys, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %subsysnqn to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %subsysnqn, align 8
  %arrayidx.i = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 0
  %disc_addr.i = getelementptr inbounds %struct.nvmet_port, ptr %36, i32 0, i32 1
  %40 = ptrtoint ptr %disc_addr.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %disc_addr.i, align 4
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx.i, align 128
  %adrfam.i = getelementptr inbounds %struct.nvmet_port, ptr %36, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %adrfam.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %adrfam.i, align 1
  %adrfam3.i = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 0, i32 1
  %45 = ptrtoint ptr %adrfam3.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %adrfam3.i, align 1
  %treq.i = getelementptr inbounds %struct.nvmet_port, ptr %36, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %treq.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %treq.i, align 1
  %treq5.i = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 0, i32 3
  %48 = ptrtoint ptr %treq5.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %treq5.i, align 1
  %portid.i = getelementptr inbounds %struct.nvmet_port, ptr %36, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %portid.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %portid.i, align 4
  %portid7.i = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 0, i32 4
  %51 = ptrtoint ptr %portid7.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %portid7.i, align 4
  %cntlid.i = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 0, i32 5
  %52 = ptrtoint ptr %cntlid.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 -1, ptr %cntlid.i, align 2
  %asqsz.i = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 0, i32 6
  %53 = ptrtoint ptr %asqsz.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 8192, ptr %asqsz.i, align 8
  %subtype.i = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 0, i32 2
  %54 = ptrtoint ptr %subtype.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 3, ptr %subtype.i, align 2
  %trsvcid.i = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 0, i32 9
  %trsvcid9.i = getelementptr inbounds %struct.nvmet_port, ptr %36, i32 0, i32 1, i32 9
  %55 = call ptr @memcpy(ptr %trsvcid.i, ptr %trsvcid9.i, i32 32)
  %traddr11.i = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 0, i32 12
  %56 = call ptr @memcpy(ptr %traddr11.i, ptr %traddr, i32 256)
  %tsas.i = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 0, i32 13
  %tsas15.i = getelementptr inbounds %struct.nvmet_port, ptr %36, i32 0, i32 1, i32 13
  %57 = call ptr @memcpy(ptr %tsas.i, ptr %tsas15.i, i32 256)
  %subnqn.i = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 0, i32 11
  %call.i117 = call ptr @strncpy(ptr noundef %subnqn.i, ptr noundef %39, i32 noundef 223) #11
  %58 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %port.i, align 8
  %subsystems = getelementptr inbounds %struct.nvmet_port, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %subsystems to i32
  call void @__asan_load4_noabort(i32 %60)
  %p.0161 = load ptr, ptr %subsystems, align 4
  %cmp23.not163 = icmp eq ptr %p.0161, %subsystems
  br i1 %cmp23.not163, label %nvmet_set_disc_traddr.exit.for.end_crit_edge, label %for.body.lr.ph

nvmet_set_disc_traddr.exit.for.end_crit_edge:     ; preds = %nvmet_set_disc_traddr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %nvmet_set_disc_traddr.exit
  %hostnqn = getelementptr inbounds %struct.nvmet_ctrl, ptr %3, i32 0, i32 25
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %p.0165 = phi ptr [ %p.0161, %for.body.lr.ph ], [ %p.0, %for.inc.for.body_crit_edge ]
  %numrec.0164 = phi i32 [ 1, %for.body.lr.ph ], [ %numrec.1, %for.inc.for.body_crit_edge ]
  %subsys = getelementptr inbounds %struct.nvmet_subsys_link, ptr %p.0165, i32 0, i32 1
  %61 = ptrtoint ptr %subsys to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %subsys, align 4
  %call26 = call zeroext i1 @nvmet_host_allowed(ptr noundef %62, ptr noundef %hostnqn) #11
  br i1 %call26, label %if.end28, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end28:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %port.i, align 8
  %65 = ptrtoint ptr %subsys to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %subsys, align 4
  %subsysnqn31 = getelementptr inbounds %struct.nvmet_subsys, ptr %66, i32 0, i32 15
  %67 = ptrtoint ptr %subsysnqn31 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %subsysnqn31, align 8
  %arrayidx.i118 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.0164
  %disc_addr.i119 = getelementptr inbounds %struct.nvmet_port, ptr %64, i32 0, i32 1
  %69 = ptrtoint ptr %disc_addr.i119 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %disc_addr.i119, align 4
  %71 = ptrtoint ptr %arrayidx.i118 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx.i118, align 128
  %adrfam.i120 = getelementptr inbounds %struct.nvmet_port, ptr %64, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %adrfam.i120 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %adrfam.i120, align 1
  %adrfam3.i121 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.0164, i32 1
  %74 = ptrtoint ptr %adrfam3.i121 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %adrfam3.i121, align 1
  %treq.i122 = getelementptr inbounds %struct.nvmet_port, ptr %64, i32 0, i32 1, i32 3
  %75 = ptrtoint ptr %treq.i122 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %treq.i122, align 1
  %treq5.i123 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.0164, i32 3
  %77 = ptrtoint ptr %treq5.i123 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %treq5.i123, align 1
  %portid.i124 = getelementptr inbounds %struct.nvmet_port, ptr %64, i32 0, i32 1, i32 4
  %78 = ptrtoint ptr %portid.i124 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %portid.i124, align 4
  %portid7.i125 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.0164, i32 4
  %80 = ptrtoint ptr %portid7.i125 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %portid7.i125, align 4
  %cntlid.i126 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.0164, i32 5
  %81 = ptrtoint ptr %cntlid.i126 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 -1, ptr %cntlid.i126, align 2
  %asqsz.i127 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.0164, i32 6
  %82 = ptrtoint ptr %asqsz.i127 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 8192, ptr %asqsz.i127, align 8
  %subtype.i128 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.0164, i32 2
  %83 = ptrtoint ptr %subtype.i128 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 2, ptr %subtype.i128, align 2
  %trsvcid.i129 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.0164, i32 9
  %trsvcid9.i130 = getelementptr inbounds %struct.nvmet_port, ptr %64, i32 0, i32 1, i32 9
  %84 = call ptr @memcpy(ptr %trsvcid.i129, ptr %trsvcid9.i130, i32 32)
  %traddr11.i131 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.0164, i32 12
  %85 = call ptr @memcpy(ptr %traddr11.i131, ptr %traddr, i32 256)
  %tsas.i132 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.0164, i32 13
  %tsas15.i133 = getelementptr inbounds %struct.nvmet_port, ptr %64, i32 0, i32 1, i32 13
  %86 = call ptr @memcpy(ptr %tsas.i132, ptr %tsas15.i133, i32 256)
  %subnqn.i134 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.0164, i32 11
  %call.i135 = call ptr @strncpy(ptr noundef %subnqn.i134, ptr noundef %68, i32 noundef 223) #11
  %inc33 = add i32 %numrec.0164, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end28, %for.body.for.inc_crit_edge
  %numrec.1 = phi i32 [ %inc33, %if.end28 ], [ %numrec.0164, %for.body.for.inc_crit_edge ]
  %87 = ptrtoint ptr %p.0165 to i32
  call void @__asan_load4_noabort(i32 %87)
  %p.0 = load ptr, ptr %p.0165, align 4
  %88 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %port.i, align 8
  %subsystems22 = getelementptr inbounds %struct.nvmet_port, ptr %89, i32 0, i32 4
  %cmp23.not = icmp eq ptr %p.0, %subsystems22
  br i1 %cmp23.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %nvmet_set_disc_traddr.exit.for.end_crit_edge
  %numrec.0.lcssa = phi i32 [ 1, %nvmet_set_disc_traddr.exit.for.end_crit_edge ], [ %numrec.1, %for.inc.for.end_crit_edge ]
  %.lcssa = phi ptr [ %59, %nvmet_set_disc_traddr.exit.for.end_crit_edge ], [ %89, %for.inc.for.end_crit_edge ]
  %referrals = getelementptr inbounds %struct.nvmet_port, ptr %.lcssa, i32 0, i32 6
  %90 = ptrtoint ptr %referrals to i32
  call void @__asan_load4_noabort(i32 %90)
  %r.0167 = load ptr, ptr %referrals, align 4
  %91 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %port.i, align 8
  %referrals47168 = getelementptr inbounds %struct.nvmet_port, ptr %92, i32 0, i32 6
  %cmp48.not169 = icmp eq ptr %r.0167, %referrals47168
  br i1 %cmp48.not169, label %for.end.for.end61_crit_edge, label %for.body51.preheader

for.end.for.end61_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.body51.preheader:                             ; preds = %for.end
  %93 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %port.i, align 8
  %referrals47 = getelementptr inbounds %struct.nvmet_port, ptr %94, i32 0, i32 6
  br label %for.body51

for.body51:                                       ; preds = %for.body51.for.body51_crit_edge, %for.body51.preheader
  %r.0171 = phi ptr [ %r.0, %for.body51.for.body51_crit_edge ], [ %r.0167, %for.body51.preheader ]
  %numrec.2170 = phi i32 [ %inc54, %for.body51.for.body51_crit_edge ], [ %numrec.0.lcssa, %for.body51.preheader ]
  %traddr52 = getelementptr inbounds %struct.nvmet_port, ptr %r.0171, i32 0, i32 1, i32 12
  %arrayidx.i136 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.2170
  %disc_addr.i137 = getelementptr inbounds %struct.nvmet_port, ptr %r.0171, i32 0, i32 1
  %95 = ptrtoint ptr %disc_addr.i137 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %disc_addr.i137, align 4
  %97 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %arrayidx.i136, align 128
  %adrfam.i138 = getelementptr inbounds %struct.nvmet_port, ptr %r.0171, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %adrfam.i138 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %adrfam.i138, align 1
  %adrfam3.i139 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.2170, i32 1
  %100 = ptrtoint ptr %adrfam3.i139 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %adrfam3.i139, align 1
  %treq.i140 = getelementptr inbounds %struct.nvmet_port, ptr %r.0171, i32 0, i32 1, i32 3
  %101 = ptrtoint ptr %treq.i140 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %treq.i140, align 1
  %treq5.i141 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.2170, i32 3
  %103 = ptrtoint ptr %treq5.i141 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %treq5.i141, align 1
  %portid.i142 = getelementptr inbounds %struct.nvmet_port, ptr %r.0171, i32 0, i32 1, i32 4
  %104 = ptrtoint ptr %portid.i142 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %portid.i142, align 4
  %portid7.i143 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.2170, i32 4
  %106 = ptrtoint ptr %portid7.i143 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %105, ptr %portid7.i143, align 4
  %cntlid.i144 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.2170, i32 5
  %107 = ptrtoint ptr %cntlid.i144 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 -1, ptr %cntlid.i144, align 2
  %asqsz.i145 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.2170, i32 6
  %108 = ptrtoint ptr %asqsz.i145 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 8192, ptr %asqsz.i145, align 8
  %subtype.i146 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.2170, i32 2
  %109 = ptrtoint ptr %subtype.i146 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %subtype.i146, align 2
  %trsvcid.i147 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.2170, i32 9
  %trsvcid9.i148 = getelementptr inbounds %struct.nvmet_port, ptr %r.0171, i32 0, i32 1, i32 9
  %110 = call ptr @memcpy(ptr %trsvcid.i147, ptr %trsvcid9.i148, i32 32)
  %traddr11.i149 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.2170, i32 12
  %111 = call ptr @memcpy(ptr %traddr11.i149, ptr %traddr52, i32 256)
  %tsas.i150 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.2170, i32 13
  %tsas15.i151 = getelementptr inbounds %struct.nvmet_port, ptr %r.0171, i32 0, i32 1, i32 13
  %112 = call ptr @memcpy(ptr %tsas.i150, ptr %tsas15.i151, i32 256)
  %subnqn.i152 = getelementptr %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 4, i32 %numrec.2170, i32 11
  %call.i153 = call ptr @strncpy(ptr noundef %subnqn.i152, ptr noundef nonnull dereferenceable(37) @.str.6, i32 noundef 223) #11
  %inc54 = add i32 %numrec.2170, 1
  %113 = ptrtoint ptr %r.0171 to i32
  call void @__asan_load4_noabort(i32 %113)
  %r.0 = load ptr, ptr %r.0171, align 4
  %cmp48.not = icmp eq ptr %r.0, %referrals47
  br i1 %cmp48.not, label %for.body51.for.end61_crit_edge, label %for.body51.for.body51_crit_edge

for.body51.for.body51_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body51

for.body51.for.end61_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end61

for.end61:                                        ; preds = %for.body51.for.end61_crit_edge, %for.end.for.end61_crit_edge
  %numrec.2.lcssa = phi i32 [ %numrec.0.lcssa, %for.end.for.end61_crit_edge ], [ %inc54, %for.body51.for.end61_crit_edge ]
  %114 = load i64, ptr @nvmet_genctr, align 8
  %115 = call i64 @llvm.bswap.i64(i64 %114)
  %116 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %115, ptr %call9.i.i, align 128
  %conv62 = zext i32 %numrec.2.lcssa to i64
  %117 = call i64 @llvm.bswap.i64(i64 %conv62)
  %numrec63 = getelementptr inbounds %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 1
  %118 = ptrtoint ptr %numrec63 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %117, ptr %numrec63, align 8
  %recfmt = getelementptr inbounds %struct.nvmf_disc_rsp_page_hdr, ptr %call9.i.i, i32 0, i32 2
  %119 = ptrtoint ptr %recfmt to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %recfmt, align 16
  %120 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %req, align 8
  %cdw10.i = getelementptr inbounds %struct.nvme_common_command, ptr %121, i32 0, i32 7
  %122 = ptrtoint ptr %cdw10.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %cdw10.i, align 8
  %124 = and i32 %123, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.not.i154 = icmp eq i32 %124, 0
  br i1 %tobool.not.i154, label %if.then.i156, label %for.end61.nvmet_clear_aen_bit.exit_crit_edge

for.end61.nvmet_clear_aen_bit.exit_crit_edge:     ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %nvmet_clear_aen_bit.exit

if.then.i156:                                     ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #13
  %125 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %sq, align 8
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %aen_masked.i = getelementptr inbounds %struct.nvmet_ctrl, ptr %128, i32 0, i32 12
  call void @_clear_bit(i32 noundef 31, ptr noundef %aen_masked.i) #11
  br label %nvmet_clear_aen_bit.exit

nvmet_clear_aen_bit.exit:                         ; preds = %if.then.i156, %for.end61.nvmet_clear_aen_bit.exit_crit_edge
  call void @up_read(ptr noundef nonnull @nvmet_config_sem) #11
  %idx.ext = trunc i64 %call to i32
  %add.ptr64 = getelementptr i8, ptr %call9.i.i, i32 %idx.ext
  %call65 = call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef 0, ptr noundef %add.ptr64, i32 noundef %call3) #11
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %out

out:                                              ; preds = %nvmet_clear_aen_bit.exit, %if.then15, %if.then9, %if.then7
  %status.0 = phi i16 [ 16386, %if.then7 ], [ 16386, %if.then9 ], [ %call65, %nvmet_clear_aen_bit.exit ], [ 6, %if.then15 ]
  call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.0) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %traddr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nvmet_execute_disc_identify(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sq = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %sq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sq, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call zeroext i1 @nvmet_check_transfer_len(ptr noundef %req, i32 noundef 4096) #11
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 8
  %cns = getelementptr inbounds %struct.nvme_identify, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %cns to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cns, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.not = icmp eq i8 %7, 1
  br i1 %cmp.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %error_loc = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 18
  %8 = ptrtoint ptr %error_loc to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 40, ptr %error_loc, align 4
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 4096) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end4.out_crit_edge, label %if.end7

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7:                                          ; preds = %if.end4
  %sn = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %serial = getelementptr inbounds %struct.nvmet_subsys, ptr %11, i32 0, i32 13
  %12 = call ptr @memcpy(ptr %sn, ptr %serial, i32 20)
  %fr = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %fr to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 2314885530818453536, ptr %fr, align 8
  %mn = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i, i32 0, i32 3
  %14 = load ptr, ptr %3, align 8
  %model_number = getelementptr inbounds %struct.nvmet_subsys, ptr %14, i32 0, i32 20
  %15 = ptrtoint ptr %model_number to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %model_number, align 8
  %call14 = tail call i32 @strlen(ptr noundef %16) #18
  tail call void @memcpy_and_pad(ptr noundef %mn, i32 noundef 40, ptr noundef %16, i32 noundef %call14, i32 noundef 32) #11
  tail call void @memcpy_and_pad(ptr noundef %fr, i32 noundef 8, ptr noundef nonnull @.str.7, i32 noundef 6, i32 noundef 32) #11
  %cntrltype = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %cntrltype to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %cntrltype, align 1
  %mdts = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %mdts to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %mdts, align 1
  %cntlid = getelementptr inbounds %struct.nvmet_ctrl, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %cntlid to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cntlid, align 8
  %21 = tail call i16 @llvm.bswap.i16(i16 %20)
  %cntlid17 = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i, i32 0, i32 9
  %22 = ptrtoint ptr %cntlid17 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %cntlid17, align 2
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 8
  %ver = getelementptr inbounds %struct.nvmet_subsys, ptr %24, i32 0, i32 12
  %25 = ptrtoint ptr %ver to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ver, align 8
  %conv19 = trunc i64 %26 to i32
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv19)
  %ver20 = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %ver20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %ver20, align 8
  %lpa = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i, i32 0, i32 26
  %29 = ptrtoint ptr %lpa to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 4, ptr %lpa, align 1
  %maxcmd = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i, i32 0, i32 57
  %30 = ptrtoint ptr %maxcmd to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 4, ptr %maxcmd, align 2
  %sgls = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i, i32 0, i32 69
  %31 = ptrtoint ptr %sgls to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16777216, ptr %sgls, align 8
  %ops = getelementptr inbounds %struct.nvmet_ctrl, ptr %3, i32 0, i32 21
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 8
  %flags = getelementptr inbounds %struct.nvmet_fabrics_ops, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %and = and i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool21.not, i32 16777216, i32 83886080
  %36 = ptrtoint ptr %sgls to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %spec.store.select, ptr %sgls, align 8
  %port = getelementptr inbounds %struct.nvmet_req, ptr %req, i32 0, i32 13
  %37 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port, align 8
  %inline_data_size = getelementptr inbounds %struct.nvmet_port, ptr %38, i32 0, i32 13
  %39 = ptrtoint ptr %inline_data_size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %inline_data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool25.not = icmp eq i32 %40, 0
  br i1 %tobool25.not, label %if.end7.if.end29_crit_edge, label %if.then26

if.end7.if.end29_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then26:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %or28 = or i32 %spec.store.select, 4096
  %41 = ptrtoint ptr %sgls to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or28, ptr %sgls, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end7.if.end29_crit_edge
  %oaes = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i, i32 0, i32 13
  %42 = ptrtoint ptr %oaes to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 128, ptr %oaes, align 4
  %subnqn = getelementptr inbounds %struct.nvme_id_ctrl, ptr %call7.i.i, i32 0, i32 72
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %3, align 8
  %subsysnqn = getelementptr inbounds %struct.nvmet_subsys, ptr %44, i32 0, i32 15
  %45 = ptrtoint ptr %subsysnqn to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %subsysnqn, align 8
  %call32 = tail call i32 @strlcpy(ptr noundef %subnqn, ptr noundef %46, i32 noundef 256) #11
  %call33 = tail call zeroext i16 @nvmet_copy_to_sgl(ptr noundef %req, i32 noundef 0, ptr noundef nonnull %call7.i.i, i32 noundef 4096) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %out

out:                                              ; preds = %if.end29, %if.end4.out_crit_edge, %if.then3
  %status.0 = phi i16 [ 16386, %if.then3 ], [ %call33, %if.end29 ], [ 6, %if.end4.out_crit_edge ]
  tail call void @nvmet_req_complete(ptr noundef %req, i16 noundef zeroext %status.0) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvmet_init_discovery() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nvmet_subsys_alloc(ptr noundef nonnull @.str.6, i32 noundef 3) #11
  store ptr %call, ptr @nvmet_disc_subsys, align 4
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %0 = ptrtoint ptr %call to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %0, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmet_subsys_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvmet_exit_discovery() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nvmet_disc_subsys, align 4
  tail call void @nvmet_subsys_put(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_subsys_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_add_async_event(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvmet_check_transfer_len(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_set_feat_kato(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_set_feat_async_event(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_req_complete(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_get_feat_kato(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmet_get_feat_async_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvmet_get_log_page_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvmet_get_log_page_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvmet_copy_to_sgl(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memcpy_and_pad(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/nvme/target/discovery.c", i32 33, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/nvme/target/discovery.c", i32 360, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @nvmet_parse_discovery_cmd._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @nvmet_parse_discovery_cmd._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/nvme/target/discovery.c", i32 387, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @nvmet_parse_discovery_cmd.__UNIQUE_ID_ddebug286, !8, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!11 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/nvme/target/discovery.c", i32 397, i32 22}
!14 = !{ptr @nvmet_disc_subsys, !15, !"nvmet_disc_subsys", i1 false, i1 false}
!15 = !{!"../drivers/nvme/target/discovery.c", i32 11, i32 22}
!16 = !{ptr @nvmet_genctr, !17, !"nvmet_genctr", i1 false, i1 false}
!17 = !{!"../drivers/nvme/target/discovery.c", i32 13, i32 12}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/nvme/target/discovery.c", i32 274, i32 10}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i64 2148210083, i64 2148210088, i64 2148210101, i64 2148210145, i64 2148210179, i64 2148210200}
