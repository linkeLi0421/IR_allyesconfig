; ModuleID = '/llk/IR_all_yes/drivers/w1/slaves/w1_ds2433.c_pt.bc'
source_filename = "../drivers/w1/slaves/w1_ds2433.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.w1_family = type { %struct.list_head, i8, ptr, ptr, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.w1_family_ops = type { ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.w1_slave = type { ptr, [32 x i8], %struct.list_head, %struct.w1_reg_num, %struct.atomic_t, i32, i32, ptr, ptr, ptr, %struct.device, ptr }
%struct.w1_reg_num = type { i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }
%struct.w1_f23_data = type { [512 x i8], i32 }

@__initcall__kmod_w1_ds2433__183_301_w1_family_23_init6 = internal global ptr @w1_family_23_init, section ".initcall6.init", align 4
@w1_family_23 = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 35, ptr @w1_f23_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__exitcall_w1_family_23_exit = internal global ptr @w1_family_23_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [51 x i8] c"w1_ds2433.author=Ben Gardner <bgardner@wabtec.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [65 x i8] c"w1_ds2433.description=w1 family 23 driver for DS2433, 4kb EEPROM\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [43 x i8] c"w1_ds2433.file=drivers/w1/slaves/w1_ds2433\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [22 x i8] c"w1_ds2433.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [31 x i8] c"w1_ds2433.alias=w1-family-0x23\00", section ".modinfo", align 1
@w1_f23_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr @w1_f23_add_slave, ptr @w1_f23_remove_slave, ptr @w1_f23_groups, ptr null }, [16 x i8] zeroinitializer }, align 32
@w1_f23_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w1_f23_group, ptr null], [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@w1_f23_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr null, ptr @w1_f23_bin_attributes }, [44 x i8] zeroinitializer }, align 32
@w1_f23_bin_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bin_attr_eeprom, ptr null], [24 x i8] zeroinitializer }, align 32
@bin_attr_eeprom = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 512, ptr null, ptr null, ptr @eeprom_read, ptr @eeprom_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@eeprom_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 217, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"invalid offset/count off=%d cnt=%zd\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eeprom_write\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/w1/slaves/w1_ds2433.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@eeprom_write._entry_ptr = internal global ptr @eeprom_write._entry, section ".printk_index", align 4
@eeprom_write._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 224, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bad CRC at offset %d\0A\00", [42 x i8] zeroinitializer }, align 32
@eeprom_write._entry_ptr.8 = internal global ptr @eeprom_write._entry.6, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"w1_family_23\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 297, i32 25 }
@___asan_gen_.12 = private unnamed_addr constant [12 x i8] c"w1_f23_fops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 291, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"w1_f23_groups\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 264, i32 38 }
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"w1_f23_group\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 260, i32 37 }
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"w1_f23_bin_attributes\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 255, i32 30 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"bin_attr_eeprom\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 253, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 216, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [33 x i8] c"../drivers/w1/slaves/w1_ds2433.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 224, i32 4 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_w1_family_23_exit, ptr @__initcall__kmod_w1_ds2433__183_301_w1_family_23_init6, ptr @eeprom_write._entry, ptr @eeprom_write._entry.6, ptr @eeprom_write._entry_ptr, ptr @eeprom_write._entry_ptr.8, ptr @w1_family_23_exit, ptr @w1_family_23, ptr @w1_f23_fops, ptr @w1_f23_groups, ptr @w1_f23_group, ptr @w1_f23_bin_attributes, ptr @bin_attr_eeprom, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_family_23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f23_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f23_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f23_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f23_bin_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_eeprom to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_write._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_family_23_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @w1_register_family(ptr noundef nonnull @w1_family_23) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w1_family_23_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_family_23) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_f23_add_slave(ptr nocapture noundef writeonly %sl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 516) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %1 = ptrtoint ptr %family_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %family_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w1_f23_remove_slave(ptr nocapture noundef %sl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data, align 4
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %family_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %family_data, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %wrbuf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  %family_data = getelementptr i8, ptr %kobj, i32 -4
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %off)
  %cmp.i = icmp sgt i64 %off, 512
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv2.i = zext i32 %count to i64
  %add.i = add nsw i64 %conv2.i, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %add.i)
  %cmp4.i = icmp sgt i64 %add.i, 512
  %2 = trunc i64 %off to i32
  %conv8.i = sub i32 512, %2
  %retval.0.i = select i1 %cmp4.i, i32 %conv8.i, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  br i1 %cmp, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %master = getelementptr i8, ptr %kobj, i32 -12
  %3 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %4, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #8
  %5 = lshr i64 %off, 5
  %conv = trunc i64 %5 to i32
  %conv2 = zext i32 %retval.0.i to i64
  %add = add nsw i64 %off, 137438953471
  %sub = add nsw i64 %add, %conv2
  %6 = lshr i64 %sub, 5
  %conv4 = trunc i64 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv4)
  %cmp5.not39 = icmp sgt i32 %conv, %conv4
  br i1 %cmp5.not39, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %7 = getelementptr inbounds [3 x i8], ptr %wrbuf.i, i32 0, i32 1
  %8 = getelementptr inbounds [3 x i8], ptr %wrbuf.i, i32 0, i32 2
  %validcrc.i = getelementptr inbounds %struct.w1_f23_data, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ %conv, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %wrbuf.i) #8
  %mul.i = shl i32 %i.040, 5
  %9 = ptrtoint ptr %validcrc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %validcrc.i, align 4
  %shl.i = shl nuw i32 1, %i.040
  %and.i = and i32 %10, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i28, label %for.body.w1_f23_refresh_block.exit.thread_crit_edge

for.body.w1_f23_refresh_block.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f23_refresh_block.exit.thread

if.end.i28:                                       ; preds = %for.body
  %call.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end4.i, label %w1_f23_refresh_block.exit

if.end4.i:                                        ; preds = %if.end.i28
  %11 = ptrtoint ptr %wrbuf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -16, ptr %wrbuf.i, align 1
  %conv.i = trunc i32 %mul.i to i8
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %7, align 1
  %13 = lshr i32 %mul.i, 8
  %conv7.i = trunc i32 %13 to i8
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv7.i, ptr %8, align 1
  %15 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %16, ptr noundef nonnull %wrbuf.i, i32 noundef 3) #8
  %17 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master, align 4
  %arrayidx10.i = getelementptr [512 x i8], ptr %1, i32 0, i32 %mul.i
  %call11.i = call zeroext i8 @w1_read_block(ptr noundef %18, ptr noundef %arrayidx10.i, i32 noundef 32) #8
  %call14.i = call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef %arrayidx10.i, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20479, i16 %call14.i)
  %cmp.i29 = icmp eq i16 %call14.i, -20479
  br i1 %cmp.i29, label %w1_f23_refresh_block.exit.thread35, label %if.end4.i.w1_f23_refresh_block.exit.thread_crit_edge

if.end4.i.w1_f23_refresh_block.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f23_refresh_block.exit.thread

w1_f23_refresh_block.exit.thread35:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %validcrc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %validcrc.i, align 4
  %or.i = or i32 %20, %shl.i
  store i32 %or.i, ptr %validcrc.i, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %wrbuf.i) #8
  br label %for.inc

w1_f23_refresh_block.exit.thread:                 ; preds = %if.end4.i.w1_f23_refresh_block.exit.thread_crit_edge, %for.body.w1_f23_refresh_block.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %wrbuf.i) #8
  br label %for.inc

w1_f23_refresh_block.exit:                        ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %validcrc.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %validcrc.i, align 4
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %wrbuf.i) #8
  br label %out_up

for.inc:                                          ; preds = %w1_f23_refresh_block.exit.thread, %w1_f23_refresh_block.exit.thread35
  %inc = add i32 %i.040, 1
  %cmp5.not = icmp sgt i32 %inc, %conv4
  br i1 %cmp5.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %arrayidx = getelementptr [512 x i8], ptr %1, i32 0, i32 %2
  %22 = call ptr @memcpy(ptr %buf, ptr %arrayidx, i32 %retval.0.i)
  br label %out_up

out_up:                                           ; preds = %for.end, %w1_f23_refresh_block.exit
  %count.addr.0 = phi i32 [ %retval.0.i, %for.end ], [ -5, %w1_f23_refresh_block.exit ]
  %23 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master, align 4
  %bus_mutex11 = getelementptr inbounds %struct.w1_master, ptr %24, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex11) #8
  br label %cleanup

cleanup:                                          ; preds = %out_up, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %out_up ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_write(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %wrbuf.i = alloca [4 x i8], align 1
  %rdbuf.i = alloca [35 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %off)
  %cmp.i = icmp sgt i64 %off, 512
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv2.i = zext i32 %count to i64
  %add.i = add nsw i64 %conv2.i, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %add.i)
  %cmp4.i = icmp sgt i64 %add.i, 512
  %0 = trunc i64 %off to i32
  %conv8.i = sub i32 512, %0
  %retval.0.i = select i1 %cmp4.i, i32 %conv8.i, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  br i1 %cmp, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %and = and i64 %off, 31
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %and2 = and i32 %retval.0.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %if.end.for.body_crit_edge, label %do.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %kobj, ptr noundef nonnull @.str.1, i32 noundef %0, i32 noundef %retval.0.i) #12
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %add = add i32 %idx.080, 32
  %cmp6 = icmp ult i32 %add, %retval.0.i
  br i1 %cmp6, label %for.cond.for.body_crit_edge, label %while.body.lr.ph

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %idx.080 = phi i32 [ %add, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %idx.080
  %call8 = tail call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef %arrayidx, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20479, i16 %call8)
  %cmp10.not = icmp eq i16 %call8, -20479
  br i1 %cmp10.not, label %for.cond, label %do.end15

do.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %kobj, ptr noundef nonnull @.str.7, i32 noundef %0) #12
  br label %cleanup

while.body.lr.ph:                                 ; preds = %for.cond
  %master = getelementptr i8, ptr %kobj, i32 -12
  %1 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %2, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #8
  %family_data.i = getelementptr i8, ptr %kobj, i32 -4
  %3 = getelementptr inbounds [4 x i8], ptr %wrbuf.i, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i8], ptr %wrbuf.i, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i8], ptr %wrbuf.i, i32 0, i32 3
  %arrayidx21.i = getelementptr inbounds [35 x i8], ptr %rdbuf.i, i32 0, i32 1
  %arrayidx28.i = getelementptr inbounds [35 x i8], ptr %rdbuf.i, i32 0, i32 2
  %arrayidx34.i = getelementptr inbounds [35 x i8], ptr %rdbuf.i, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end36.while.body_crit_edge, %while.body.lr.ph
  %idx.182 = phi i32 [ 0, %while.body.lr.ph ], [ %add37, %if.end36.while.body_crit_edge ]
  %conv23 = add i32 %idx.182, %0
  %and24 = and i32 %conv23, 31
  %sub = sub nuw nsw i32 32, %and24
  %sub25 = sub i32 %retval.0.i, %idx.182
  %6 = call i32 @llvm.umin.i32(i32 %sub, i32 %sub25)
  %arrayidx31 = getelementptr i8, ptr %buf, i32 %idx.182
  %7 = ptrtoint ptr %family_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %family_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wrbuf.i) #8
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %rdbuf.i) #8
  %10 = call ptr @memset(ptr %rdbuf.i, i32 255, i32 35)
  %add.i71 = add i32 %6, %conv23
  %11 = trunc i32 %add.i71 to i8
  %12 = add i8 %11, 31
  %conv.i = and i8 %12, 31
  %call.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i73, label %while.body.w1_f23_write.exit.thread_crit_edge

while.body.w1_f23_write.exit.thread_crit_edge:    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f23_write.exit.thread

if.end.i73:                                       ; preds = %while.body
  %13 = ptrtoint ptr %wrbuf.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 15, ptr %wrbuf.i, align 1
  %conv2.i72 = trunc i32 %conv23 to i8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv2.i72, ptr %3, align 1
  %15 = lshr i32 %conv23, 8
  %conv4.i = trunc i32 %15 to i8
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv4.i, ptr %4, align 1
  %17 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %18, ptr noundef nonnull %wrbuf.i, i32 noundef 3) #8
  %19 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %20, ptr noundef %arrayidx31, i32 noundef %6) #8
  %call7.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end.i73.w1_f23_write.exit.thread_crit_edge

if.end.i73.w1_f23_write.exit.thread_crit_edge:    ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f23_write.exit.thread

if.end10.i:                                       ; preds = %if.end.i73
  %21 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %master, align 4
  call void @w1_write_8(ptr noundef %22, i8 noundef zeroext -86) #8
  %23 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master, align 4
  %add14.i = add nuw nsw i32 %6, 3
  %call15.i = call zeroext i8 @w1_read_block(ptr noundef %24, ptr noundef nonnull %rdbuf.i, i32 noundef %add14.i) #8
  %25 = ptrtoint ptr %rdbuf.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rdbuf.i, align 1
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp.not.i = icmp eq i8 %26, %28
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end10.i.w1_f23_write.exit.thread_crit_edge

if.end10.i.w1_f23_write.exit.thread_crit_edge:    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f23_write.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end10.i
  %29 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx21.i, align 1
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %cmp25.not.i = icmp eq i8 %30, %32
  br i1 %cmp25.not.i, label %lor.lhs.false27.i, label %lor.lhs.false.i.w1_f23_write.exit.thread_crit_edge

lor.lhs.false.i.w1_f23_write.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f23_write.exit.thread

lor.lhs.false27.i:                                ; preds = %lor.lhs.false.i
  %33 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx28.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %conv.i)
  %cmp31.not.i = icmp eq i8 %34, %conv.i
  br i1 %cmp31.not.i, label %lor.lhs.false33.i, label %lor.lhs.false27.i.w1_f23_write.exit.thread_crit_edge

lor.lhs.false27.i.w1_f23_write.exit.thread_crit_edge: ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f23_write.exit.thread

lor.lhs.false33.i:                                ; preds = %lor.lhs.false27.i
  %bcmp.i = call i32 @bcmp(ptr %arrayidx31, ptr %arrayidx34.i, i32 %6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp36.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp36.not.i, label %if.end39.i, label %lor.lhs.false33.i.w1_f23_write.exit.thread_crit_edge

lor.lhs.false33.i.w1_f23_write.exit.thread_crit_edge: ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f23_write.exit.thread

if.end39.i:                                       ; preds = %lor.lhs.false33.i
  %call40.i = call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end36, label %if.end39.i.w1_f23_write.exit.thread_crit_edge

if.end39.i.w1_f23_write.exit.thread_crit_edge:    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %w1_f23_write.exit.thread

w1_f23_write.exit.thread:                         ; preds = %if.end39.i.w1_f23_write.exit.thread_crit_edge, %lor.lhs.false33.i.w1_f23_write.exit.thread_crit_edge, %lor.lhs.false27.i.w1_f23_write.exit.thread_crit_edge, %lor.lhs.false.i.w1_f23_write.exit.thread_crit_edge, %if.end10.i.w1_f23_write.exit.thread_crit_edge, %if.end.i73.w1_f23_write.exit.thread_crit_edge, %while.body.w1_f23_write.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %rdbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wrbuf.i) #8
  br label %out_up

if.end36:                                         ; preds = %if.end39.i
  %35 = ptrtoint ptr %wrbuf.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 85, ptr %wrbuf.i, align 1
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.i, ptr %5, align 1
  %37 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %38, ptr noundef nonnull %wrbuf.i, i32 noundef 4) #8
  call void @msleep(i32 noundef 5) #8
  %39 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %master, align 4
  %call49.i = call i32 @w1_reset_bus(ptr noundef %40) #8
  %shr50.i = ashr i32 %conv23, 5
  %shl.i = shl nuw i32 1, %shr50.i
  %neg.i = xor i32 %shl.i, -1
  %validcrc.i = getelementptr inbounds %struct.w1_f23_data, ptr %8, i32 0, i32 1
  %41 = ptrtoint ptr %validcrc.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %validcrc.i, align 4
  %and51.i = and i32 %42, %neg.i
  store i32 %and51.i, ptr %validcrc.i, align 4
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %rdbuf.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wrbuf.i) #8
  %add37 = add i32 %6, %idx.182
  %cmp19 = icmp ugt i32 %retval.0.i, %add37
  br i1 %cmp19, label %if.end36.while.body_crit_edge, label %if.end36.out_up_crit_edge

if.end36.out_up_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_up

if.end36.while.body_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

out_up:                                           ; preds = %if.end36.out_up_crit_edge, %w1_f23_write.exit.thread
  %count.addr.0 = phi i32 [ -5, %w1_f23_write.exit.thread ], [ %retval.0.i, %if.end36.out_up_crit_edge ]
  %43 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %master, align 4
  %bus_mutex39 = getelementptr inbounds %struct.w1_master, ptr %44, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex39) #8
  br label %cleanup

cleanup:                                          ; preds = %out_up, %do.end15, %do.end, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end15 ], [ %count.addr.0, %out_up ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_select_slave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_w1_ds2433__183_301_w1_family_23_init6, !1, !"__initcall__kmod_w1_ds2433__183_301_w1_family_23_init6", i1 false, i1 false}
!1 = !{!"../drivers/w1/slaves/w1_ds2433.c", i32 301, i32 1}
!2 = !{ptr @__exitcall_w1_family_23_exit, !1, !"__exitcall_w1_family_23_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/w1/slaves/w1_ds2433.c", i32 303, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/w1/slaves/w1_ds2433.c", i32 304, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/w1/slaves/w1_ds2433.c", i32 305, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias188, !11, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!11 = !{!"../drivers/w1/slaves/w1_ds2433.c", i32 306, i32 1}
!12 = !{ptr @w1_family_23, !13, !"w1_family_23", i1 false, i1 false}
!13 = !{!"../drivers/w1/slaves/w1_ds2433.c", i32 297, i32 25}
!14 = !{ptr @w1_f23_fops, !15, !"w1_f23_fops", i1 false, i1 false}
!15 = !{!"../drivers/w1/slaves/w1_ds2433.c", i32 291, i32 35}
!16 = !{ptr @w1_f23_groups, !17, !"w1_f23_groups", i1 false, i1 false}
!17 = !{!"../drivers/w1/slaves/w1_ds2433.c", i32 264, i32 38}
!18 = !{ptr @w1_f23_group, !19, !"w1_f23_group", i1 false, i1 false}
!19 = !{!"../drivers/w1/slaves/w1_ds2433.c", i32 260, i32 37}
!20 = !{ptr @w1_f23_bin_attributes, !21, !"w1_f23_bin_attributes", i1 false, i1 false}
!21 = !{!"../drivers/w1/slaves/w1_ds2433.c", i32 255, i32 30}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/w1/slaves/w1_ds2433.c", i32 253, i32 8}
!24 = !{ptr @bin_attr_eeprom, !23, !"bin_attr_eeprom", i1 false, i1 false}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/w1/slaves/w1_ds2433.c", i32 216, i32 3}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @eeprom_write._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @eeprom_write._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/w1/slaves/w1_ds2433.c", i32 224, i32 4}
!35 = !{ptr @eeprom_write._entry.6, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @eeprom_write._entry_ptr.8, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
