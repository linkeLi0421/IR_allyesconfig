; ModuleID = '/llk/IR_all_yes/drivers/w1/slaves/w1_ds2430.c_pt.bc'
source_filename = "../drivers/w1/slaves/w1_ds2430.c"
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

@__initcall__kmod_w1_ds2430__170_290_w1_family_14_init6 = internal global ptr @w1_family_14_init, section ".initcall6.init", align 4
@w1_family_14 = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 20, ptr @w1_f14_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__exitcall_w1_family_14_exit = internal global ptr @w1_family_14_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [67 x i8] c"w1_ds2430.author=Angelo Dureghello <angelo.dureghello@timesys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [66 x i8] c"w1_ds2430.description=w1 family 14 driver for DS2430, 256b EEPROM\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [43 x i8] c"w1_ds2430.file=drivers/w1/slaves/w1_ds2430\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [22 x i8] c"w1_ds2430.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias175 = internal constant [31 x i8] c"w1_ds2430.alias=w1-family-0x14\00", section ".modinfo", align 1
@w1_f14_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr null, ptr null, ptr @w1_f14_groups, ptr null }, [16 x i8] zeroinitializer }, align 32
@w1_f14_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w1_f14_group, ptr null], [24 x i8] zeroinitializer }, align 32
@w1_f14_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr null, ptr @w1_f14_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@w1_f14_bin_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bin_attr_eeprom, ptr null], [24 x i8] zeroinitializer }, align 32
@bin_attr_eeprom = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 32, ptr null, ptr null, ptr @eeprom_read, ptr @eeprom_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@w1_f14_readblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 92, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"proof reading failed %d times\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"w1_f14_readblock\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/w1/slaves/w1_ds2430.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@w1_f14_readblock._entry_ptr = internal global ptr @w1_f14_readblock._entry, section ".printk_index", align 4
@w1_f14_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"could not write to eeprom, scratchpad compare failed %d times\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"w1_f14_write\00", [19 x i8] zeroinitializer }, align 32
@w1_f14_write._entry_ptr = internal global ptr @w1_f14_write._entry, section ".printk_index", align 4
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"w1_family_14\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 286, i32 25 }
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"w1_f14_fops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 282, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"w1_f14_groups\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 277, i32 38 }
@___asan_gen_.17 = private unnamed_addr constant [13 x i8] c"w1_f14_group\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 273, i32 37 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"w1_f14_bin_attrs\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 268, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"bin_attr_eeprom\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 266, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 91, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private constant [33 x i8] c"../drivers/w1/slaves/w1_ds2430.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 180, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias175, ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_w1_family_14_exit, ptr @__initcall__kmod_w1_ds2430__170_290_w1_family_14_init6, ptr @w1_f14_readblock._entry, ptr @w1_f14_readblock._entry_ptr, ptr @w1_f14_write._entry, ptr @w1_f14_write._entry_ptr, ptr @w1_family_14_exit, ptr @w1_family_14, ptr @w1_f14_fops, ptr @w1_f14_groups, ptr @w1_f14_group, ptr @w1_f14_bin_attrs, ptr @bin_attr_eeprom, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_family_14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f14_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f14_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f14_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f14_bin_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_eeprom to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f14_readblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_f14_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_family_14_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @w1_register_family(ptr noundef nonnull @w1_family_14) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w1_family_14_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_family_14) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %off)
  %cmp.i = icmp sgt i64 %off, 32
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %conv2.i = zext i32 %count to i64
  %add.i = add nsw i64 %conv2.i, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %add.i)
  %cmp4.i = icmp sgt i64 %add.i, 32
  %0 = trunc i64 %off to i32
  %conv8.i = sub i32 32, %0
  %retval.0.i = select i1 %cmp4.i, i32 %conv8.i, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  br i1 %cmp, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %master = getelementptr i8, ptr %kobj, i32 -12
  %1 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %2, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp227 = icmp sgt i32 %count, 0
  br i1 %cmp227, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %todo.031 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %count, %if.end.while.body_crit_edge ]
  %count.addr.030 = phi i32 [ %count.addr.1, %while.body.while.body_crit_edge ], [ %retval.0.i, %if.end.while.body_crit_edge ]
  %off.addr.029 = phi i64 [ %add, %while.body.while.body_crit_edge ], [ %off, %if.end.while.body_crit_edge ]
  %buf.addr.028 = phi ptr [ %add.ptr, %while.body.while.body_crit_edge ], [ %buf, %if.end.while.body_crit_edge ]
  %3 = tail call i32 @llvm.umin.i32(i32 %todo.031, i32 32)
  %conv = trunc i64 %off.addr.029 to i32
  %call6 = tail call fastcc i32 @w1_f14_readblock(ptr noundef %add.ptr.i.i, i32 noundef %conv, i32 noundef %3, ptr noundef %buf.addr.028)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  %count.addr.1 = select i1 %cmp7, i32 -5, i32 %count.addr.030
  %sub = add nsw i32 %todo.031, -32
  %add.ptr = getelementptr i8, ptr %buf.addr.028, i32 32
  %add = add i64 %off.addr.029, 32
  %cmp2 = icmp ugt i32 %todo.031, 32
  br i1 %cmp2, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %count.addr.0.lcssa = phi i32 [ %retval.0.i, %if.end.while.end_crit_edge ], [ %count.addr.1, %while.body.while.end_crit_edge ]
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %bus_mutex12 = getelementptr inbounds %struct.w1_master, ptr %5, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex12) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0.lcssa, %while.end ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_write(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  %tmp = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %kobj, i32 -80
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %off)
  %cmp.i = icmp sgt i64 %off, 32
  br i1 %cmp.i, label %entry.cleanup34_crit_edge, label %if.end.i

entry.cleanup34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end.i:                                         ; preds = %entry
  %conv2.i = zext i32 %count to i64
  %add.i = add nsw i64 %conv2.i, %off
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %add.i)
  %cmp4.i = icmp sgt i64 %add.i, 32
  %0 = trunc i64 %off to i32
  %conv8.i = sub i32 32, %0
  %retval.0.i = select i1 %cmp4.i, i32 %conv8.i, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, 0
  br i1 %cmp, label %if.end.i.cleanup34_crit_edge, label %if.end

if.end.i.cleanup34_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end:                                           ; preds = %if.end.i
  %master = getelementptr i8, ptr %kobj, i32 -12
  %1 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %2, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp272 = icmp sgt i32 %retval.0.i, 0
  br i1 %cmp272, label %if.end.while.body_crit_edge, label %if.end.out_up_crit_edge

if.end.out_up_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_up

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %if.end.while.body_crit_edge
  %len.077 = phi i32 [ %sub31, %if.end30.while.body_crit_edge ], [ %retval.0.i, %if.end.while.body_crit_edge ]
  %addr.075 = phi i32 [ %add, %if.end30.while.body_crit_edge ], [ %0, %if.end.while.body_crit_edge ]
  %buf.addr.073 = phi ptr [ %add.ptr, %if.end30.while.body_crit_edge ], [ %buf, %if.end.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %len.077)
  %cmp4 = icmp ugt i32 %len.077, 31
  %and = and i32 %addr.075, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp4, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.else, label %if.then6

if.then6:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp) #7
  %and7 = and i32 %addr.075, -32
  %3 = call ptr @memset(ptr %tmp, i32 255, i32 32)
  %call8 = call fastcc i32 @w1_f14_readblock(ptr noundef %add.ptr.i.i, i32 noundef %and7, i32 noundef 32, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then6.cleanup.thread_crit_edge

if.then6.cleanup.thread_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end11:                                         ; preds = %if.then6
  %sub = sub nuw nsw i32 32, %and
  %4 = call i32 @llvm.umin.i32(i32 %sub, i32 %len.077)
  %arrayidx = getelementptr [32 x i8], ptr %tmp, i32 0, i32 %and
  %5 = call ptr @memcpy(ptr %arrayidx, ptr %buf.addr.073, i32 %4)
  %call20 = call fastcc i32 @w1_f14_write(ptr noundef %add.ptr.i.i, i32 noundef %and7, ptr noundef nonnull %tmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end11.cleanup.thread_crit_edge, label %cleanup

if.end11.cleanup.thread_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end11.cleanup.thread_crit_edge, %if.then6.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp) #7
  br label %out_up

cleanup:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp) #7
  br label %if.end30

if.else:                                          ; preds = %while.body
  %call25 = call fastcc i32 @w1_f14_write(ptr noundef %add.ptr.i.i, i32 noundef %addr.075, ptr noundef %buf.addr.073)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.else.out_up_crit_edge, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.else.out_up_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_up

if.end30:                                         ; preds = %if.else.if.end30_crit_edge, %cleanup
  %copy.3 = phi i32 [ %4, %cleanup ], [ 32, %if.else.if.end30_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf.addr.073, i32 %copy.3
  %add = add i32 %copy.3, %addr.075
  %sub31 = sub nsw i32 %len.077, %copy.3
  %cmp2 = icmp sgt i32 %sub31, 0
  br i1 %cmp2, label %if.end30.while.body_crit_edge, label %if.end30.out_up_crit_edge

if.end30.out_up_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_up

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

out_up:                                           ; preds = %if.end30.out_up_crit_edge, %if.else.out_up_crit_edge, %cleanup.thread, %if.end.out_up_crit_edge
  %count.addr.3 = phi i32 [ -5, %cleanup.thread ], [ %retval.0.i, %if.end.out_up_crit_edge ], [ %retval.0.i, %if.end30.out_up_crit_edge ], [ -5, %if.else.out_up_crit_edge ]
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %bus_mutex33 = getelementptr inbounds %struct.w1_master, ptr %7, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex33) #7
  br label %cleanup34

cleanup34:                                        ; preds = %out_up, %if.end.i.cleanup34_crit_edge, %entry.cleanup34_crit_edge
  %retval.0 = phi i32 [ %count.addr.3, %out_up ], [ 0, %if.end.i.cleanup34_crit_edge ], [ 0, %entry.cleanup34_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w1_f14_readblock(ptr noundef %sl, i32 noundef %off, i32 noundef %count, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  %wrbuf = alloca [2 x i8], align 1
  %cmp = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wrbuf) #7
  %0 = getelementptr inbounds [2 x i8], ptr %wrbuf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cmp) #7
  %conv = trunc i32 %off to i8
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %1 = call ptr @memset(ptr %cmp, i32 255, i32 32)
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %tries.0 = phi i32 [ 10, %entry ], [ %dec, %do.cond.do.body_crit_edge ]
  %2 = ptrtoint ptr %wrbuf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -16, ptr %wrbuf, align 1
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %0, align 1
  %call = call i32 @w1_reset_select_slave(ptr noundef %sl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %do.body
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %5, ptr noundef nonnull %wrbuf, i32 noundef 2) #7
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %call3 = call zeroext i8 @w1_read_block(ptr noundef %7, ptr noundef %buf, i32 noundef %count) #7
  %call4 = call i32 @w1_reset_select_slave(ptr noundef %sl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %9, ptr noundef nonnull %wrbuf, i32 noundef 2) #7
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 4
  %call12 = call zeroext i8 @w1_read_block(ptr noundef %11, ptr noundef nonnull %cmp, i32 noundef %count) #7
  %bcmp = call i32 @bcmp(ptr nonnull %cmp, ptr %buf, i32 %count) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool15.not = icmp eq i32 %bcmp, 0
  br i1 %tobool15.not, label %if.end7.cleanup_crit_edge, label %do.cond

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond:                                          ; preds = %if.end7
  %dec = add nsw i32 %tries.0, -1
  %tobool18.not = icmp eq i32 %dec, 0
  br i1 %tobool18.not, label %do.end21, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end21:                                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 10) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end21 ], [ 0, %if.end7.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cmp) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wrbuf) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_select_slave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w1_f14_write(ptr noundef %sl, i32 noundef %addr, ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %wrbuf = alloca [2 x i8], align 1
  %rdbuf = alloca [35 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %wrbuf) #7
  %0 = ptrtoint ptr %wrbuf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %wrbuf, align 1, !annotation !47
  %1 = getelementptr inbounds [2 x i8], ptr %wrbuf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !47
  call void @llvm.lifetime.start.p0(i64 35, ptr nonnull %rdbuf) #7
  %3 = call ptr @memset(ptr %rdbuf, i32 255, i32 35)
  %conv = trunc i32 %addr to i8
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %arrayidx11 = getelementptr inbounds [35 x i8], ptr %rdbuf, i32 0, i32 2
  br label %retry

retry:                                            ; preds = %if.then14.retry_crit_edge, %entry
  %tries.0 = phi i32 [ 10, %entry ], [ %dec, %if.then14.retry_crit_edge ]
  %call = call i32 @w1_reset_select_slave(ptr noundef %sl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %retry.cleanup_crit_edge

retry.cleanup_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %retry
  %4 = ptrtoint ptr %wrbuf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 15, ptr %wrbuf, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %1, align 1
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %7, ptr noundef nonnull %wrbuf, i32 noundef 2) #7
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %9, ptr noundef %data, i32 noundef 32) #7
  %call3 = call i32 @w1_reset_select_slave(ptr noundef %sl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 4
  call void @w1_write_8(ptr noundef %11, i8 noundef zeroext -86) #7
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  %call10 = call zeroext i8 @w1_read_block(ptr noundef %13, ptr noundef nonnull %rdbuf, i32 noundef 34) #7
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(32) %data, ptr noundef dereferenceable(32) %arrayidx11, i32 32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.not, label %if.end18, label %if.then14

if.then14:                                        ; preds = %if.end6
  %dec = add nsw i32 %tries.0, -1
  %tobool15.not = icmp eq i32 %dec, 0
  br i1 %tobool15.not, label %do.end, label %if.then14.retry_crit_edge

if.then14.retry_crit_edge:                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef 10) #11
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %call19 = call i32 @w1_reset_select_slave(ptr noundef %sl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %wrbuf to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 85, ptr %wrbuf, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -91, ptr %1, align 1
  %16 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %17, ptr noundef nonnull %wrbuf, i32 noundef 2) #7
  call void @msleep(i32 noundef 11) #7
  %18 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master, align 4
  %call28 = call i32 @w1_reset_bus(ptr noundef %19) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end18.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %retry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.end22 ], [ -1, %if.end18.cleanup_crit_edge ], [ -1, %retry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 35, ptr nonnull %rdbuf) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %wrbuf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_w1_ds2430__170_290_w1_family_14_init6, !1, !"__initcall__kmod_w1_ds2430__170_290_w1_family_14_init6", i1 false, i1 false}
!1 = !{!"../drivers/w1/slaves/w1_ds2430.c", i32 290, i32 1}
!2 = !{ptr @__exitcall_w1_family_14_exit, !1, !"__exitcall_w1_family_14_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/w1/slaves/w1_ds2430.c", i32 292, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/w1/slaves/w1_ds2430.c", i32 293, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/w1/slaves/w1_ds2430.c", i32 294, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias175, !11, !"__UNIQUE_ID_alias175", i1 false, i1 false}
!11 = !{!"../drivers/w1/slaves/w1_ds2430.c", i32 295, i32 1}
!12 = !{ptr @w1_family_14, !13, !"w1_family_14", i1 false, i1 false}
!13 = !{!"../drivers/w1/slaves/w1_ds2430.c", i32 286, i32 25}
!14 = !{ptr @w1_f14_fops, !15, !"w1_f14_fops", i1 false, i1 false}
!15 = !{!"../drivers/w1/slaves/w1_ds2430.c", i32 282, i32 35}
!16 = !{ptr @w1_f14_groups, !17, !"w1_f14_groups", i1 false, i1 false}
!17 = !{!"../drivers/w1/slaves/w1_ds2430.c", i32 277, i32 38}
!18 = !{ptr @w1_f14_group, !19, !"w1_f14_group", i1 false, i1 false}
!19 = !{!"../drivers/w1/slaves/w1_ds2430.c", i32 273, i32 37}
!20 = !{ptr @w1_f14_bin_attrs, !21, !"w1_f14_bin_attrs", i1 false, i1 false}
!21 = !{!"../drivers/w1/slaves/w1_ds2430.c", i32 268, i32 30}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/w1/slaves/w1_ds2430.c", i32 266, i32 8}
!24 = !{ptr @bin_attr_eeprom, !23, !"bin_attr_eeprom", i1 false, i1 false}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/w1/slaves/w1_ds2430.c", i32 91, i32 2}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @w1_f14_readblock._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @w1_f14_readblock._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/w1/slaves/w1_ds2430.c", i32 180, i32 3}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @w1_f14_write._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @w1_f14_write._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
