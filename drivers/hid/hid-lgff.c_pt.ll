; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-lgff.c_pt.bc'
source_filename = "../drivers/hid/hid-lgff.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dev_type = type { i16, i16, ptr }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.ff_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i32], %struct.mutex, i32, ptr, [0 x ptr] }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.hid_report = type { %struct.list_head, %struct.list_head, i32, i32, i32, [256 x ptr], i32, i32, ptr }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }

@ff_joystick = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 82, i16 -1], [28 x i8] zeroinitializer }, align 32
@lgff_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 125, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no inputs found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lgff_init\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hid/hid-lgff.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lgff_init._entry_ptr = internal global ptr @lgff_init._entry, section ".printk_index", align 4
@devices = internal constant { [7 x %struct.dev_type], [40 x i8] } { [7 x %struct.dev_type] [%struct.dev_type { i16 1133, i16 -15855, ptr @ff_rumble }, %struct.dev_type { i16 1133, i16 -15847, ptr @ff_rumble }, %struct.dev_type { i16 1133, i16 -15741, ptr @ff_joystick }, %struct.dev_type { i16 1133, i16 -15738, ptr @ff_joystick_ac }, %struct.dev_type { i16 1133, i16 -15737, ptr @ff_joystick_ac }, %struct.dev_type { i16 1133, i16 -15725, ptr @ff_joystick }, %struct.dev_type { i16 1133, i16 -15723, ptr @ff_joystick }], [40 x i8] zeroinitializer }, align 32
@lgff_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\016hid_logitech: Force feedback for Logitech force feedback devices by Johann Deneux <johann.deneux@it.uu.se>\0A\00", [50 x i8] zeroinitializer }, align 32
@lgff_init._entry_ptr.7 = internal global ptr @lgff_init._entry.5, section ".printk_index", align 4
@ff_rumble = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 80, i16 -1], [28 x i8] zeroinitializer }, align 32
@ff_joystick_ac = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 82, i16 97, i16 -1], [26 x i8] zeroinitializer }, align 32
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@hid_lgff_play._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: (x, y)=(%04x, %04x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hid_lgff_play\00", [18 x i8] zeroinitializer }, align 32
@hid_lgff_play._entry_ptr = internal global ptr @hid_lgff_play._entry, section ".printk_index", align 4
@hid_lgff_play._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: (left, right)=(%04x, %04x)\0A\00", [62 x i8] zeroinitializer }, align 32
@hid_lgff_play._entry_ptr.12 = internal global ptr @hid_lgff_play._entry.10, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 80, i64 82]
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"ff_joystick\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 36, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 125, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 47, i32 30 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 153, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"ff_rumble\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 31, i32 27 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"ff_joystick_ac\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 41, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 77, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private constant [26 x i8] c"../drivers/hid/hid-lgff.c\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.62, i32 92, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @hid_lgff_play._entry, ptr @hid_lgff_play._entry.10, ptr @hid_lgff_play._entry_ptr, ptr @hid_lgff_play._entry_ptr.12, ptr @lgff_init._entry, ptr @lgff_init._entry.5, ptr @lgff_init._entry_ptr, ptr @lgff_init._entry_ptr.7, ptr @ff_joystick, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @devices, ptr @.str.6, ptr @ff_rumble, ptr @ff_joystick_ac, ptr @.str.8, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_joystick to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgff_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgff_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_rumble to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ff_joystick_ac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_lgff_play._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_lgff_play._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lgff_init(ptr noundef %hid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %inputs = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 36
  %0 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %inputs, align 4
  %cmp.i.not = icmp eq ptr %1, %inputs
  br i1 %cmp.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev1 = getelementptr inbounds %struct.hid_device, ptr %hid, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %input = getelementptr inbounds %struct.hid_input, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %call3 = tail call ptr @hid_validate_values(ptr noundef %hid, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 7) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %vendor = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 3, i32 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1133, i16 %5)
  %cmp8 = icmp eq i16 %5, 1133
  br i1 %cmp8, label %land.lhs.true, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond.preheader
  %6 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15855, i16 %7)
  %cmp14 = icmp eq i16 %7, -15855
  br i1 %cmp14, label %land.lhs.true.if.then16_crit_edge, label %land.lhs.true.1

land.lhs.true.if.then16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16

if.then16:                                        ; preds = %land.lhs.true.6.if.then16_crit_edge, %land.lhs.true.5.if.then16_crit_edge, %land.lhs.true.4.if.then16_crit_edge, %land.lhs.true.3.if.then16_crit_edge, %land.lhs.true.2.if.then16_crit_edge, %land.lhs.true.1.if.then16_crit_edge, %land.lhs.true.if.then16_crit_edge
  %i.069.lcssa = phi i32 [ 0, %land.lhs.true.if.then16_crit_edge ], [ 1, %land.lhs.true.1.if.then16_crit_edge ], [ 2, %land.lhs.true.2.if.then16_crit_edge ], [ 3, %land.lhs.true.3.if.then16_crit_edge ], [ 4, %land.lhs.true.4.if.then16_crit_edge ], [ 5, %land.lhs.true.5.if.then16_crit_edge ], [ 6, %land.lhs.true.6.if.then16_crit_edge ]
  %ff = getelementptr [7 x %struct.dev_type], ptr @devices, i32 0, i32 %i.069.lcssa, i32 2
  %8 = ptrtoint ptr %ff to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ff, align 4
  br label %for.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15847, i16 %11)
  %cmp14.1 = icmp eq i16 %11, -15847
  br i1 %cmp14.1, label %land.lhs.true.1.if.then16_crit_edge, label %land.lhs.true.2

land.lhs.true.1.if.then16_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16

land.lhs.true.2:                                  ; preds = %land.lhs.true.1
  %12 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15741, i16 %13)
  %cmp14.2 = icmp eq i16 %13, -15741
  br i1 %cmp14.2, label %land.lhs.true.2.if.then16_crit_edge, label %land.lhs.true.3

land.lhs.true.2.if.then16_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16

land.lhs.true.3:                                  ; preds = %land.lhs.true.2
  %14 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15738, i16 %15)
  %cmp14.3 = icmp eq i16 %15, -15738
  br i1 %cmp14.3, label %land.lhs.true.3.if.then16_crit_edge, label %land.lhs.true.4

land.lhs.true.3.if.then16_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16

land.lhs.true.4:                                  ; preds = %land.lhs.true.3
  %16 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15737, i16 %17)
  %cmp14.4 = icmp eq i16 %17, -15737
  br i1 %cmp14.4, label %land.lhs.true.4.if.then16_crit_edge, label %land.lhs.true.5

land.lhs.true.4.if.then16_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16

land.lhs.true.5:                                  ; preds = %land.lhs.true.4
  %18 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15725, i16 %19)
  %cmp14.5 = icmp eq i16 %19, -15725
  br i1 %cmp14.5, label %land.lhs.true.5.if.then16_crit_edge, label %land.lhs.true.6

land.lhs.true.5.if.then16_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16

land.lhs.true.6:                                  ; preds = %land.lhs.true.5
  %20 = ptrtoint ptr %product to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %product, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -15723, i16 %21)
  %cmp14.6 = icmp eq i16 %21, -15723
  br i1 %cmp14.6, label %land.lhs.true.6.if.then16_crit_edge, label %land.lhs.true.6.for.end_crit_edge

land.lhs.true.6.for.end_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

land.lhs.true.6.if.then16_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then16

for.end:                                          ; preds = %land.lhs.true.6.for.end_crit_edge, %if.then16, %for.cond.preheader.for.end_crit_edge
  %ff_bits.0 = phi ptr [ %9, %if.then16 ], [ @ff_joystick, %for.cond.preheader.for.end_crit_edge ], [ @ff_joystick, %land.lhs.true.6.for.end_crit_edge ]
  %22 = ptrtoint ptr %ff_bits.0 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ff_bits.0, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %23)
  %cmp2271 = icmp sgt i16 %23, -1
  br i1 %cmp2271, label %for.body24.lr.ph, label %for.end.for.end29_crit_edge

for.end.for.end29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end29

for.body24.lr.ph:                                 ; preds = %for.end
  %ffbit = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 12
  br label %for.body24

for.body24:                                       ; preds = %for.body24.for.body24_crit_edge, %for.body24.lr.ph
  %24 = phi i16 [ %23, %for.body24.lr.ph ], [ %26, %for.body24.for.body24_crit_edge ]
  %i.172 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc28, %for.body24.for.body24_crit_edge ]
  %conv2167 = zext i16 %24 to i32
  tail call void @_set_bit(i32 noundef %conv2167, ptr noundef %ffbit) #4
  %inc28 = add i32 %i.172, 1
  %arrayidx20 = getelementptr i16, ptr %ff_bits.0, i32 %inc28
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx20, align 2
  %cmp22 = icmp sgt i16 %26, -1
  br i1 %cmp22, label %for.body24.for.body24_crit_edge, label %for.body24.for.end29_crit_edge

for.body24.for.end29_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end29

for.body24.for.body24_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body24

for.end29:                                        ; preds = %for.body24.for.end29_crit_edge, %for.end.for.end29_crit_edge
  %call30 = tail call i32 @input_ff_create_memless(ptr noundef %3, ptr noundef null, ptr noundef nonnull @hid_lgff_play) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %for.end29.cleanup_crit_edge

for.end29.cleanup_crit_edge:                      ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end33:                                         ; preds = %for.end29
  %arrayidx.i = getelementptr %struct.input_dev, ptr %3, i32 0, i32 12, i32 3
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx.i, align 4
  %29 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool37.not = icmp eq i32 %29, 0
  br i1 %tobool37.not, label %if.end33.do.end43_crit_edge, label %if.then38

if.end33.do.end43_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end43

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %ff39 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 20
  %30 = ptrtoint ptr %ff39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ff39, align 8
  %set_autocenter = getelementptr inbounds %struct.ff_device, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %set_autocenter to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @hid_lgff_set_autocenter, ptr %set_autocenter, align 4
  br label %do.end43

do.end43:                                         ; preds = %if.then38, %if.end33.do.end43_crit_edge
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %for.end29.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %do.end43 ], [ -19, %if.end.cleanup_crit_edge ], [ %call30, %for.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hid_validate_values(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create_memless(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hid_lgff_play(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %effect) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %report_list1 = getelementptr %struct.hid_device, ptr %1, i32 0, i32 15, i32 1, i32 1
  %2 = ptrtoint ptr %report_list1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %report_list1, align 4
  %4 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %effect, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i16 %5, label %entry.sw.epilog_crit_edge [
    i16 82, label %sw.bb
    i16 80, label %sw.bb40
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %7 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %u, align 4
  %end_level = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %end_level to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %end_level, align 2
  %11 = tail call i16 @llvm.smax.i16(i16 %8, i16 -127)
  %12 = tail call i16 @llvm.smin.i16(i16 %11, i16 128)
  %narrow = add nsw i16 %12, 127
  %13 = zext i16 %narrow to i32
  %14 = tail call i16 @llvm.smax.i16(i16 %10, i16 -127)
  %15 = tail call i16 @llvm.smin.i16(i16 %14, i16 128)
  %narrow126 = add nsw i16 %15, 127
  %16 = zext i16 %narrow126 to i32
  %field = getelementptr inbounds %struct.hid_report, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %field, align 4
  %value = getelementptr inbounds %struct.hid_field, ptr %18, i32 0, i32 10
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %value, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 81, ptr %20, align 4
  %22 = load ptr, ptr %field, align 4
  %value23 = getelementptr inbounds %struct.hid_field, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %value23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %value23, align 4
  %arrayidx24 = getelementptr i32, ptr %24, i32 1
  %25 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8, ptr %arrayidx24, align 4
  %26 = load ptr, ptr %field, align 4
  %value27 = getelementptr inbounds %struct.hid_field, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %value27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %value27, align 4
  %arrayidx28 = getelementptr i32, ptr %28, i32 2
  %29 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %13, ptr %arrayidx28, align 4
  %30 = load ptr, ptr %field, align 4
  %value31 = getelementptr inbounds %struct.hid_field, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %value31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %value31, align 4
  %arrayidx32 = getelementptr i32, ptr %32, i32 3
  %33 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %16, ptr %arrayidx32, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %34 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not = icmp eq i32 %34, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog.sink.split_crit_edge, label %do.end

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.2, i32 noundef %13, i32 noundef %16) #7
  br label %sw.epilog.sink.split

sw.bb40:                                          ; preds = %entry
  %u41 = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %35 = ptrtoint ptr %u41 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %u41, align 4
  %weak_magnitude = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5, i32 0, i32 1
  %37 = ptrtoint ptr %weak_magnitude to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %weak_magnitude, align 2
  %39 = udiv i16 %36, 257
  %div = zext i16 %39 to i32
  %40 = udiv i16 %38, 257
  %div46 = zext i16 %40 to i32
  %field63 = getelementptr inbounds %struct.hid_report, ptr %3, i32 0, i32 5
  %41 = ptrtoint ptr %field63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %field63, align 4
  %value65 = getelementptr inbounds %struct.hid_field, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %value65 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %value65, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 66, ptr %44, align 4
  %46 = load ptr, ptr %field63, align 4
  %value69 = getelementptr inbounds %struct.hid_field, ptr %46, i32 0, i32 10
  %47 = ptrtoint ptr %value69 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %value69, align 4
  %arrayidx70 = getelementptr i32, ptr %48, i32 1
  %49 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx70, align 4
  %50 = load ptr, ptr %field63, align 4
  %value73 = getelementptr inbounds %struct.hid_field, ptr %50, i32 0, i32 10
  %51 = ptrtoint ptr %value73 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %value73, align 4
  %arrayidx74 = getelementptr i32, ptr %52, i32 2
  %53 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div46, ptr %arrayidx74, align 4
  %54 = load ptr, ptr %field63, align 4
  %value77 = getelementptr inbounds %struct.hid_field, ptr %54, i32 0, i32 10
  %55 = ptrtoint ptr %value77 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %value77, align 4
  %arrayidx78 = getelementptr i32, ptr %56, i32 3
  %57 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %div, ptr %arrayidx78, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %58 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool80.not = icmp eq i32 %58, 0
  br i1 %tobool80.not, label %sw.bb40.sw.epilog.sink.split_crit_edge, label %do.end84

sw.bb40.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

do.end84:                                         ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #6
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef %div46, i32 noundef %div) #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %do.end84, %sw.bb40.sw.epilog.sink.split_crit_edge, %do.end, %sw.bb.sw.epilog.sink.split_crit_edge
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %3, i32 noundef 9) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hid_lgff_set_autocenter(ptr nocapture noundef readonly %dev, i16 noundef zeroext %magnitude) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %report_list1 = getelementptr %struct.hid_device, ptr %1, i32 0, i32 15, i32 1, i32 1
  %2 = ptrtoint ptr %report_list1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %report_list1, align 4
  %field = getelementptr inbounds %struct.hid_report, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %field, align 4
  %value3 = getelementptr inbounds %struct.hid_field, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %value3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %value3, align 4
  %8 = lshr i16 %magnitude, 12
  %incdec.ptr = getelementptr i32, ptr %7, i32 1
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 254, ptr %7, align 4
  %incdec.ptr5 = getelementptr i32, ptr %7, i32 2
  %10 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 13, ptr %incdec.ptr, align 4
  %conv6 = zext i16 %8 to i32
  %incdec.ptr7 = getelementptr i32, ptr %7, i32 3
  %11 = ptrtoint ptr %incdec.ptr5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv6, ptr %incdec.ptr5, align 4
  %incdec.ptr9 = getelementptr i32, ptr %7, i32 4
  %12 = ptrtoint ptr %incdec.ptr7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv6, ptr %incdec.ptr7, align 4
  %incdec.ptr10 = getelementptr i32, ptr %7, i32 5
  %13 = ptrtoint ptr %incdec.ptr9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 128, ptr %incdec.ptr9, align 4
  %incdec.ptr11 = getelementptr i32, ptr %7, i32 6
  %14 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %incdec.ptr10, align 4
  %15 = ptrtoint ptr %incdec.ptr11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %incdec.ptr11, align 4
  tail call void @hid_hw_request(ptr noundef %1, ptr noundef %3, i32 noundef 9) #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smax.i16(i16, i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.smin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-lgff.c", i32 125, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @lgff_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @lgff_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-lgff.c", i32 153, i32 2}
!10 = !{ptr @lgff_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @lgff_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @ff_joystick, !13, !"ff_joystick", i1 false, i1 false}
!13 = !{!"../drivers/hid/hid-lgff.c", i32 36, i32 27}
!14 = !{ptr @devices, !15, !"devices", i1 false, i1 false}
!15 = !{!"../drivers/hid/hid-lgff.c", i32 47, i32 30}
!16 = !{ptr @ff_rumble, !17, !"ff_rumble", i1 false, i1 false}
!17 = !{!"../drivers/hid/hid-lgff.c", i32 31, i32 27}
!18 = !{ptr @ff_joystick_ac, !19, !"ff_joystick_ac", i1 false, i1 false}
!19 = !{!"../drivers/hid/hid-lgff.c", i32 41, i32 27}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hid/hid-lgff.c", i32 77, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @hid_lgff_play._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @hid_lgff_play._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hid/hid-lgff.c", i32 92, i32 3}
!27 = !{ptr @hid_lgff_play._entry.10, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @hid_lgff_play._entry_ptr.12, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
