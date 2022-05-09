; ModuleID = '/llk/IR_all_yes/sound/pci/oxygen/xonar_lib.c_pt.bc'
source_filename = "../sound/pci/oxygen/xonar_lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.oxygen = type { i32, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, i32, ptr, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i32, [6 x ptr], [6 x ptr], %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %union.anon.78, [2 x [64 x i16]], i32, [32 x i8], %struct.oxygen_model }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.78 = type { [64 x i32] }
%struct.oxygen_model = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }
%struct.xonar_generic = type { i32, i16, i8, i8, i8, i8 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.77, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.77 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.72, [128 x i8] }
%union.anon.72 = type { %union.anon.74 }
%union.anon.74 = type { [64 x i64] }

@xonar_ext_power_gpio_changed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 48, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"power restored\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"xonar_ext_power_gpio_changed\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sound/pci/oxygen/xonar_lib.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xonar_ext_power_gpio_changed._entry_ptr = internal global ptr @xonar_ext_power_gpio_changed._entry, section ".printk_index", align 4
@xonar_ext_power_gpio_changed._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 51, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Hey! Don't unplug the power cable!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@xonar_ext_power_gpio_changed._entry_ptr.8 = internal global ptr @xonar_ext_power_gpio_changed._entry.5, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 48, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [32 x i8] c"../sound/pci/oxygen/xonar_lib.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 50, i32 4 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @xonar_ext_power_gpio_changed._entry, ptr @xonar_ext_power_gpio_changed._entry.5, ptr @xonar_ext_power_gpio_changed._entry_ptr, ptr @xonar_ext_power_gpio_changed._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xonar_ext_power_gpio_changed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xonar_ext_power_gpio_changed._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xonar_enable_output(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %output_enable_bit = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %output_enable_bit to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %output_enable_bit, align 4
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext %3, i16 noundef zeroext %3) #3
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  tail call void @msleep(i32 noundef %5) #3
  %6 = ptrtoint ptr %output_enable_bit to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %output_enable_bit, align 4
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext %7, i16 noundef zeroext %7) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xonar_disable_output(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %output_enable_bit = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %output_enable_bit to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %output_enable_bit, align 4
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 0, i16 noundef zeroext %3) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xonar_init_ext_power(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %ext_power_int_reg = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ext_power_int_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ext_power_int_reg, align 1
  %conv = zext i8 %3 to i32
  %ext_power_bit = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ext_power_bit to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ext_power_bit, align 4
  tail call void @oxygen_write8_masked(ptr noundef %chip, i32 noundef %conv, i8 noundef zeroext %5, i8 noundef zeroext %5) #3
  %interrupt_mask = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 8
  %6 = ptrtoint ptr %interrupt_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interrupt_mask, align 4
  %or = or i32 %7, 2048
  store i32 %or, ptr %interrupt_mask, align 4
  %gpio_changed = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 28, i32 16
  %8 = ptrtoint ptr %gpio_changed to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @xonar_ext_power_gpio_changed, ptr %gpio_changed, align 4
  %ext_power_reg = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %ext_power_reg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ext_power_reg, align 2
  %conv1 = zext i8 %10 to i32
  %call = tail call zeroext i8 @oxygen_read8(ptr noundef %chip, i32 noundef %conv1) #3
  %11 = ptrtoint ptr %ext_power_bit to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ext_power_bit, align 4
  %and15 = and i8 %12, %call
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and15)
  %tobool = icmp ne i8 %and15, 0
  %conv6 = zext i1 %tobool to i8
  %has_power = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %has_power to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv6, ptr %has_power, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xonar_ext_power_gpio_changed(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %ext_power_reg = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ext_power_reg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ext_power_reg, align 2
  %conv = zext i8 %3 to i32
  %call = tail call zeroext i8 @oxygen_read8(ptr noundef %chip, i32 noundef %conv) #3
  %ext_power_bit = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ext_power_bit to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ext_power_bit, align 4
  %and26 = and i8 %5, %call
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and26)
  %tobool = icmp ne i8 %and26, 0
  %has_power6 = getelementptr inbounds %struct.xonar_generic, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %has_power6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_power6, align 1
  %8 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %8)
  %cmp.not = icmp eq i8 %7, %8
  br i1 %cmp.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end17

if.then:                                          ; preds = %entry
  %9 = ptrtoint ptr %has_power6 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %has_power6, align 1
  %card = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %10 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %card, align 4
  %dev = getelementptr inbounds %struct.snd_card, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  br i1 %tobool, label %do.end, label %do.end14

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %13, ptr noundef nonnull @.str) #6
  br label %if.end17

do.end14:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %13, ptr noundef nonnull @.str.6) #6
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %do.end, %entry.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @oxygen_read8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xonar_init_cs53x1(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 12, i16 noundef zeroext 12) #3
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 0, i16 noundef zeroext 12) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write16_masked(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xonar_set_cs53x1_params(ptr noundef %chip, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 54001, i32 %1)
  %cmp = icmp ult i32 %1, 54001
  call void @__sanitizer_cov_trace_const_cmp4(i32 108001, i32 %1)
  %cmp2 = icmp ult i32 %1, 108001
  %. = select i1 %cmp2, i16 4, i16 8
  %value.0 = select i1 %cmp, i16 0, i16 %.
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext %value.0, i16 noundef zeroext 12) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xonar_gpio_bit_switch_get(ptr nocapture noundef readonly %ctl, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %call = tail call zeroext i16 @oxygen_read16(ptr noundef %1, i32 noundef 166) #3
  %conv2 = zext i16 %call to i32
  %and4 = and i32 %3, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5 = icmp ne i32 %and4, 0
  %lnot.ext = zext i1 %tobool5 to i32
  %and = lshr i32 %3, 16
  %and.lobit = and i32 %and, 1
  %xor = xor i32 %and.lobit, %lnot.ext
  %value9 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %xor, ptr %value9, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @oxygen_read16(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xonar_gpio_bit_switch_put(ptr nocapture noundef readonly %ctl, ptr nocapture noundef readonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %ctl, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %reg_lock = getelementptr inbounds %struct.oxygen, ptr %1, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %reg_lock) #3
  %call = tail call zeroext i16 @oxygen_read16(ptr noundef %1, i32 noundef 166) #3
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %value, i32 0, i32 2
  %4 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3 = icmp eq i32 %5, 0
  %6 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp ne i32 %6, 0
  %tobool7.not = xor i1 %7, %tobool3
  %8 = trunc i32 %3 to i16
  %conv10 = or i16 %call, %8
  %9 = xor i16 %8, -1
  %conv14 = and i16 %call, %9
  %new_bits.0 = select i1 %tobool7.not, i16 %conv14, i16 %conv10
  call void @__sanitizer_cov_trace_cmp2(i16 %new_bits.0, i16 %call)
  %cmp = icmp ne i16 %new_bits.0, %call
  br i1 %cmp, label %if.then19, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @oxygen_write16(ptr noundef %1, i32 noundef 166, i16 noundef zeroext %new_bits.0) #3
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %entry.if.end20_crit_edge
  %conv17 = zext i1 %cmp to i32
  tail call void @_raw_spin_unlock_irq(ptr noundef %reg_lock) #3
  ret i32 %conv17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write8_masked(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/oxygen/xonar_lib.c", i32 48, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @xonar_ext_power_gpio_changed._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @xonar_ext_power_gpio_changed._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/pci/oxygen/xonar_lib.c", i32 50, i32 4}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @xonar_ext_power_gpio_changed._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @xonar_ext_power_gpio_changed._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
