; ModuleID = '/llk/IR_all_yes/drivers/input/joystick/iforce/iforce-packets.c_pt.bc'
source_filename = "../drivers/input/joystick/iforce/iforce-packets.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iforce_send_packet\22, \22a\22\09"
module asm "\09.weak\09__crc_iforce_send_packet\09\09\09\09"
module asm "\09.long\09__crc_iforce_send_packet\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iforce_send_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22iforce_send_packet\22\09\09\09\09\09"
module asm "__kstrtabns_iforce_send_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iforce_process_packet\22, \22a\22\09"
module asm "\09.weak\09__crc_iforce_process_packet\09\09\09\09"
module asm "\09.long\09__crc_iforce_process_packet\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iforce_process_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22iforce_process_packet\22\09\09\09\09\09"
module asm "__kstrtabns_iforce_process_packet:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.71 = type { i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.iforce = type { ptr, ptr, ptr, %struct.spinlock, %struct.circ_buf, [256 x i8], [1 x i32], %struct.wait_queue_head, %struct.resource, [32 x %struct.iforce_core_effect], %struct.mutex }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.iforce_core_effect = type { %struct.resource, %struct.resource, [1 x i32] }
%struct.ff_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i32], %struct.mutex, i32, ptr, [0 x ptr] }
%struct.iforce_device = type { i16, i16, ptr, ptr, ptr, ptr }

@iforce_dump_packet.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iforce\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iforce_dump_packet\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/input/joystick/iforce/iforce-packets.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s %s cmd = %04x, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@iforce_send_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 47, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"not enough space in xmit buffer to send new packet\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iforce_send_packet\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iforce_send_packet._entry_ptr = internal global ptr @iforce_send_packet._entry, section ".printk_index", align 4
@__kstrtab_iforce_send_packet = external dso_local constant [0 x i8], align 1
@__kstrtabns_iforce_send_packet = external dso_local constant [0 x i8], align 1
@__ksymtab_iforce_send_packet = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iforce_send_packet to i32), ptr @__kstrtab_iforce_send_packet, ptr @__kstrtabns_iforce_send_packet }, section "___ksymtab+iforce_send_packet", align 4
@__kstrtab_iforce_process_packet = external dso_local constant [0 x i8], align 1
@__kstrtabns_iforce_process_packet = external dso_local constant [0 x i8], align 1
@__ksymtab_iforce_process_packet = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iforce_process_packet to i32), ptr @__kstrtab_iforce_process_packet, ptr @__kstrtabns_iforce_process_packet }, section "___ksymtab+iforce_process_packet", align 4
@iforce_hat_to_axis = internal constant { <{ [8 x %struct.anon.71], [8 x %struct.anon.71] }>, [32 x i8] } { <{ [8 x %struct.anon.71], [8 x %struct.anon.71] }> <{ [8 x %struct.anon.71] [%struct.anon.71 { i32 0, i32 -1 }, %struct.anon.71 { i32 1, i32 -1 }, %struct.anon.71 { i32 1, i32 0 }, %struct.anon.71 { i32 1, i32 1 }, %struct.anon.71 { i32 0, i32 1 }, %struct.anon.71 { i32 -1, i32 1 }, %struct.anon.71 { i32 -1, i32 0 }, %struct.anon.71 { i32 -1, i32 -1 }], [8 x %struct.anon.71] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@mark_core_as_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 115, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unused effect %04x updated !!!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mark_core_as_ready\00", [45 x i8] zeroinitializer }, align 32
@mark_core_as_ready._entry_ptr = internal global ptr @mark_core_as_ready._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 20, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 46, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"iforce_hat_to_axis\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 15, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [50 x i8] c"../drivers/input/joystick/iforce/iforce-packets.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 115, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_iforce_process_packet, ptr @__ksymtab_iforce_send_packet, ptr @iforce_send_packet._entry, ptr @iforce_send_packet._entry_ptr, ptr @mark_core_as_ready._entry, ptr @mark_core_as_ready._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @iforce_hat_to_axis, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_send_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iforce_hat_to_axis to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mark_core_as_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iforce_dump_packet(ptr nocapture noundef readonly %iforce, ptr noundef %msg, i16 noundef zeroext %cmd, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iforce_dump_packet.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iforce_dump_packet, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !33

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %iforce to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iforce, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %conv = zext i16 %cmd to i32
  %4 = and i16 %cmd, 255
  %conv6 = zext i16 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @iforce_dump_packet.__UNIQUE_ID_ddebug223, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %msg, i32 noundef %conv, i32 noundef %conv6, ptr noundef %data) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iforce_send_packet(ptr noundef %iforce, i16 noundef zeroext %cmd, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv1.mask = and i16 %cmd, 255
  %conv2 = zext i16 %conv1.mask to i32
  %xmit_lock = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xmit_lock) #5
  %xmit = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 4
  %head8 = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %head8 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head8, align 4
  %tail10 = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %tail10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail10, align 4
  %add = add i32 %1, 1
  %sub = sub i32 %3, %add
  %and11 = and i32 %sub, 255
  %add12 = add nuw nsw i32 %conv2, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and11, i32 %add12)
  %cmp13 = icmp ult i32 %and11, %add12
  br i1 %cmp13, label %do.end17, label %if.end

do.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %iforce to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iforce, align 4
  %dev18 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev18, ptr noundef nonnull @.str.4) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xmit_lock, i32 noundef %call5) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv1 = trunc i16 %cmd to i8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp20 = icmp eq i32 %1, %3
  %add25 = add i32 %1, %add12
  %and28 = and i32 %add25, 255
  %6 = ptrtoint ptr %head8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and28, ptr %head8, align 4
  %7 = lshr i16 %cmd, 8
  %conv30 = trunc i16 %7 to i8
  %8 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xmit, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 %1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv30, ptr %arrayidx, align 1
  %and33 = and i32 %add, 255
  %11 = load ptr, ptr %xmit, align 4
  %arrayidx39 = getelementptr i8, ptr %11, i32 %and33
  %12 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv1, ptr %arrayidx39, align 1
  %add40 = add i32 %1, 2
  %and41 = and i32 %add40, 255
  %sub42 = xor i32 %and41, 255
  %add44 = add i32 %sub42, %3
  %and45 = and i32 %add44, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and45, i32 %sub42)
  %cmp47.not = icmp ugt i32 %and45, %sub42
  %add49 = sub nuw nsw i32 256, %and41
  %cond = select i1 %cmp47.not, i32 %add49, i32 %and45
  %13 = tail call i32 @llvm.umin.i32(i32 %cond, i32 %conv2)
  %14 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xmit, align 4
  %arrayidx56 = getelementptr i8, ptr %15, i32 %and41
  %16 = call ptr @memcpy(ptr %arrayidx56, ptr %data, i32 %13)
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv2)
  %cmp57.not.not = icmp ult i32 %cond, %conv2
  br i1 %cmp57.not.not, label %if.then59, label %if.end.if.end64_crit_edge

if.end.if.end64_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then59:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xmit, align 4
  %add.ptr = getelementptr i8, ptr %data, i32 %13
  %sub63 = sub nsw i32 %conv2, %13
  %19 = call ptr @memcpy(ptr %18, ptr %add.ptr, i32 %sub63)
  br label %if.end64

if.end64:                                         ; preds = %if.then59, %if.end.if.end64_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xmit_lock, i32 noundef %call5) #5
  br i1 %cmp20, label %if.then68, label %if.end64.cleanup_crit_edge

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then68:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %xport_ops = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 2
  %20 = ptrtoint ptr %xport_ops to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xport_ops, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void %23(ptr noundef %iforce) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %if.end64.cleanup_crit_edge, %do.end17
  %retval.0 = phi i32 [ -1, %do.end17 ], [ 0, %if.then68 ], [ 0, %if.end64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iforce_control_playback(ptr noundef %iforce, i16 noundef zeroext %id, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data) #5
  %0 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %data, i32 0, i32 2
  %conv1 = trunc i16 %id to i8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp.not = icmp eq i32 %value, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %value)
  %cmp3.not = icmp eq i32 %value, 1
  %phi.cast = select i1 %cmp3.not, i8 1, i8 65
  %cond5 = select i1 %cmp.not, i8 0, i8 %phi.cast
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %cond5, ptr %0, align 1
  %conv9 = trunc i32 %value to i8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv9, ptr %1, align 1
  %call = call i32 @iforce_send_packet(ptr noundef %iforce, i16 noundef zeroext 16643, ptr noundef nonnull %data)
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iforce_process_packet(ptr noundef %iforce, i8 noundef zeroext %packet_id, ptr nocapture noundef readonly %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iforce to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iforce, align 4
  %2 = zext i8 %packet_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %packet_id, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 3, label %sw.bb10
    i8 2, label %sw.bb19
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %data, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #5
  %conv2 = sext i16 %5 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 0, i32 noundef %conv2) #5
  %add.ptr = getelementptr i8, ptr %data, i32 2
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %add.ptr, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #5
  %conv4 = sext i16 %8 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef %conv4) #5
  %arrayidx = getelementptr i8, ptr %data, i32 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = xor i8 %10, -1
  %sub = zext i8 %11 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 6, i32 noundef %sub) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %len)
  %cmp = icmp ugt i32 %len, 7
  br i1 %cmp, label %land.lhs.true, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

land.lhs.true:                                    ; preds = %sw.bb
  %absbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %absbit to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %absbit, align 4
  %14 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %land.lhs.true.sw.epilog.sink.split_crit_edge, label %if.then

land.lhs.true.sw.epilog.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8 = getelementptr i8, ptr %data, i32 7
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx8, align 1
  %conv9 = sext i8 %16 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 7, i32 noundef %conv9) #5
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %data, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #5
  %conv12 = sext i16 %19 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 8, i32 noundef %conv12) #5
  %arrayidx13 = getelementptr i8, ptr %data, i32 2
  %20 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx13, align 1
  %22 = xor i8 %21, -1
  %sub15 = zext i8 %22 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 9, i32 noundef %sub15) #5
  %arrayidx16 = getelementptr i8, ptr %data, i32 3
  %23 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx16, align 1
  %25 = xor i8 %24, -1
  %sub18 = zext i8 %25 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 10, i32 noundef %sub18) #5
  br label %sw.epilog.sink.split

sw.bb19:                                          ; preds = %entry
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data, align 1
  %28 = lshr i8 %27, 1
  %.lobit = and i8 %28, 1
  %29 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 303, i32 noundef %29) #5
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %arrayidx22 = getelementptr i8, ptr %data, i32 1
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %31 to i32
  %and24 = and i32 %conv23, 127
  %and27 = and i32 %conv23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %flags38 = getelementptr %struct.iforce, ptr %iforce, i32 0, i32 9, i32 %and24, i32 2
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %sw.bb19
  %call32 = tail call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %flags38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then29.if.end44.sink.split_crit_edge, label %if.then29.if.end44_crit_edge

if.then29.if.end44_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.then29.if.end44.sink.split_crit_edge:          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.sink.split

if.else:                                          ; preds = %sw.bb19
  %call40 = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags38) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.else.if.end44_crit_edge, label %if.else.if.end44.sink.split_crit_edge

if.else.if.end44.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44.sink.split

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end44

if.end44.sink.split:                              ; preds = %if.else.if.end44.sink.split_crit_edge, %if.then29.if.end44.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then29.if.end44.sink.split_crit_edge ], [ 0, %if.else.if.end44.sink.split_crit_edge ]
  tail call void @input_event(ptr noundef %1, i32 noundef 23, i32 noundef %and24, i32 noundef %.sink) #5
  br label %if.end44

if.end44:                                         ; preds = %if.end44.sink.split, %if.else.if.end44_crit_edge, %if.then29.if.end44_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp4587 = icmp ugt i32 %len, 3
  br i1 %cmp4587, label %if.end44.for.body_crit_edge, label %if.end44.sw.epilog_crit_edge

if.end44.sw.epilog_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  br label %for.body

for.body:                                         ; preds = %mark_core_as_ready.exit.for.body_crit_edge, %if.end44.for.body_crit_edge
  %j.088 = phi i32 [ %add, %mark_core_as_ready.exit.for.body_crit_edge ], [ 3, %if.end44.for.body_crit_edge ]
  %32 = ptrtoint ptr %iforce to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iforce, align 4
  %ff.i = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 20
  %34 = ptrtoint ptr %ff.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ff.i, align 8
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %for.body.mark_core_as_ready.exit_crit_edge, label %for.cond.preheader.i

for.body.mark_core_as_ready.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %mark_core_as_ready.exit

for.cond.preheader.i:                             ; preds = %for.body
  %add.ptr47 = getelementptr i8, ptr %data, i32 %j.088
  %36 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %add.ptr47, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #5
  %max_effects.i = getelementptr inbounds %struct.ff_device, ptr %35, i32 0, i32 9
  %39 = ptrtoint ptr %max_effects.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_effects.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp1.i = icmp sgt i32 %40, 0
  %conv.i = zext i16 %38 to i32
  br i1 %cmp1.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.do.end.i_crit_edge

for.cond.preheader.i.do.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %flags.i = getelementptr %struct.iforce, ptr %iforce, i32 0, i32 9, i32 %i.02.i, i32 2
  %41 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags.i, align 4
  %43 = and i32 %42, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool3.not.i = icmp eq i32 %43, 0
  br i1 %tobool3.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.iforce, ptr %iforce, i32 0, i32 9, i32 %i.02.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv.i)
  %cmp6.i = icmp eq i32 %45, %conv.i
  br i1 %cmp6.i, label %land.lhs.true.i.if.then14.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.then14.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %mod2_chunk.i = getelementptr %struct.iforce, ptr %iforce, i32 0, i32 9, i32 %i.02.i, i32 1
  %46 = ptrtoint ptr %mod2_chunk.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mod2_chunk.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %conv.i)
  %cmp12.i = icmp eq i32 %47, %conv.i
  br i1 %cmp12.i, label %lor.lhs.false.i.if.then14.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

lor.lhs.false.i.if.then14.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then14.i

if.then14.i:                                      ; preds = %lor.lhs.false.i.if.then14.i_crit_edge, %land.lhs.true.i.if.then14.i_crit_edge
  tail call void @_clear_bit(i32 noundef 5, ptr noundef %flags.i) #5
  br label %mark_core_as_ready.exit

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %40
  br i1 %exitcond.not.i, label %for.inc.i.do.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.do.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %for.inc.i.do.end.i_crit_edge, %for.cond.preheader.i.do.end.i_crit_edge
  %dev21.i = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 40
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev21.i, ptr noundef nonnull @.str.9, i32 noundef %conv.i) #8
  br label %mark_core_as_ready.exit

mark_core_as_ready.exit:                          ; preds = %do.end.i, %if.then14.i, %for.body.mark_core_as_ready.exit_crit_edge
  %add = add i32 %j.088, 2
  %cmp45 = icmp ult i32 %add, %len
  br i1 %cmp45, label %mark_core_as_ready.exit.for.body_crit_edge, label %mark_core_as_ready.exit.sw.epilog_crit_edge

mark_core_as_ready.exit.sw.epilog_crit_edge:      ; preds = %mark_core_as_ready.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

mark_core_as_ready.exit.for.body_crit_edge:       ; preds = %mark_core_as_ready.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

sw.epilog.sink.split:                             ; preds = %sw.bb10, %if.then, %land.lhs.true.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  tail call fastcc void @iforce_report_hats_buttons(ptr noundef %iforce, ptr noundef %data)
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %mark_core_as_ready.exit.sw.epilog_crit_edge, %if.end44.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iforce_report_hats_buttons(ptr nocapture noundef readonly %iforce, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iforce to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iforce, align 4
  %arrayidx = getelementptr i8, ptr %data, i32 6
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 4
  %5 = zext i8 %4 to i32
  %arrayidx2 = getelementptr [16 x %struct.anon.71], ptr @iforce_hat_to_axis, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 16, i32 noundef %7) #5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = lshr i8 %9, 4
  %11 = zext i8 %10 to i32
  %y = getelementptr [16 x %struct.anon.71], ptr @iforce_hat_to_axis, i32 0, i32 %11, i32 1
  %12 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %y, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 17, i32 noundef %13) #5
  %type = getelementptr inbounds %struct.iforce, ptr %iforce, i32 0, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type, align 4
  %btn78 = getelementptr inbounds %struct.iforce_device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %btn78 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %btn78, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %19)
  %cmp79 = icmp sgt i16 %19, -1
  br i1 %cmp79, label %entry.for.body_crit_edge, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %20 = phi i16 [ %30, %for.body.for.body_crit_edge ], [ %19, %entry.for.body_crit_edge ]
  %i.080 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %conv877 = zext i16 %20 to i32
  %shr14 = ashr i32 %i.080, 3
  %add = add nsw i32 %shr14, 5
  %arrayidx15 = getelementptr i8, ptr %data, i32 %add
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %22 to i32
  %and = and i32 %i.080, 7
  %23 = lshr i32 %conv16, %and
  %24 = and i32 %23, 1
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv877, i32 noundef %24) #5
  %inc = add i32 %i.080, 1
  %25 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %type, align 4
  %btn = getelementptr inbounds %struct.iforce_device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %btn to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %btn, align 4
  %arrayidx7 = getelementptr i16, ptr %28, i32 %inc
  %29 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx7, align 2
  %cmp = icmp sgt i16 %30, -1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc)
  %phi.cmp = icmp slt i32 %inc, 9
  br i1 %phi.cmp, label %for.end.if.then_crit_edge, label %for.end.if.end51_crit_edge

for.end.if.end51_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

for.end.if.then_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %for.end.if.then_crit_edge, %entry.if.then_crit_edge
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 1
  %absbit = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %absbit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %absbit, align 4
  %35 = and i32 %34, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not = icmp eq i32 %35, 0
  br i1 %tobool.not, label %if.then.if.end32_crit_edge, label %if.then21

if.then.if.end32_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %conv22 = zext i8 %32 to i32
  %and23 = and i32 %conv22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %and27 = lshr i32 %conv22, 1
  %and27.lobit = and i32 %and27, 1
  %.sink = select i1 %tobool24.not, i32 %and27.lobit, i32 -1
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 18, i32 noundef %.sink) #5
  br label %if.end32

if.end32:                                         ; preds = %if.then21, %if.then.if.end32_crit_edge
  %36 = ptrtoint ptr %absbit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %absbit, align 4
  %38 = and i32 %37, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool36.not = icmp eq i32 %38, 0
  br i1 %tobool36.not, label %if.end32.if.end51_crit_edge, label %if.then37

if.end32.if.end51_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %conv38 = zext i8 %32 to i32
  %and39 = and i32 %conv38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %and44 = lshr i32 %conv38, 2
  %and44.lobit = and i32 %and44, 1
  %.sink82 = select i1 %tobool40.not, i32 %and44.lobit, i32 -1
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 19, i32 noundef %.sink82) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then37, %if.end32.if.end51_crit_edge, %for.end.if.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !13, !15, !17, !19, !21, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/input/joystick/iforce/iforce-packets.c", i32 20, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @iforce_dump_packet.__UNIQUE_ID_ddebug223, !1, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/input/joystick/iforce/iforce-packets.c", i32 46, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.7, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @iforce_send_packet._entry, !7, !"_entry", i1 false, i1 false}
!12 = !{ptr @iforce_send_packet._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @__ksymtab_iforce_send_packet, !14, !"__ksymtab_iforce_send_packet", i1 false, i1 false}
!14 = !{!"../drivers/input/joystick/iforce/iforce-packets.c", i32 85, i32 1}
!15 = !{ptr @__ksymtab_iforce_process_packet, !16, !"__ksymtab_iforce_process_packet", i1 false, i1 false}
!16 = !{!"../drivers/input/joystick/iforce/iforce-packets.c", i32 211, i32 1}
!17 = !{ptr @iforce_hat_to_axis, !18, !"iforce_hat_to_axis", i1 false, i1 false}
!18 = !{!"../drivers/input/joystick/iforce/iforce-packets.c", i32 15, i32 3}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/joystick/iforce/iforce-packets.c", i32 115, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mark_core_as_ready._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @mark_core_as_ready._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 2148711630, i64 2148711635, i64 2148711648, i64 2148711692, i64 2148711726, i64 2148711747}
