; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/cinergyT2-fe.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/cinergyT2-fe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cinergyt2_fe_state = type { %struct.dvb_frontend, ptr, [64 x i8], %struct.mutex, %struct.dvbt_get_status_msg }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dvbt_get_status_msg = type <{ i32, i8, i16, i8, i16, i8, i32, i32, i32, i8, i8 }>

@cinergyt2_fe_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"TerraTec/qanu USB2.0 Highspeed DVB-T Receiver\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 -1071960401 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @cinergyt2_fe_release, ptr null, ptr @cinergyt2_fe_init, ptr @cinergyt2_fe_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cinergyt2_fe_set_frontend, ptr @cinergyt2_fe_get_tune_settings, ptr null, ptr @cinergyt2_fe_read_status, ptr @cinergyt2_fe_read_ber, ptr @cinergyt2_fe_read_signal_strength, ptr @cinergyt2_fe_read_snr, ptr @cinergyt2_fe_read_unc_blocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@cinergyt2_fe_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&s->data_mutex\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dvb_usb_cinergyt2_debug = external dso_local local_unnamed_addr global i32, align 4
@cinergyt2_fe_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cinergyt2_fe_sleep() Called\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cinergyt2_fe_sleep\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/usb/dvb-usb/cinergyT2-fe.c\00", [55 x i8] zeroinitializer }, align 32
@cinergyt2_fe_sleep._entry_ptr = internal global ptr @cinergyt2_fe_sleep._entry, section ".printk_index", align 4
@cinergyt2_fe_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013cinergyT2: cinergyt2_fe_set_frontend() Failed! err=%d\0A\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cinergyt2_fe_set_frontend\00", [38 x i8] zeroinitializer }, align 32
@cinergyt2_fe_set_frontend._entry_ptr = internal global ptr @cinergyt2_fe_set_frontend._entry, section ".printk_index", align 4
@switch.table.cinergyt2_fe_set_frontend = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 128, i16 256, i16 0, i16 384, i16 0, i16 512], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"cinergyt2_fe_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 284, i32 38 }
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 279, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 213, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [44 x i8] c"../drivers/media/usb/dvb-usb/cinergyT2-fe.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 255, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [39 x i8] c"switch.table.cinergyt2_fe_set_frontend\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @cinergyt2_fe_set_frontend._entry, ptr @cinergyt2_fe_set_frontend._entry_ptr, ptr @cinergyt2_fe_sleep._entry, ptr @cinergyt2_fe_sleep._entry_ptr, ptr @cinergyt2_fe_ops, ptr @cinergyt2_fe_attach.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @switch.table.cinergyt2_fe_set_frontend], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cinergyt2_fe_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cinergyt2_fe_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cinergyt2_fe_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cinergyt2_fe_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cinergyt2_fe_set_frontend to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cinergyt2_fe_attach(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1228) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %d1 = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %d1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %d, ptr %d1, align 8
  %ops = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %ops, ptr @cinergyt2_fe_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %data_mutex = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %data_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @cinergyt2_fe_attach.__key) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cinergyt2_fe_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cinergyt2_fe_init(ptr nocapture noundef readnone %fe) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cinergyt2_fe_sleep(ptr nocapture noundef readnone %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_cinergyt2_debug to i32))
  %0 = load i32, ptr @dvb_usb_cinergyt2_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cinergyt2_fe_set_frontend(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %data_mutex = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #9
  %data = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 4, ptr %data, align 1
  %code_rate_HP.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 11
  %3 = ptrtoint ptr %code_rate_HP.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %code_rate_HP.i, align 4
  %switch.tableidx = add i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %5 = icmp ult i32 %switch.tableidx, 6
  br i1 %5, label %switch.lookup, label %entry.sw.epilog.i_crit_edge

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [6 x i16], ptr @switch.table.cinergyt2_fe_set_frontend, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %6)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %entry.sw.epilog.i_crit_edge
  %tps.0.i = phi i16 [ 0, %entry.sw.epilog.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %code_rate_LP.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 12
  %7 = ptrtoint ptr %code_rate_LP.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %code_rate_LP.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %sw.epilog.i.sw.epilog33.i_crit_edge [
    i32 2, label %sw.bb15.i
    i32 3, label %sw.bb19.i
    i32 5, label %sw.bb23.i
    i32 7, label %sw.bb27.i
  ]

sw.epilog.i.sw.epilog33.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog33.i

sw.bb15.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = or i16 %tps.0.i, 16
  br label %sw.epilog33.i

sw.bb19.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %11 = or i16 %tps.0.i, 32
  br label %sw.epilog33.i

sw.bb23.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = or i16 %tps.0.i, 48
  br label %sw.epilog33.i

sw.bb27.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = or i16 %tps.0.i, 64
  br label %sw.epilog33.i

sw.epilog33.i:                                    ; preds = %sw.bb27.i, %sw.bb23.i, %sw.bb19.i, %sw.bb15.i, %sw.epilog.i.sw.epilog33.i_crit_edge
  %tps.1.i = phi i16 [ %tps.0.i, %sw.epilog.i.sw.epilog33.i_crit_edge ], [ %13, %sw.bb27.i ], [ %12, %sw.bb23.i ], [ %11, %sw.bb19.i ], [ %10, %sw.bb15.i ]
  %modulation.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %modulation.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %modulation.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %15, label %sw.epilog33.i.sw.epilog44.i_crit_edge [
    i32 1, label %sw.bb34.i
    i32 3, label %sw.bb38.i
  ]

sw.epilog33.i.sw.epilog44.i_crit_edge:            ; preds = %sw.epilog33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog44.i

sw.bb34.i:                                        ; preds = %sw.epilog33.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = or i16 %tps.1.i, 8192
  br label %sw.epilog44.i

sw.bb38.i:                                        ; preds = %sw.epilog33.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = or i16 %tps.1.i, 16384
  br label %sw.epilog44.i

sw.epilog44.i:                                    ; preds = %sw.bb38.i, %sw.bb34.i, %sw.epilog33.i.sw.epilog44.i_crit_edge
  %tps.2.i = phi i16 [ %tps.1.i, %sw.epilog33.i.sw.epilog44.i_crit_edge ], [ %18, %sw.bb38.i ], [ %17, %sw.bb34.i ]
  %transmission_mode.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %19 = ptrtoint ptr %transmission_mode.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %transmission_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cond.i = icmp eq i32 %20, 1
  %21 = zext i1 %cond.i to i16
  %spec.select.i = or i16 %tps.2.i, %21
  %guard_interval.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 8
  %22 = ptrtoint ptr %guard_interval.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %guard_interval.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %23, label %sw.epilog44.i.sw.epilog66.i_crit_edge [
    i32 1, label %sw.bb52.i
    i32 2, label %sw.bb56.i
    i32 3, label %sw.bb60.i
  ]

sw.epilog44.i.sw.epilog66.i_crit_edge:            ; preds = %sw.epilog44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog66.i

sw.bb52.i:                                        ; preds = %sw.epilog44.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = or i16 %spec.select.i, 4
  br label %sw.epilog66.i

sw.bb56.i:                                        ; preds = %sw.epilog44.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = or i16 %spec.select.i, 8
  br label %sw.epilog66.i

sw.bb60.i:                                        ; preds = %sw.epilog44.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = or i16 %spec.select.i, 12
  br label %sw.epilog66.i

sw.epilog66.i:                                    ; preds = %sw.bb60.i, %sw.bb56.i, %sw.bb52.i, %sw.epilog44.i.sw.epilog66.i_crit_edge
  %tps.4.i = phi i16 [ %spec.select.i, %sw.epilog44.i.sw.epilog66.i_crit_edge ], [ %27, %sw.bb60.i ], [ %26, %sw.bb56.i ], [ %25, %sw.bb52.i ]
  %hierarchy.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 9
  %28 = ptrtoint ptr %hierarchy.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hierarchy.i, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %29, label %sw.epilog66.i.compute_tps.exit_crit_edge [
    i32 1, label %sw.bb67.i
    i32 2, label %sw.bb71.i
    i32 3, label %sw.bb75.i
  ]

sw.epilog66.i.compute_tps.exit_crit_edge:         ; preds = %sw.epilog66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %compute_tps.exit

sw.bb67.i:                                        ; preds = %sw.epilog66.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = or i16 %tps.4.i, 1024
  br label %compute_tps.exit

sw.bb71.i:                                        ; preds = %sw.epilog66.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = or i16 %tps.4.i, 2048
  br label %compute_tps.exit

sw.bb75.i:                                        ; preds = %sw.epilog66.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = or i16 %tps.4.i, 3072
  br label %compute_tps.exit

compute_tps.exit:                                 ; preds = %sw.bb75.i, %sw.bb71.i, %sw.bb67.i, %sw.epilog66.i.compute_tps.exit_crit_edge
  %tps.5.i = phi i16 [ %tps.4.i, %sw.epilog66.i.compute_tps.exit_crit_edge ], [ %33, %sw.bb75.i ], [ %32, %sw.bb71.i ], [ %31, %sw.bb67.i ]
  %34 = tail call i16 @llvm.bswap.i16(i16 %tps.5.i)
  %tps = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %1, i32 0, i32 2, i32 6
  %35 = ptrtoint ptr %tps to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %tps, align 1
  %36 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dtv_property_cache, align 4
  %div = udiv i32 %37, 1000
  %38 = tail call i32 @llvm.bswap.i32(i32 %div)
  %freq = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %1, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %freq to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %freq, align 1
  %flags = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %1, i32 0, i32 2, i32 8
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %flags, align 1
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %41 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %42)
  %switch.selectcmp = icmp eq i32 %42, 7000000
  %switch.select = select i1 %switch.selectcmp, i8 7, i8 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %42)
  %switch.selectcmp30 = icmp eq i32 %42, 6000000
  %switch.select31 = select i1 %switch.selectcmp30, i8 6, i8 %switch.select
  %bandwidth4 = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %1, i32 0, i32 2, i32 5
  %43 = ptrtoint ptr %bandwidth4 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %switch.select31, ptr %bandwidth4, align 1
  %d = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %1, i32 0, i32 1
  %44 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %d, align 4
  %call9 = tail call i32 @dvb_usb_generic_rw(ptr noundef %45, ptr noundef %data, i16 noundef zeroext 9, ptr noundef %data, i16 noundef zeroext 2, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end, label %compute_tps.exit.if.end_crit_edge

compute_tps.exit.if.end_crit_edge:                ; preds = %compute_tps.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %compute_tps.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call9) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %compute_tps.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %data_mutex) #9
  %46 = tail call i32 @llvm.smin.i32(i32 %call9, i32 0)
  ret i32 %46
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cinergyt2_fe_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %tune) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tune to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 800, ptr %tune, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cinergyt2_fe_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %data_mutex = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #9
  %data = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 5, ptr %data, align 4
  %d = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d, align 4
  %call = tail call i32 @dvb_usb_generic_rw(ptr noundef %4, ptr noundef %data, i16 noundef zeroext 1, ptr noundef %data, i16 noundef zeroext 25, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %status4 = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %1, i32 0, i32 4
  %5 = call ptr @memcpy(ptr %status4, ptr %data, i32 25)
  tail call void @mutex_unlock(ptr noundef %data_mutex) #9
  br label %if.end9

if.end:                                           ; preds = %entry
  tail call void @mutex_unlock(ptr noundef %data_mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %if.end.thread
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %status, align 4
  %gain = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %1, i32 0, i32 4, i32 4
  %7 = ptrtoint ptr %gain to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %gain, align 4
  %9 = xor i16 %8, -1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  call void @__sanitizer_cov_trace_const_cmp2(i16 30, i16 %10)
  %cmp11 = icmp ugt i16 %10, 30
  %spec.store.select = zext i1 %cmp11 to i32
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.store.select, ptr %status, align 4
  %lock_bits = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %1, i32 0, i32 4, i32 9
  %12 = ptrtoint ptr %lock_bits to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %lock_bits, align 1
  %14 = and i8 %13, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool17.not = icmp eq i8 %14, 0
  br i1 %tobool17.not, label %if.end9.if.end20_crit_edge, label %if.then18

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %or19 = or i32 %spec.store.select, 16
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or19, ptr %status, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end9.if.end20_crit_edge
  %16 = ptrtoint ptr %lock_bits to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %lock_bits, align 1
  %18 = and i8 %17, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool25.not = icmp eq i8 %18, 0
  br i1 %tobool25.not, label %if.end20.if.end28_crit_edge, label %if.then26

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status, align 4
  %or27 = or i32 %20, 8
  store i32 %or27, ptr %status, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end20.if.end28_crit_edge
  %21 = ptrtoint ptr %lock_bits to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %lock_bits, align 1
  %23 = and i8 %22, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool33.not = icmp eq i8 %23, 0
  br i1 %tobool33.not, label %if.end28.if.end36_crit_edge, label %if.then34

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %status, align 4
  %or35 = or i32 %25, 2
  store i32 %or35, ptr %status, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end28.if.end36_crit_edge
  %26 = ptrtoint ptr %lock_bits to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %lock_bits, align 1
  %28 = and i8 %27, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool41.not = icmp eq i8 %28, 0
  br i1 %tobool41.not, label %if.end36.if.end44_crit_edge, label %if.then42

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status, align 4
  %or43 = or i32 %30, 4
  store i32 %or43, ptr %status, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end36.if.end44_crit_edge
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status, align 4
  %and45 = and i32 %32, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %and45)
  %cmp46.not = icmp eq i32 %and45, 14
  br i1 %cmp46.not, label %if.end44.cleanup_crit_edge, label %if.then48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %and49 = and i32 %32, -17
  %33 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and49, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end44.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.then48 ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cinergyt2_fe_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %viterbi_error_rate = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %1, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %viterbi_error_rate to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %viterbi_error_rate, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cinergyt2_fe_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %gain = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %1, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %gain to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gain, align 4
  %4 = xor i16 %3, -1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cinergyt2_fe_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %snr1 = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %1, i32 0, i32 4, i32 5
  %2 = ptrtoint ptr %snr1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %snr1, align 2
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, %conv
  %conv5 = trunc i32 %or to i16
  %4 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv5, ptr %snr, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cinergyt2_fe_read_unc_blocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %unc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %uncorrected_block_count = getelementptr inbounds %struct.cinergyt2_fe_state, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %uncorrected_block_count to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %uncorrected_block_count, align 1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %unc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %unc, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_generic_rw(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !14, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @cinergyt2_fe_attach.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-fe.c", i32 279, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @cinergyt2_fe_ops, !4, !"cinergyt2_fe_ops", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-fe.c", i32 284, i32 38}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-fe.c", i32 213, i32 2}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cinergyt2_fe_sleep._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @cinergyt2_fe_sleep._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/dvb-usb/cinergyT2-fe.c", i32 255, i32 3}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cinergyt2_fe_set_frontend._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @cinergyt2_fe_set_frontend._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
