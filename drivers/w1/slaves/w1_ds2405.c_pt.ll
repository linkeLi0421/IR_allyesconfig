; ModuleID = '/llk/IR_all_yes/drivers/w1/slaves/w1_ds2405.c_pt.bc'
source_filename = "../drivers/w1/slaves/w1_ds2405.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.w1_family = type { %struct.list_head, i8, ptr, ptr, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.w1_family_ops = type { ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.w1_slave = type { ptr, [32 x i8], %struct.list_head, %struct.w1_reg_num, %struct.atomic_t, i32, i32, ptr, ptr, ptr, %struct.device, ptr }
%struct.w1_reg_num = type { i64 }

@__UNIQUE_ID_file170 = internal constant [43 x i8] c"w1_ds2405.file=drivers/w1/slaves/w1_ds2405\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [22 x i8] c"w1_ds2405.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [66 x i8] c"w1_ds2405.author=Maciej S. Szmigiero <mail@maciej.szmigiero.name>\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [59 x i8] c"w1_ds2405.description=Driver for 1-wire Dallas DS2405 PIO.\00", section ".modinfo", align 1
@__UNIQUE_ID_alias174 = internal constant [31 x i8] c"w1_ds2405.alias=w1-family-0x05\00", section ".modinfo", align 1
@__initcall__kmod_w1_ds2405__175_218_w1_family_ds2405_init6 = internal global ptr @w1_family_ds2405_init, section ".initcall6.init", align 4
@w1_family_ds2405 = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 5, ptr @w1_ds2405_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__exitcall_w1_family_ds2405_exit = internal global ptr @w1_family_ds2405_exit, section ".exitcall.exit", align 4
@w1_ds2405_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr null, ptr null, ptr @w1_ds2405_groups, ptr null }, [16 x i8] zeroinitializer }, align 32
@w1_ds2405_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w1_ds2405_group, ptr null], [24 x i8] zeroinitializer }, align 32
@w1_ds2405_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w1_ds2405_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@w1_ds2405_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_state, ptr @dev_attr_output, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_output = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @output_show, ptr @output_store }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@state_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 93, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"non-consistent state %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"state_show\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/w1/slaves/w1_ds2405.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@state_show._entry_ptr = internal global ptr @state_show._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %u%n\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"w1_family_ds2405\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 213, i32 25 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"w1_ds2405_fops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 209, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"w1_ds2405_groups\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"w1_ds2405_group\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 207, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"w1_ds2405_attrs\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 201, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"dev_attr_state\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"dev_attr_output\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 198, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 93, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 199, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [33 x i8] c"../drivers/w1/slaves/w1_ds2405.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 151, i32 18 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_alias174, ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file170, ptr @__UNIQUE_ID_license171, ptr @__exitcall_w1_family_ds2405_exit, ptr @__initcall__kmod_w1_ds2405__175_218_w1_family_ds2405_init6, ptr @state_show._entry, ptr @state_show._entry_ptr, ptr @w1_family_ds2405_exit, ptr @w1_family_ds2405, ptr @w1_ds2405_fops, ptr @w1_ds2405_groups, ptr @w1_ds2405_group, ptr @w1_ds2405_attrs, ptr @dev_attr_state, ptr @dev_attr_output, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_family_ds2405 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2405_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2405_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2405_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2405_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_output to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_family_ds2405_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @w1_register_family(ptr noundef nonnull @w1_family_ds2405) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w1_family_ds2405_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_family_ds2405) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_show(ptr noundef %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr i8, ptr %device, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %reg_num.i = getelementptr i8, ptr %device, i32 -32
  %4 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %reg_num.i, align 8
  %6 = tail call i64 @llvm.bswap.i64(i64 %5) #7
  %call.i = tail call i32 @w1_reset_bus(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end.out_unlock_crit_edge

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end.i:                                         ; preds = %if.end
  tail call void @w1_write_8(ptr noundef %3, i8 noundef zeroext -16) #7
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %bit_ctr.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %if.end5, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i
  %bit_ctr.036.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %bit_ctr.036.i
  %conv3.i = zext i32 %shl.i to i64
  %and.i = and i64 %6, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool4.i = icmp ne i64 %and.i, 0
  %lnot.ext.i = zext i1 %tobool4.i to i32
  %call6.i = tail call zeroext i8 @w1_triplet(ptr noundef %3, i32 noundef %lnot.ext.i) #7
  %conv7.i = zext i8 %call6.i to i32
  %and8.i = and i32 %conv7.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and8.i)
  %cmp9.i = icmp ne i32 %and8.i, 3
  %and14.i = lshr i32 %conv7.i, 2
  %and14.lobit.i = and i32 %and14.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and14.lobit.i, i32 %lnot.ext.i)
  %cmp20.not.i = icmp eq i32 %and14.lobit.i, %lnot.ext.i
  %or.cond.i = select i1 %cmp9.i, i1 %cmp20.not.i, i1 false
  br i1 %or.cond.i, label %for.cond.i, label %for.body.i.out_unlock_crit_edge

for.body.i.out_unlock_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end5:                                          ; preds = %for.cond.i
  %call6 = tail call zeroext i8 @w1_read_8(ptr noundef %1) #7
  %7 = zext i8 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %call6, label %do.end [
    i8 0, label %if.end5.if.end13_crit_edge
    i8 -1, label %if.end13.fold.split
  ]

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %call6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.1, i32 noundef %conv) #10
  br label %out_unlock

if.end13.fold.split:                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %if.end13.fold.split, %if.end5.if.end13_crit_edge
  %cond = phi i8 [ 48, %if.end5.if.end13_crit_edge ], [ 49, %if.end13.fold.split ]
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %cond, ptr %buf, align 1
  br label %out_unlock

out_unlock:                                       ; preds = %if.end13, %do.end, %for.body.i.out_unlock_crit_edge, %if.end.out_unlock_crit_edge
  %f_retval.0 = phi i32 [ -5, %do.end ], [ 1, %if.end13 ], [ -19, %if.end.out_unlock_crit_edge ], [ -19, %for.body.i.out_unlock_crit_edge ]
  %call17 = tail call i32 @w1_reset_bus(ptr noundef %1) #7
  tail call void @mutex_unlock(ptr noundef %bus_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %f_retval.0, %out_unlock ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_8(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_triplet(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @output_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr i8, ptr %device, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %device, i32 -80
  %call2 = tail call fastcc i32 @w1_ds2405_read_pio(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.out_unlock_crit_edge, label %if.end4

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool5.not = icmp eq i32 %call2, 0
  %conv = select i1 %tobool5.not, i8 48, i8 49
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %buf, align 1
  br label %out_unlock

out_unlock:                                       ; preds = %if.end4, %if.end.out_unlock_crit_edge
  %f_retval.0 = phi i32 [ 1, %if.end4 ], [ %call2, %if.end.out_unlock_crit_edge ]
  %call6 = tail call i32 @w1_reset_bus(ptr noundef %1) #7
  tail call void @mutex_unlock(ptr noundef %bus_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %f_retval.0, %out_unlock ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @output_store(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %ret = alloca i32, align 4
  %val = alloca i32, align 4
  %cmd = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %device, i32 -80
  %master = getelementptr i8, ptr %device, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #7
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ret, align 4, !annotation !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.7, ptr noundef nonnull %val, ptr noundef nonnull %ret)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 1
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch = icmp ult i32 %5, 2
  br i1 %switch, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %6 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ret, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  %call9 = call i32 @mutex_lock_interruptible_nested(ptr noundef %bus_mutex, i32 noundef 0) #7
  %8 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call9, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %call12 = call fastcc i32 @w1_ds2405_read_pio(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.out_unlock_crit_edge, label %if.end15

if.end11.out_unlock_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end15:                                         ; preds = %if.end11
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call12, i32 %10)
  %cmp16 = icmp eq i32 %call12, %10
  br i1 %cmp16, label %if.end15.out_unlock_crit_edge, label %if.end18

if.end15.out_unlock_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

if.end18:                                         ; preds = %if.end15
  %call19 = call i32 @w1_reset_bus(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %do.body, label %if.end18.out_unlock_crit_edge

if.end18.out_unlock_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

do.body:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %reg_num = getelementptr i8, ptr %device, i32 -32
  %11 = ptrtoint ptr %reg_num to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %reg_num, align 8
  %13 = call i64 @llvm.bswap.i64(i64 %12)
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %cmd) #7
  %14 = getelementptr inbounds [9 x i8], ptr %cmd, i32 0, i32 1
  %15 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 85, ptr %cmd, align 1
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %13, ptr %14, align 1
  call void @w1_write_block(ptr noundef %1, ptr noundef nonnull %cmd, i32 noundef 9) #7
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %cmd) #7
  br label %out_unlock

out_unlock:                                       ; preds = %do.body, %if.end18.out_unlock_crit_edge, %if.end15.out_unlock_crit_edge, %if.end11.out_unlock_crit_edge
  %f_retval.0 = phi i32 [ %7, %if.end15.out_unlock_crit_edge ], [ %7, %do.body ], [ %call12, %if.end11.out_unlock_crit_edge ], [ -19, %if.end18.out_unlock_crit_edge ]
  %call24 = call i32 @w1_reset_bus(ptr noundef %1) #7
  call void @mutex_unlock(ptr noundef %bus_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %f_retval.0, %out_unlock ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w1_ds2405_read_pio(ptr nocapture noundef readonly %sl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %0 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master.i, align 4
  %reg_num.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 3
  %2 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %reg_num.i, align 8
  %4 = tail call i64 @llvm.bswap.i64(i64 %3) #7
  %call.i = tail call i32 @w1_reset_bus(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  tail call void @w1_write_8(ptr noundef %1, i8 noundef zeroext -20) #7
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %bit_ctr.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.cond.i.return_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.cond.i.return_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i
  %bit_ctr.036.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %bit_ctr.036.i
  %conv3.i = zext i32 %shl.i to i64
  %and.i = and i64 %4, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool4.i = icmp ne i64 %and.i, 0
  %lnot.ext.i = zext i1 %tobool4.i to i32
  %call6.i = tail call zeroext i8 @w1_triplet(ptr noundef %1, i32 noundef %lnot.ext.i) #7
  %conv7.i = zext i8 %call6.i to i32
  %and8.i = and i32 %conv7.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and8.i)
  %cmp9.i = icmp ne i32 %and8.i, 3
  %and14.i = lshr i32 %conv7.i, 2
  %and14.lobit.i = and i32 %and14.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and14.lobit.i, i32 %lnot.ext.i)
  %cmp20.not.i = icmp eq i32 %and14.lobit.i, %lnot.ext.i
  %or.cond.i = select i1 %cmp9.i, i1 %cmp20.not.i, i1 false
  br i1 %or.cond.i, label %for.cond.i, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master.i, align 4
  %7 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %reg_num.i, align 8
  %9 = tail call i64 @llvm.bswap.i64(i64 %8) #7
  %call.i8 = tail call i32 @w1_reset_bus(ptr noundef %6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %cmp.not.i9 = icmp eq i32 %call.i8, 0
  br i1 %cmp.not.i9, label %if.end.i10, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i10:                                       ; preds = %if.end
  tail call void @w1_write_8(ptr noundef %6, i8 noundef zeroext -16) #7
  br label %for.body.i28

for.cond.i13:                                     ; preds = %for.body.i28
  %inc.i11 = add nuw nsw i32 %bit_ctr.036.i14, 1
  %exitcond.not.i12 = icmp eq i32 %inc.i11, 64
  br i1 %exitcond.not.i12, label %for.cond.i13.return_crit_edge, label %for.cond.i13.for.body.i28_crit_edge

for.cond.i13.for.body.i28_crit_edge:              ; preds = %for.cond.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i28

for.cond.i13.return_crit_edge:                    ; preds = %for.cond.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

for.body.i28:                                     ; preds = %for.cond.i13.for.body.i28_crit_edge, %if.end.i10
  %bit_ctr.036.i14 = phi i32 [ 0, %if.end.i10 ], [ %inc.i11, %for.cond.i13.for.body.i28_crit_edge ]
  %shl.i15 = shl nuw i32 1, %bit_ctr.036.i14
  %conv3.i16 = zext i32 %shl.i15 to i64
  %and.i17 = and i64 %9, %conv3.i16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i17)
  %tobool4.i18 = icmp ne i64 %and.i17, 0
  %lnot.ext.i19 = zext i1 %tobool4.i18 to i32
  %call6.i20 = tail call zeroext i8 @w1_triplet(ptr noundef %6, i32 noundef %lnot.ext.i19) #7
  %conv7.i21 = zext i8 %call6.i20 to i32
  %and8.i22 = and i32 %conv7.i21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and8.i22)
  %cmp9.i23 = icmp ne i32 %and8.i22, 3
  %and14.i24 = lshr i32 %conv7.i21, 2
  %and14.lobit.i25 = and i32 %and14.i24, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and14.lobit.i25, i32 %lnot.ext.i19)
  %cmp20.not.i26 = icmp eq i32 %and14.lobit.i25, %lnot.ext.i19
  %or.cond.i27 = select i1 %cmp9.i23, i1 %cmp20.not.i26, i1 false
  br i1 %or.cond.i27, label %for.cond.i13, label %for.body.i28.return_crit_edge

for.body.i28.return_crit_edge:                    ; preds = %for.body.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %for.body.i28.return_crit_edge, %for.cond.i13.return_crit_edge, %if.end.return_crit_edge, %for.cond.i.return_crit_edge
  %retval.0 = phi i32 [ -19, %if.end.return_crit_edge ], [ -19, %for.body.i28.return_crit_edge ], [ 1, %for.cond.i13.return_crit_edge ], [ 0, %for.cond.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__UNIQUE_ID_file170, !1, !"__UNIQUE_ID_file170", i1 false, i1 false}
!1 = !{!"../drivers/w1/slaves/w1_ds2405.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_license171, !1, !"__UNIQUE_ID_license171", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author172, !4, !"__UNIQUE_ID_author172", i1 false, i1 false}
!4 = !{!"../drivers/w1/slaves/w1_ds2405.c", i32 22, i32 1}
!5 = !{ptr @__UNIQUE_ID_description173, !6, !"__UNIQUE_ID_description173", i1 false, i1 false}
!6 = !{!"../drivers/w1/slaves/w1_ds2405.c", i32 23, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias174, !8, !"__UNIQUE_ID_alias174", i1 false, i1 false}
!8 = !{!"../drivers/w1/slaves/w1_ds2405.c", i32 24, i32 1}
!9 = !{ptr @__initcall__kmod_w1_ds2405__175_218_w1_family_ds2405_init6, !10, !"__initcall__kmod_w1_ds2405__175_218_w1_family_ds2405_init6", i1 false, i1 false}
!10 = !{!"../drivers/w1/slaves/w1_ds2405.c", i32 218, i32 1}
!11 = !{ptr @__exitcall_w1_family_ds2405_exit, !10, !"__exitcall_w1_family_ds2405_exit", i1 false, i1 false}
!12 = !{ptr @w1_family_ds2405, !13, !"w1_family_ds2405", i1 false, i1 false}
!13 = !{!"../drivers/w1/slaves/w1_ds2405.c", i32 213, i32 25}
!14 = !{ptr @w1_ds2405_fops, !15, !"w1_ds2405_fops", i1 false, i1 false}
!15 = !{!"../drivers/w1/slaves/w1_ds2405.c", i32 209, i32 35}
!16 = !{ptr @w1_ds2405_groups, !17, !"w1_ds2405_groups", i1 false, i1 false}
!17 = !{!"../drivers/w1/slaves/w1_ds2405.c", i32 207, i32 1}
!18 = !{ptr @w1_ds2405_group, !17, !"w1_ds2405_group", i1 false, i1 false}
!19 = !{ptr @w1_ds2405_attrs, !20, !"w1_ds2405_attrs", i1 false, i1 false}
!20 = !{!"../drivers/w1/slaves/w1_ds2405.c", i32 201, i32 26}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/w1/slaves/w1_ds2405.c", i32 198, i32 8}
!23 = !{ptr @dev_attr_state, !22, !"dev_attr_state", i1 false, i1 false}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/w1/slaves/w1_ds2405.c", i32 93, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @state_show._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @state_show._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/w1/slaves/w1_ds2405.c", i32 199, i32 8}
!34 = !{ptr @dev_attr_output, !33, !"dev_attr_output", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/w1/slaves/w1_ds2405.c", i32 151, i32 18}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"auto-init"}
