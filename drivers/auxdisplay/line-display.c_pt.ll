; ModuleID = '/llk/IR_all_yes/drivers/auxdisplay/line-display.c_pt.bc'
source_filename = "../drivers/auxdisplay/line-display.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+linedisp_register\22, \22a\22\09"
module asm "\09.weak\09__crc_linedisp_register\09\09\09\09"
module asm "\09.long\09__crc_linedisp_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_linedisp_register:\09\09\09\09\09"
module asm "\09.asciz \09\22linedisp_register\22\09\09\09\09\09"
module asm "__kstrtabns_linedisp_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+linedisp_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_linedisp_unregister\09\09\09\09"
module asm "\09.long\09__crc_linedisp_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_linedisp_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22linedisp_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_linedisp_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.list_head = type { ptr, ptr }
%struct.linedisp = type { %struct.device, %struct.timer_list, ptr, ptr, ptr, i32, i32, i32, i32 }

@linedisp_register.linedisp_id = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 -1 }, [28 x i8] zeroinitializer }, align 32
@linedisp_type = internal constant { %struct.device_type, [40 x i8] } { %struct.device_type { ptr null, ptr @linedisp_groups, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"linedisp.%lu\00", [19 x i8] zeroinitializer }, align 32
@linedisp_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"(&linedisp->timer)\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Linux 5.17.0       \00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_linedisp_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_linedisp_register = external dso_local constant [0 x i8], align 1
@__ksymtab_linedisp_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @linedisp_register to i32), ptr @__kstrtab_linedisp_register, ptr @__kstrtabns_linedisp_register }, section "___ksymtab_gpl+linedisp_register", align 4
@__kstrtab_linedisp_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_linedisp_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_linedisp_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @linedisp_unregister to i32), ptr @__kstrtab_linedisp_unregister, ptr @__kstrtabns_linedisp_unregister }, section "___ksymtab_gpl+linedisp_unregister", align 4
@__UNIQUE_ID_file183 = internal constant [50 x i8] c"line_display.file=drivers/auxdisplay/line-display\00", section ".modinfo", align 1
@__UNIQUE_ID_license184 = internal constant [25 x i8] c"line_display.license=GPL\00", section ".modinfo", align 1
@linedisp_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @linedisp_group, ptr null], [24 x i8] zeroinitializer }, align 32
@linedisp_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @linedisp_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@linedisp_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_message, ptr @dev_attr_scroll_step_ms, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_message = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @message_show, ptr @message_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_scroll_step_ms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @scroll_step_ms_show, ptr @scroll_step_ms_store }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"message\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"scroll_step_ms\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"linedisp_id\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 209, i32 18 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"linedisp_type\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 191, i32 33 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 221, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 225, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 232, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"linedisp_groups\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"linedisp_group\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 189, i32 1 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"linedisp_attrs\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 184, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"dev_attr_message\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"dev_attr_scroll_step_ms\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 152, i32 8 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 128, i32 25 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 182, i32 8 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [37 x i8] c"../drivers/auxdisplay/line-display.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 159, i32 25 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_file183, ptr @__UNIQUE_ID_license184, ptr @__ksymtab_linedisp_register, ptr @__ksymtab_linedisp_unregister, ptr @linedisp_register.linedisp_id, ptr @linedisp_type, ptr @.str, ptr @linedisp_register.__key, ptr @.str.1, ptr @.str.2, ptr @linedisp_groups, ptr @linedisp_group, ptr @linedisp_attrs, ptr @dev_attr_message, ptr @dev_attr_scroll_step_ms, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linedisp_register.linedisp_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linedisp_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linedisp_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linedisp_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linedisp_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @linedisp_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_message to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_scroll_step_ms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @linedisp_register(ptr noundef %linedisp, ptr noundef %parent, i32 noundef %num_chars, ptr noundef %buf, ptr noundef %update) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %linedisp, i32 0, i32 1008)
  %parent1 = getelementptr inbounds %struct.device, ptr %linedisp, i32 0, i32 1
  %1 = ptrtoint ptr %parent1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %parent, ptr %parent1, align 8
  %type = getelementptr inbounds %struct.device, ptr %linedisp, i32 0, i32 4
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @linedisp_type, ptr %type, align 4
  %update3 = getelementptr inbounds %struct.linedisp, ptr %linedisp, i32 0, i32 2
  %3 = ptrtoint ptr %update3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %update, ptr %update3, align 8
  %buf4 = getelementptr inbounds %struct.linedisp, ptr %linedisp, i32 0, i32 3
  %4 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %buf, ptr %buf4, align 4
  %num_chars5 = getelementptr inbounds %struct.linedisp, ptr %linedisp, i32 0, i32 5
  %5 = ptrtoint ptr %num_chars5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %num_chars, ptr %num_chars5, align 4
  %scroll_rate = getelementptr inbounds %struct.linedisp, ptr %linedisp, i32 0, i32 8
  %6 = ptrtoint ptr %scroll_rate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 50, ptr %scroll_rate, align 8
  tail call void @device_initialize(ptr noundef %linedisp) #5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @linedisp_register.linedisp_id, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @llvm.prefetch.p0(ptr nonnull @linedisp_register.linedisp_id, i32 1, i32 3, i32 1) #5
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @linedisp_register.linedisp_id, ptr nonnull @linedisp_register.linedisp_id, i32 1, ptr nonnull elementtype(i32) @linedisp_register.linedisp_id) #5, !srcloc !43
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !44
  %call8 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %linedisp, ptr noundef nonnull @.str, i32 noundef %asmresult.i.i.i.i) #5
  %timer = getelementptr inbounds %struct.linedisp, ptr %linedisp, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @linedisp_scroll, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull @linedisp_register.__key) #5
  %call10 = tail call i32 @device_add(ptr noundef %linedisp) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end, label %entry.out_del_timer_crit_edge

entry.out_del_timer_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_del_timer

if.end:                                           ; preds = %entry
  %call11 = tail call fastcc i32 @linedisp_display(ptr noundef %linedisp, ptr noundef nonnull @.str.2, i32 noundef -1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %out_del_dev

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

out_del_dev:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @device_del(ptr noundef %linedisp) #5
  br label %out_del_timer

out_del_timer:                                    ; preds = %out_del_dev, %entry.out_del_timer_crit_edge
  %err.0 = phi i32 [ %call10, %entry.out_del_timer_crit_edge ], [ %call11, %out_del_dev ]
  %call17 = tail call i32 @del_timer_sync(ptr noundef %timer) #5
  tail call void @put_device(ptr noundef %linedisp) #5
  br label %cleanup

cleanup:                                          ; preds = %out_del_timer, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_del_timer ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @linedisp_scroll(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -928
  %scroll_pos = getelementptr i8, ptr %t, i32 68
  %num_chars1 = getelementptr i8, ptr %t, i32 60
  %0 = ptrtoint ptr %num_chars1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_chars1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp40.not = icmp eq i32 %1, 0
  br i1 %cmp40.not, label %entry.for.end8_crit_edge, label %for.cond2.preheader.lr.ph

entry.for.end8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end8

for.cond2.preheader.lr.ph:                        ; preds = %entry
  %2 = ptrtoint ptr %scroll_pos to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scroll_pos, align 4
  %message_len = getelementptr i8, ptr %t, i32 64
  %message = getelementptr i8, ptr %t, i32 56
  %buf = getelementptr i8, ptr %t, i32 52
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.end.for.cond2.preheader_crit_edge, %for.cond2.preheader.lr.ph
  %ch.042 = phi i32 [ %3, %for.cond2.preheader.lr.ph ], [ 0, %for.end.for.cond2.preheader_crit_edge ]
  %i.041 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %i.1.lcssa, %for.end.for.cond2.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.041, i32 %1)
  %cmp336 = icmp ult i32 %i.041, %1
  br i1 %cmp336, label %for.cond2.preheader.land.rhs_crit_edge, label %for.cond2.preheader.for.end_crit_edge

for.cond2.preheader.for.end_crit_edge:            ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond2.preheader.land.rhs_crit_edge:           ; preds = %for.cond2.preheader
  br label %land.rhs

land.rhs:                                         ; preds = %for.body5.land.rhs_crit_edge, %for.cond2.preheader.land.rhs_crit_edge
  %ch.138 = phi i32 [ %inc7, %for.body5.land.rhs_crit_edge ], [ %ch.042, %for.cond2.preheader.land.rhs_crit_edge ]
  %i.137 = phi i32 [ %inc, %for.body5.land.rhs_crit_edge ], [ %i.041, %for.cond2.preheader.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %message_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %message_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %ch.138, i32 %5)
  %cmp4 = icmp ult i32 %ch.138, %5
  br i1 %cmp4, label %for.body5, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body5:                                        ; preds = %land.rhs
  %6 = ptrtoint ptr %message to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %message, align 8
  %arrayidx = getelementptr i8, ptr %7, i32 %ch.138
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf, align 4
  %arrayidx6 = getelementptr i8, ptr %11, i32 %i.137
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %9, ptr %arrayidx6, align 1
  %inc = add i32 %i.137, 1
  %inc7 = add nuw i32 %ch.138, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.body5.for.end8_crit_edge, label %for.body5.land.rhs_crit_edge

for.body5.land.rhs_crit_edge:                     ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.body5.for.end8_crit_edge:                     ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end8

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %for.cond2.preheader.for.end_crit_edge
  %i.1.lcssa = phi i32 [ %i.041, %for.cond2.preheader.for.end_crit_edge ], [ %i.137, %land.rhs.for.end_crit_edge ]
  %cmp = icmp ult i32 %i.1.lcssa, %1
  br i1 %cmp, label %for.end.for.cond2.preheader_crit_edge, label %for.end.for.end8_crit_edge

for.end.for.end8_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end8

for.end.for.cond2.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond2.preheader

for.end8:                                         ; preds = %for.end.for.end8_crit_edge, %for.body5.for.end8_crit_edge, %entry.for.end8_crit_edge
  %update = getelementptr i8, ptr %t, i32 48
  %13 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %update, align 8
  tail call void %14(ptr noundef %add.ptr) #5
  %15 = ptrtoint ptr %scroll_pos to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scroll_pos, align 4
  %inc10 = add i32 %16, 1
  %message_len11 = getelementptr i8, ptr %t, i32 64
  %17 = ptrtoint ptr %message_len11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %message_len11, align 8
  %rem = urem i32 %inc10, %18
  store i32 %rem, ptr %scroll_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %1)
  %cmp14 = icmp ugt i32 %18, %1
  br i1 %cmp14, label %land.lhs.true, label %for.end8.if.end_crit_edge

for.end8.if.end_crit_edge:                        ; preds = %for.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %for.end8
  %scroll_rate = getelementptr i8, ptr %t, i32 72
  %19 = ptrtoint ptr %scroll_rate to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %scroll_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %21, %20
  %call = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.end8.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @linedisp_display(ptr noundef %linedisp, ptr noundef %msg, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timer = getelementptr inbounds %struct.linedisp, ptr %linedisp, i32 0, i32 1
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %count)
  %cmp = icmp eq i32 %count, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @strlen(ptr noundef %msg) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %count.addr.0 = phi i32 [ %call1, %if.then ], [ %count, %entry.if.end_crit_edge ]
  %sub = add i32 %count.addr.0, -1
  %arrayidx = getelementptr i8, ptr %msg, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp2 = icmp eq i8 %1, 10
  %spec.select = select i1 %cmp2, i32 %sub, i32 %count.addr.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool.not = icmp eq i32 %spec.select, 0
  br i1 %tobool.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %message = getelementptr inbounds %struct.linedisp, ptr %linedisp, i32 0, i32 4
  %2 = ptrtoint ptr %message to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %message, align 8
  tail call void @kfree(ptr noundef %3) #5
  %4 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %message, align 8
  %message_len = getelementptr inbounds %struct.linedisp, ptr %linedisp, i32 0, i32 6
  %5 = ptrtoint ptr %message_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %message_len, align 8
  %buf = getelementptr inbounds %struct.linedisp, ptr %linedisp, i32 0, i32 3
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  %num_chars = getelementptr inbounds %struct.linedisp, ptr %linedisp, i32 0, i32 5
  %8 = ptrtoint ptr %num_chars to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_chars, align 4
  %10 = call ptr @memset(ptr %7, i32 32, i32 %9)
  %update = getelementptr inbounds %struct.linedisp, ptr %linedisp, i32 0, i32 2
  %11 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %update, align 8
  tail call void %12(ptr noundef %linedisp) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @kmemdup_nul(ptr noundef %msg, i32 noundef %spec.select, i32 noundef 3264) #5
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %message13 = getelementptr %struct.linedisp, ptr %linedisp, i32 0, i32 4
  %13 = ptrtoint ptr %message13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %message13, align 8
  tail call void @kfree(ptr noundef %14) #5
  %15 = ptrtoint ptr %message13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9, ptr %message13, align 8
  %message_len15 = getelementptr %struct.linedisp, ptr %linedisp, i32 0, i32 6
  %16 = ptrtoint ptr %message_len15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %message_len15, align 8
  %scroll_pos = getelementptr %struct.linedisp, ptr %linedisp, i32 0, i32 7
  %17 = ptrtoint ptr %scroll_pos to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %scroll_pos, align 4
  %num_chars1.i = getelementptr %struct.linedisp, ptr %linedisp, i32 0, i32 5
  %18 = ptrtoint ptr %num_chars1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_chars1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp40.not.i = icmp eq i32 %19, 0
  br i1 %cmp40.not.i, label %if.end12.for.end8.i_crit_edge, label %for.cond2.preheader.lr.ph.i

if.end12.for.end8.i_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end8.i

for.cond2.preheader.lr.ph.i:                      ; preds = %if.end12
  %20 = ptrtoint ptr %scroll_pos to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scroll_pos, align 4
  %buf.i = getelementptr %struct.linedisp, ptr %linedisp, i32 0, i32 3
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.end.i.for.cond2.preheader.i_crit_edge, %for.cond2.preheader.lr.ph.i
  %ch.042.i = phi i32 [ %21, %for.cond2.preheader.lr.ph.i ], [ 0, %for.end.i.for.cond2.preheader.i_crit_edge ]
  %i.041.i = phi i32 [ 0, %for.cond2.preheader.lr.ph.i ], [ %i.1.lcssa.i, %for.end.i.for.cond2.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.041.i, i32 %19)
  %cmp336.i = icmp ult i32 %i.041.i, %19
  br i1 %cmp336.i, label %for.cond2.preheader.i.land.rhs.i_crit_edge, label %for.cond2.preheader.i.for.end.i_crit_edge

for.cond2.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond2.preheader.i.land.rhs.i_crit_edge:       ; preds = %for.cond2.preheader.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body5.i.land.rhs.i_crit_edge, %for.cond2.preheader.i.land.rhs.i_crit_edge
  %ch.138.i = phi i32 [ %inc7.i, %for.body5.i.land.rhs.i_crit_edge ], [ %ch.042.i, %for.cond2.preheader.i.land.rhs.i_crit_edge ]
  %i.137.i = phi i32 [ %inc.i, %for.body5.i.land.rhs.i_crit_edge ], [ %i.041.i, %for.cond2.preheader.i.land.rhs.i_crit_edge ]
  %22 = ptrtoint ptr %message_len15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %message_len15, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %ch.138.i, i32 %23)
  %cmp4.i = icmp ult i32 %ch.138.i, %23
  br i1 %cmp4.i, label %for.body5.i, label %land.rhs.i.for.end.i_crit_edge

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body5.i:                                      ; preds = %land.rhs.i
  %24 = ptrtoint ptr %message13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %message13, align 8
  %arrayidx.i = getelementptr i8, ptr %25, i32 %ch.138.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %28 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %buf.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %29, i32 %i.137.i
  %30 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %27, ptr %arrayidx6.i, align 1
  %inc.i = add i32 %i.137.i, 1
  %inc7.i = add nuw i32 %ch.138.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %19
  br i1 %exitcond.not.i, label %for.body5.i.for.end8.i_crit_edge, label %for.body5.i.land.rhs.i_crit_edge

for.body5.i.land.rhs.i_crit_edge:                 ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

for.body5.i.for.end8.i_crit_edge:                 ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end8.i

for.end.i:                                        ; preds = %land.rhs.i.for.end.i_crit_edge, %for.cond2.preheader.i.for.end.i_crit_edge
  %i.1.lcssa.i = phi i32 [ %i.041.i, %for.cond2.preheader.i.for.end.i_crit_edge ], [ %i.137.i, %land.rhs.i.for.end.i_crit_edge ]
  %cmp.i = icmp ult i32 %i.1.lcssa.i, %19
  br i1 %cmp.i, label %for.end.i.for.cond2.preheader.i_crit_edge, label %for.end.i.for.end8.i_crit_edge

for.end.i.for.end8.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end8.i

for.end.i.for.cond2.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond2.preheader.i

for.end8.i:                                       ; preds = %for.end.i.for.end8.i_crit_edge, %for.body5.i.for.end8.i_crit_edge, %if.end12.for.end8.i_crit_edge
  %update.i = getelementptr %struct.linedisp, ptr %linedisp, i32 0, i32 2
  %31 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %update.i, align 8
  tail call void %32(ptr noundef %linedisp) #5
  %33 = ptrtoint ptr %scroll_pos to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %scroll_pos, align 4
  %inc10.i = add i32 %34, 1
  %35 = ptrtoint ptr %message_len15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %message_len15, align 8
  %rem.i = urem i32 %inc10.i, %36
  store i32 %rem.i, ptr %scroll_pos, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %19)
  %cmp14.i = icmp ugt i32 %36, %19
  br i1 %cmp14.i, label %land.lhs.true.i, label %for.end8.i.cleanup_crit_edge

for.end8.i.cleanup_crit_edge:                     ; preds = %for.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %for.end8.i
  %scroll_rate.i = getelementptr %struct.linedisp, ptr %linedisp, i32 0, i32 8
  %37 = ptrtoint ptr %scroll_rate.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %scroll_rate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %39, %38
  %call.i = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %land.lhs.true.i.cleanup_crit_edge, %for.end8.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then6
  %retval.0 = phi i32 [ 0, %if.then6 ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %for.end8.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @linedisp_unregister(ptr noundef %linedisp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_del(ptr noundef %linedisp) #5
  %timer = getelementptr inbounds %struct.linedisp, ptr %linedisp, i32 0, i32 1
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #5
  %message = getelementptr inbounds %struct.linedisp, ptr %linedisp, i32 0, i32 4
  %0 = ptrtoint ptr %message to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %message, align 8
  tail call void @kfree(ptr noundef %1) #5
  tail call void @put_device(ptr noundef %linedisp) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @message_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %message = getelementptr inbounds %struct.linedisp, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %message to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %message, align 8
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.4, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @message_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @linedisp_display(ptr noundef %dev, ptr noundef %buf, i32 noundef %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scroll_step_ms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %scroll_rate = getelementptr inbounds %struct.linedisp, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %scroll_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %scroll_rate, align 8
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %1) #5
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.6, i32 noundef %call) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scroll_step_ms_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %ms = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ms) #5
  %0 = ptrtoint ptr %ms to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ms, align 4, !annotation !45
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %ms) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.else.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %ms to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ms, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %2) #5
  %scroll_rate = getelementptr %struct.linedisp, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %scroll_rate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call2.i, ptr %scroll_rate, align 8
  %message = getelementptr %struct.linedisp, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %message to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %message, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else.i.cleanup_crit_edge, label %land.lhs.true

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else.i
  %message_len = getelementptr %struct.linedisp, ptr %dev, i32 0, i32 6
  %6 = ptrtoint ptr %message_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %message_len, align 8
  %num_chars = getelementptr %struct.linedisp, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %num_chars to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_chars, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp2 = icmp ugt i32 %7, %9
  br i1 %cmp2, label %if.then3, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  %timer = getelementptr inbounds %struct.linedisp, ptr %dev, i32 0, i32 1
  %call4 = call i32 @del_timer_sync(ptr noundef %timer) #5
  %10 = ptrtoint ptr %scroll_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scroll_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %if.then3.cleanup_crit_edge, label %if.then7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then7:                                         ; preds = %if.then3
  %scroll_pos.i = getelementptr %struct.linedisp, ptr %dev, i32 0, i32 7
  %12 = ptrtoint ptr %num_chars to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_chars, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp40.not.i = icmp eq i32 %13, 0
  br i1 %cmp40.not.i, label %if.then7.for.end8.i_crit_edge, label %for.cond2.preheader.lr.ph.i

if.then7.for.end8.i_crit_edge:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end8.i

for.cond2.preheader.lr.ph.i:                      ; preds = %if.then7
  %14 = ptrtoint ptr %scroll_pos.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scroll_pos.i, align 4
  %buf.i = getelementptr %struct.linedisp, ptr %dev, i32 0, i32 3
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.end.i.for.cond2.preheader.i_crit_edge, %for.cond2.preheader.lr.ph.i
  %ch.042.i = phi i32 [ %15, %for.cond2.preheader.lr.ph.i ], [ 0, %for.end.i.for.cond2.preheader.i_crit_edge ]
  %i.041.i = phi i32 [ 0, %for.cond2.preheader.lr.ph.i ], [ %i.1.lcssa.i, %for.end.i.for.cond2.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.041.i, i32 %13)
  %cmp336.i = icmp ult i32 %i.041.i, %13
  br i1 %cmp336.i, label %for.cond2.preheader.i.land.rhs.i_crit_edge, label %for.cond2.preheader.i.for.end.i_crit_edge

for.cond2.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond2.preheader.i.land.rhs.i_crit_edge:       ; preds = %for.cond2.preheader.i
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body5.i.land.rhs.i_crit_edge, %for.cond2.preheader.i.land.rhs.i_crit_edge
  %ch.138.i = phi i32 [ %inc7.i, %for.body5.i.land.rhs.i_crit_edge ], [ %ch.042.i, %for.cond2.preheader.i.land.rhs.i_crit_edge ]
  %i.137.i = phi i32 [ %inc.i, %for.body5.i.land.rhs.i_crit_edge ], [ %i.041.i, %for.cond2.preheader.i.land.rhs.i_crit_edge ]
  %16 = ptrtoint ptr %message_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %message_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %ch.138.i, i32 %17)
  %cmp4.i = icmp ult i32 %ch.138.i, %17
  br i1 %cmp4.i, label %for.body5.i, label %land.rhs.i.for.end.i_crit_edge

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body5.i:                                      ; preds = %land.rhs.i
  %18 = ptrtoint ptr %message to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %message, align 8
  %arrayidx.i = getelementptr i8, ptr %19, i32 %ch.138.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buf.i, align 4
  %arrayidx6.i = getelementptr i8, ptr %23, i32 %i.137.i
  %24 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %21, ptr %arrayidx6.i, align 1
  %inc.i = add i32 %i.137.i, 1
  %inc7.i = add nuw i32 %ch.138.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.body5.i.for.end8.i_crit_edge, label %for.body5.i.land.rhs.i_crit_edge

for.body5.i.land.rhs.i_crit_edge:                 ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

for.body5.i.for.end8.i_crit_edge:                 ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end8.i

for.end.i:                                        ; preds = %land.rhs.i.for.end.i_crit_edge, %for.cond2.preheader.i.for.end.i_crit_edge
  %i.1.lcssa.i = phi i32 [ %i.041.i, %for.cond2.preheader.i.for.end.i_crit_edge ], [ %i.137.i, %land.rhs.i.for.end.i_crit_edge ]
  %cmp.i18 = icmp ult i32 %i.1.lcssa.i, %13
  br i1 %cmp.i18, label %for.end.i.for.cond2.preheader.i_crit_edge, label %for.end.i.for.end8.i_crit_edge

for.end.i.for.end8.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end8.i

for.end.i.for.cond2.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond2.preheader.i

for.end8.i:                                       ; preds = %for.end.i.for.end8.i_crit_edge, %for.body5.i.for.end8.i_crit_edge, %if.then7.for.end8.i_crit_edge
  %update.i = getelementptr %struct.linedisp, ptr %dev, i32 0, i32 2
  %25 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %update.i, align 8
  call void %26(ptr noundef %dev) #5
  %27 = ptrtoint ptr %scroll_pos.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %scroll_pos.i, align 4
  %inc10.i = add i32 %28, 1
  %29 = ptrtoint ptr %message_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %message_len, align 8
  %rem.i = urem i32 %inc10.i, %30
  store i32 %rem.i, ptr %scroll_pos.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %13)
  %cmp14.i = icmp ugt i32 %30, %13
  br i1 %cmp14.i, label %land.lhs.true.i, label %for.end8.i.cleanup_crit_edge

for.end8.i.cleanup_crit_edge:                     ; preds = %for.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %for.end8.i
  %31 = ptrtoint ptr %scroll_rate to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %scroll_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i19

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i19:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %33, %32
  %call.i = call i32 @mod_timer(ptr noundef %timer, i32 noundef %add.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i19, %land.lhs.true.i.cleanup_crit_edge, %for.end8.i.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.then3.cleanup_crit_edge ], [ %count, %land.lhs.true.cleanup_crit_edge ], [ %count, %if.else.i.cleanup_crit_edge ], [ %count, %for.end8.i.cleanup_crit_edge ], [ %count, %land.lhs.true.i.cleanup_crit_edge ], [ %count, %if.then.i19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ms) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !30, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @linedisp_register.linedisp_id, !1, !"linedisp_id", i1 false, i1 false}
!1 = !{!"../drivers/auxdisplay/line-display.c", i32 209, i32 18}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/auxdisplay/line-display.c", i32 221, i32 31}
!4 = !{ptr @linedisp_register.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/auxdisplay/line-display.c", i32 225, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/auxdisplay/line-display.c", i32 232, i32 35}
!9 = !{ptr @__ksymtab_linedisp_register, !10, !"__ksymtab_linedisp_register", i1 false, i1 false}
!10 = !{!"../drivers/auxdisplay/line-display.c", i32 245, i32 1}
!11 = !{ptr @__ksymtab_linedisp_unregister, !12, !"__ksymtab_linedisp_unregister", i1 false, i1 false}
!12 = !{!"../drivers/auxdisplay/line-display.c", i32 259, i32 1}
!13 = !{ptr @__UNIQUE_ID_file183, !14, !"__UNIQUE_ID_file183", i1 false, i1 false}
!14 = !{!"../drivers/auxdisplay/line-display.c", i32 261, i32 1}
!15 = !{ptr @__UNIQUE_ID_license184, !14, !"__UNIQUE_ID_license184", i1 false, i1 false}
!16 = !{ptr @linedisp_type, !17, !"linedisp_type", i1 false, i1 false}
!17 = !{!"../drivers/auxdisplay/line-display.c", i32 191, i32 33}
!18 = !{ptr @linedisp_groups, !19, !"linedisp_groups", i1 false, i1 false}
!19 = !{!"../drivers/auxdisplay/line-display.c", i32 189, i32 1}
!20 = !{ptr @linedisp_group, !19, !"linedisp_group", i1 false, i1 false}
!21 = !{ptr @linedisp_attrs, !22, !"linedisp_attrs", i1 false, i1 false}
!22 = !{!"../drivers/auxdisplay/line-display.c", i32 184, i32 26}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/auxdisplay/line-display.c", i32 152, i32 8}
!25 = !{ptr @dev_attr_message, !24, !"dev_attr_message", i1 false, i1 false}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/auxdisplay/line-display.c", i32 128, i32 25}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/auxdisplay/line-display.c", i32 182, i32 8}
!30 = !{ptr @dev_attr_scroll_step_ms, !29, !"dev_attr_scroll_step_ms", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/auxdisplay/line-display.c", i32 159, i32 25}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 2148554540}
!43 = !{i64 2148469849, i64 2148469881, i64 2148469910, i64 2148469944, i64 2148469975, i64 2148469998}
!44 = !{i64 2148554769}
!45 = !{!"auto-init"}
