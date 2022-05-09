; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/isl6421.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/isl6421.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+isl6421_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_isl6421_attach\09\09\09\09"
module asm "\09.long\09__crc_isl6421_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_isl6421_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22isl6421_attach\22\09\09\09\09\09"
module asm "__kstrtabns_isl6421_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.isl6421 = type { i8, i8, i8, ptr, i8, i8 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }

@__kstrtab_isl6421_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_isl6421_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_isl6421_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @isl6421_attach to i32), ptr @__kstrtab_isl6421_attach, ptr @__kstrtabns_isl6421_attach }, section "___ksymtab+isl6421_attach", align 4
@__UNIQUE_ID_description290 = internal constant [65 x i8] c"isl6421.description=Driver for lnb supply and control ic isl6421\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [50 x i8] c"isl6421.author=Andrew de Quincey & Oliver Endriss\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [49 x i8] c"isl6421.file=drivers/media/dvb-frontends/isl6421\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [20 x i8] c"isl6421.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@isl6421_set_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 117, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Overload current detected. disabling LNBf power\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"isl6421_set_voltage\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/isl6421.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@isl6421_set_voltage._entry_ptr = internal global ptr @isl6421_set_voltage._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [41 x i8] c"../drivers/media/dvb-frontends/isl6421.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 116, i32 3 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__ksymtab_isl6421_attach, ptr @isl6421_set_voltage._entry, ptr @isl6421_set_voltage._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isl6421_set_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @isl6421_attach(ptr noundef %fe, ptr noundef %i2c, i8 noundef zeroext %i2c_addr, i8 noundef zeroext %override_set, i8 noundef zeroext %override_clear, i1 noundef zeroext %override_tone) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 12) #8
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 32, ptr %call7.i, align 8
  %i2c1 = getelementptr inbounds %struct.isl6421, ptr %call7.i, i32 0, i32 3
  %2 = ptrtoint ptr %i2c1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %i2c1, align 4
  %i2c_addr2 = getelementptr inbounds %struct.isl6421, ptr %call7.i, i32 0, i32 4
  %3 = ptrtoint ptr %i2c_addr2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %i2c_addr, ptr %i2c_addr2, align 8
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %4 = ptrtoint ptr %sec_priv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i, ptr %sec_priv, align 4
  %override_or = getelementptr inbounds %struct.isl6421, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %override_or to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %override_set, ptr %override_or, align 1
  %neg = xor i8 %override_clear, -1
  %override_and = getelementptr inbounds %struct.isl6421, ptr %call7.i, i32 0, i32 2
  %6 = ptrtoint ptr %override_and to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %neg, ptr %override_and, align 2
  %call4 = tail call i32 @isl6421_set_voltage(ptr noundef %fe, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  %7 = ptrtoint ptr %sec_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %sec_priv, align 4
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %is_off = getelementptr inbounds %struct.isl6421, ptr %call7.i, i32 0, i32 5
  %8 = ptrtoint ptr %is_off to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %is_off, align 1
  %release_sec = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %release_sec to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @isl6421_release, ptr %release_sec, align 4
  %set_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 25
  %10 = ptrtoint ptr %set_voltage to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @isl6421_set_voltage, ptr %set_voltage, align 4
  %enable_high_lnb_voltage = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 26
  %11 = ptrtoint ptr %enable_high_lnb_voltage to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @isl6421_enable_high_lnb_voltage, ptr %enable_high_lnb_voltage, align 4
  br i1 %override_tone, label %if.then12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %set_tone = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 24
  %12 = ptrtoint ptr %set_tone to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @isl6421_set_tone, ptr %set_tone, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end8.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then6 ], [ null, %entry.cleanup_crit_edge ], [ %fe, %if.then12 ], [ %fe, %if.end8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl6421_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #0 align 64 {
entry:
  %buf = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #5
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !26
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %1 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sec_priv, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #5
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %i2c_addr = getelementptr inbounds %struct.isl6421, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %i2c_addr, align 4
  %conv = zext i8 %6 to i16
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %len, align 4
  %buf1 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %10 = ptrtoint ptr %buf1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %2, ptr %buf1, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %11 = load i8, ptr %i2c_addr, align 4
  %conv4 = zext i8 %11 to i16
  %12 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv4, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %13 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %14 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %15 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf, ptr %buf7, align 4
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %2, align 4
  %18 = and i8 %17, -7
  store i8 %18, ptr %2, align 4
  %19 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %voltage, label %entry.cleanup_crit_edge [
    i32 2, label %sw.epilog.thread
    i32 0, label %sw.bb11
    i32 1, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %is_off20143 = getelementptr inbounds %struct.isl6421, ptr %2, i32 0, i32 5
  br label %if.end

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %20 = or i8 %18, 2
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %21 = or i8 %17, 6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb11
  %storemerge = phi i8 [ %21, %sw.bb15 ], [ %20, %sw.bb11 ]
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %storemerge, ptr %2, align 4
  %is_off20 = getelementptr inbounds %struct.isl6421, ptr %2, i32 0, i32 5
  %23 = ptrtoint ptr %is_off20 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_off20, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not = icmp eq i8 %24, 0
  br i1 %tobool.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %2, align 4
  %27 = or i8 %26, 64
  store i8 %27, ptr %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge, %sw.epilog.thread
  %is_off20147 = phi ptr [ %is_off20143, %sw.epilog.thread ], [ %is_off20, %sw.epilog.if.end_crit_edge ], [ %is_off20, %if.then ]
  %is_off.0.off0146 = phi i1 [ true, %sw.epilog.thread ], [ false, %sw.epilog.if.end_crit_edge ], [ false, %if.then ]
  %override_or = getelementptr inbounds %struct.isl6421, ptr %2, i32 0, i32 1
  %28 = ptrtoint ptr %override_or to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %override_or, align 1
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %2, align 4
  %or30139 = or i8 %31, %29
  %override_and = getelementptr inbounds %struct.isl6421, ptr %2, i32 0, i32 2
  %32 = ptrtoint ptr %override_and to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %override_and, align 2
  %and35140 = and i8 %33, %or30139
  store i8 %and35140, ptr %2, align 4
  %i2c = getelementptr inbounds %struct.isl6421, ptr %2, i32 0, i32 3
  %34 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %i2c, align 4
  %call = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end39

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp40.not = icmp eq i32 %call, 2
  br i1 %cmp40.not, label %if.end43, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %frombool = zext i1 %is_off.0.off0146 to i8
  %36 = ptrtoint ptr %is_off20147 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool, ptr %is_off20147, align 1
  br i1 %is_off.0.off0146, label %if.end43.if.end52_crit_edge, label %land.lhs.true47

if.end43.if.end52_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

land.lhs.true47:                                  ; preds = %if.end43
  %37 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %buf, align 1
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool50.not = icmp eq i8 %39, 0
  br i1 %tobool50.not, label %land.lhs.true47.if.end52_crit_edge, label %if.then51

land.lhs.true47.if.end52_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then51:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 1000) #5
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %land.lhs.true47.if.end52_crit_edge, %if.end43.if.end52_crit_edge
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %2, align 4
  %42 = and i8 %41, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool56.not = icmp eq i8 %42, 0
  br i1 %tobool56.not, label %if.end52.if.end78_crit_edge, label %land.lhs.true57

if.end52.if.end78_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

land.lhs.true57:                                  ; preds = %if.end52
  %43 = ptrtoint ptr %override_or to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %override_or, align 1
  %45 = and i8 %44, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool61.not = icmp eq i8 %45, 0
  br i1 %tobool61.not, label %if.then62, label %land.lhs.true57.if.end78_crit_edge

land.lhs.true57.if.end78_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.then62:                                        ; preds = %land.lhs.true57
  %and65 = and i8 %41, -65
  %46 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %and65, ptr %2, align 4
  %47 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c, align 4
  %call69 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %msg, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then62.cleanup_crit_edge, label %if.end73

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end73:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call69)
  %cmp74.not = icmp ne i32 %call69, 2
  %brmerge141 = or i1 %is_off.0.off0146, %cmp74.not
  %.mux = select i1 %cmp74.not, i32 -5, i32 0
  br i1 %brmerge141, label %if.end73.cleanup_crit_edge, label %if.end73.land.lhs.true80_crit_edge

if.end73.land.lhs.true80_crit_edge:               ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true80

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end78:                                         ; preds = %land.lhs.true57.if.end78_crit_edge, %if.end52.if.end78_crit_edge
  br i1 %is_off.0.off0146, label %if.end78.cleanup_crit_edge, label %if.end78.land.lhs.true80_crit_edge

if.end78.land.lhs.true80_crit_edge:               ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true80

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true80:                                  ; preds = %if.end78.land.lhs.true80_crit_edge, %if.end73.land.lhs.true80_crit_edge
  %49 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %buf, align 1
  %51 = and i8 %50, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool83.not = icmp eq i8 %51, 0
  br i1 %tobool83.not, label %land.lhs.true80.cleanup_crit_edge, label %if.then84

land.lhs.true80.cleanup_crit_edge:                ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then84:                                        ; preds = %land.lhs.true80
  %52 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %2, align 4
  %54 = and i8 %53, -7
  store i8 %54, ptr %2, align 4
  %55 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %i2c, align 4
  %call91 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %if.then84.cleanup_crit_edge, label %if.end95

if.then84.cleanup_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end95:                                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call91)
  %cmp96.not = icmp eq i32 %call91, 1
  br i1 %cmp96.not, label %if.end99, label %if.end95.cleanup_crit_edge

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end99:                                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %is_off20147 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %is_off20147, align 1
  %58 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %i2c, align 4
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %59, i32 0, i32 9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %if.end95.cleanup_crit_edge, %if.then84.cleanup_crit_edge, %land.lhs.true80.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %if.then62.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end99 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -5, %if.end39.cleanup_crit_edge ], [ %call69, %if.then62.cleanup_crit_edge ], [ %.mux, %if.end73.cleanup_crit_edge ], [ %call91, %if.then84.cleanup_crit_edge ], [ -5, %if.end95.cleanup_crit_edge ], [ 0, %land.lhs.true80.cleanup_crit_edge ], [ 0, %if.end78.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isl6421_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @isl6421_set_voltage(ptr noundef %fe, i32 noundef 2)
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  tail call void @kfree(ptr noundef %1) #5
  %2 = ptrtoint ptr %sec_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sec_priv, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl6421_enable_high_lnb_voltage(ptr nocapture noundef readonly %fe, i32 noundef %arg) #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %i2c_addr = getelementptr inbounds %struct.isl6421, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_addr, align 4
  %conv = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not = icmp eq i32 %arg, 0
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 4
  %12 = and i8 %11, -9
  %masksel = select i1 %tobool.not, i8 0, i8 8
  %storemerge = or i8 %12, %masksel
  %override_or = getelementptr inbounds %struct.isl6421, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %override_or to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %override_or, align 1
  %or1026 = or i8 %14, %storemerge
  %override_and = getelementptr inbounds %struct.isl6421, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %override_and to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %override_and, align 2
  %and1527 = and i8 %16, %or1026
  store i8 %and1527, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.isl6421, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c, align 4
  %call = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  %cond = select i1 %cmp, i32 0, i32 -5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isl6421_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #0 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sec_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 6
  %0 = ptrtoint ptr %sec_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_priv, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %i2c_addr = getelementptr inbounds %struct.isl6421, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_addr, align 4
  %conv = zext i8 %5 to i16
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %buf, align 4
  %10 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %tone, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 4
  %13 = or i8 %12, 16
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 4
  %16 = and i8 %15, -17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %storemerge = phi i8 [ %16, %sw.bb4 ], [ %13, %sw.bb ]
  %override_or = getelementptr inbounds %struct.isl6421, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %override_or to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %override_or, align 1
  %or1128 = or i8 %18, %storemerge
  %override_and = getelementptr inbounds %struct.isl6421, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %override_and to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %override_and, align 2
  %and1629 = and i8 %20, %or1128
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %and1629, ptr %1, align 4
  %i2c = getelementptr inbounds %struct.isl6421, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c, align 4
  %call = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msg, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  %cond = select i1 %cmp, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__ksymtab_isl6421_attach, !1, !"__ksymtab_isl6421_attach", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/isl6421.c", i32 216, i32 1}
!2 = !{ptr @__UNIQUE_ID_description290, !3, !"__UNIQUE_ID_description290", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/isl6421.c", i32 218, i32 1}
!4 = !{ptr @__UNIQUE_ID_author291, !5, !"__UNIQUE_ID_author291", i1 false, i1 false}
!5 = !{!"../drivers/media/dvb-frontends/isl6421.c", i32 219, i32 1}
!6 = !{ptr @__UNIQUE_ID_file292, !7, !"__UNIQUE_ID_file292", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/isl6421.c", i32 220, i32 1}
!8 = !{ptr @__UNIQUE_ID_license293, !7, !"__UNIQUE_ID_license293", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/isl6421.c", i32 116, i32 3}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @isl6421_set_voltage._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @isl6421_set_voltage._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"auto-init"}
!27 = !{i8 0, i8 2}
