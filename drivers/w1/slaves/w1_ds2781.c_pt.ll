; ModuleID = '/llk/IR_all_yes/drivers/w1/slaves/w1_ds2781.c_pt.bc'
source_filename = "../drivers/w1/slaves/w1_ds2781.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+w1_ds2781_io\22, \22a\22\09"
module asm "\09.weak\09__crc_w1_ds2781_io\09\09\09\09"
module asm "\09.long\09__crc_w1_ds2781_io\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w1_ds2781_io:\09\09\09\09\09"
module asm "\09.asciz \09\22w1_ds2781_io\22\09\09\09\09\09"
module asm "__kstrtabns_w1_ds2781_io:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+w1_ds2781_eeprom_cmd\22, \22a\22\09"
module asm "\09.weak\09__crc_w1_ds2781_eeprom_cmd\09\09\09\09"
module asm "\09.long\09__crc_w1_ds2781_eeprom_cmd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_w1_ds2781_eeprom_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22w1_ds2781_eeprom_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_w1_ds2781_eeprom_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_w1_ds2781_io = external dso_local constant [0 x i8], align 1
@__kstrtabns_w1_ds2781_io = external dso_local constant [0 x i8], align 1
@__ksymtab_w1_ds2781_io = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w1_ds2781_io to i32), ptr @__kstrtab_w1_ds2781_io, ptr @__kstrtabns_w1_ds2781_io }, section "___ksymtab+w1_ds2781_io", align 4
@__kstrtab_w1_ds2781_eeprom_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_w1_ds2781_eeprom_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_w1_ds2781_eeprom_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @w1_ds2781_eeprom_cmd to i32), ptr @__kstrtab_w1_ds2781_eeprom_cmd, ptr @__kstrtabns_w1_ds2781_eeprom_cmd }, section "___ksymtab+w1_ds2781_eeprom_cmd", align 4
@__initcall__kmod_w1_ds2781__172_151_w1_ds2781_family_init6 = internal global ptr @w1_ds2781_family_init, section ".initcall6.init", align 4
@w1_ds2781_family = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 61, ptr @w1_ds2781_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__exitcall_w1_ds2781_family_exit = internal global ptr @w1_ds2781_family_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author173 = internal constant [56 x i8] c"w1_ds2781.author=Renata Sayakhova <renata@oktetlabs.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [86 x i8] c"w1_ds2781.description=1-wire Driver for Maxim/Dallas DS2781 Stand-Alone Fuel Gauge IC\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [43 x i8] c"w1_ds2781.file=drivers/w1/slaves/w1_ds2781\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [22 x i8] c"w1_ds2781.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias177 = internal constant [31 x i8] c"w1_ds2781.alias=w1-family-0x3D\00", section ".modinfo", align 1
@w1_ds2781_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr @w1_ds2781_add_slave, ptr @w1_ds2781_remove_slave, ptr @w1_ds2781_groups, ptr null }, [16 x i8] zeroinitializer }, align 32
@w1_ds2781_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w1_ds2781_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ds2781-battery\00", [17 x i8] zeroinitializer }, align 32
@w1_ds2781_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr null, ptr @w1_ds2781_bin_attrs }, [44 x i8] zeroinitializer }, align 32
@w1_ds2781_bin_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bin_attr_w1_slave, ptr null], [24 x i8] zeroinitializer }, align 32
@bin_attr_w1_slave = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 178, ptr null, ptr null, ptr @w1_slave_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"w1_slave\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"w1_ds2781_family\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 147, i32 25 }
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"w1_ds2781_fops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 141, i32 35 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"w1_ds2781_groups\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 105, i32 38 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 115, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"w1_ds2781_group\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 101, i32 37 }
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"w1_ds2781_bin_attrs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 96, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"bin_attr_w1_slave\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [33 x i8] c"../drivers/w1/slaves/w1_ds2781.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 94, i32 8 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias177, ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_w1_ds2781_family_exit, ptr @__initcall__kmod_w1_ds2781__172_151_w1_ds2781_family_init6, ptr @__ksymtab_w1_ds2781_eeprom_cmd, ptr @__ksymtab_w1_ds2781_io, ptr @w1_ds2781_family_exit, ptr @w1_ds2781_family, ptr @w1_ds2781_fops, ptr @w1_ds2781_groups, ptr @.str, ptr @w1_ds2781_group, ptr @w1_ds2781_bin_attrs, ptr @bin_attr_w1_slave, ptr @.str.1], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2781_family to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2781_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2781_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2781_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_ds2781_bin_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_w1_slave to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w1_ds2781_io(ptr noundef %dev, ptr noundef %buf, i32 noundef %addr, i32 noundef %count, i32 noundef %io) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %master = getelementptr i8, ptr %dev, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 178, i32 %addr)
  %2 = icmp ugt i32 %addr, 178
  br i1 %2, label %if.end.w1_ds2781_do_io.exit_crit_edge, label %if.end.i

if.end.w1_ds2781_do_io.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %w1_ds2781_do_io.exit

if.end.i:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -80
  %sub.i = sub nuw nsw i32 178, %addr
  %3 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 %count) #4
  %call.i = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.i = icmp eq i32 %call.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.w1_ds2781_do_io.exit_crit_edge

if.end.i.w1_ds2781_do_io.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %w1_ds2781_do_io.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %io)
  %tobool.not.i = icmp eq i32 %io, 0
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @w1_write_8(ptr noundef %5, i8 noundef zeroext 108) #4
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %conv.i = trunc i32 %addr to i8
  tail call void @w1_write_8(ptr noundef %7, i8 noundef zeroext %conv.i) #4
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master, align 4
  tail call void @w1_write_block(ptr noundef %9, ptr noundef %buf, i32 noundef %3) #4
  br label %w1_ds2781_do_io.exit

if.else.i:                                        ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @w1_write_8(ptr noundef %5, i8 noundef zeroext 105) #4
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 4
  %conv11.i = trunc i32 %addr to i8
  tail call void @w1_write_8(ptr noundef %11, i8 noundef zeroext %conv11.i) #4
  %12 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %master, align 4
  %call13.i = tail call zeroext i8 @w1_read_block(ptr noundef %13, ptr noundef %buf, i32 noundef %3) #4
  %conv14.i = zext i8 %call13.i to i32
  br label %w1_ds2781_do_io.exit

w1_ds2781_do_io.exit:                             ; preds = %if.else.i, %if.then6.i, %if.end.i.w1_ds2781_do_io.exit_crit_edge, %if.end.w1_ds2781_do_io.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.w1_ds2781_do_io.exit_crit_edge ], [ %3, %if.then6.i ], [ %conv14.i, %if.else.i ], [ %3, %if.end.i.w1_ds2781_do_io.exit_crit_edge ]
  %14 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master, align 4
  %bus_mutex2 = getelementptr inbounds %struct.w1_master, ptr %15, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex2) #4
  br label %cleanup

cleanup:                                          ; preds = %w1_ds2781_do_io.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %w1_ds2781_do_io.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @w1_ds2781_eeprom_cmd(ptr noundef %dev, i32 noundef %addr, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -80
  %master = getelementptr i8, ptr %dev, i32 -12
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #4
  %call = tail call i32 @w1_reset_select_slave(ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %conv = trunc i32 %cmd to i8
  tail call void @w1_write_8(ptr noundef %3, i8 noundef zeroext %conv) #4
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %conv4 = trunc i32 %addr to i8
  tail call void @w1_write_8(ptr noundef %5, i8 noundef zeroext %conv4) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then1, %if.end.if.end5_crit_edge
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master, align 4
  %bus_mutex7 = getelementptr inbounds %struct.w1_master, ptr %7, i32 0, i32 21
  tail call void @mutex_unlock(ptr noundef %bus_mutex7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_select_slave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_ds2781_family_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @w1_register_family(ptr noundef nonnull @w1_ds2781_family) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w1_ds2781_family_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_ds2781_family) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_ds2781_add_slave(ptr noundef %sl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef -2) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  %parent = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %parent, align 8
  %call2 = tail call i32 @platform_device_add(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %pdev_add_failed

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %driver_data.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %driver_data.i, align 4
  br label %cleanup

pdev_add_failed:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_device_put(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %pdev_add_failed, %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %pdev_add_failed ], [ 0, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @w1_ds2781_remove_slave(ptr nocapture noundef readonly %sl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @platform_device_unregister(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_slave_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %off to i32
  %call1 = tail call i32 @w1_ds2781_io(ptr noundef %kobj, ptr noundef %buf, i32 noundef %conv, i32 noundef %count, i32 noundef 0)
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__ksymtab_w1_ds2781_io, !1, !"__ksymtab_w1_ds2781_io", i1 false, i1 false}
!1 = !{!"../drivers/w1/slaves/w1_ds2781.c", i32 65, i32 1}
!2 = !{ptr @__ksymtab_w1_ds2781_eeprom_cmd, !3, !"__ksymtab_w1_ds2781_eeprom_cmd", i1 false, i1 false}
!3 = !{!"../drivers/w1/slaves/w1_ds2781.c", i32 84, i32 1}
!4 = !{ptr @__initcall__kmod_w1_ds2781__172_151_w1_ds2781_family_init6, !5, !"__initcall__kmod_w1_ds2781__172_151_w1_ds2781_family_init6", i1 false, i1 false}
!5 = !{!"../drivers/w1/slaves/w1_ds2781.c", i32 151, i32 1}
!6 = !{ptr @__exitcall_w1_ds2781_family_exit, !5, !"__exitcall_w1_ds2781_family_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author173, !8, !"__UNIQUE_ID_author173", i1 false, i1 false}
!8 = !{!"../drivers/w1/slaves/w1_ds2781.c", i32 153, i32 1}
!9 = !{ptr @__UNIQUE_ID_description174, !10, !"__UNIQUE_ID_description174", i1 false, i1 false}
!10 = !{!"../drivers/w1/slaves/w1_ds2781.c", i32 154, i32 1}
!11 = !{ptr @__UNIQUE_ID_file175, !12, !"__UNIQUE_ID_file175", i1 false, i1 false}
!12 = !{!"../drivers/w1/slaves/w1_ds2781.c", i32 155, i32 1}
!13 = !{ptr @__UNIQUE_ID_license176, !12, !"__UNIQUE_ID_license176", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias177, !15, !"__UNIQUE_ID_alias177", i1 false, i1 false}
!15 = !{!"../drivers/w1/slaves/w1_ds2781.c", i32 156, i32 1}
!16 = !{ptr @w1_ds2781_family, !17, !"w1_ds2781_family", i1 false, i1 false}
!17 = !{!"../drivers/w1/slaves/w1_ds2781.c", i32 147, i32 25}
!18 = !{ptr @w1_ds2781_fops, !19, !"w1_ds2781_fops", i1 false, i1 false}
!19 = !{!"../drivers/w1/slaves/w1_ds2781.c", i32 141, i32 35}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/w1/slaves/w1_ds2781.c", i32 115, i32 31}
!22 = !{ptr @w1_ds2781_groups, !23, !"w1_ds2781_groups", i1 false, i1 false}
!23 = !{!"../drivers/w1/slaves/w1_ds2781.c", i32 105, i32 38}
!24 = !{ptr @w1_ds2781_group, !25, !"w1_ds2781_group", i1 false, i1 false}
!25 = !{!"../drivers/w1/slaves/w1_ds2781.c", i32 101, i32 37}
!26 = !{ptr @w1_ds2781_bin_attrs, !27, !"w1_ds2781_bin_attrs", i1 false, i1 false}
!27 = !{!"../drivers/w1/slaves/w1_ds2781.c", i32 96, i32 30}
!28 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/w1/slaves/w1_ds2781.c", i32 94, i32 8}
!30 = !{ptr @bin_attr_w1_slave, !29, !"bin_attr_w1_slave", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
