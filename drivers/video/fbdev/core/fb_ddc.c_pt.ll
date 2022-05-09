; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/fb_ddc.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fb_ddc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fb_ddc_read\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_ddc_read\09\09\09\09"
module asm "\09.long\09__crc_fb_ddc_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_ddc_read:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_ddc_read\22\09\09\09\09\09"
module asm "__kstrtabns_fb_ddc_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }

@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__kstrtab_fb_ddc_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_ddc_read = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_ddc_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_ddc_read to i32), ptr @__kstrtab_fb_ddc_read, ptr @__kstrtabns_fb_ddc_read }, section "___ksymtab_gpl+fb_ddc_read", align 4
@__UNIQUE_ID_author301 = internal constant [51 x i8] c"fb_ddc.author=Dennis Munsie <dmunsie@cecropia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [44 x i8] c"fb_ddc.description=DDC/EDID reading support\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [44 x i8] c"fb_ddc.file=drivers/video/fbdev/core/fb_ddc\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [19 x i8] c"fb_ddc.license=GPL\00", section ".modinfo", align 1
@fb_do_probe_ddc_edid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 42, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to allocate memory for EDID block.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fb_do_probe_ddc_edid\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/video/fbdev/core/fb_ddc.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fb_do_probe_ddc_edid._entry_ptr = internal global ptr @fb_do_probe_ddc_edid._entry, section ".printk_index", align 4
@fb_do_probe_ddc_edid._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 49, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to read EDID block.\0A\00", [36 x i8] zeroinitializer }, align 32
@fb_do_probe_ddc_edid._entry_ptr.7 = internal global ptr @fb_do_probe_ddc_edid._entry.5, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 41, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [37 x i8] c"../drivers/video/fbdev/core/fb_ddc.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 49, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__ksymtab_fb_ddc_read, ptr @fb_do_probe_ddc_edid._entry, ptr @fb_do_probe_ddc_edid._entry.5, ptr @fb_do_probe_ddc_edid._entry_ptr, ptr @fb_do_probe_ddc_edid._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_do_probe_ddc_edid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fb_do_probe_ddc_edid._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fb_ddc_read(ptr noundef %adapter) #0 align 64 {
entry:
  %start.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data1 = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data1, align 4
  %setscl = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %setscl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %setscl, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void %3(ptr noundef %5, i32 noundef 1) #5
  %setsda = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 1
  %getscl = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 4
  %udelay = getelementptr inbounds %struct.i2c_algo_bit_data, ptr %1, i32 0, i32 7
  %6 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %flags3.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %len4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %dev12.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc74.for.body_crit_edge, %entry
  %i.0135 = phi i32 [ 0, %entry ], [ %inc75, %for.inc74.for.body_crit_edge ]
  %7 = ptrtoint ptr %setsda to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %setsda, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  call void %8(ptr noundef %10, i32 noundef 1) #5
  call void @msleep(i32 noundef 13) #5
  %11 = ptrtoint ptr %setscl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %setscl, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  call void %12(ptr noundef %14, i32 noundef 1) #5
  %15 = ptrtoint ptr %getscl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %getscl, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %cond.false19, label %for.body7.preheader

for.body7.preheader:                              ; preds = %for.body
  call void @msleep(i32 noundef 10) #5
  %17 = ptrtoint ptr %getscl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %getscl, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call = call i32 %18(ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %for.inc, label %for.body7.preheader.if.end22_crit_edge

for.body7.preheader.if.end22_crit_edge:           ; preds = %for.body7.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

for.inc:                                          ; preds = %for.body7.preheader
  call void @msleep(i32 noundef 10) #5
  %21 = ptrtoint ptr %getscl to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %getscl, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.1 = call i32 %22(ptr noundef %24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool10.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool10.not.1, label %for.inc.1, label %for.inc.if.end22_crit_edge

for.inc.if.end22_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

for.inc.1:                                        ; preds = %for.inc
  call void @msleep(i32 noundef 10) #5
  %25 = ptrtoint ptr %getscl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %getscl, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call.2 = call i32 %26(ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool10.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool10.not.2, label %for.inc.2, label %for.inc.1.if.end22_crit_edge

for.inc.1.if.end22_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

for.inc.2:                                        ; preds = %for.inc.1
  call void @msleep(i32 noundef 10) #5
  %29 = ptrtoint ptr %getscl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %getscl, align 4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call.3 = call i32 %30(ptr noundef %32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool10.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool10.not.3, label %for.inc.3, label %for.inc.2.if.end22_crit_edge

for.inc.2.if.end22_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

for.inc.3:                                        ; preds = %for.inc.2
  call void @msleep(i32 noundef 10) #5
  %33 = ptrtoint ptr %getscl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %getscl, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %call.4 = call i32 %34(ptr noundef %36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool10.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool10.not.4, label %for.inc.3.for.inc74_crit_edge, label %for.inc.3.if.end22_crit_edge

for.inc.3.if.end22_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

for.inc.3.for.inc74_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc74

cond.false19:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %udelay to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %udelay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %39(i32 noundef %38) #5
  br label %if.end22

if.end22:                                         ; preds = %cond.false19, %for.inc.3.if.end22_crit_edge, %for.inc.2.if.end22_crit_edge, %for.inc.1.if.end22_crit_edge, %for.inc.if.end22_crit_edge, %for.body7.preheader.if.end22_crit_edge
  %40 = ptrtoint ptr %setsda to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %setsda, align 4
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  call void %41(ptr noundef %43, i32 noundef 0) #5
  call void @msleep(i32 noundef 15) #5
  %44 = ptrtoint ptr %setscl to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %setscl, align 4
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  call void %45(ptr noundef %47, i32 noundef 0) #5
  call void @msleep(i32 noundef 15) #5
  %48 = ptrtoint ptr %setsda to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %setsda, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  call void %49(ptr noundef %51, i32 noundef 1) #5
  call void @msleep(i32 noundef 15) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %start.i) #5
  %52 = ptrtoint ptr %start.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %start.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %53 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3264, i32 noundef 128) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #5
  %54 = call ptr @memset(ptr %6, i32 255, i32 16)
  %55 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 80, ptr %msgs.i, align 4
  %56 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i, align 2
  %57 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 1, ptr %6, align 4
  %58 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %start.i, ptr %buf1.i, align 4
  %59 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 80, ptr %arrayinit.element.i, align 4
  %60 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 1, ptr %flags3.i, align 2
  %61 = ptrtoint ptr %len4.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 128, ptr %len4.i, align 4
  %62 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i, ptr %buf5.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev12.i, ptr noundef nonnull @.str) #9
  br label %fb_do_probe_ddc_edid.exit

if.end.i:                                         ; preds = %if.end22
  %call6.i = call i32 @i2c_transfer(ptr noundef %adapter, ptr noundef nonnull %msgs.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call6.i)
  %cmp.i = icmp eq i32 %call6.i, 2
  br i1 %cmp.i, label %if.end.i.fb_do_probe_ddc_edid.exit_crit_edge, label %do.end11.i

if.end.i.fb_do_probe_ddc_edid.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %fb_do_probe_ddc_edid.exit

do.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev12.i, ptr noundef nonnull @.str.6) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %fb_do_probe_ddc_edid.exit

fb_do_probe_ddc_edid.exit:                        ; preds = %do.end11.i, %if.end.i.fb_do_probe_ddc_edid.exit_crit_edge, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end11.i ], [ null, %do.end.i ], [ %call7.i.i, %if.end.i.fb_do_probe_ddc_edid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start.i) #5
  %63 = ptrtoint ptr %setsda to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %setsda, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  call void %64(ptr noundef %66, i32 noundef 0) #5
  %67 = ptrtoint ptr %setscl to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %setscl, align 4
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  call void %68(ptr noundef %70, i32 noundef 0) #5
  call void @msleep(i32 noundef 15) #5
  %71 = ptrtoint ptr %setscl to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %setscl, align 4
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %1, align 4
  call void %72(ptr noundef %74, i32 noundef 1) #5
  %75 = ptrtoint ptr %getscl to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %getscl, align 4
  %tobool37.not = icmp eq ptr %76, null
  br i1 %tobool37.not, label %cond.false61, label %fb_do_probe_ddc_edid.exit.for.body41_crit_edge

fb_do_probe_ddc_edid.exit.for.body41_crit_edge:   ; preds = %fb_do_probe_ddc_edid.exit
  br label %for.body41

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %fb_do_probe_ddc_edid.exit.for.body41_crit_edge
  %j.1134 = phi i32 [ %inc49, %for.body41.for.body41_crit_edge ], [ 0, %fb_do_probe_ddc_edid.exit.for.body41_crit_edge ]
  call void @msleep(i32 noundef 10) #5
  %77 = ptrtoint ptr %getscl to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %getscl, align 4
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 4
  %call44 = call i32 %78(ptr noundef %80) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  %inc49 = add nuw nsw i32 %j.1134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %j.1134)
  %cmp40 = icmp ult i32 %j.1134, 9
  %or.cond = select i1 %tobool45.not, i1 %cmp40, i1 false
  br i1 %or.cond, label %for.body41.for.body41_crit_edge, label %for.body41.if.end64_crit_edge

for.body41.if.end64_crit_edge:                    ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41

cond.false61:                                     ; preds = %fb_do_probe_ddc_edid.exit
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %udelay to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %udelay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %83(i32 noundef %82) #5
  br label %if.end64

if.end64:                                         ; preds = %cond.false61, %for.body41.if.end64_crit_edge
  %84 = ptrtoint ptr %setsda to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %setsda, align 4
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 4
  call void %85(ptr noundef %87, i32 noundef 1) #5
  call void @msleep(i32 noundef 15) #5
  %88 = ptrtoint ptr %setscl to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %setscl, align 4
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 4
  call void %89(ptr noundef %91, i32 noundef 0) #5
  %92 = ptrtoint ptr %setsda to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %setsda, align 4
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 4
  call void %93(ptr noundef %95, i32 noundef 0) #5
  %tobool71.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool71.not, label %if.end64.for.inc74_crit_edge, label %if.end64.for.end76_crit_edge

if.end64.for.end76_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end76

if.end64.for.inc74_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc74

for.inc74:                                        ; preds = %if.end64.for.inc74_crit_edge, %for.inc.3.for.inc74_crit_edge
  %inc75 = add nuw nsw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc75, 3
  br i1 %exitcond.not, label %for.inc74.for.end76_crit_edge, label %for.inc74.for.body_crit_edge

for.inc74.for.body_crit_edge:                     ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc74.for.end76_crit_edge:                    ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end76

for.end76:                                        ; preds = %for.inc74.for.end76_crit_edge, %if.end64.for.end76_crit_edge
  %edid.2 = phi ptr [ %retval.0.i, %if.end64.for.end76_crit_edge ], [ null, %for.inc74.for.end76_crit_edge ]
  %96 = ptrtoint ptr %setsda to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %setsda, align 4
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %1, align 4
  call void %97(ptr noundef %99, i32 noundef 1) #5
  %100 = ptrtoint ptr %setscl to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %setscl, align 4
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 4
  call void %101(ptr noundef %103, i32 noundef 1) #5
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 1
  %104 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %class, align 4
  %or = or i32 %105, 8
  store i32 %or, ptr %class, align 4
  ret ptr %edid.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__ksymtab_fb_ddc_read, !1, !"__ksymtab_fb_ddc_read", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/core/fb_ddc.c", i32 123, i32 1}
!2 = !{ptr @__UNIQUE_ID_author301, !3, !"__UNIQUE_ID_author301", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/core/fb_ddc.c", i32 125, i32 1}
!4 = !{ptr @__UNIQUE_ID_description302, !5, !"__UNIQUE_ID_description302", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/core/fb_ddc.c", i32 126, i32 1}
!6 = !{ptr @__UNIQUE_ID_file303, !7, !"__UNIQUE_ID_file303", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/core/fb_ddc.c", i32 127, i32 1}
!8 = !{ptr @__UNIQUE_ID_license304, !7, !"__UNIQUE_ID_license304", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/video/fbdev/core/fb_ddc.c", i32 41, i32 3}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @fb_do_probe_ddc_edid._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @fb_do_probe_ddc_edid._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/core/fb_ddc.c", i32 49, i32 2}
!19 = !{ptr @fb_do_probe_ddc_edid._entry.5, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @fb_do_probe_ddc_edid._entry_ptr.7, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
