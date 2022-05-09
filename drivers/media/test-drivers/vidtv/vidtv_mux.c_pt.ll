; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vidtv/vidtv_mux.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vidtv/vidtv_mux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vidtv_mux = type { ptr, ptr, %struct.vidtv_mux_timing, i32, [8 x %struct.hlist_head], ptr, ptr, i32, i32, ptr, %struct.vidtv_mux_si, i64, i64, %struct.work_struct, i8, i16, i16, i16, ptr, ptr }
%struct.vidtv_mux_timing = type { i64, i64, i64, i64, i64, i64 }
%struct.hlist_head = type { ptr }
%struct.vidtv_mux_si = type { ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.vidtv_mux_init_args = type { i32, ptr, i32, i64, i64, i16, i16, ptr, i16, ptr, ptr }
%struct.vidtv_psi_table_pat = type { %struct.vidtv_psi_table_header, i16, i16, ptr }
%struct.vidtv_psi_table_header = type <{ i8, i16, i16, i8, i8, i8 }>
%struct.vidtv_mux_pid_ctx = type { i16, i8, %struct.hlist_node }
%struct.vidtv_psi_table_pat_program = type { i16, i16, ptr }
%struct.pes_write_args = type { ptr, ptr, i32, i32, i32, i16, i32, ptr, i16, i8, i64, i8, i64, i32, i64 }
%struct.vidtv_psi_pat_write_args = type { ptr, i32, ptr, i32, ptr }
%struct.vidtv_psi_pmt_write_args = type { ptr, i32, ptr, i16, i32, ptr, i16 }
%struct.vidtv_psi_sdt_write_args = type { ptr, i32, ptr, i32, ptr }
%struct.vidtv_psi_nit_write_args = type { ptr, i32, ptr, i32, ptr }
%struct.vidtv_psi_eit_write_args = type { ptr, i32, ptr, i32, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.vidtv_channel = type { ptr, i16, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.vidtv_encoder = type { i32, ptr, ptr, i32, i32, i64, ptr, ptr, i32, i32, i8, ptr, i16, i16, ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.vidtv_access_unit = type { i32, i64, i64, i32, i32, ptr }

@vidtv_mux_start_thread._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vidtv_mux_start_thread = private unnamed_addr constant [23 x i8] c"vidtv_mux_start_thread\00", align 1
@vidtv_mux_start_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.vidtv_mux_start_thread, ptr @.str.2, i32 460, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Already streaming. Skipping.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/test-drivers/vidtv/vidtv_mux.c\00", [51 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vidtv_mux_start_thread._entry_ptr = internal global ptr @vidtv_mux_start_thread._entry, section ".printk_index", align 4
@vidtv_mux_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&m->mpeg_thread)\00", [61 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vidtv_mux_tick._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vidtv_mux_tick = private unnamed_addr constant [15 x i8] c"vidtv_mux_tick\00", align 1
@vidtv_mux_tick._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.vidtv_mux_tick, ptr @.str.2, i32 417, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Misaligned buffer\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@vidtv_mux_tick._entry_ptr = internal global ptr @vidtv_mux_tick._entry, section ".printk_index", align 4
@vidtv_mux_push_si._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vidtv_mux_push_si = private unnamed_addr constant [18 x i8] c"vidtv_mux_push_si\00", align 1
@vidtv_mux_push_si._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.vidtv_mux_push_si, ptr @.str.2, i32 184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PID: %d not found\0A\00", [45 x i8] zeroinitializer }, align 32
@vidtv_mux_push_si._entry_ptr = internal global ptr @vidtv_mux_push_si._entry, section ".printk_index", align 4
@vidtv_mux_pad_with_nulls._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.vidtv_mux_pad_with_nulls = private unnamed_addr constant [25 x i8] c"vidtv_mux_pad_with_nulls\00", align 1
@vidtv_mux_pad_with_nulls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.vidtv_mux_pad_with_nulls, ptr @.str.2, i32 375, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d != %d\0A\00", [22 x i8] zeroinitializer }, align 32
@vidtv_mux_pad_with_nulls._entry_ptr = internal global ptr @vidtv_mux_pad_with_nulls._entry, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 460, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 519, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 417, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 183, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [48 x i8] c"../drivers/media/test-drivers/vidtv/vidtv_mux.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 374, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @vidtv_mux_pad_with_nulls._entry, ptr @vidtv_mux_pad_with_nulls._entry_ptr, ptr @vidtv_mux_push_si._entry, ptr @vidtv_mux_push_si._entry_ptr, ptr @vidtv_mux_start_thread._entry, ptr @vidtv_mux_start_thread._entry_ptr, ptr @vidtv_mux_tick._entry, ptr @vidtv_mux_tick._entry_ptr, ptr @vidtv_mux_start_thread._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vidtv_mux_init.__key, ptr @.str.5, ptr @vidtv_mux_tick._rs, ptr @.str.6, ptr @.str.7, ptr @vidtv_mux_push_si._rs, ptr @.str.8, ptr @vidtv_mux_pad_with_nulls._rs, ptr @.str.9], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_mux_start_thread._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_mux_start_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_mux_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_mux_tick._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_mux_tick._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_mux_push_si._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_mux_push_si._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_mux_pad_with_nulls._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidtv_mux_pad_with_nulls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_mux_start_thread(ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %streaming = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 14
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end5, label %do.body

do.body:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @vidtv_mux_start_thread._rs, ptr noundef nonnull @__func__.vidtv_mux_start_thread) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.body.return_crit_edge, label %do.end

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.1) #9
  br label %return

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %streaming, align 4
  %call7 = tail call i64 @get_jiffies_64() #6
  %timing = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 2
  %5 = ptrtoint ptr %timing to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call7, ptr %timing, align 8
  %mpeg_thread = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %mpeg_thread) #6
  br label %return

return:                                           ; preds = %if.end5, %do.end, %do.body.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_mux_stop_thread(ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %streaming = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 14
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %streaming to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %streaming, align 4
  %mpeg_thread = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 13
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %mpeg_thread) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vidtv_mux_init(ptr noundef %fe, ptr noundef %dev, ptr nocapture noundef readonly %args) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 216) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fe, ptr %call7.i.i, align 8
  %pcr_period_usecs = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %args, i32 0, i32 3
  %3 = ptrtoint ptr %pcr_period_usecs to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %pcr_period_usecs, align 8
  %pcr_period_usecs3 = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %pcr_period_usecs3 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %pcr_period_usecs3, align 8
  %si_period_usecs = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %args, i32 0, i32 4
  %6 = ptrtoint ptr %si_period_usecs to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %si_period_usecs, align 8
  %si_period_usecs5 = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 2, i32 5
  %8 = ptrtoint ptr %si_period_usecs5 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %si_period_usecs5, align 8
  %9 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %args, align 8
  %mux_rate_kbytes_sec6 = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %mux_rate_kbytes_sec6 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mux_rate_kbytes_sec6, align 8
  %on_new_packets_available_cb = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %args, i32 0, i32 1
  %12 = ptrtoint ptr %on_new_packets_available_cb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %on_new_packets_available_cb, align 4
  %on_new_packets_available_cb7 = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %on_new_packets_available_cb7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %on_new_packets_available_cb7, align 4
  %mux_buf_sz = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %args, i32 0, i32 2
  %15 = ptrtoint ptr %mux_buf_sz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mux_buf_sz, align 8
  %call8 = tail call noalias ptr @vzalloc(i32 noundef %16) #11
  %mux_buf = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %mux_buf to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call8, ptr %mux_buf, align 8
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end.free_mux_crit_edge, label %if.end12

if.end.free_mux_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_mux

if.end12:                                         ; preds = %if.end
  %18 = ptrtoint ptr %mux_buf_sz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mux_buf_sz, align 8
  %mux_buf_sz14 = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %mux_buf_sz14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %mux_buf_sz14, align 4
  %pcr_pid = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %args, i32 0, i32 5
  %21 = ptrtoint ptr %pcr_pid to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %pcr_pid, align 8
  %pcr_pid15 = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 15
  %23 = ptrtoint ptr %pcr_pid15 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %pcr_pid15, align 2
  %transport_stream_id = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %args, i32 0, i32 6
  %24 = ptrtoint ptr %transport_stream_id to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %transport_stream_id, align 2
  %transport_stream_id16 = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 16
  %26 = ptrtoint ptr %transport_stream_id16 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %transport_stream_id16, align 8
  %priv = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %args, i32 0, i32 10
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 8
  %priv17 = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 19
  %29 = ptrtoint ptr %priv17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %priv17, align 8
  %network_id = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %args, i32 0, i32 8
  %30 = ptrtoint ptr %network_id to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_id, align 8
  %network_id18 = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 17
  %32 = ptrtoint ptr %network_id18 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %network_id18, align 2
  %network_name = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %args, i32 0, i32 9
  %33 = ptrtoint ptr %network_name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %network_name, align 4
  %call19 = tail call noalias ptr @kstrdup(ptr noundef %34, i32 noundef 3264) #6
  %network_name20 = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 18
  %35 = ptrtoint ptr %network_name20 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call19, ptr %network_name20, align 4
  %call21 = tail call i64 @get_jiffies_64() #6
  %current_jiffies = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %current_jiffies to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %call21, ptr %current_jiffies, align 8
  %channels = getelementptr inbounds %struct.vidtv_mux_init_args, ptr %args, i32 0, i32 7
  %37 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %channels, align 4
  %tobool23.not = icmp eq ptr %38, null
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %channels26 = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 9
  %39 = ptrtoint ptr %channels26 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %channels26, align 4
  br label %if.end30

if.else:                                          ; preds = %if.end12
  %call27 = tail call i32 @vidtv_channels_init(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %if.else.free_mux_buf_crit_edge, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.else.free_mux_buf_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_mux_buf

if.end30:                                         ; preds = %if.else.if.end30_crit_edge, %if.then24
  %call31 = tail call i32 @vidtv_channel_si_init(ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end30.free_channels_crit_edge, label %do.body

if.end30.free_channels_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_channels

do.body:                                          ; preds = %if.end30
  %mpeg_thread = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 13
  tail call void @__init_work(ptr noundef %mpeg_thread, i32 noundef 0) #6
  %40 = ptrtoint ptr %mpeg_thread to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -64, ptr %mpeg_thread, align 8
  %lockdep_map = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 13, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @vidtv_mux_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry38 = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 13, i32 1
  %41 = ptrtoint ptr %entry38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %entry38, ptr %entry38, align 4
  %prev.i = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 13, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %entry38, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 13, i32 2
  %43 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @vidtv_mux_tick, ptr %func, align 4
  %si.i = getelementptr inbounds %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 10
  %44 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %si.i, align 8
  %program.i = getelementptr inbounds %struct.vidtv_psi_table_pat, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %program.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load ptr, ptr %program.i, align 1
  %pid_ctx.i = getelementptr %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 4
  %48 = call ptr @memset(ptr %pid_ctx.i, i32 0, i32 32)
  %49 = ptrtoint ptr %pcr_pid15 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %pcr_pid15, align 2
  %conv.i.i.i = zext i16 %50 to i32
  %mul.i.i.i.i.i = mul i32 %conv.i.i.i, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 29
  %arrayidx.i.i.i = getelementptr %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 4, i32 %shr.i.i.i.i
  %51 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %52, null
  %add.ptr.i.i.i = getelementptr i8, ptr %52, i32 -4
  %tobool2.not2730.i.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool2.not27.i.i.i = or i1 %tobool.not.i.i.i, %tobool2.not2730.i.i.i
  br i1 %tobool2.not27.i.i.i, label %do.body.if.end.i.i_crit_edge, label %do.body.for.body.i.i.i_crit_edge

do.body.for.body.i.i.i_crit_edge:                 ; preds = %do.body
  br label %for.body.i.i.i

do.body.if.end.i.i_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %do.body.for.body.i.i.i_crit_edge
  %ctx.028.i.i.i = phi ptr [ %add.ptr13.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %add.ptr.i.i.i, %do.body.for.body.i.i.i_crit_edge ]
  %53 = ptrtoint ptr %ctx.028.i.i.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %ctx.028.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %54, i16 %50)
  %cmp.i.i.i = icmp eq i16 %54, %50
  br i1 %cmp.i.i.i, label %for.body.i.i.i.if.end.i_crit_edge, label %for.inc.i.i.i

for.body.i.i.i.if.end.i_crit_edge:                ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %h.i.i.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.028.i.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %h.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %h.i.i.i, align 4
  %tobool9.not.i.i.i = icmp eq ptr %56, null
  %add.ptr13.i.i.i = getelementptr i8, ptr %56, i32 -4
  %tobool2.not31.i.i.i = icmp eq ptr %add.ptr13.i.i.i, null
  %tobool2.not.i.i.i = or i1 %tobool9.not.i.i.i, %tobool2.not31.i.i.i
  br i1 %tobool2.not.i.i.i, label %for.inc.i.i.i.if.end.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i

for.inc.i.i.i.if.end.i.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.inc.i.i.i.if.end.i.i_crit_edge, %do.body.if.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 12) #10
  %tobool2.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.free_channel_si_crit_edge, label %if.end4.i.i

if.end.i.i.free_channel_si_crit_edge:             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_channel_si

if.end4.i.i:                                      ; preds = %if.end.i.i
  %58 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %50, ptr %call7.i.i.i.i, align 8
  %cc.i.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %cc.i.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %cc.i.i, align 2
  %h.i.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i.i, align 4
  %62 = ptrtoint ptr %h.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %61, ptr %h.i.i, align 4
  %tobool.not.i16.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i16.i.i, label %if.end4.i.i.hlist_add_head.exit.i.i_crit_edge, label %do.body12.i.i.i

if.end4.i.i.hlist_add_head.exit.i.i_crit_edge:    ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head.exit.i.i

do.body12.i.i.i:                                  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %61, i32 0, i32 1
  %63 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %h.i.i, ptr %pprev.i.i.i, align 4
  br label %hlist_add_head.exit.i.i

hlist_add_head.exit.i.i:                          ; preds = %do.body12.i.i.i, %if.end4.i.i.hlist_add_head.exit.i.i_crit_edge
  %64 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %h.i.i, ptr %arrayidx.i.i.i, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %65 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %arrayidx.i.i.i, ptr %pprev34.i.i.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %hlist_add_head.exit.i.i, %for.body.i.i.i.if.end.i_crit_edge
  %arrayidx.i.i37.i = getelementptr %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 4, i32 5
  %66 = ptrtoint ptr %arrayidx.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i37.i, align 8
  %tobool.not.i.i38.i = icmp eq ptr %67, null
  %add.ptr.i.i39.i = getelementptr i8, ptr %67, i32 -4
  %tobool2.not2730.i.i40.i = icmp eq ptr %add.ptr.i.i39.i, null
  %tobool2.not27.i.i41.i = or i1 %tobool.not.i.i38.i, %tobool2.not2730.i.i40.i
  br i1 %tobool2.not27.i.i41.i, label %if.end.i.if.end.i53.i_crit_edge, label %if.end.i.for.body.i.i44.i_crit_edge

if.end.i.for.body.i.i44.i_crit_edge:              ; preds = %if.end.i
  br label %for.body.i.i44.i

if.end.i.if.end.i53.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i53.i

for.body.i.i44.i:                                 ; preds = %for.inc.i.i50.i.for.body.i.i44.i_crit_edge, %if.end.i.for.body.i.i44.i_crit_edge
  %ctx.028.i.i42.i = phi ptr [ %add.ptr13.i.i47.i, %for.inc.i.i50.i.for.body.i.i44.i_crit_edge ], [ %add.ptr.i.i39.i, %if.end.i.for.body.i.i44.i_crit_edge ]
  %68 = ptrtoint ptr %ctx.028.i.i42.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %ctx.028.i.i42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %69)
  %cmp.i.i43.i = icmp eq i16 %69, 8191
  br i1 %cmp.i.i43.i, label %for.body.i.i44.i.if.end4.i_crit_edge, label %for.inc.i.i50.i

for.body.i.i44.i.if.end4.i_crit_edge:             ; preds = %for.body.i.i44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

for.inc.i.i50.i:                                  ; preds = %for.body.i.i44.i
  %h.i.i45.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.028.i.i42.i, i32 0, i32 2
  %70 = ptrtoint ptr %h.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %h.i.i45.i, align 4
  %tobool9.not.i.i46.i = icmp eq ptr %71, null
  %add.ptr13.i.i47.i = getelementptr i8, ptr %71, i32 -4
  %tobool2.not31.i.i48.i = icmp eq ptr %add.ptr13.i.i47.i, null
  %tobool2.not.i.i49.i = or i1 %tobool9.not.i.i46.i, %tobool2.not31.i.i48.i
  br i1 %tobool2.not.i.i49.i, label %for.inc.i.i50.i.if.end.i53.i_crit_edge, label %for.inc.i.i50.i.for.body.i.i44.i_crit_edge

for.inc.i.i50.i.for.body.i.i44.i_crit_edge:       ; preds = %for.inc.i.i50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i44.i

for.inc.i.i50.i.if.end.i53.i_crit_edge:           ; preds = %for.inc.i.i50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i53.i

if.end.i53.i:                                     ; preds = %for.inc.i.i50.i.if.end.i53.i_crit_edge, %if.end.i.if.end.i53.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %72 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i51.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %72, i32 noundef 3520, i32 noundef 12) #10
  %tobool2.not.i52.i = icmp eq ptr %call7.i.i.i51.i, null
  br i1 %tobool2.not.i52.i, label %if.end.i53.i.for.body.i.i.preheader_crit_edge, label %if.end4.i57.i

if.end.i53.i.for.body.i.i.preheader_crit_edge:    ; preds = %if.end.i53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %if.end.i161.i.for.body.i.i.preheader_crit_edge, %if.end.i134.i.for.body.i.i.preheader_crit_edge, %if.end.i107.i.for.body.i.i.preheader_crit_edge, %if.end.i80.i.for.body.i.i.preheader_crit_edge, %if.end.i53.i.for.body.i.i.preheader_crit_edge
  br label %for.body.i.i

if.end4.i57.i:                                    ; preds = %if.end.i53.i
  %73 = ptrtoint ptr %call7.i.i.i51.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 8191, ptr %call7.i.i.i51.i, align 8
  %cc.i54.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i51.i, i32 0, i32 1
  %74 = ptrtoint ptr %cc.i54.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %cc.i54.i, align 2
  %h.i55.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i51.i, i32 0, i32 2
  %75 = ptrtoint ptr %arrayidx.i.i37.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i37.i, align 8
  %77 = ptrtoint ptr %h.i55.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %76, ptr %h.i55.i, align 4
  %tobool.not.i16.i56.i = icmp eq ptr %76, null
  br i1 %tobool.not.i16.i56.i, label %if.end4.i57.i.hlist_add_head.exit.i61.i_crit_edge, label %do.body12.i.i59.i

if.end4.i57.i.hlist_add_head.exit.i61.i_crit_edge: ; preds = %if.end4.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head.exit.i61.i

do.body12.i.i59.i:                                ; preds = %if.end4.i57.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i58.i = getelementptr inbounds %struct.hlist_node, ptr %76, i32 0, i32 1
  %78 = ptrtoint ptr %pprev.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %h.i55.i, ptr %pprev.i.i58.i, align 4
  br label %hlist_add_head.exit.i61.i

hlist_add_head.exit.i61.i:                        ; preds = %do.body12.i.i59.i, %if.end4.i57.i.hlist_add_head.exit.i61.i_crit_edge
  %79 = ptrtoint ptr %arrayidx.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %h.i55.i, ptr %arrayidx.i.i37.i, align 8
  %pprev34.i.i60.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i51.i, i32 0, i32 2, i32 1
  %80 = ptrtoint ptr %pprev34.i.i60.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %arrayidx.i.i37.i, ptr %pprev34.i.i60.i, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %hlist_add_head.exit.i61.i, %for.body.i.i44.i.if.end4.i_crit_edge
  %81 = ptrtoint ptr %pid_ctx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pid_ctx.i, align 4
  %tobool.not.i.i65.i = icmp eq ptr %82, null
  %add.ptr.i.i66.i = getelementptr i8, ptr %82, i32 -4
  %tobool2.not2730.i.i67.i = icmp eq ptr %add.ptr.i.i66.i, null
  %tobool2.not27.i.i68.i = or i1 %tobool.not.i.i65.i, %tobool2.not2730.i.i67.i
  br i1 %tobool2.not27.i.i68.i, label %if.end4.i.if.end.i80.i_crit_edge, label %if.end4.i.for.body.i.i71.i_crit_edge

if.end4.i.for.body.i.i71.i_crit_edge:             ; preds = %if.end4.i
  br label %for.body.i.i71.i

if.end4.i.if.end.i80.i_crit_edge:                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i80.i

for.body.i.i71.i:                                 ; preds = %for.inc.i.i77.i.for.body.i.i71.i_crit_edge, %if.end4.i.for.body.i.i71.i_crit_edge
  %ctx.028.i.i69.i = phi ptr [ %add.ptr13.i.i74.i, %for.inc.i.i77.i.for.body.i.i71.i_crit_edge ], [ %add.ptr.i.i66.i, %if.end4.i.for.body.i.i71.i_crit_edge ]
  %83 = ptrtoint ptr %ctx.028.i.i69.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %ctx.028.i.i69.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %cmp.i.i70.i = icmp eq i16 %84, 0
  br i1 %cmp.i.i70.i, label %for.body.i.i71.i.if.end8.i_crit_edge, label %for.inc.i.i77.i

for.body.i.i71.i.if.end8.i_crit_edge:             ; preds = %for.body.i.i71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

for.inc.i.i77.i:                                  ; preds = %for.body.i.i71.i
  %h.i.i72.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.028.i.i69.i, i32 0, i32 2
  %85 = ptrtoint ptr %h.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %h.i.i72.i, align 4
  %tobool9.not.i.i73.i = icmp eq ptr %86, null
  %add.ptr13.i.i74.i = getelementptr i8, ptr %86, i32 -4
  %tobool2.not31.i.i75.i = icmp eq ptr %add.ptr13.i.i74.i, null
  %tobool2.not.i.i76.i = or i1 %tobool9.not.i.i73.i, %tobool2.not31.i.i75.i
  br i1 %tobool2.not.i.i76.i, label %for.inc.i.i77.i.if.end.i80.i_crit_edge, label %for.inc.i.i77.i.for.body.i.i71.i_crit_edge

for.inc.i.i77.i.for.body.i.i71.i_crit_edge:       ; preds = %for.inc.i.i77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i71.i

for.inc.i.i77.i.if.end.i80.i_crit_edge:           ; preds = %for.inc.i.i77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i80.i

if.end.i80.i:                                     ; preds = %for.inc.i.i77.i.if.end.i80.i_crit_edge, %if.end4.i.if.end.i80.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %87 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i78.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %87, i32 noundef 3520, i32 noundef 12) #10
  %tobool2.not.i79.i = icmp eq ptr %call7.i.i.i78.i, null
  br i1 %tobool2.not.i79.i, label %if.end.i80.i.for.body.i.i.preheader_crit_edge, label %if.end4.i84.i

if.end.i80.i.for.body.i.i.preheader_crit_edge:    ; preds = %if.end.i80.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.preheader

if.end4.i84.i:                                    ; preds = %if.end.i80.i
  %88 = ptrtoint ptr %call7.i.i.i78.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 0, ptr %call7.i.i.i78.i, align 8
  %cc.i81.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i78.i, i32 0, i32 1
  %89 = ptrtoint ptr %cc.i81.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %cc.i81.i, align 2
  %h.i82.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i78.i, i32 0, i32 2
  %90 = ptrtoint ptr %pid_ctx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pid_ctx.i, align 4
  %92 = ptrtoint ptr %h.i82.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %91, ptr %h.i82.i, align 4
  %tobool.not.i16.i83.i = icmp eq ptr %91, null
  br i1 %tobool.not.i16.i83.i, label %if.end4.i84.i.hlist_add_head.exit.i88.i_crit_edge, label %do.body12.i.i86.i

if.end4.i84.i.hlist_add_head.exit.i88.i_crit_edge: ; preds = %if.end4.i84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head.exit.i88.i

do.body12.i.i86.i:                                ; preds = %if.end4.i84.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i85.i = getelementptr inbounds %struct.hlist_node, ptr %91, i32 0, i32 1
  %93 = ptrtoint ptr %pprev.i.i85.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %h.i82.i, ptr %pprev.i.i85.i, align 4
  br label %hlist_add_head.exit.i88.i

hlist_add_head.exit.i88.i:                        ; preds = %do.body12.i.i86.i, %if.end4.i84.i.hlist_add_head.exit.i88.i_crit_edge
  %94 = ptrtoint ptr %pid_ctx.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %h.i82.i, ptr %pid_ctx.i, align 4
  %pprev34.i.i87.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i78.i, i32 0, i32 2, i32 1
  %95 = ptrtoint ptr %pprev34.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %pid_ctx.i, ptr %pprev34.i.i87.i, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %hlist_add_head.exit.i88.i, %for.body.i.i71.i.if.end8.i_crit_edge
  %arrayidx.i.i91.i = getelementptr %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 4, i32 3
  %96 = ptrtoint ptr %arrayidx.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i.i91.i, align 8
  %tobool.not.i.i92.i = icmp eq ptr %97, null
  %add.ptr.i.i93.i = getelementptr i8, ptr %97, i32 -4
  %tobool2.not2730.i.i94.i = icmp eq ptr %add.ptr.i.i93.i, null
  %tobool2.not27.i.i95.i = or i1 %tobool.not.i.i92.i, %tobool2.not2730.i.i94.i
  br i1 %tobool2.not27.i.i95.i, label %if.end8.i.if.end.i107.i_crit_edge, label %if.end8.i.for.body.i.i98.i_crit_edge

if.end8.i.for.body.i.i98.i_crit_edge:             ; preds = %if.end8.i
  br label %for.body.i.i98.i

if.end8.i.if.end.i107.i_crit_edge:                ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i107.i

for.body.i.i98.i:                                 ; preds = %for.inc.i.i104.i.for.body.i.i98.i_crit_edge, %if.end8.i.for.body.i.i98.i_crit_edge
  %ctx.028.i.i96.i = phi ptr [ %add.ptr13.i.i101.i, %for.inc.i.i104.i.for.body.i.i98.i_crit_edge ], [ %add.ptr.i.i93.i, %if.end8.i.for.body.i.i98.i_crit_edge ]
  %98 = ptrtoint ptr %ctx.028.i.i96.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %ctx.028.i.i96.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %99)
  %cmp.i.i97.i = icmp eq i16 %99, 17
  br i1 %cmp.i.i97.i, label %for.body.i.i98.i.if.end12.i_crit_edge, label %for.inc.i.i104.i

for.body.i.i98.i.if.end12.i_crit_edge:            ; preds = %for.body.i.i98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

for.inc.i.i104.i:                                 ; preds = %for.body.i.i98.i
  %h.i.i99.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.028.i.i96.i, i32 0, i32 2
  %100 = ptrtoint ptr %h.i.i99.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %h.i.i99.i, align 4
  %tobool9.not.i.i100.i = icmp eq ptr %101, null
  %add.ptr13.i.i101.i = getelementptr i8, ptr %101, i32 -4
  %tobool2.not31.i.i102.i = icmp eq ptr %add.ptr13.i.i101.i, null
  %tobool2.not.i.i103.i = or i1 %tobool9.not.i.i100.i, %tobool2.not31.i.i102.i
  br i1 %tobool2.not.i.i103.i, label %for.inc.i.i104.i.if.end.i107.i_crit_edge, label %for.inc.i.i104.i.for.body.i.i98.i_crit_edge

for.inc.i.i104.i.for.body.i.i98.i_crit_edge:      ; preds = %for.inc.i.i104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i98.i

for.inc.i.i104.i.if.end.i107.i_crit_edge:         ; preds = %for.inc.i.i104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i107.i

if.end.i107.i:                                    ; preds = %for.inc.i.i104.i.if.end.i107.i_crit_edge, %if.end8.i.if.end.i107.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %102 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i105.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %102, i32 noundef 3520, i32 noundef 12) #10
  %tobool2.not.i106.i = icmp eq ptr %call7.i.i.i105.i, null
  br i1 %tobool2.not.i106.i, label %if.end.i107.i.for.body.i.i.preheader_crit_edge, label %if.end4.i111.i

if.end.i107.i.for.body.i.i.preheader_crit_edge:   ; preds = %if.end.i107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.preheader

if.end4.i111.i:                                   ; preds = %if.end.i107.i
  %103 = ptrtoint ptr %call7.i.i.i105.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 17, ptr %call7.i.i.i105.i, align 8
  %cc.i108.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i105.i, i32 0, i32 1
  %104 = ptrtoint ptr %cc.i108.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %cc.i108.i, align 2
  %h.i109.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i105.i, i32 0, i32 2
  %105 = ptrtoint ptr %arrayidx.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i.i91.i, align 8
  %107 = ptrtoint ptr %h.i109.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %106, ptr %h.i109.i, align 4
  %tobool.not.i16.i110.i = icmp eq ptr %106, null
  br i1 %tobool.not.i16.i110.i, label %if.end4.i111.i.hlist_add_head.exit.i115.i_crit_edge, label %do.body12.i.i113.i

if.end4.i111.i.hlist_add_head.exit.i115.i_crit_edge: ; preds = %if.end4.i111.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head.exit.i115.i

do.body12.i.i113.i:                               ; preds = %if.end4.i111.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i112.i = getelementptr inbounds %struct.hlist_node, ptr %106, i32 0, i32 1
  %108 = ptrtoint ptr %pprev.i.i112.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %h.i109.i, ptr %pprev.i.i112.i, align 4
  br label %hlist_add_head.exit.i115.i

hlist_add_head.exit.i115.i:                       ; preds = %do.body12.i.i113.i, %if.end4.i111.i.hlist_add_head.exit.i115.i_crit_edge
  %109 = ptrtoint ptr %arrayidx.i.i91.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store volatile ptr %h.i109.i, ptr %arrayidx.i.i91.i, align 8
  %pprev34.i.i114.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i105.i, i32 0, i32 2, i32 1
  %110 = ptrtoint ptr %pprev34.i.i114.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %arrayidx.i.i91.i, ptr %pprev34.i.i114.i, align 8
  br label %if.end12.i

if.end12.i:                                       ; preds = %hlist_add_head.exit.i115.i, %for.body.i.i98.i.if.end12.i_crit_edge
  %111 = ptrtoint ptr %pid_ctx.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %pid_ctx.i, align 4
  %tobool.not.i.i119.i = icmp eq ptr %112, null
  %add.ptr.i.i120.i = getelementptr i8, ptr %112, i32 -4
  %tobool2.not2730.i.i121.i = icmp eq ptr %add.ptr.i.i120.i, null
  %tobool2.not27.i.i122.i = or i1 %tobool.not.i.i119.i, %tobool2.not2730.i.i121.i
  br i1 %tobool2.not27.i.i122.i, label %if.end12.i.if.end.i134.i_crit_edge, label %if.end12.i.for.body.i.i125.i_crit_edge

if.end12.i.for.body.i.i125.i_crit_edge:           ; preds = %if.end12.i
  br label %for.body.i.i125.i

if.end12.i.if.end.i134.i_crit_edge:               ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i134.i

for.body.i.i125.i:                                ; preds = %for.inc.i.i131.i.for.body.i.i125.i_crit_edge, %if.end12.i.for.body.i.i125.i_crit_edge
  %ctx.028.i.i123.i = phi ptr [ %add.ptr13.i.i128.i, %for.inc.i.i131.i.for.body.i.i125.i_crit_edge ], [ %add.ptr.i.i120.i, %if.end12.i.for.body.i.i125.i_crit_edge ]
  %113 = ptrtoint ptr %ctx.028.i.i123.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %ctx.028.i.i123.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %114)
  %cmp.i.i124.i = icmp eq i16 %114, 16
  br i1 %cmp.i.i124.i, label %for.body.i.i125.i.if.end16.i_crit_edge, label %for.inc.i.i131.i

for.body.i.i125.i.if.end16.i_crit_edge:           ; preds = %for.body.i.i125.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

for.inc.i.i131.i:                                 ; preds = %for.body.i.i125.i
  %h.i.i126.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.028.i.i123.i, i32 0, i32 2
  %115 = ptrtoint ptr %h.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %h.i.i126.i, align 4
  %tobool9.not.i.i127.i = icmp eq ptr %116, null
  %add.ptr13.i.i128.i = getelementptr i8, ptr %116, i32 -4
  %tobool2.not31.i.i129.i = icmp eq ptr %add.ptr13.i.i128.i, null
  %tobool2.not.i.i130.i = or i1 %tobool9.not.i.i127.i, %tobool2.not31.i.i129.i
  br i1 %tobool2.not.i.i130.i, label %for.inc.i.i131.i.if.end.i134.i_crit_edge, label %for.inc.i.i131.i.for.body.i.i125.i_crit_edge

for.inc.i.i131.i.for.body.i.i125.i_crit_edge:     ; preds = %for.inc.i.i131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i125.i

for.inc.i.i131.i.if.end.i134.i_crit_edge:         ; preds = %for.inc.i.i131.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i134.i

if.end.i134.i:                                    ; preds = %for.inc.i.i131.i.if.end.i134.i_crit_edge, %if.end12.i.if.end.i134.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %117 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i132.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %117, i32 noundef 3520, i32 noundef 12) #10
  %tobool2.not.i133.i = icmp eq ptr %call7.i.i.i132.i, null
  br i1 %tobool2.not.i133.i, label %if.end.i134.i.for.body.i.i.preheader_crit_edge, label %if.end4.i138.i

if.end.i134.i.for.body.i.i.preheader_crit_edge:   ; preds = %if.end.i134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.preheader

if.end4.i138.i:                                   ; preds = %if.end.i134.i
  %118 = ptrtoint ptr %call7.i.i.i132.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 16, ptr %call7.i.i.i132.i, align 8
  %cc.i135.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i132.i, i32 0, i32 1
  %119 = ptrtoint ptr %cc.i135.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %cc.i135.i, align 2
  %h.i136.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i132.i, i32 0, i32 2
  %120 = ptrtoint ptr %pid_ctx.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pid_ctx.i, align 4
  %122 = ptrtoint ptr %h.i136.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %121, ptr %h.i136.i, align 4
  %tobool.not.i16.i137.i = icmp eq ptr %121, null
  br i1 %tobool.not.i16.i137.i, label %if.end4.i138.i.hlist_add_head.exit.i142.i_crit_edge, label %do.body12.i.i140.i

if.end4.i138.i.hlist_add_head.exit.i142.i_crit_edge: ; preds = %if.end4.i138.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head.exit.i142.i

do.body12.i.i140.i:                               ; preds = %if.end4.i138.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i139.i = getelementptr inbounds %struct.hlist_node, ptr %121, i32 0, i32 1
  %123 = ptrtoint ptr %pprev.i.i139.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store volatile ptr %h.i136.i, ptr %pprev.i.i139.i, align 4
  br label %hlist_add_head.exit.i142.i

hlist_add_head.exit.i142.i:                       ; preds = %do.body12.i.i140.i, %if.end4.i138.i.hlist_add_head.exit.i142.i_crit_edge
  %124 = ptrtoint ptr %pid_ctx.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %h.i136.i, ptr %pid_ctx.i, align 4
  %pprev34.i.i141.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i132.i, i32 0, i32 2, i32 1
  %125 = ptrtoint ptr %pprev34.i.i141.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %pid_ctx.i, ptr %pprev34.i.i141.i, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %hlist_add_head.exit.i142.i, %for.body.i.i125.i.if.end16.i_crit_edge
  %arrayidx.i.i145.i = getelementptr %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 4, i32 7
  %126 = ptrtoint ptr %arrayidx.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i.i145.i, align 8
  %tobool.not.i.i146.i = icmp eq ptr %127, null
  %add.ptr.i.i147.i = getelementptr i8, ptr %127, i32 -4
  %tobool2.not2730.i.i148.i = icmp eq ptr %add.ptr.i.i147.i, null
  %tobool2.not27.i.i149.i = or i1 %tobool.not.i.i146.i, %tobool2.not2730.i.i148.i
  br i1 %tobool2.not27.i.i149.i, label %if.end16.i.if.end.i161.i_crit_edge, label %if.end16.i.for.body.i.i152.i_crit_edge

if.end16.i.for.body.i.i152.i_crit_edge:           ; preds = %if.end16.i
  br label %for.body.i.i152.i

if.end16.i.if.end.i161.i_crit_edge:               ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i161.i

for.body.i.i152.i:                                ; preds = %for.inc.i.i158.i.for.body.i.i152.i_crit_edge, %if.end16.i.for.body.i.i152.i_crit_edge
  %ctx.028.i.i150.i = phi ptr [ %add.ptr13.i.i155.i, %for.inc.i.i158.i.for.body.i.i152.i_crit_edge ], [ %add.ptr.i.i147.i, %if.end16.i.for.body.i.i152.i_crit_edge ]
  %128 = ptrtoint ptr %ctx.028.i.i150.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %ctx.028.i.i150.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %129)
  %cmp.i.i151.i = icmp eq i16 %129, 18
  br i1 %cmp.i.i151.i, label %for.body.i.i152.i.vidtv_mux_create_pid_ctx_once.exit171.i_crit_edge, label %for.inc.i.i158.i

for.body.i.i152.i.vidtv_mux_create_pid_ctx_once.exit171.i_crit_edge: ; preds = %for.body.i.i152.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_create_pid_ctx_once.exit171.i

for.inc.i.i158.i:                                 ; preds = %for.body.i.i152.i
  %h.i.i153.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.028.i.i150.i, i32 0, i32 2
  %130 = ptrtoint ptr %h.i.i153.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %h.i.i153.i, align 4
  %tobool9.not.i.i154.i = icmp eq ptr %131, null
  %add.ptr13.i.i155.i = getelementptr i8, ptr %131, i32 -4
  %tobool2.not31.i.i156.i = icmp eq ptr %add.ptr13.i.i155.i, null
  %tobool2.not.i.i157.i = or i1 %tobool9.not.i.i154.i, %tobool2.not31.i.i156.i
  br i1 %tobool2.not.i.i157.i, label %for.inc.i.i158.i.if.end.i161.i_crit_edge, label %for.inc.i.i158.i.for.body.i.i152.i_crit_edge

for.inc.i.i158.i.for.body.i.i152.i_crit_edge:     ; preds = %for.inc.i.i158.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i152.i

for.inc.i.i158.i.if.end.i161.i_crit_edge:         ; preds = %for.inc.i.i158.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i161.i

if.end.i161.i:                                    ; preds = %for.inc.i.i158.i.if.end.i161.i_crit_edge, %if.end16.i.if.end.i161.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %132 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i159.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %132, i32 noundef 3520, i32 noundef 12) #10
  %tobool2.not.i160.i = icmp eq ptr %call7.i.i.i159.i, null
  br i1 %tobool2.not.i160.i, label %if.end.i161.i.for.body.i.i.preheader_crit_edge, label %if.end4.i165.i

if.end.i161.i.for.body.i.i.preheader_crit_edge:   ; preds = %if.end.i161.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.preheader

if.end4.i165.i:                                   ; preds = %if.end.i161.i
  %133 = ptrtoint ptr %call7.i.i.i159.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 18, ptr %call7.i.i.i159.i, align 8
  %cc.i162.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i159.i, i32 0, i32 1
  %134 = ptrtoint ptr %cc.i162.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %cc.i162.i, align 2
  %h.i163.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i159.i, i32 0, i32 2
  %135 = ptrtoint ptr %arrayidx.i.i145.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i.i145.i, align 8
  %137 = ptrtoint ptr %h.i163.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store volatile ptr %136, ptr %h.i163.i, align 4
  %tobool.not.i16.i164.i = icmp eq ptr %136, null
  br i1 %tobool.not.i16.i164.i, label %if.end4.i165.i.hlist_add_head.exit.i169.i_crit_edge, label %do.body12.i.i167.i

if.end4.i165.i.hlist_add_head.exit.i169.i_crit_edge: ; preds = %if.end4.i165.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head.exit.i169.i

do.body12.i.i167.i:                               ; preds = %if.end4.i165.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i166.i = getelementptr inbounds %struct.hlist_node, ptr %136, i32 0, i32 1
  %138 = ptrtoint ptr %pprev.i.i166.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %h.i163.i, ptr %pprev.i.i166.i, align 4
  br label %hlist_add_head.exit.i169.i

hlist_add_head.exit.i169.i:                       ; preds = %do.body12.i.i167.i, %if.end4.i165.i.hlist_add_head.exit.i169.i_crit_edge
  %139 = ptrtoint ptr %arrayidx.i.i145.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %h.i163.i, ptr %arrayidx.i.i145.i, align 8
  %pprev34.i.i168.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i159.i, i32 0, i32 2, i32 1
  %140 = ptrtoint ptr %pprev34.i.i168.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %arrayidx.i.i145.i, ptr %pprev34.i.i168.i, align 8
  br label %vidtv_mux_create_pid_ctx_once.exit171.i

vidtv_mux_create_pid_ctx_once.exit171.i:          ; preds = %hlist_add_head.exit.i169.i, %for.body.i.i152.i.vidtv_mux_create_pid_ctx_once.exit171.i_crit_edge
  %tobool21.not216.i = icmp eq ptr %47, null
  br i1 %tobool21.not216.i, label %vidtv_mux_create_pid_ctx_once.exit171.i.cleanup_crit_edge, label %vidtv_mux_create_pid_ctx_once.exit171.i.while.body.i_crit_edge

vidtv_mux_create_pid_ctx_once.exit171.i.while.body.i_crit_edge: ; preds = %vidtv_mux_create_pid_ctx_once.exit171.i
  br label %while.body.i

vidtv_mux_create_pid_ctx_once.exit171.i.cleanup_crit_edge: ; preds = %vidtv_mux_create_pid_ctx_once.exit171.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.i:                                     ; preds = %vidtv_mux_create_pid_ctx_once.exit201.i.while.body.i_crit_edge, %vidtv_mux_create_pid_ctx_once.exit171.i.while.body.i_crit_edge
  %p.0217.i = phi ptr [ %157, %vidtv_mux_create_pid_ctx_once.exit201.i.while.body.i_crit_edge ], [ %47, %vidtv_mux_create_pid_ctx_once.exit171.i.while.body.i_crit_edge ]
  %call22.i = tail call zeroext i16 @vidtv_psi_get_pat_program_pid(ptr noundef nonnull %p.0217.i) #6
  %conv.i.i172.i = zext i16 %call22.i to i32
  %mul.i.i.i.i173.i = mul i32 %conv.i.i172.i, 1640531527
  %shr.i.i.i174.i = lshr i32 %mul.i.i.i.i173.i, 29
  %arrayidx.i.i175.i = getelementptr %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 4, i32 %shr.i.i.i174.i
  %141 = ptrtoint ptr %arrayidx.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx.i.i175.i, align 4
  %tobool.not.i.i176.i = icmp eq ptr %142, null
  %add.ptr.i.i177.i = getelementptr i8, ptr %142, i32 -4
  %tobool2.not2730.i.i178.i = icmp eq ptr %add.ptr.i.i177.i, null
  %tobool2.not27.i.i179.i = or i1 %tobool.not.i.i176.i, %tobool2.not2730.i.i178.i
  br i1 %tobool2.not27.i.i179.i, label %while.body.i.if.end.i191.i_crit_edge, label %while.body.i.for.body.i.i182.i_crit_edge

while.body.i.for.body.i.i182.i_crit_edge:         ; preds = %while.body.i
  br label %for.body.i.i182.i

while.body.i.if.end.i191.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i191.i

for.body.i.i182.i:                                ; preds = %for.inc.i.i188.i.for.body.i.i182.i_crit_edge, %while.body.i.for.body.i.i182.i_crit_edge
  %ctx.028.i.i180.i = phi ptr [ %add.ptr13.i.i185.i, %for.inc.i.i188.i.for.body.i.i182.i_crit_edge ], [ %add.ptr.i.i177.i, %while.body.i.for.body.i.i182.i_crit_edge ]
  %143 = ptrtoint ptr %ctx.028.i.i180.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %ctx.028.i.i180.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %144, i16 %call22.i)
  %cmp.i.i181.i = icmp eq i16 %144, %call22.i
  br i1 %cmp.i.i181.i, label %for.body.i.i182.i.vidtv_mux_create_pid_ctx_once.exit201.i_crit_edge, label %for.inc.i.i188.i

for.body.i.i182.i.vidtv_mux_create_pid_ctx_once.exit201.i_crit_edge: ; preds = %for.body.i.i182.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_create_pid_ctx_once.exit201.i

for.inc.i.i188.i:                                 ; preds = %for.body.i.i182.i
  %h.i.i183.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.028.i.i180.i, i32 0, i32 2
  %145 = ptrtoint ptr %h.i.i183.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %h.i.i183.i, align 4
  %tobool9.not.i.i184.i = icmp eq ptr %146, null
  %add.ptr13.i.i185.i = getelementptr i8, ptr %146, i32 -4
  %tobool2.not31.i.i186.i = icmp eq ptr %add.ptr13.i.i185.i, null
  %tobool2.not.i.i187.i = or i1 %tobool9.not.i.i184.i, %tobool2.not31.i.i186.i
  br i1 %tobool2.not.i.i187.i, label %for.inc.i.i188.i.if.end.i191.i_crit_edge, label %for.inc.i.i188.i.for.body.i.i182.i_crit_edge

for.inc.i.i188.i.for.body.i.i182.i_crit_edge:     ; preds = %for.inc.i.i188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i182.i

for.inc.i.i188.i.if.end.i191.i_crit_edge:         ; preds = %for.inc.i.i188.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i191.i

if.end.i191.i:                                    ; preds = %for.inc.i.i188.i.if.end.i191.i_crit_edge, %while.body.i.if.end.i191.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %147 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i189.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %147, i32 noundef 3520, i32 noundef 12) #10
  %tobool2.not.i190.i = icmp eq ptr %call7.i.i.i189.i, null
  br i1 %tobool2.not.i190.i, label %if.end.i191.i.vidtv_mux_create_pid_ctx_once.exit201.i_crit_edge, label %if.end4.i195.i

if.end.i191.i.vidtv_mux_create_pid_ctx_once.exit201.i_crit_edge: ; preds = %if.end.i191.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_create_pid_ctx_once.exit201.i

if.end4.i195.i:                                   ; preds = %if.end.i191.i
  %148 = ptrtoint ptr %call7.i.i.i189.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %call22.i, ptr %call7.i.i.i189.i, align 8
  %cc.i192.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i189.i, i32 0, i32 1
  %149 = ptrtoint ptr %cc.i192.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %cc.i192.i, align 2
  %h.i193.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i189.i, i32 0, i32 2
  %150 = ptrtoint ptr %arrayidx.i.i175.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %arrayidx.i.i175.i, align 4
  %152 = ptrtoint ptr %h.i193.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %151, ptr %h.i193.i, align 4
  %tobool.not.i16.i194.i = icmp eq ptr %151, null
  br i1 %tobool.not.i16.i194.i, label %if.end4.i195.i.hlist_add_head.exit.i199.i_crit_edge, label %do.body12.i.i197.i

if.end4.i195.i.hlist_add_head.exit.i199.i_crit_edge: ; preds = %if.end4.i195.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head.exit.i199.i

do.body12.i.i197.i:                               ; preds = %if.end4.i195.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i196.i = getelementptr inbounds %struct.hlist_node, ptr %151, i32 0, i32 1
  %153 = ptrtoint ptr %pprev.i.i196.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile ptr %h.i193.i, ptr %pprev.i.i196.i, align 4
  br label %hlist_add_head.exit.i199.i

hlist_add_head.exit.i199.i:                       ; preds = %do.body12.i.i197.i, %if.end4.i195.i.hlist_add_head.exit.i199.i_crit_edge
  %154 = ptrtoint ptr %arrayidx.i.i175.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %h.i193.i, ptr %arrayidx.i.i175.i, align 4
  %pprev34.i.i198.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i189.i, i32 0, i32 2, i32 1
  %155 = ptrtoint ptr %pprev34.i.i198.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store volatile ptr %arrayidx.i.i175.i, ptr %pprev34.i.i198.i, align 8
  br label %vidtv_mux_create_pid_ctx_once.exit201.i

vidtv_mux_create_pid_ctx_once.exit201.i:          ; preds = %hlist_add_head.exit.i199.i, %if.end.i191.i.vidtv_mux_create_pid_ctx_once.exit201.i_crit_edge, %for.body.i.i182.i.vidtv_mux_create_pid_ctx_once.exit201.i_crit_edge
  %next.i = getelementptr inbounds %struct.vidtv_psi_table_pat_program, ptr %p.0217.i, i32 0, i32 2
  %156 = ptrtoint ptr %next.i to i32
  call void @__asan_loadN_noabort(i32 %156, i32 4)
  %157 = load ptr, ptr %next.i, align 1
  %tobool21.not.i = icmp eq ptr %157, null
  br i1 %tobool21.not.i, label %vidtv_mux_create_pid_ctx_once.exit201.i.cleanup_crit_edge, label %vidtv_mux_create_pid_ctx_once.exit201.i.while.body.i_crit_edge

vidtv_mux_create_pid_ctx_once.exit201.i.while.body.i_crit_edge: ; preds = %vidtv_mux_create_pid_ctx_once.exit201.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

vidtv_mux_create_pid_ctx_once.exit201.i.cleanup_crit_edge: ; preds = %vidtv_mux_create_pid_ctx_once.exit201.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i.i:                                     ; preds = %for.inc22.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %bkt.037.i.i = phi i32 [ %inc.i.i, %for.inc22.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr %struct.vidtv_mux, ptr %call7.i.i, i32 0, i32 4, i32 %bkt.037.i.i
  %158 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %159, null
  %add.ptr.i.i = getelementptr i8, ptr %159, i32 -4
  %tobool5.not3538.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool5.not35.i.i = or i1 %tobool.not.i.i, %tobool5.not3538.i.i
  br i1 %tobool5.not35.i.i, label %for.body.i.i.for.inc22.i.i_crit_edge, label %for.body.i.i.land.rhs6.i.i_crit_edge

for.body.i.i.land.rhs6.i.i_crit_edge:             ; preds = %for.body.i.i
  br label %land.rhs6.i.i

for.body.i.i.for.inc22.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc22.i.i

land.rhs6.i.i:                                    ; preds = %hash_del.exit.i.i.land.rhs6.i.i_crit_edge, %for.body.i.i.land.rhs6.i.i_crit_edge
  %ctx.136.i.i = phi ptr [ %add.ptr18.i.i, %hash_del.exit.i.i.land.rhs6.i.i_crit_edge ], [ %add.ptr.i.i, %for.body.i.i.land.rhs6.i.i_crit_edge ]
  %h.i202.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.136.i.i, i32 0, i32 2
  %160 = ptrtoint ptr %h.i202.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %h.i202.i, align 4
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.136.i.i, i32 0, i32 2, i32 1
  %162 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i.i = icmp eq ptr %163, null
  br i1 %tobool.not.i.not.i.i.i.i, label %land.rhs6.i.i.hash_del.exit.i.i_crit_edge, label %if.then.i.i.i.i

land.rhs6.i.i.hash_del.exit.i.i_crit_edge:        ; preds = %land.rhs6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hash_del.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs6.i.i
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %161, ptr %163, align 4
  %tobool.not.i3.i.i.i.i = icmp eq ptr %161, null
  br i1 %tobool.not.i3.i.i.i.i, label %if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge, label %do.body13.i.i.i.i.i

if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__hlist_del.exit.i.i.i.i

do.body13.i.i.i.i.i:                              ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev14.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %161, i32 0, i32 1
  %165 = ptrtoint ptr %pprev14.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store volatile ptr %163, ptr %pprev14.i.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i.i

__hlist_del.exit.i.i.i.i:                         ; preds = %do.body13.i.i.i.i.i, %if.then.i.i.i.i.__hlist_del.exit.i.i.i.i_crit_edge
  %166 = ptrtoint ptr %h.i202.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %h.i202.i, align 4
  %167 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  br label %hash_del.exit.i.i

hash_del.exit.i.i:                                ; preds = %__hlist_del.exit.i.i.i.i, %land.rhs6.i.i.hash_del.exit.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %ctx.136.i.i) #6
  %tobool14.not.i.i = icmp eq ptr %161, null
  %add.ptr18.i.i = getelementptr i8, ptr %161, i32 -4
  %tobool5.not39.i.i = icmp eq ptr %add.ptr18.i.i, null
  %tobool5.not.i.i = or i1 %tobool14.not.i.i, %tobool5.not39.i.i
  br i1 %tobool5.not.i.i, label %hash_del.exit.i.i.for.inc22.i.i_crit_edge, label %hash_del.exit.i.i.land.rhs6.i.i_crit_edge

hash_del.exit.i.i.land.rhs6.i.i_crit_edge:        ; preds = %hash_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs6.i.i

hash_del.exit.i.i.for.inc22.i.i_crit_edge:        ; preds = %hash_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc22.i.i

for.inc22.i.i:                                    ; preds = %hash_del.exit.i.i.for.inc22.i.i_crit_edge, %for.body.i.i.for.inc22.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %bkt.037.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %for.inc22.i.i.free_channel_si_crit_edge, label %for.inc22.i.i.for.body.i.i_crit_edge

for.inc22.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc22.i.i.free_channel_si_crit_edge:          ; preds = %for.inc22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_channel_si

free_channel_si:                                  ; preds = %for.inc22.i.i.free_channel_si_crit_edge, %if.end.i.i.free_channel_si_crit_edge
  tail call void @vidtv_channel_si_destroy(ptr noundef nonnull %call7.i.i) #6
  br label %free_channels

free_channels:                                    ; preds = %free_channel_si, %if.end30.free_channels_crit_edge
  tail call void @vidtv_channels_destroy(ptr noundef nonnull %call7.i.i) #6
  br label %free_mux_buf

free_mux_buf:                                     ; preds = %free_channels, %if.else.free_mux_buf_crit_edge
  %168 = ptrtoint ptr %mux_buf to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mux_buf, align 8
  tail call void @vfree(ptr noundef %169) #6
  br label %free_mux

free_mux:                                         ; preds = %free_mux_buf, %if.end.free_mux_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %free_mux, %vidtv_mux_create_pid_ctx_once.exit201.i.cleanup_crit_edge, %vidtv_mux_create_pid_ctx_once.exit171.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %free_mux ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %vidtv_mux_create_pid_ctx_once.exit171.i.cleanup_crit_edge ], [ %call7.i.i, %vidtv_mux_create_pid_ctx_once.exit201.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidtv_channels_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidtv_channel_si_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vidtv_mux_tick(ptr noundef %work) #0 align 64 {
entry:
  %args.i.i = alloca %struct.pes_write_args, align 8
  %pat_args.i = alloca %struct.vidtv_psi_pat_write_args, align 4
  %pmt_args.i = alloca %struct.vidtv_psi_pmt_write_args, align 4
  %sdt_args.i = alloca %struct.vidtv_psi_sdt_write_args, align 4
  %nit_args.i = alloca %struct.vidtv_psi_nit_write_args, align 4
  %eit_args.i = alloca %struct.vidtv_psi_eit_write_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -152
  %streaming = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not170 = icmp eq i8 %1, 0
  br i1 %tobool.not170, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %current_jiffies.i = getelementptr i8, ptr %work, i32 -136
  %past_jiffies.i = getelementptr i8, ptr %work, i32 -128
  %clk.i = getelementptr i8, ptr %work, i32 -120
  %num_streamed_pcr.i = getelementptr i8, ptr %work, i32 -16
  %timing.i = getelementptr i8, ptr %work, i32 -144
  %pcr_period_usecs.i = getelementptr i8, ptr %work, i32 -112
  %pcr_pid.i = getelementptr i8, ptr %work, i32 46
  %mux_buf.i = getelementptr i8, ptr %work, i32 -56
  %mux_buf_sz.i = getelementptr i8, ptr %work, i32 -52
  %mux_buf_offset.i = getelementptr i8, ptr %work, i32 -48
  %num_streamed_si.i = getelementptr i8, ptr %work, i32 -8
  %si_period_usecs.i = getelementptr i8, ptr %work, i32 -104
  %4 = getelementptr inbounds %struct.vidtv_psi_pat_write_args, ptr %pat_args.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.vidtv_psi_pat_write_args, ptr %pat_args.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.vidtv_psi_pat_write_args, ptr %pat_args.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.vidtv_psi_pat_write_args, ptr %pat_args.i, i32 0, i32 4
  %si.i = getelementptr i8, ptr %work, i32 -40
  %8 = getelementptr inbounds i8, ptr %pmt_args.i, i32 12
  %offset4.i = getelementptr inbounds %struct.vidtv_psi_pmt_write_args, ptr %pmt_args.i, i32 0, i32 1
  %pmt.i = getelementptr inbounds %struct.vidtv_psi_pmt_write_args, ptr %pmt_args.i, i32 0, i32 2
  %buf_sz5.i = getelementptr inbounds %struct.vidtv_psi_pmt_write_args, ptr %pmt_args.i, i32 0, i32 4
  %continuity_counter7.i = getelementptr inbounds %struct.vidtv_psi_pmt_write_args, ptr %pmt_args.i, i32 0, i32 5
  %pcr_pid.i99 = getelementptr inbounds %struct.vidtv_psi_pmt_write_args, ptr %pmt_args.i, i32 0, i32 6
  %9 = getelementptr inbounds %struct.vidtv_psi_sdt_write_args, ptr %sdt_args.i, i32 0, i32 1
  %10 = getelementptr inbounds %struct.vidtv_psi_sdt_write_args, ptr %sdt_args.i, i32 0, i32 2
  %11 = getelementptr inbounds %struct.vidtv_psi_sdt_write_args, ptr %sdt_args.i, i32 0, i32 3
  %12 = getelementptr inbounds %struct.vidtv_psi_sdt_write_args, ptr %sdt_args.i, i32 0, i32 4
  %sdt13.i = getelementptr i8, ptr %work, i32 -32
  %13 = getelementptr inbounds %struct.vidtv_psi_nit_write_args, ptr %nit_args.i, i32 0, i32 2
  %14 = getelementptr inbounds %struct.vidtv_psi_nit_write_args, ptr %nit_args.i, i32 0, i32 3
  %15 = getelementptr inbounds i8, ptr %nit_args.i, i32 4
  %nit21.i = getelementptr i8, ptr %work, i32 -28
  %16 = getelementptr inbounds %struct.vidtv_psi_eit_write_args, ptr %eit_args.i, i32 0, i32 2
  %17 = getelementptr inbounds %struct.vidtv_psi_eit_write_args, ptr %eit_args.i, i32 0, i32 3
  %eit29.i = getelementptr i8, ptr %work, i32 -24
  %arrayidx.i.i101 = getelementptr i8, ptr %work, i32 -92
  %arrayidx.i137.i = getelementptr i8, ptr %work, i32 -80
  %arrayidx.i169.i = getelementptr i8, ptr %work, i32 -64
  %pmt_secs.i = getelementptr i8, ptr %work, i32 -36
  %dev.i = getelementptr i8, ptr %work, i32 -148
  %18 = getelementptr inbounds %struct.vidtv_psi_eit_write_args, ptr %eit_args.i, i32 0, i32 4
  %19 = getelementptr inbounds %struct.vidtv_psi_eit_write_args, ptr %eit_args.i, i32 0, i32 1
  %20 = getelementptr inbounds %struct.vidtv_psi_nit_write_args, ptr %nit_args.i, i32 0, i32 4
  %channels.i = getelementptr i8, ptr %work, i32 -44
  %dest_buf_sz.i.i = getelementptr inbounds %struct.pes_write_args, ptr %args.i.i, i32 0, i32 4
  %pid.i.i = getelementptr inbounds %struct.pes_write_args, ptr %args.i.i, i32 0, i32 5
  %encoder_id.i.i = getelementptr inbounds %struct.pes_write_args, ptr %args.i.i, i32 0, i32 6
  %stream_id.i.i = getelementptr inbounds %struct.pes_write_args, ptr %args.i.i, i32 0, i32 8
  %send_pts.i.i = getelementptr inbounds %struct.pes_write_args, ptr %args.i.i, i32 0, i32 9
  %continuity_counter.i.i = getelementptr inbounds %struct.pes_write_args, ptr %args.i.i, i32 0, i32 7
  %from.i.i = getelementptr inbounds %struct.pes_write_args, ptr %args.i.i, i32 0, i32 1
  %access_unit_len.i.i = getelementptr inbounds %struct.pes_write_args, ptr %args.i.i, i32 0, i32 2
  %dest_offset.i.i = getelementptr inbounds %struct.pes_write_args, ptr %args.i.i, i32 0, i32 3
  %pts8.i.i = getelementptr inbounds %struct.pes_write_args, ptr %args.i.i, i32 0, i32 10
  %pcr.i.i = getelementptr inbounds %struct.pes_write_args, ptr %args.i.i, i32 0, i32 14
  %arrayidx.i.i133 = getelementptr i8, ptr %work, i32 -72
  %on_new_packets_available_cb = getelementptr i8, ptr %work, i32 -60
  %priv = getelementptr i8, ptr %work, i32 56
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 8, i32 45, i32 1, i32 0, i32 1
  %22 = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 8, i32 47, i32 1, i32 0, i32 1
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 8, i32 49, i32 1, i32 0, i32 1
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 8, i32 44, i32 1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end39.while.body_crit_edge, %while.body.lr.ph
  %tot_bits.0171 = phi i32 [ 0, %while.body.lr.ph ], [ %tot_bits.1, %if.end39.while.body_crit_edge ]
  %25 = ptrtoint ptr %current_jiffies.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %current_jiffies.i, align 8
  %27 = ptrtoint ptr %past_jiffies.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %past_jiffies.i, align 8
  %call.i = call i64 @get_jiffies_64() #6
  %28 = ptrtoint ptr %current_jiffies.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call.i, ptr %current_jiffies.i, align 8
  %29 = ptrtoint ptr %past_jiffies.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %past_jiffies.i, align 8
  %sub.i = sub i64 %call.i, %30
  %conv.i = trunc i64 %sub.i to i32
  %call8.i = call i32 @jiffies_to_usecs(i32 noundef %conv.i) #6
  %conv9.i = zext i32 %call8.i to i64
  %mul.i = mul nuw nsw i64 %conv9.i, 27
  %31 = ptrtoint ptr %clk.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %clk.i, align 8
  %add.i = add i64 %mul.i, %32
  store i64 %add.i, ptr %clk.i, align 8
  %33 = ptrtoint ptr %num_streamed_pcr.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %num_streamed_pcr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %cmp.i = icmp eq i64 %34, 0
  br i1 %cmp.i, label %while.body.if.then_crit_edge, label %if.end.i

while.body.if.then_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.i:                                         ; preds = %while.body
  %35 = ptrtoint ptr %timing.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %timing.i, align 8
  %37 = ptrtoint ptr %pcr_period_usecs.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %pcr_period_usecs.i, align 8
  %mul.i68 = mul i64 %38, %34
  %conv.i69 = trunc i64 %mul.i68 to i32
  %call3.i.i = call i32 @__usecs_to_jiffies(i32 noundef %conv.i69) #6
  %conv3.i = zext i32 %call3.i.i to i64
  %add.i70 = add i64 %36, %conv3.i
  %39 = ptrtoint ptr %current_jiffies.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %current_jiffies.i, align 8
  %sub.i72 = sub i64 %add.i70, %40
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i72)
  %cmp5.i = icmp slt i64 %sub.i72, 0
  br i1 %cmp5.i, label %if.end.i.if.then_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %if.end.i.if.then_crit_edge, %while.body.if.then_crit_edge
  %41 = ptrtoint ptr %pcr_pid.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %pcr_pid.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %mul.i.i.i.i = mul i32 %conv.i.i, 1640531527
  %shr.i.i.i = lshr i32 %mul.i.i.i.i, 29
  %arrayidx.i.i = getelementptr %struct.vidtv_mux, ptr %add.ptr, i32 0, i32 4, i32 %shr.i.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %44, null
  %add.ptr.i.i = getelementptr i8, ptr %44, i32 -4
  %tobool2.not2730.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not27.i.i = or i1 %tobool.not.i.i, %tobool2.not2730.i.i
  br i1 %tobool2.not27.i.i, label %if.then.vidtv_mux_push_pcr.exit_crit_edge, label %if.then.for.body.i.i_crit_edge

if.then.for.body.i.i_crit_edge:                   ; preds = %if.then
  br label %for.body.i.i

if.then.vidtv_mux_push_pcr.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_push_pcr.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.for.body.i.i_crit_edge
  %ctx.028.i.i = phi ptr [ %add.ptr13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %if.then.for.body.i.i_crit_edge ]
  %45 = ptrtoint ptr %ctx.028.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ctx.028.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %42)
  %cmp.i.i73 = icmp eq i16 %46, %42
  br i1 %cmp.i.i73, label %for.body.i.i.vidtv_mux_push_pcr.exit_crit_edge, label %for.inc.i.i

for.body.i.i.vidtv_mux_push_pcr.exit_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_push_pcr.exit

for.inc.i.i:                                      ; preds = %for.body.i.i
  %h.i.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.028.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %h.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %h.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %48, null
  %add.ptr13.i.i = getelementptr i8, ptr %48, i32 -4
  %tobool2.not31.i.i = icmp eq ptr %add.ptr13.i.i, null
  %tobool2.not.i.i = or i1 %tobool9.not.i.i, %tobool2.not31.i.i
  br i1 %tobool2.not.i.i, label %for.inc.i.i.vidtv_mux_push_pcr.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.vidtv_mux_push_pcr.exit_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_push_pcr.exit

vidtv_mux_push_pcr.exit:                          ; preds = %for.inc.i.i.vidtv_mux_push_pcr.exit_crit_edge, %for.body.i.i.vidtv_mux_push_pcr.exit_crit_edge, %if.then.vidtv_mux_push_pcr.exit_crit_edge
  %ctx.0.lcssa.i.i = phi ptr [ null, %if.then.vidtv_mux_push_pcr.exit_crit_edge ], [ null, %for.inc.i.i.vidtv_mux_push_pcr.exit_crit_edge ], [ %ctx.028.i.i, %for.body.i.i.vidtv_mux_push_pcr.exit_crit_edge ]
  %49 = ptrtoint ptr %mux_buf.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mux_buf.i, align 8
  %51 = ptrtoint ptr %mux_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mux_buf_sz.i, align 4
  %cc.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.0.lcssa.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %clk.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %clk.i, align 8
  %55 = ptrtoint ptr %50 to i32
  %args.sroa.0.sroa.0.0.insert.ext.i = zext i32 %55 to i64
  %args.sroa.0.sroa.0.0.insert.shift.i = shl nuw i64 %args.sroa.0.sroa.0.0.insert.ext.i, 32
  %.fca.0.insert.i = insertvalue [4 x i64] poison, i64 %args.sroa.0.sroa.0.0.insert.shift.i, 0
  %args.sroa.5.sroa.56.0.insert.ext.i = zext i32 %52 to i64
  %args.sroa.5.sroa.0.0.insert.ext.i = zext i16 %42 to i64
  %args.sroa.5.sroa.0.0.insert.shift.i = shl nuw i64 %args.sroa.5.sroa.0.0.insert.ext.i, 48
  %args.sroa.5.sroa.0.0.insert.insert.i = or i64 %args.sroa.5.sroa.0.0.insert.shift.i, %args.sroa.5.sroa.56.0.insert.ext.i
  %.fca.1.insert.i = insertvalue [4 x i64] %.fca.0.insert.i, i64 %args.sroa.5.sroa.0.0.insert.insert.i, 1
  %56 = ptrtoint ptr %cc.i to i32
  %args.sroa.8.sroa.0.0.insert.ext.i = zext i32 %56 to i64
  %args.sroa.8.sroa.0.0.insert.shift.i = shl nuw i64 %args.sroa.8.sroa.0.0.insert.ext.i, 32
  %.fca.2.insert.i = insertvalue [4 x i64] %.fca.1.insert.i, i64 %args.sroa.8.sroa.0.0.insert.shift.i, 2
  %.fca.3.insert.i = insertvalue [4 x i64] %.fca.2.insert.i, i64 %54, 3
  %call2.i = call i32 @vidtv_ts_pcr_write_into([4 x i64] %.fca.3.insert.i) #6
  %57 = ptrtoint ptr %mux_buf_offset.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mux_buf_offset.i, align 8
  %add3.i = add i32 %58, %call2.i
  store i32 %add3.i, ptr %mux_buf_offset.i, align 8
  %59 = ptrtoint ptr %num_streamed_pcr.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %num_streamed_pcr.i, align 8
  %inc.i = add i64 %60, 1
  store i64 %inc.i, ptr %num_streamed_pcr.i, align 8
  br label %if.end

if.end:                                           ; preds = %vidtv_mux_push_pcr.exit, %if.end.i.if.end_crit_edge
  %nbytes.0 = phi i32 [ %call2.i, %vidtv_mux_push_pcr.exit ], [ 0, %if.end.i.if.end_crit_edge ]
  %61 = ptrtoint ptr %num_streamed_si.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %num_streamed_si.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %62)
  %cmp.i76 = icmp eq i64 %62, 0
  br i1 %cmp.i76, label %if.end.if.then3_crit_edge, label %if.end.i80

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.end.i80:                                       ; preds = %if.end
  %63 = ptrtoint ptr %timing.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %timing.i, align 8
  %65 = ptrtoint ptr %si_period_usecs.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %si_period_usecs.i, align 8
  %mul.i78 = mul i64 %66, %62
  %conv.i79 = trunc i64 %mul.i78 to i32
  %call3.i.i87 = call i32 @__usecs_to_jiffies(i32 noundef %conv.i79) #6
  %conv3.i90 = zext i32 %call3.i.i87 to i64
  %add.i91 = add i64 %64, %conv3.i90
  %67 = ptrtoint ptr %current_jiffies.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %current_jiffies.i, align 8
  %sub.i93 = sub i64 %add.i91, %68
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i93)
  %cmp5.i94 = icmp slt i64 %sub.i93, 0
  br i1 %cmp5.i94, label %if.end.i80.if.then3_crit_edge, label %if.end.i80.if.end6_crit_edge

if.end.i80.if.end6_crit_edge:                     ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end.i80.if.then3_crit_edge:                    ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3:                                         ; preds = %if.end.i80.if.then3_crit_edge, %if.end.if.then3_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pat_args.i) #6
  %69 = ptrtoint ptr %mux_buf.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mux_buf.i, align 8
  %71 = ptrtoint ptr %pat_args.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %70, ptr %pat_args.i, align 4
  %72 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %4, align 4
  %73 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %si.i, align 8
  %75 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %5, align 4
  %76 = ptrtoint ptr %mux_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mux_buf_sz.i, align 4
  %78 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %6, align 4
  %79 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pmt_args.i) #6
  %80 = call ptr @memset(ptr %8, i32 255, i32 16)
  %81 = ptrtoint ptr %pmt_args.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %70, ptr %pmt_args.i, align 4
  %82 = ptrtoint ptr %offset4.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %offset4.i, align 4
  %83 = ptrtoint ptr %pmt.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %pmt.i, align 4
  %84 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %8, align 4
  %85 = ptrtoint ptr %buf_sz5.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %77, ptr %buf_sz5.i, align 4
  %86 = ptrtoint ptr %continuity_counter7.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %continuity_counter7.i, align 4
  %87 = ptrtoint ptr %pcr_pid.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %pcr_pid.i, align 2
  %89 = ptrtoint ptr %pcr_pid.i99 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %88, ptr %pcr_pid.i99, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sdt_args.i) #6
  %90 = ptrtoint ptr %sdt_args.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %70, ptr %sdt_args.i, align 4
  %91 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %9, align 4
  %92 = ptrtoint ptr %sdt13.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sdt13.i, align 8
  %94 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %10, align 4
  %95 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %77, ptr %11, align 4
  %96 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %nit_args.i) #6
  %97 = call ptr @memset(ptr %15, i32 255, i32 16)
  %98 = ptrtoint ptr %nit_args.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %70, ptr %nit_args.i, align 4
  %99 = ptrtoint ptr %nit21.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %nit21.i, align 4
  %101 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %13, align 4
  %102 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %77, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %eit_args.i) #6
  %103 = ptrtoint ptr %eit_args.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %70, ptr %eit_args.i, align 4
  %104 = ptrtoint ptr %eit29.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %eit29.i, align 8
  %106 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %16, align 4
  %107 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %77, ptr %17, align 4
  %108 = ptrtoint ptr %mux_buf_offset.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %mux_buf_offset.i, align 8
  %110 = ptrtoint ptr %arrayidx.i.i101 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx.i.i101, align 4
  %tobool.not.i.i102 = icmp eq ptr %111, null
  %add.ptr.i.i103 = getelementptr i8, ptr %111, i32 -4
  %tobool2.not2730.i.i104 = icmp eq ptr %add.ptr.i.i103, null
  %tobool2.not27.i.i105 = or i1 %tobool.not.i.i102, %tobool2.not2730.i.i104
  br i1 %tobool2.not27.i.i105, label %if.then3.vidtv_mux_get_pid_ctx.exit.i_crit_edge, label %if.then3.for.body.i.i108_crit_edge

if.then3.for.body.i.i108_crit_edge:               ; preds = %if.then3
  br label %for.body.i.i108

if.then3.vidtv_mux_get_pid_ctx.exit.i_crit_edge:  ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_get_pid_ctx.exit.i

for.body.i.i108:                                  ; preds = %for.inc.i.i114.for.body.i.i108_crit_edge, %if.then3.for.body.i.i108_crit_edge
  %ctx.028.i.i106 = phi ptr [ %add.ptr13.i.i111, %for.inc.i.i114.for.body.i.i108_crit_edge ], [ %add.ptr.i.i103, %if.then3.for.body.i.i108_crit_edge ]
  %112 = ptrtoint ptr %ctx.028.i.i106 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %ctx.028.i.i106, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %cmp.i.i107 = icmp eq i16 %113, 0
  br i1 %cmp.i.i107, label %for.body.i.i108.vidtv_mux_get_pid_ctx.exit.i_crit_edge, label %for.inc.i.i114

for.body.i.i108.vidtv_mux_get_pid_ctx.exit.i_crit_edge: ; preds = %for.body.i.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_get_pid_ctx.exit.i

for.inc.i.i114:                                   ; preds = %for.body.i.i108
  %h.i.i109 = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.028.i.i106, i32 0, i32 2
  %114 = ptrtoint ptr %h.i.i109 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %h.i.i109, align 4
  %tobool9.not.i.i110 = icmp eq ptr %115, null
  %add.ptr13.i.i111 = getelementptr i8, ptr %115, i32 -4
  %tobool2.not31.i.i112 = icmp eq ptr %add.ptr13.i.i111, null
  %tobool2.not.i.i113 = or i1 %tobool9.not.i.i110, %tobool2.not31.i.i112
  br i1 %tobool2.not.i.i113, label %for.inc.i.i114.vidtv_mux_get_pid_ctx.exit.i_crit_edge, label %for.inc.i.i114.for.body.i.i108_crit_edge

for.inc.i.i114.for.body.i.i108_crit_edge:         ; preds = %for.inc.i.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i108

for.inc.i.i114.vidtv_mux_get_pid_ctx.exit.i_crit_edge: ; preds = %for.inc.i.i114
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_get_pid_ctx.exit.i

vidtv_mux_get_pid_ctx.exit.i:                     ; preds = %for.inc.i.i114.vidtv_mux_get_pid_ctx.exit.i_crit_edge, %for.body.i.i108.vidtv_mux_get_pid_ctx.exit.i_crit_edge, %if.then3.vidtv_mux_get_pid_ctx.exit.i_crit_edge
  %ctx.0.lcssa.i.i115 = phi ptr [ null, %if.then3.vidtv_mux_get_pid_ctx.exit.i_crit_edge ], [ null, %for.inc.i.i114.vidtv_mux_get_pid_ctx.exit.i_crit_edge ], [ %ctx.028.i.i106, %for.body.i.i108.vidtv_mux_get_pid_ctx.exit.i_crit_edge ]
  %116 = ptrtoint ptr %arrayidx.i137.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i137.i, align 4
  %tobool.not.i138.i = icmp eq ptr %117, null
  %add.ptr.i139.i = getelementptr i8, ptr %117, i32 -4
  %tobool2.not2730.i140.i = icmp eq ptr %add.ptr.i139.i, null
  %tobool2.not27.i141.i = or i1 %tobool.not.i138.i, %tobool2.not2730.i140.i
  br i1 %tobool2.not27.i141.i, label %vidtv_mux_get_pid_ctx.exit.i.vidtv_mux_get_pid_ctx.exit152.i_crit_edge, label %vidtv_mux_get_pid_ctx.exit.i.for.body.i144.i_crit_edge

vidtv_mux_get_pid_ctx.exit.i.for.body.i144.i_crit_edge: ; preds = %vidtv_mux_get_pid_ctx.exit.i
  br label %for.body.i144.i

vidtv_mux_get_pid_ctx.exit.i.vidtv_mux_get_pid_ctx.exit152.i_crit_edge: ; preds = %vidtv_mux_get_pid_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_get_pid_ctx.exit152.i

for.body.i144.i:                                  ; preds = %for.inc.i150.i.for.body.i144.i_crit_edge, %vidtv_mux_get_pid_ctx.exit.i.for.body.i144.i_crit_edge
  %ctx.028.i142.i = phi ptr [ %add.ptr13.i147.i, %for.inc.i150.i.for.body.i144.i_crit_edge ], [ %add.ptr.i139.i, %vidtv_mux_get_pid_ctx.exit.i.for.body.i144.i_crit_edge ]
  %118 = ptrtoint ptr %ctx.028.i142.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %ctx.028.i142.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %119)
  %cmp.i143.i = icmp eq i16 %119, 17
  br i1 %cmp.i143.i, label %for.body.i144.i.vidtv_mux_get_pid_ctx.exit152.i_crit_edge, label %for.inc.i150.i

for.body.i144.i.vidtv_mux_get_pid_ctx.exit152.i_crit_edge: ; preds = %for.body.i144.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_get_pid_ctx.exit152.i

for.inc.i150.i:                                   ; preds = %for.body.i144.i
  %h.i145.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.028.i142.i, i32 0, i32 2
  %120 = ptrtoint ptr %h.i145.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %h.i145.i, align 4
  %tobool9.not.i146.i = icmp eq ptr %121, null
  %add.ptr13.i147.i = getelementptr i8, ptr %121, i32 -4
  %tobool2.not31.i148.i = icmp eq ptr %add.ptr13.i147.i, null
  %tobool2.not.i149.i = or i1 %tobool9.not.i146.i, %tobool2.not31.i148.i
  br i1 %tobool2.not.i149.i, label %for.inc.i150.i.vidtv_mux_get_pid_ctx.exit152.i_crit_edge, label %for.inc.i150.i.for.body.i144.i_crit_edge

for.inc.i150.i.for.body.i144.i_crit_edge:         ; preds = %for.inc.i150.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i144.i

for.inc.i150.i.vidtv_mux_get_pid_ctx.exit152.i_crit_edge: ; preds = %for.inc.i150.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_get_pid_ctx.exit152.i

vidtv_mux_get_pid_ctx.exit152.i:                  ; preds = %for.inc.i150.i.vidtv_mux_get_pid_ctx.exit152.i_crit_edge, %for.body.i144.i.vidtv_mux_get_pid_ctx.exit152.i_crit_edge, %vidtv_mux_get_pid_ctx.exit.i.vidtv_mux_get_pid_ctx.exit152.i_crit_edge
  %ctx.0.lcssa.i151.i = phi ptr [ null, %vidtv_mux_get_pid_ctx.exit.i.vidtv_mux_get_pid_ctx.exit152.i_crit_edge ], [ null, %for.inc.i150.i.vidtv_mux_get_pid_ctx.exit152.i_crit_edge ], [ %ctx.028.i142.i, %for.body.i144.i.vidtv_mux_get_pid_ctx.exit152.i_crit_edge ]
  br i1 %tobool2.not27.i.i105, label %vidtv_mux_get_pid_ctx.exit152.i.vidtv_mux_get_pid_ctx.exit168.i_crit_edge, label %vidtv_mux_get_pid_ctx.exit152.i.for.body.i160.i_crit_edge

vidtv_mux_get_pid_ctx.exit152.i.for.body.i160.i_crit_edge: ; preds = %vidtv_mux_get_pid_ctx.exit152.i
  br label %for.body.i160.i

vidtv_mux_get_pid_ctx.exit152.i.vidtv_mux_get_pid_ctx.exit168.i_crit_edge: ; preds = %vidtv_mux_get_pid_ctx.exit152.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_get_pid_ctx.exit168.i

for.body.i160.i:                                  ; preds = %for.inc.i166.i.for.body.i160.i_crit_edge, %vidtv_mux_get_pid_ctx.exit152.i.for.body.i160.i_crit_edge
  %ctx.028.i158.i = phi ptr [ %add.ptr13.i163.i, %for.inc.i166.i.for.body.i160.i_crit_edge ], [ %add.ptr.i.i103, %vidtv_mux_get_pid_ctx.exit152.i.for.body.i160.i_crit_edge ]
  %122 = ptrtoint ptr %ctx.028.i158.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %ctx.028.i158.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %123)
  %cmp.i159.i = icmp eq i16 %123, 16
  br i1 %cmp.i159.i, label %for.body.i160.i.vidtv_mux_get_pid_ctx.exit168.i_crit_edge, label %for.inc.i166.i

for.body.i160.i.vidtv_mux_get_pid_ctx.exit168.i_crit_edge: ; preds = %for.body.i160.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_get_pid_ctx.exit168.i

for.inc.i166.i:                                   ; preds = %for.body.i160.i
  %h.i161.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.028.i158.i, i32 0, i32 2
  %124 = ptrtoint ptr %h.i161.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %h.i161.i, align 4
  %tobool9.not.i162.i = icmp eq ptr %125, null
  %add.ptr13.i163.i = getelementptr i8, ptr %125, i32 -4
  %tobool2.not31.i164.i = icmp eq ptr %add.ptr13.i163.i, null
  %tobool2.not.i165.i = or i1 %tobool9.not.i162.i, %tobool2.not31.i164.i
  br i1 %tobool2.not.i165.i, label %for.inc.i166.i.vidtv_mux_get_pid_ctx.exit168.i_crit_edge, label %for.inc.i166.i.for.body.i160.i_crit_edge

for.inc.i166.i.for.body.i160.i_crit_edge:         ; preds = %for.inc.i166.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i160.i

for.inc.i166.i.vidtv_mux_get_pid_ctx.exit168.i_crit_edge: ; preds = %for.inc.i166.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_get_pid_ctx.exit168.i

vidtv_mux_get_pid_ctx.exit168.i:                  ; preds = %for.inc.i166.i.vidtv_mux_get_pid_ctx.exit168.i_crit_edge, %for.body.i160.i.vidtv_mux_get_pid_ctx.exit168.i_crit_edge, %vidtv_mux_get_pid_ctx.exit152.i.vidtv_mux_get_pid_ctx.exit168.i_crit_edge
  %ctx.0.lcssa.i167.i = phi ptr [ null, %vidtv_mux_get_pid_ctx.exit152.i.vidtv_mux_get_pid_ctx.exit168.i_crit_edge ], [ null, %for.inc.i166.i.vidtv_mux_get_pid_ctx.exit168.i_crit_edge ], [ %ctx.028.i158.i, %for.body.i160.i.vidtv_mux_get_pid_ctx.exit168.i_crit_edge ]
  %126 = ptrtoint ptr %arrayidx.i169.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %arrayidx.i169.i, align 4
  %tobool.not.i170.i = icmp eq ptr %127, null
  %add.ptr.i171.i = getelementptr i8, ptr %127, i32 -4
  %tobool2.not2730.i172.i = icmp eq ptr %add.ptr.i171.i, null
  %tobool2.not27.i173.i = or i1 %tobool.not.i170.i, %tobool2.not2730.i172.i
  br i1 %tobool2.not27.i173.i, label %vidtv_mux_get_pid_ctx.exit168.i.vidtv_mux_get_pid_ctx.exit184.i_crit_edge, label %vidtv_mux_get_pid_ctx.exit168.i.for.body.i176.i_crit_edge

vidtv_mux_get_pid_ctx.exit168.i.for.body.i176.i_crit_edge: ; preds = %vidtv_mux_get_pid_ctx.exit168.i
  br label %for.body.i176.i

vidtv_mux_get_pid_ctx.exit168.i.vidtv_mux_get_pid_ctx.exit184.i_crit_edge: ; preds = %vidtv_mux_get_pid_ctx.exit168.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_get_pid_ctx.exit184.i

for.body.i176.i:                                  ; preds = %for.inc.i182.i.for.body.i176.i_crit_edge, %vidtv_mux_get_pid_ctx.exit168.i.for.body.i176.i_crit_edge
  %ctx.028.i174.i = phi ptr [ %add.ptr13.i179.i, %for.inc.i182.i.for.body.i176.i_crit_edge ], [ %add.ptr.i171.i, %vidtv_mux_get_pid_ctx.exit168.i.for.body.i176.i_crit_edge ]
  %128 = ptrtoint ptr %ctx.028.i174.i to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %ctx.028.i174.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %129)
  %cmp.i175.i = icmp eq i16 %129, 18
  br i1 %cmp.i175.i, label %for.body.i176.i.vidtv_mux_get_pid_ctx.exit184.i_crit_edge, label %for.inc.i182.i

for.body.i176.i.vidtv_mux_get_pid_ctx.exit184.i_crit_edge: ; preds = %for.body.i176.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_get_pid_ctx.exit184.i

for.inc.i182.i:                                   ; preds = %for.body.i176.i
  %h.i177.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.028.i174.i, i32 0, i32 2
  %130 = ptrtoint ptr %h.i177.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %h.i177.i, align 4
  %tobool9.not.i178.i = icmp eq ptr %131, null
  %add.ptr13.i179.i = getelementptr i8, ptr %131, i32 -4
  %tobool2.not31.i180.i = icmp eq ptr %add.ptr13.i179.i, null
  %tobool2.not.i181.i = or i1 %tobool9.not.i178.i, %tobool2.not31.i180.i
  br i1 %tobool2.not.i181.i, label %for.inc.i182.i.vidtv_mux_get_pid_ctx.exit184.i_crit_edge, label %for.inc.i182.i.for.body.i176.i_crit_edge

for.inc.i182.i.for.body.i176.i_crit_edge:         ; preds = %for.inc.i182.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i176.i

for.inc.i182.i.vidtv_mux_get_pid_ctx.exit184.i_crit_edge: ; preds = %for.inc.i182.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_get_pid_ctx.exit184.i

vidtv_mux_get_pid_ctx.exit184.i:                  ; preds = %for.inc.i182.i.vidtv_mux_get_pid_ctx.exit184.i_crit_edge, %for.body.i176.i.vidtv_mux_get_pid_ctx.exit184.i_crit_edge, %vidtv_mux_get_pid_ctx.exit168.i.vidtv_mux_get_pid_ctx.exit184.i_crit_edge
  %ctx.0.lcssa.i183.i = phi ptr [ null, %vidtv_mux_get_pid_ctx.exit168.i.vidtv_mux_get_pid_ctx.exit184.i_crit_edge ], [ null, %for.inc.i182.i.vidtv_mux_get_pid_ctx.exit184.i_crit_edge ], [ %ctx.028.i174.i, %for.body.i176.i.vidtv_mux_get_pid_ctx.exit184.i_crit_edge ]
  %132 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %109, ptr %4, align 4
  %cc.i116 = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.0.lcssa.i.i115, i32 0, i32 1
  %133 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %cc.i116, ptr %7, align 4
  %call39.i = call i32 @vidtv_psi_pat_write_into(ptr noundef nonnull %pat_args.i) #6
  %134 = ptrtoint ptr %mux_buf_offset.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mux_buf_offset.i, align 8
  %add.i117 = add i32 %135, %call39.i
  store i32 %add.i117, ptr %mux_buf_offset.i, align 8
  %136 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %si.i, align 8
  %num_pmt201.i = getelementptr inbounds %struct.vidtv_psi_table_pat, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %num_pmt201.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 2)
  %139 = load i16, ptr %num_pmt201.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %139)
  %cmp203.not.i = icmp eq i16 %139, 0
  br i1 %cmp203.not.i, label %vidtv_mux_get_pid_ctx.exit184.i.vidtv_mux_push_si.exit_crit_edge, label %vidtv_mux_get_pid_ctx.exit184.i.for.body.i_crit_edge

vidtv_mux_get_pid_ctx.exit184.i.for.body.i_crit_edge: ; preds = %vidtv_mux_get_pid_ctx.exit184.i
  br label %for.body.i

vidtv_mux_get_pid_ctx.exit184.i.vidtv_mux_push_si.exit_crit_edge: ; preds = %vidtv_mux_get_pid_ctx.exit184.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_push_si.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %vidtv_mux_get_pid_ctx.exit184.i.for.body.i_crit_edge
  %140 = phi ptr [ %166, %for.inc.i.for.body.i_crit_edge ], [ %137, %vidtv_mux_get_pid_ctx.exit184.i.for.body.i_crit_edge ]
  %i.0204.i = phi i32 [ %inc.i120, %for.inc.i.for.body.i_crit_edge ], [ 0, %vidtv_mux_get_pid_ctx.exit184.i.for.body.i_crit_edge ]
  %141 = ptrtoint ptr %pmt_secs.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %pmt_secs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %142, i32 %i.0204.i
  %143 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.i, align 4
  %call47.i = call zeroext i16 @vidtv_psi_pmt_get_pid(ptr noundef %144, ptr noundef %140) #6
  %conv48.i = zext i16 %call47.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %call47.i)
  %cmp49.i = icmp ugt i16 %call47.i, 8191
  br i1 %cmp49.i, label %do.body.i, label %if.end57.i

do.body.i:                                        ; preds = %for.body.i
  %call51.i = call i32 @___ratelimit(ptr noundef nonnull @vidtv_mux_push_si._rs, ptr noundef nonnull @__func__.vidtv_mux_push_si) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool.not.i, label %do.body.i.for.inc.i_crit_edge, label %do.end.i

do.body.i.for.inc.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %145 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %146, ptr noundef nonnull @.str.8, i32 noundef %conv48.i) #9
  br label %for.inc.i

if.end57.i:                                       ; preds = %for.body.i
  %mul.i.i.i.i118 = mul i32 %conv48.i, 1640531527
  %shr.i.i.i119 = lshr i32 %mul.i.i.i.i118, 29
  %arrayidx.i185.i = getelementptr %struct.vidtv_mux, ptr %add.ptr, i32 0, i32 4, i32 %shr.i.i.i119
  %147 = ptrtoint ptr %arrayidx.i185.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %arrayidx.i185.i, align 4
  %tobool.not.i186.i = icmp eq ptr %148, null
  %add.ptr.i187.i = getelementptr i8, ptr %148, i32 -4
  %tobool2.not2730.i188.i = icmp eq ptr %add.ptr.i187.i, null
  %tobool2.not27.i189.i = or i1 %tobool.not.i186.i, %tobool2.not2730.i188.i
  br i1 %tobool2.not27.i189.i, label %if.end57.i.vidtv_mux_get_pid_ctx.exit200.i_crit_edge, label %if.end57.i.for.body.i192.i_crit_edge

if.end57.i.for.body.i192.i_crit_edge:             ; preds = %if.end57.i
  br label %for.body.i192.i

if.end57.i.vidtv_mux_get_pid_ctx.exit200.i_crit_edge: ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_get_pid_ctx.exit200.i

for.body.i192.i:                                  ; preds = %for.inc.i198.i.for.body.i192.i_crit_edge, %if.end57.i.for.body.i192.i_crit_edge
  %ctx.028.i190.i = phi ptr [ %add.ptr13.i195.i, %for.inc.i198.i.for.body.i192.i_crit_edge ], [ %add.ptr.i187.i, %if.end57.i.for.body.i192.i_crit_edge ]
  %149 = ptrtoint ptr %ctx.028.i190.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %ctx.028.i190.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %150, i16 %call47.i)
  %cmp.i191.i = icmp eq i16 %150, %call47.i
  br i1 %cmp.i191.i, label %for.body.i192.i.vidtv_mux_get_pid_ctx.exit200.i_crit_edge, label %for.inc.i198.i

for.body.i192.i.vidtv_mux_get_pid_ctx.exit200.i_crit_edge: ; preds = %for.body.i192.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_get_pid_ctx.exit200.i

for.inc.i198.i:                                   ; preds = %for.body.i192.i
  %h.i193.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.028.i190.i, i32 0, i32 2
  %151 = ptrtoint ptr %h.i193.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %h.i193.i, align 4
  %tobool9.not.i194.i = icmp eq ptr %152, null
  %add.ptr13.i195.i = getelementptr i8, ptr %152, i32 -4
  %tobool2.not31.i196.i = icmp eq ptr %add.ptr13.i195.i, null
  %tobool2.not.i197.i = or i1 %tobool9.not.i194.i, %tobool2.not31.i196.i
  br i1 %tobool2.not.i197.i, label %for.inc.i198.i.vidtv_mux_get_pid_ctx.exit200.i_crit_edge, label %for.inc.i198.i.for.body.i192.i_crit_edge

for.inc.i198.i.for.body.i192.i_crit_edge:         ; preds = %for.inc.i198.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i192.i

for.inc.i198.i.vidtv_mux_get_pid_ctx.exit200.i_crit_edge: ; preds = %for.inc.i198.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_get_pid_ctx.exit200.i

vidtv_mux_get_pid_ctx.exit200.i:                  ; preds = %for.inc.i198.i.vidtv_mux_get_pid_ctx.exit200.i_crit_edge, %for.body.i192.i.vidtv_mux_get_pid_ctx.exit200.i_crit_edge, %if.end57.i.vidtv_mux_get_pid_ctx.exit200.i_crit_edge
  %ctx.0.lcssa.i199.i = phi ptr [ null, %if.end57.i.vidtv_mux_get_pid_ctx.exit200.i_crit_edge ], [ null, %for.inc.i198.i.vidtv_mux_get_pid_ctx.exit200.i_crit_edge ], [ %ctx.028.i190.i, %for.body.i192.i.vidtv_mux_get_pid_ctx.exit200.i_crit_edge ]
  %153 = ptrtoint ptr %mux_buf_offset.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %mux_buf_offset.i, align 8
  %155 = ptrtoint ptr %offset4.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %offset4.i, align 4
  %156 = ptrtoint ptr %pmt_secs.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pmt_secs.i, align 4
  %arrayidx63.i = getelementptr ptr, ptr %157, i32 %i.0204.i
  %158 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %arrayidx63.i, align 4
  %160 = ptrtoint ptr %pmt.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %159, ptr %pmt.i, align 4
  %161 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %call47.i, ptr %8, align 4
  %cc66.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.0.lcssa.i199.i, i32 0, i32 1
  %162 = ptrtoint ptr %continuity_counter7.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %cc66.i, ptr %continuity_counter7.i, align 4
  %call68.i = call i32 @vidtv_psi_pmt_write_into(ptr noundef nonnull %pmt_args.i) #6
  %163 = ptrtoint ptr %mux_buf_offset.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %mux_buf_offset.i, align 8
  %add70.i = add i32 %164, %call68.i
  store i32 %add70.i, ptr %mux_buf_offset.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %vidtv_mux_get_pid_ctx.exit200.i, %do.end.i, %do.body.i.for.inc.i_crit_edge
  %inc.i120 = add nuw nsw i32 %i.0204.i, 1
  %165 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %si.i, align 8
  %num_pmt.i = getelementptr inbounds %struct.vidtv_psi_table_pat, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %num_pmt.i to i32
  call void @__asan_loadN_noabort(i32 %167, i32 2)
  %168 = load i16, ptr %num_pmt.i, align 1
  %conv.i121 = zext i16 %168 to i32
  %cmp.i122 = icmp ult i32 %inc.i120, %conv.i121
  br i1 %cmp.i122, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.vidtv_mux_push_si.exit_crit_edge

for.inc.i.vidtv_mux_push_si.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_push_si.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

vidtv_mux_push_si.exit:                           ; preds = %for.inc.i.vidtv_mux_push_si.exit_crit_edge, %vidtv_mux_get_pid_ctx.exit184.i.vidtv_mux_push_si.exit_crit_edge
  %169 = ptrtoint ptr %mux_buf_offset.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %mux_buf_offset.i, align 8
  %171 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %9, align 4
  %cc73.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.0.lcssa.i151.i, i32 0, i32 1
  %172 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %cc73.i, ptr %12, align 4
  %call75.i = call i32 @vidtv_psi_sdt_write_into(ptr noundef nonnull %sdt_args.i) #6
  %173 = ptrtoint ptr %mux_buf_offset.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %mux_buf_offset.i, align 8
  %add77.i = add i32 %174, %call75.i
  store i32 %add77.i, ptr %mux_buf_offset.i, align 8
  %175 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %add77.i, ptr %15, align 4
  %cc80.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.0.lcssa.i167.i, i32 0, i32 1
  %176 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %cc80.i, ptr %20, align 4
  %call82.i = call i32 @vidtv_psi_nit_write_into(ptr noundef nonnull %nit_args.i) #6
  %177 = ptrtoint ptr %mux_buf_offset.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %mux_buf_offset.i, align 8
  %add84.i = add i32 %178, %call82.i
  store i32 %add84.i, ptr %mux_buf_offset.i, align 8
  %179 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %add84.i, ptr %19, align 4
  %cc87.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.0.lcssa.i183.i, i32 0, i32 1
  %180 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %cc87.i, ptr %18, align 4
  %call89.i = call i32 @vidtv_psi_eit_write_into(ptr noundef nonnull %eit_args.i) #6
  %181 = ptrtoint ptr %mux_buf_offset.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %mux_buf_offset.i, align 8
  %add91.i = add i32 %182, %call89.i
  store i32 %add91.i, ptr %mux_buf_offset.i, align 8
  %183 = ptrtoint ptr %num_streamed_si.i to i32
  call void @__asan_load8_noabort(i32 %183)
  %184 = load i64, ptr %num_streamed_si.i, align 8
  %inc93.i = add i64 %184, 1
  store i64 %inc93.i, ptr %num_streamed_si.i, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %eit_args.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %nit_args.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sdt_args.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pmt_args.i) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pat_args.i) #6
  %sub.i123 = sub i32 %nbytes.0, %109
  %add5 = add i32 %sub.i123, %add91.i
  br label %if.end6

if.end6:                                          ; preds = %vidtv_mux_push_si.exit, %if.end.i80.if.end6_crit_edge
  %nbytes.1 = phi i32 [ %add5, %vidtv_mux_push_si.exit ], [ %nbytes.0, %if.end.i80.if.end6_crit_edge ]
  %185 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %cur_chnl.023.i = load ptr, ptr %channels.i, align 4
  %tobool.not24.i = icmp eq ptr %cur_chnl.023.i, null
  br i1 %tobool.not24.i, label %if.end6.vidtv_mux_poll_encoders.exit_crit_edge, label %if.end6.while.body.i_crit_edge

if.end6.while.body.i_crit_edge:                   ; preds = %if.end6
  br label %while.body.i

if.end6.vidtv_mux_poll_encoders.exit_crit_edge:   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_poll_encoders.exit

while.body.i:                                     ; preds = %while.end.i.while.body.i_crit_edge, %if.end6.while.body.i_crit_edge
  %cur_chnl.026.i = phi ptr [ %cur_chnl.0.i, %while.end.i.while.body.i_crit_edge ], [ %cur_chnl.023.i, %if.end6.while.body.i_crit_edge ]
  %nbytes.025.i = phi i32 [ %nbytes.1.lcssa.i, %while.end.i.while.body.i_crit_edge ], [ 0, %if.end6.while.body.i_crit_edge ]
  %encoders.i = getelementptr inbounds %struct.vidtv_channel, ptr %cur_chnl.026.i, i32 0, i32 6
  %186 = ptrtoint ptr %encoders.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %e.019.i = load ptr, ptr %encoders.i, align 4
  %tobool2.not20.i = icmp eq ptr %e.019.i, null
  br i1 %tobool2.not20.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body3.i_crit_edge

while.body.i.while.body3.i_crit_edge:             ; preds = %while.body.i
  br label %while.body3.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body3.i:                                    ; preds = %vidtv_mux_packetize_access_units.exit.i.while.body3.i_crit_edge, %while.body.i.while.body3.i_crit_edge
  %e.022.i = phi ptr [ %e.0.i, %vidtv_mux_packetize_access_units.exit.i.while.body3.i_crit_edge ], [ %e.019.i, %while.body.i.while.body3.i_crit_edge ]
  %nbytes.121.i = phi i32 [ %add.i128, %vidtv_mux_packetize_access_units.exit.i.while.body3.i_crit_edge ], [ %nbytes.025.i, %while.body.i.while.body3.i_crit_edge ]
  %encode.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e.022.i, i32 0, i32 14
  %187 = ptrtoint ptr %encode.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %encode.i, align 4
  %call.i125 = call ptr %188(ptr noundef nonnull %e.022.i) #6
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %args.i.i) #6
  %189 = call ptr @memset(ptr %args.i.i, i32 0, i32 80)
  %190 = ptrtoint ptr %mux_buf.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %mux_buf.i, align 8
  %192 = ptrtoint ptr %args.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %191, ptr %args.i.i, align 8
  %193 = ptrtoint ptr %mux_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %mux_buf_sz.i, align 4
  %195 = ptrtoint ptr %dest_buf_sz.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %dest_buf_sz.i.i, align 8
  %es_pid.i.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e.022.i, i32 0, i32 13
  %196 = ptrtoint ptr %es_pid.i.i to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %es_pid.i.i, align 2
  %198 = ptrtoint ptr %pid.i.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %197, ptr %pid.i.i, align 4
  %199 = ptrtoint ptr %e.022.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %e.022.i, align 8
  %201 = ptrtoint ptr %encoder_id.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %encoder_id.i.i, align 8
  %stream_id1.i.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e.022.i, i32 0, i32 12
  %202 = ptrtoint ptr %stream_id1.i.i to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %stream_id1.i.i, align 8
  %204 = ptrtoint ptr %stream_id.i.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %203, ptr %stream_id.i.i, align 8
  %205 = ptrtoint ptr %send_pts.i.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 1, ptr %send_pts.i.i, align 2
  %access_units.i.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e.022.i, i32 0, i32 6
  %206 = ptrtoint ptr %access_units.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %access_units.i.i, align 8
  %208 = ptrtoint ptr %mux_buf_offset.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %mux_buf_offset.i, align 8
  %conv.i.i.i.i = zext i16 %197 to i32
  %mul.i.i.i.i.i.i = mul i32 %conv.i.i.i.i, 1640531527
  %shr.i.i.i.i.i = lshr i32 %mul.i.i.i.i.i.i, 29
  %arrayidx.i.i.i.i = getelementptr %struct.vidtv_mux, ptr %add.ptr, i32 0, i32 4, i32 %shr.i.i.i.i.i
  %210 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %211, null
  %add.ptr.i.i.i.i = getelementptr i8, ptr %211, i32 -4
  %tobool2.not2730.i.i.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  %tobool2.not27.i.i.i.i = or i1 %tobool.not.i.i.i.i, %tobool2.not2730.i.i.i.i
  br i1 %tobool2.not27.i.i.i.i, label %while.body3.i.if.end.i.i.i_crit_edge, label %while.body3.i.for.body.i.i.i.i_crit_edge

while.body3.i.for.body.i.i.i.i_crit_edge:         ; preds = %while.body3.i
  br label %for.body.i.i.i.i

while.body3.i.if.end.i.i.i_crit_edge:             ; preds = %while.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %while.body3.i.for.body.i.i.i.i_crit_edge
  %ctx.028.i.i.i.i = phi ptr [ %add.ptr13.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i, %while.body3.i.for.body.i.i.i.i_crit_edge ]
  %212 = ptrtoint ptr %ctx.028.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %ctx.028.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %213, i16 %197)
  %cmp.i.i.i.i = icmp eq i16 %213, %197
  br i1 %cmp.i.i.i.i, label %for.body.i.i.i.i.vidtv_mux_create_pid_ctx_once.exit.i.i_crit_edge, label %for.inc.i.i.i.i

for.body.i.i.i.i.vidtv_mux_create_pid_ctx_once.exit.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_create_pid_ctx_once.exit.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %h.i.i.i.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.028.i.i.i.i, i32 0, i32 2
  %214 = ptrtoint ptr %h.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %h.i.i.i.i, align 4
  %tobool9.not.i.i.i.i = icmp eq ptr %215, null
  %add.ptr13.i.i.i.i = getelementptr i8, ptr %215, i32 -4
  %tobool2.not31.i.i.i.i = icmp eq ptr %add.ptr13.i.i.i.i, null
  %tobool2.not.i.i.i.i = or i1 %tobool9.not.i.i.i.i, %tobool2.not31.i.i.i.i
  br i1 %tobool2.not.i.i.i.i, label %for.inc.i.i.i.i.if.end.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.inc.i.i.i.i.if.end.i.i.i_crit_edge, %while.body3.i.if.end.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %216 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %216, i32 noundef 3520, i32 noundef 12) #10
  %tobool2.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.vidtv_mux_create_pid_ctx_once.exit.i.i_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.vidtv_mux_create_pid_ctx_once.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_create_pid_ctx_once.exit.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %217 = ptrtoint ptr %call7.i.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 %197, ptr %call7.i.i.i.i.i, align 8
  %cc.i.i.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %218 = ptrtoint ptr %cc.i.i.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 0, ptr %cc.i.i.i, align 2
  %h.i.i.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %219 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %221 = ptrtoint ptr %h.i.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store volatile ptr %220, ptr %h.i.i.i, align 4
  %tobool.not.i16.i.i.i = icmp eq ptr %220, null
  br i1 %tobool.not.i16.i.i.i, label %if.end4.i.i.i.hlist_add_head.exit.i.i.i_crit_edge, label %do.body12.i.i.i.i

if.end4.i.i.i.hlist_add_head.exit.i.i.i_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hlist_add_head.exit.i.i.i

do.body12.i.i.i.i:                                ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %220, i32 0, i32 1
  %222 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store volatile ptr %h.i.i.i, ptr %pprev.i.i.i.i, align 4
  br label %hlist_add_head.exit.i.i.i

hlist_add_head.exit.i.i.i:                        ; preds = %do.body12.i.i.i.i, %if.end4.i.i.i.hlist_add_head.exit.i.i.i_crit_edge
  %223 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store volatile ptr %h.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  %pprev34.i.i.i.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %call7.i.i.i.i.i, i32 0, i32 2, i32 1
  %224 = ptrtoint ptr %pprev34.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store volatile ptr %arrayidx.i.i.i.i, ptr %pprev34.i.i.i.i, align 8
  br label %vidtv_mux_create_pid_ctx_once.exit.i.i

vidtv_mux_create_pid_ctx_once.exit.i.i:           ; preds = %hlist_add_head.exit.i.i.i, %if.end.i.i.i.vidtv_mux_create_pid_ctx_once.exit.i.i_crit_edge, %for.body.i.i.i.i.vidtv_mux_create_pid_ctx_once.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call7.i.i.i.i.i, %hlist_add_head.exit.i.i.i ], [ null, %if.end.i.i.i.vidtv_mux_create_pid_ctx_once.exit.i.i_crit_edge ], [ %ctx.028.i.i.i.i, %for.body.i.i.i.i.vidtv_mux_create_pid_ctx_once.exit.i.i_crit_edge ]
  %cc.i.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %retval.0.i.i.i, i32 0, i32 1
  %225 = ptrtoint ptr %continuity_counter.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %cc.i.i, ptr %continuity_counter.i.i, align 4
  %tobool.not32.i.i = icmp eq ptr %207, null
  br i1 %tobool.not32.i.i, label %vidtv_mux_create_pid_ctx_once.exit.i.i.vidtv_mux_packetize_access_units.exit.i_crit_edge, label %while.body.lr.ph.i.i

vidtv_mux_create_pid_ctx_once.exit.i.i.vidtv_mux_packetize_access_units.exit.i_crit_edge: ; preds = %vidtv_mux_create_pid_ctx_once.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_packetize_access_units.exit.i

while.body.lr.ph.i.i:                             ; preds = %vidtv_mux_create_pid_ctx_once.exit.i.i
  %encoder_buf.i.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e.022.i, i32 0, i32 2
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %au.033.i.i = phi ptr [ %207, %while.body.lr.ph.i.i ], [ %246, %while.body.i.i.while.body.i.i_crit_edge ]
  %226 = ptrtoint ptr %encoder_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %encoder_buf.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.vidtv_access_unit, ptr %au.033.i.i, i32 0, i32 4
  %228 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i126 = getelementptr i8, ptr %227, i32 %229
  %230 = ptrtoint ptr %from.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %add.ptr.i.i126, ptr %from.i.i, align 4
  %nbytes6.i.i = getelementptr inbounds %struct.vidtv_access_unit, ptr %au.033.i.i, i32 0, i32 3
  %231 = ptrtoint ptr %nbytes6.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %nbytes6.i.i, align 8
  %233 = ptrtoint ptr %access_unit_len.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %232, ptr %access_unit_len.i.i, align 8
  %234 = ptrtoint ptr %mux_buf_offset.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %mux_buf_offset.i, align 8
  %236 = ptrtoint ptr %dest_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %235, ptr %dest_offset.i.i, align 4
  %pts.i.i = getelementptr inbounds %struct.vidtv_access_unit, ptr %au.033.i.i, i32 0, i32 1
  %237 = ptrtoint ptr %pts.i.i to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %pts.i.i, align 8
  %239 = ptrtoint ptr %pts8.i.i to i32
  call void @__asan_store8_noabort(i32 %239)
  store i64 %238, ptr %pts8.i.i, align 8
  %240 = ptrtoint ptr %clk.i to i32
  call void @__asan_load8_noabort(i32 %240)
  %241 = load i64, ptr %clk.i, align 8
  %242 = ptrtoint ptr %pcr.i.i to i32
  call void @__asan_store8_noabort(i32 %242)
  store i64 %241, ptr %pcr.i.i, align 8
  %call9.i.i = call i32 @vidtv_pes_write_into(ptr noundef nonnull %args.i.i) #6
  %243 = ptrtoint ptr %mux_buf_offset.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %mux_buf_offset.i, align 8
  %add.i.i = add i32 %244, %call9.i.i
  store i32 %add.i.i, ptr %mux_buf_offset.i, align 8
  %next.i.i = getelementptr inbounds %struct.vidtv_access_unit, ptr %au.033.i.i, i32 0, i32 5
  %245 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %next.i.i, align 8
  %tobool.not.i.i127 = icmp eq ptr %246, null
  br i1 %tobool.not.i.i127, label %while.body.i.i.vidtv_mux_packetize_access_units.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i.vidtv_mux_packetize_access_units.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_packetize_access_units.exit.i

vidtv_mux_packetize_access_units.exit.i:          ; preds = %while.body.i.i.vidtv_mux_packetize_access_units.exit.i_crit_edge, %vidtv_mux_create_pid_ctx_once.exit.i.i.vidtv_mux_packetize_access_units.exit.i_crit_edge
  %clear.i.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e.022.i, i32 0, i32 15
  %247 = ptrtoint ptr %clear.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %clear.i.i, align 8
  %call11.i.i = call i32 %248(ptr noundef nonnull %e.022.i) #6
  %249 = ptrtoint ptr %mux_buf_offset.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %mux_buf_offset.i, align 8
  %sub.i.i = sub i32 %250, %209
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %args.i.i) #6
  %add.i128 = add i32 %sub.i.i, %nbytes.121.i
  %add5.i = add i32 %sub.i.i, %250
  %251 = ptrtoint ptr %mux_buf_offset.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %add5.i, ptr %mux_buf_offset.i, align 8
  %next.i = getelementptr inbounds %struct.vidtv_encoder, ptr %e.022.i, i32 0, i32 20
  %252 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %e.0.i = load ptr, ptr %next.i, align 4
  %tobool2.not.i = icmp eq ptr %e.0.i, null
  br i1 %tobool2.not.i, label %vidtv_mux_packetize_access_units.exit.i.while.end.i_crit_edge, label %vidtv_mux_packetize_access_units.exit.i.while.body3.i_crit_edge

vidtv_mux_packetize_access_units.exit.i.while.body3.i_crit_edge: ; preds = %vidtv_mux_packetize_access_units.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body3.i

vidtv_mux_packetize_access_units.exit.i.while.end.i_crit_edge: ; preds = %vidtv_mux_packetize_access_units.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %vidtv_mux_packetize_access_units.exit.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %nbytes.1.lcssa.i = phi i32 [ %nbytes.025.i, %while.body.i.while.end.i_crit_edge ], [ %add.i128, %vidtv_mux_packetize_access_units.exit.i.while.end.i_crit_edge ]
  %next6.i = getelementptr inbounds %struct.vidtv_channel, ptr %cur_chnl.026.i, i32 0, i32 8
  %253 = ptrtoint ptr %next6.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %cur_chnl.0.i = load ptr, ptr %next6.i, align 4
  %tobool.not.i129 = icmp eq ptr %cur_chnl.0.i, null
  br i1 %tobool.not.i129, label %while.end.i.vidtv_mux_poll_encoders.exit_crit_edge, label %while.end.i.while.body.i_crit_edge

while.end.i.while.body.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i.vidtv_mux_poll_encoders.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_poll_encoders.exit

vidtv_mux_poll_encoders.exit:                     ; preds = %while.end.i.vidtv_mux_poll_encoders.exit_crit_edge, %if.end6.vidtv_mux_poll_encoders.exit_crit_edge
  %nbytes.0.lcssa.i = phi i32 [ 0, %if.end6.vidtv_mux_poll_encoders.exit_crit_edge ], [ %nbytes.1.lcssa.i, %while.end.i.vidtv_mux_poll_encoders.exit_crit_edge ]
  %add8 = add i32 %nbytes.0.lcssa.i, %nbytes.1
  %254 = ptrtoint ptr %mux_buf.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %mux_buf.i, align 8
  %256 = ptrtoint ptr %mux_buf_offset.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %mux_buf_offset.i, align 8
  %258 = ptrtoint ptr %mux_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %mux_buf_sz.i, align 4
  %260 = ptrtoint ptr %arrayidx.i.i133 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %arrayidx.i.i133, align 4
  %tobool.not.i.i134 = icmp eq ptr %261, null
  %add.ptr.i.i135 = getelementptr i8, ptr %261, i32 -4
  %tobool2.not2730.i.i136 = icmp eq ptr %add.ptr.i.i135, null
  %tobool2.not27.i.i137 = or i1 %tobool.not.i.i134, %tobool2.not2730.i.i136
  br i1 %tobool2.not27.i.i137, label %vidtv_mux_poll_encoders.exit.vidtv_mux_get_pid_ctx.exit.i150_crit_edge, label %vidtv_mux_poll_encoders.exit.for.body.i.i140_crit_edge

vidtv_mux_poll_encoders.exit.for.body.i.i140_crit_edge: ; preds = %vidtv_mux_poll_encoders.exit
  br label %for.body.i.i140

vidtv_mux_poll_encoders.exit.vidtv_mux_get_pid_ctx.exit.i150_crit_edge: ; preds = %vidtv_mux_poll_encoders.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_get_pid_ctx.exit.i150

for.body.i.i140:                                  ; preds = %for.inc.i.i146.for.body.i.i140_crit_edge, %vidtv_mux_poll_encoders.exit.for.body.i.i140_crit_edge
  %ctx.028.i.i138 = phi ptr [ %add.ptr13.i.i143, %for.inc.i.i146.for.body.i.i140_crit_edge ], [ %add.ptr.i.i135, %vidtv_mux_poll_encoders.exit.for.body.i.i140_crit_edge ]
  %262 = ptrtoint ptr %ctx.028.i.i138 to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %ctx.028.i.i138, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %263)
  %cmp.i.i139 = icmp eq i16 %263, 8191
  br i1 %cmp.i.i139, label %for.body.i.i140.vidtv_mux_get_pid_ctx.exit.i150_crit_edge, label %for.inc.i.i146

for.body.i.i140.vidtv_mux_get_pid_ctx.exit.i150_crit_edge: ; preds = %for.body.i.i140
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_get_pid_ctx.exit.i150

for.inc.i.i146:                                   ; preds = %for.body.i.i140
  %h.i.i141 = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.028.i.i138, i32 0, i32 2
  %264 = ptrtoint ptr %h.i.i141 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %h.i.i141, align 4
  %tobool9.not.i.i142 = icmp eq ptr %265, null
  %add.ptr13.i.i143 = getelementptr i8, ptr %265, i32 -4
  %tobool2.not31.i.i144 = icmp eq ptr %add.ptr13.i.i143, null
  %tobool2.not.i.i145 = or i1 %tobool9.not.i.i142, %tobool2.not31.i.i144
  br i1 %tobool2.not.i.i145, label %for.inc.i.i146.vidtv_mux_get_pid_ctx.exit.i150_crit_edge, label %for.inc.i.i146.for.body.i.i140_crit_edge

for.inc.i.i146.for.body.i.i140_crit_edge:         ; preds = %for.inc.i.i146
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i140

for.inc.i.i146.vidtv_mux_get_pid_ctx.exit.i150_crit_edge: ; preds = %for.inc.i.i146
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_get_pid_ctx.exit.i150

vidtv_mux_get_pid_ctx.exit.i150:                  ; preds = %for.inc.i.i146.vidtv_mux_get_pid_ctx.exit.i150_crit_edge, %for.body.i.i140.vidtv_mux_get_pid_ctx.exit.i150_crit_edge, %vidtv_mux_poll_encoders.exit.vidtv_mux_get_pid_ctx.exit.i150_crit_edge
  %ctx.0.lcssa.i.i147 = phi ptr [ null, %vidtv_mux_poll_encoders.exit.vidtv_mux_get_pid_ctx.exit.i150_crit_edge ], [ null, %for.inc.i.i146.vidtv_mux_get_pid_ctx.exit.i150_crit_edge ], [ %ctx.028.i.i138, %for.body.i.i140.vidtv_mux_get_pid_ctx.exit.i150_crit_edge ]
  %cc.i148 = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.0.lcssa.i.i147, i32 0, i32 1
  %266 = ptrtoint ptr %255 to i32
  %.fca.0.insert.i149 = insertvalue [4 x i32] poison, i32 %266, 0
  %267 = ptrtoint ptr %cc.i148 to i32
  br label %for.body.i156

for.body.i156:                                    ; preds = %for.body.i156.for.body.i156_crit_edge, %vidtv_mux_get_pid_ctx.exit.i150
  %i.02.i = phi i32 [ 0, %vidtv_mux_get_pid_ctx.exit.i150 ], [ %inc.i155, %for.body.i156.for.body.i156_crit_edge ]
  %args.sroa.5.01.i = phi i32 [ %257, %vidtv_mux_get_pid_ctx.exit.i150 ], [ %add.i154, %for.body.i156.for.body.i156_crit_edge ]
  %.fca.1.insert.i151 = insertvalue [4 x i32] %.fca.0.insert.i149, i32 %args.sroa.5.01.i, 1
  %.fca.2.insert.i152 = insertvalue [4 x i32] %.fca.1.insert.i151, i32 %259, 2
  %.fca.3.insert.i153 = insertvalue [4 x i32] %.fca.2.insert.i152, i32 %267, 3
  %call3.i = call i32 @vidtv_ts_null_write_into([4 x i32] %.fca.3.insert.i153) #6
  %268 = ptrtoint ptr %mux_buf_offset.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %mux_buf_offset.i, align 8
  %add.i154 = add i32 %269, %call3.i
  store i32 %add.i154, ptr %mux_buf_offset.i, align 8
  %inc.i155 = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i155, 256
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i156.for.body.i156_crit_edge

for.body.i156.for.body.i156_crit_edge:            ; preds = %for.body.i156
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i156

for.end.i:                                        ; preds = %for.body.i156
  %sub.i157 = sub i32 %add.i154, %257
  call void @__sanitizer_cov_trace_const_cmp4(i32 48128, i32 %sub.i157)
  %cmp8.not.i = icmp eq i32 %sub.i157, 48128
  br i1 %cmp8.not.i, label %for.end.i.vidtv_mux_pad_with_nulls.exit_crit_edge, label %do.body.i159

for.end.i.vidtv_mux_pad_with_nulls.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_pad_with_nulls.exit

do.body.i159:                                     ; preds = %for.end.i
  %call9.i = call i32 @___ratelimit(ptr noundef nonnull @vidtv_mux_pad_with_nulls._rs, ptr noundef nonnull @__func__.vidtv_mux_pad_with_nulls) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i158 = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i158, label %do.body.i159.vidtv_mux_pad_with_nulls.exit_crit_edge, label %do.end.i161

do.body.i159.vidtv_mux_pad_with_nulls.exit_crit_edge: ; preds = %do.body.i159
  call void @__sanitizer_cov_trace_pc() #8
  br label %vidtv_mux_pad_with_nulls.exit

do.end.i161:                                      ; preds = %do.body.i159
  call void @__sanitizer_cov_trace_pc() #8
  %270 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %271, ptr noundef nonnull @.str.9, i32 noundef %sub.i157, i32 noundef 48128) #9
  br label %vidtv_mux_pad_with_nulls.exit

vidtv_mux_pad_with_nulls.exit:                    ; preds = %do.end.i161, %do.body.i159.vidtv_mux_pad_with_nulls.exit_crit_edge, %for.end.i.vidtv_mux_pad_with_nulls.exit_crit_edge
  %add10 = add i32 %add8, %sub.i157
  %add10.frozen = freeze i32 %add10
  %div = udiv i32 %add10.frozen, 188
  %272 = mul i32 %div, 188
  %rem.decomposed = sub i32 %add10.frozen, %272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool11.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool11.not, label %vidtv_mux_pad_with_nulls.exit.if.end20_crit_edge, label %do.body

vidtv_mux_pad_with_nulls.exit.if.end20_crit_edge: ; preds = %vidtv_mux_pad_with_nulls.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.body:                                          ; preds = %vidtv_mux_pad_with_nulls.exit
  %call13 = call i32 @___ratelimit(ptr noundef nonnull @vidtv_mux_tick._rs, ptr noundef nonnull @__func__.vidtv_mux_tick) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body.if.end20_crit_edge, label %do.end

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %273 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %274, ptr noundef nonnull @.str.6) #9
  br label %if.end20

if.end20:                                         ; preds = %do.end, %do.body.if.end20_crit_edge, %vidtv_mux_pad_with_nulls.exit.if.end20_crit_edge
  %275 = ptrtoint ptr %on_new_packets_available_cb to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %on_new_packets_available_cb, align 4
  %tobool21.not = icmp eq ptr %276, null
  br i1 %tobool21.not, label %if.end20.if.end24_crit_edge, label %if.then22

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %277 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %priv, align 8
  %279 = ptrtoint ptr %mux_buf.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %mux_buf.i, align 8
  call void %276(ptr noundef %278, ptr noundef %280, i32 noundef %div) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20.if.end24_crit_edge
  %281 = ptrtoint ptr %mux_buf.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %mux_buf.i, align 8
  %283 = ptrtoint ptr %mux_buf_sz.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %mux_buf_sz.i, align 4
  %285 = call ptr @memset(ptr %282, i32 0, i32 %284)
  %286 = ptrtoint ptr %mux_buf_offset.i to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 0, ptr %mux_buf_offset.i, align 8
  %mul = shl i32 %add10, 3
  %conv = zext i32 %mul to i64
  %287 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %287, i32 8)
  store i64 %conv, ptr %21, align 1
  %288 = ptrtoint ptr %22 to i32
  call void @__asan_storeN_noabort(i32 %288, i32 8)
  store i64 %conv, ptr %22, align 1
  %conv29 = zext i32 %div to i64
  %289 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %289, i32 8)
  %290 = load i64, ptr %23, align 1
  %add32 = add i64 %290, %conv29
  store i64 %add32, ptr %23, align 1
  %add34 = add i32 %mul, %tot_bits.0171
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %add34)
  %cmp = icmp ugt i32 %add34, 10000000
  br i1 %cmp, label %if.then36, label %if.end24.if.end39_crit_edge

if.end24.if.end39_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then36:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %291 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %291, i32 8)
  %292 = load i64, ptr %24, align 1
  %inc = add i64 %292, 1
  store i64 %inc, ptr %24, align 1
  %sub = add i32 %add34, -10000000
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end24.if.end39_crit_edge
  %tot_bits.1 = phi i32 [ %sub, %if.then36 ], [ %add34, %if.end24.if.end39_crit_edge ]
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #6
  %293 = ptrtoint ptr %streaming to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %streaming, align 4, !range !41
  %tobool.not = icmp eq i8 %294, 0
  br i1 %tobool.not, label %if.end39.while.end_crit_edge, label %if.end39.while.body_crit_edge

if.end39.while.body_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end39.while.end_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end39.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_channel_si_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vidtv_channels_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vidtv_mux_destroy(ptr noundef %m) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %streaming.i = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 14
  %0 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %streaming.i, align 4, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.for.body.i.preheader_crit_edge, label %if.then.i

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %streaming.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %streaming.i, align 4
  %mpeg_thread.i = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 13
  %call.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %mpeg_thread.i) #6
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then.i, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc22.i.for.body.i_crit_edge, %for.body.i.preheader
  %bkt.037.i = phi i32 [ %inc.i, %for.inc22.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr %struct.vidtv_mux, ptr %m, i32 0, i32 4, i32 %bkt.037.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i7 = icmp eq ptr %4, null
  %add.ptr.i = getelementptr i8, ptr %4, i32 -4
  %tobool5.not3538.i = icmp eq ptr %add.ptr.i, null
  %tobool5.not35.i = or i1 %tobool.not.i7, %tobool5.not3538.i
  br i1 %tobool5.not35.i, label %for.body.i.for.inc22.i_crit_edge, label %for.body.i.land.rhs6.i_crit_edge

for.body.i.land.rhs6.i_crit_edge:                 ; preds = %for.body.i
  br label %land.rhs6.i

for.body.i.for.inc22.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc22.i

land.rhs6.i:                                      ; preds = %hash_del.exit.i.land.rhs6.i_crit_edge, %for.body.i.land.rhs6.i_crit_edge
  %ctx.136.i = phi ptr [ %add.ptr18.i, %hash_del.exit.i.land.rhs6.i_crit_edge ], [ %add.ptr.i, %for.body.i.land.rhs6.i_crit_edge ]
  %h.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.136.i, i32 0, i32 2
  %5 = ptrtoint ptr %h.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %h.i, align 4
  %pprev.i.i.i.i = getelementptr inbounds %struct.vidtv_mux_pid_ctx, ptr %ctx.136.i, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.not.i.i.i, label %land.rhs6.i.hash_del.exit.i_crit_edge, label %if.then.i.i.i

land.rhs6.i.hash_del.exit.i_crit_edge:            ; preds = %land.rhs6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hash_del.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs6.i
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %6, ptr %8, align 4
  %tobool.not.i3.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i3.i.i.i, label %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %__hlist_del.exit.i.i.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %6, i32 0, i32 1
  %10 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %pprev14.i.i.i.i, align 4
  br label %__hlist_del.exit.i.i.i

__hlist_del.exit.i.i.i:                           ; preds = %do.body13.i.i.i.i, %if.then.i.i.i.__hlist_del.exit.i.i.i_crit_edge
  %11 = ptrtoint ptr %h.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %h.i, align 4
  %12 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %pprev.i.i.i.i, align 4
  br label %hash_del.exit.i

hash_del.exit.i:                                  ; preds = %__hlist_del.exit.i.i.i, %land.rhs6.i.hash_del.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %ctx.136.i) #6
  %tobool14.not.i = icmp eq ptr %6, null
  %add.ptr18.i = getelementptr i8, ptr %6, i32 -4
  %tobool5.not39.i = icmp eq ptr %add.ptr18.i, null
  %tobool5.not.i = or i1 %tobool14.not.i, %tobool5.not39.i
  br i1 %tobool5.not.i, label %hash_del.exit.i.for.inc22.i_crit_edge, label %hash_del.exit.i.land.rhs6.i_crit_edge

hash_del.exit.i.land.rhs6.i_crit_edge:            ; preds = %hash_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs6.i

hash_del.exit.i.for.inc22.i_crit_edge:            ; preds = %hash_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc22.i

for.inc22.i:                                      ; preds = %hash_del.exit.i.for.inc22.i_crit_edge, %for.body.i.for.inc22.i_crit_edge
  %inc.i = add nuw nsw i32 %bkt.037.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %vidtv_mux_pid_ctx_destroy.exit, label %for.inc22.i.for.body.i_crit_edge

for.inc22.i.for.body.i_crit_edge:                 ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

vidtv_mux_pid_ctx_destroy.exit:                   ; preds = %for.inc22.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @vidtv_channel_si_destroy(ptr noundef %m) #6
  tail call void @vidtv_channels_destroy(ptr noundef %m) #6
  %network_name = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 18
  %13 = ptrtoint ptr %network_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %network_name, align 4
  tail call void @kfree(ptr noundef %14) #6
  %mux_buf = getelementptr inbounds %struct.vidtv_mux, ptr %m, i32 0, i32 6
  %15 = ptrtoint ptr %mux_buf to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mux_buf, align 8
  tail call void @vfree(ptr noundef %16) #6
  tail call void @kfree(ptr noundef %m) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidtv_ts_pcr_write_into([4 x i64]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidtv_psi_pat_write_into(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vidtv_psi_pmt_get_pid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidtv_psi_pmt_write_into(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidtv_psi_sdt_write_into(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidtv_psi_nit_write_into(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidtv_psi_eit_write_into(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidtv_pes_write_into(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vidtv_ts_null_write_into([4 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vidtv_psi_get_pat_program_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !13, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vidtv/vidtv_mux.c", i32 460, i32 3}
!2 = !{ptr @vidtv_mux_start_thread._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.vidtv_mux_start_thread, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @vidtv_mux_start_thread._entry, !1, !"_entry", i1 false, i1 false}
!9 = !{ptr @vidtv_mux_start_thread._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @vidtv_mux_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/media/test-drivers/vidtv/vidtv_mux.c", i32 519, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @vidtv_mux_tick._rs, !14, !"_rs", i1 false, i1 false}
!14 = !{!"../drivers/media/test-drivers/vidtv/vidtv_mux.c", i32 417, i32 4}
!15 = !{ptr @__func__.vidtv_mux_tick, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @vidtv_mux_tick._entry, !14, !"_entry", i1 false, i1 false}
!19 = !{ptr @vidtv_mux_tick._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @vidtv_mux_push_si._rs, !21, !"_rs", i1 false, i1 false}
!21 = !{!"../drivers/media/test-drivers/vidtv/vidtv_mux.c", i32 183, i32 4}
!22 = !{ptr @__func__.vidtv_mux_push_si, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @vidtv_mux_push_si._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @vidtv_mux_push_si._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @vidtv_mux_pad_with_nulls._rs, !27, !"_rs", i1 false, i1 false}
!27 = !{!"../drivers/media/test-drivers/vidtv/vidtv_mux.c", i32 374, i32 3}
!28 = !{ptr @__func__.vidtv_mux_pad_with_nulls, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @vidtv_mux_pad_with_nulls._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @vidtv_mux_pad_with_nulls._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i8 0, i8 2}
