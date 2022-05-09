; ModuleID = '/llk/IR_all_yes/net/ax25/ax25_out.c_pt.bc'
source_filename = "../net/ax25/ax25_out.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ax25_send_frame\22, \22a\22\09"
module asm "\09.weak\09__crc_ax25_send_frame\09\09\09\09"
module asm "\09.long\09__crc_ax25_send_frame\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ax25_send_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22ax25_send_frame\22\09\09\09\09\09"
module asm "__kstrtabns_ax25_send_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ax25_dev = type { ptr, ptr, ptr, ptr, ptr, [14 x i32], %struct.ax25_dama_info, %struct.refcount_struct }
%struct.ax25_dama_info = type { i8, %struct.timer_list, i16 }
%struct.ax25_cb = type { %struct.hlist_node, %struct.ax25_address, %struct.ax25_address, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, i32, i16, i16, i16, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i8, %struct.timer_list, %struct.timer_list, ptr, %struct.refcount_struct }
%struct.ax25_address = type { [7 x i8] }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }

@__kstrtab_ax25_send_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns_ax25_send_frame = external dso_local constant [0 x i8], align 1
@__ksymtab_ax25_send_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ax25_send_frame to i32), ptr @__kstrtab_ax25_send_frame, ptr @__kstrtabns_ax25_send_frame }, section "___ksymtab+ax25_send_frame", align 4
@ax25_output.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/ax25/ax25_out.c\00", [44 x i8] zeroinitializer }, align 32
@ax25_frag_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.12 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ax25_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\012AX.25: ax25_output - out of memory\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ax25_output\00", [20 x i8] zeroinitializer }, align 32
@ax25_output._entry_ptr = internal global ptr @ax25_output._entry, section ".printk_index", align 4
@ax25_transmit_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\012AX.25: ax25_transmit_buffer - out of memory\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ax25_transmit_buffer\00", [43 x i8] zeroinitializer }, align 32
@ax25_transmit_buffer._entry_ptr = internal global ptr @ax25_transmit_buffer._entry, section ".printk_index", align 4
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ax25_frag_lock\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 123, i32 3 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"ax25_frag_lock\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 146, i32 5 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 341, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [23 x i8] c"../net/ax25/ax25_out.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 30, i32 8 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__ksymtab_ax25_send_frame, ptr @ax25_output._entry, ptr @ax25_output._entry_ptr, ptr @ax25_transmit_buffer._entry, ptr @ax25_transmit_buffer._entry_ptr, ptr @.str, ptr @ax25_frag_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_frag_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_transmit_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ax25_send_frame(ptr noundef %skb, i32 noundef %paclen, ptr noundef %src, ptr noundef %dest, ptr noundef %digi, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %paclen)
  %cmp = icmp eq i32 %paclen, 0
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then:                                          ; preds = %entry
  %ax25_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 81
  %0 = ptrtoint ptr %ax25_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ax25_ptr.i, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.ax25_dev, ptr %1, i32 0, i32 5, i32 11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry.if.end3_crit_edge
  %paclen.addr.0 = phi i32 [ %3, %if.end ], [ %paclen, %entry.if.end3_crit_edge ]
  %call4 = tail call ptr @ax25_find_cb(ptr noundef %src, ptr noundef %dest, ptr noundef %digi, ptr noundef %dev) #5
  %cmp5.not = icmp eq ptr %call4, null
  br i1 %cmp5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ax25_output(ptr noundef nonnull %call4, i32 noundef %paclen.addr.0, ptr noundef %skb)
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %ax25_ptr.i59 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 81
  %4 = ptrtoint ptr %ax25_ptr.i59 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ax25_ptr.i59, align 4
  %cmp9 = icmp eq ptr %5, null
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %call12 = tail call ptr @ax25_create_cb() #5
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  tail call void @ax25_fillin_cb(ptr noundef nonnull %call12, ptr noundef nonnull %5) #5
  %source_addr = getelementptr inbounds %struct.ax25_cb, ptr %call12, i32 0, i32 1
  %6 = call ptr @memcpy(ptr %source_addr, ptr %src, i32 7)
  %dest_addr = getelementptr inbounds %struct.ax25_cb, ptr %call12, i32 0, i32 2
  %7 = call ptr @memcpy(ptr %dest_addr, ptr %dest, i32 7)
  %cmp16.not = icmp eq ptr %digi, null
  br i1 %cmp16.not, label %if.end15.if.end23_crit_edge, label %if.then17

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then17:                                        ; preds = %if.end15
  %call18 = tail call ptr @kmemdup(ptr noundef nonnull %digi, i32 noundef 66, i32 noundef 2592) #5
  %digipeat = getelementptr inbounds %struct.ax25_cb, ptr %call12, i32 0, i32 3
  %8 = ptrtoint ptr %digipeat to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call18, ptr %digipeat, align 4
  %cmp20 = icmp eq ptr %call18, null
  br i1 %cmp20, label %if.then21, label %if.then17.if.end23_crit_edge

if.then17.if.end23_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then21:                                        ; preds = %if.then17
  %refcount.i = getelementptr inbounds %struct.ax25_cb, ptr %call12, i32 0, i32 36
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #5
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #5, !srcloc !28
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !29

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #5
  br label %cleanup

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !30
  %10 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %digipeat, align 4
  tail call void @kfree(ptr noundef %11) #5
  tail call void @kfree(ptr noundef nonnull %call12) #5
  br label %cleanup

if.end23:                                         ; preds = %if.then17.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %ax25_dev24 = getelementptr inbounds %struct.ax25_cb, ptr %call12, i32 0, i32 4
  %12 = ptrtoint ptr %ax25_dev24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ax25_dev24, align 4
  %arrayidx26 = getelementptr %struct.ax25_dev, ptr %13, i32 0, i32 5, i32 12
  %14 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx26, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.end23.sw.epilog_crit_edge [
    i32 0, label %if.end23.sw.bb_crit_edge
    i32 1, label %if.end23.sw.bb_crit_edge60
    i32 2, label %sw.bb27
  ]

if.end23.sw.bb_crit_edge60:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end23.sw.bb_crit_edge:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end23.sw.bb_crit_edge, %if.end23.sw.bb_crit_edge60
  tail call void @ax25_std_establish_data_link(ptr noundef nonnull %call12) #5
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end23
  %dama = getelementptr inbounds %struct.ax25_dev, ptr %5, i32 0, i32 6
  %17 = ptrtoint ptr %dama to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dama, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ax25_ds_establish_data_link(ptr noundef nonnull %call12) #5
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ax25_std_establish_data_link(ptr noundef nonnull %call12) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then28, %sw.bb, %if.end23.sw.epilog_crit_edge
  %refcount = getelementptr inbounds %struct.ax25_cb, ptr %call12, i32 0, i32 36
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #5
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #5, !srcloc !31
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %sw.epilog.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !32

sw.epilog.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %sw.epilog
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %20 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %.not.i.i.i = icmp sgt i32 %20, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !29

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %sw.epilog.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %sw.epilog.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #5
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @ax25_cb_add(ptr noundef nonnull %call12) #5
  %state = getelementptr inbounds %struct.ax25_cb, ptr %call12, i32 0, i32 6
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %state, align 1
  tail call void @ax25_start_heartbeat(ptr noundef nonnull %call12) #5
  tail call void @ax25_output(ptr noundef nonnull %call12, i32 noundef %paclen.addr.0, ptr noundef %skb)
  br label %cleanup

cleanup:                                          ; preds = %refcount_inc.exit, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then6, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.then6 ], [ %call12, %refcount_inc.exit ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.end7.cleanup_crit_edge ], [ null, %if.end11.cleanup_crit_edge ], [ null, %if.end5.i.i.i.i.cleanup_crit_edge ], [ null, %if.then10.i.i.i.i ], [ null, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_find_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_output(ptr noundef %ax25, i32 noundef %paclen, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %paclen)
  %cmp = icmp slt i32 %paclen, 16
  br i1 %cmp, label %land.end, label %if.end34

land.end:                                         ; preds = %entry
  %.b159 = load i1, ptr @ax25_output.__already_done, align 1
  br i1 %.b159, label %land.end.if.end26_crit_edge, label %if.then5, !prof !29

land.end.if.end26_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then5:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ax25_output.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef null) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then5, %land.end.if.end26_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

if.end34:                                         ; preds = %entry
  %len35 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len35 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len35, align 4
  %sub = add i32 %1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %paclen)
  %cmp36 = icmp ugt i32 %sub, %paclen
  br i1 %cmp36, label %if.then37, label %if.else93

if.then37:                                        ; preds = %if.end34
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %5)
  %cmp38 = icmp eq i8 %5, -16
  br i1 %cmp38, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #5
  br label %if.end42

if.else:                                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  %sub41 = add nsw i32 %paclen, -2
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then40
  %paclen.addr.0 = phi i32 [ %paclen, %if.then40 ], [ %sub41, %if.else ]
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %len35 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp51.not190 = icmp eq i32 %7, 0
  br i1 %cmp51.not190, label %if.end42.while.end_crit_edge, label %while.body.lr.ph

if.end42.while.end_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end42
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %9 to i32
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %12 = ptrtoint ptr %len35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len35, align 4
  %.frozen = freeze i32 %13
  %paclen.addr.0.frozen = freeze i32 %paclen.addr.0
  %div = udiv i32 %.frozen, %paclen.addr.0.frozen
  %14 = mul i32 %div, %paclen.addr.0.frozen
  %rem.decomposed = sub i32 %.frozen, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %cmp45 = icmp eq i32 %rem.decomposed, 0
  %dec = sext i1 %cmp45 to i32
  %spec.select = add nsw i32 %div, %dec
  %add = add i32 %sub.ptr.sub.i, 2
  %add53 = add i32 %add, %paclen.addr.0
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %add87 = add i32 %sub.ptr.sub.i, 1
  %write_queue = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 28
  br label %while.body

while.body:                                       ; preds = %if.end91.while.body_crit_edge, %while.body.lr.ph
  %first.0192 = phi i32 [ 1, %while.body.lr.ph ], [ %first.1, %if.end91.while.body_crit_edge ]
  %fragno.1191 = phi i32 [ %spec.select, %while.body.lr.ph ], [ %fragno.2, %if.end91.while.body_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ax25_frag_lock) #5
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add53, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #5
  %cmp55 = icmp eq ptr %call.i, null
  br i1 %cmp55, label %if.then57, label %if.end63

if.then57:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ax25_frag_lock) #5
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end63:                                         ; preds = %while.body
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %cmp64.not = icmp eq ptr %17, null
  br i1 %cmp64.not, label %if.end63.if.end67_crit_edge, label %if.then66

if.end63.if.end67_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i, ptr noundef nonnull %17) #5
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end63.if.end67_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ax25_frag_lock) #5
  %18 = ptrtoint ptr %len35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len35, align 4
  %20 = tail call i32 @llvm.umin.i32(i32 %paclen.addr.0, i32 %19)
  %data.i169 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %21 = ptrtoint ptr %data.i169 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i169, align 4
  br i1 %cmp38, label %if.else86, label %if.then74

if.then74:                                        ; preds = %if.end67
  %add.ptr.i = getelementptr i8, ptr %22, i32 %add
  %23 = ptrtoint ptr %data.i169 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %data.i169, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %24 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %25, i32 %add
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %26 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i, align 8
  %28 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %29 to i32
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 %conv.i.i
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast.i162 = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i163 = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i164 = sub i32 %sub.ptr.lhs.cast.i162, %sub.ptr.rhs.cast.i163
  %head.i.i165 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i165 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i165, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i166 = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i167 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %34 = trunc i32 %sub.ptr.sub.i164 to i16
  %conv1.i = add i16 %conv.i.i166, %34
  %35 = ptrtoint ptr %network_header.i.i167 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv1.i, ptr %network_header.i.i167, align 4
  %call77 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %20) #5
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %38 = call ptr @memcpy(ptr %call77, ptr %37, i32 %20)
  %call78 = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 2) #5
  %incdec.ptr = getelementptr i8, ptr %call78, i32 1
  %39 = ptrtoint ptr %call78 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 8, ptr %call78, align 1
  %dec79 = add i32 %fragno.1191, -1
  %conv80 = trunc i32 %fragno.1191 to i8
  %40 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv80, ptr %incdec.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first.0192)
  %tobool81.not = icmp eq i32 %first.0192, 0
  br i1 %tobool81.not, label %if.then74.if.end91_crit_edge, label %if.then82

if.then74.if.end91_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

if.then82:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #7
  %conv84 = or i8 %conv80, -128
  %41 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv84, ptr %incdec.ptr, align 1
  br label %if.end91

if.else86:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i170 = getelementptr i8, ptr %22, i32 %add87
  %42 = ptrtoint ptr %data.i169 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i170, ptr %data.i169, align 4
  %tail.i171 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %43 = ptrtoint ptr %tail.i171 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i171, align 8
  %add.ptr1.i172 = getelementptr i8, ptr %44, i32 %add87
  store ptr %add.ptr1.i172, ptr %tail.i171, align 8
  %45 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i, align 8
  %47 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i175 = zext i16 %48 to i32
  %add.ptr.i.i176 = getelementptr i8, ptr %46, i32 %conv.i.i175
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast.i178 = ptrtoint ptr %add.ptr.i.i176 to i32
  %sub.ptr.rhs.cast.i179 = ptrtoint ptr %50 to i32
  %sub.ptr.sub.i180 = sub i32 %sub.ptr.lhs.cast.i178, %sub.ptr.rhs.cast.i179
  %head.i.i182 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %51 = ptrtoint ptr %head.i.i182 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %head.i.i182, align 8
  %sub.ptr.lhs.cast.i.i183 = ptrtoint ptr %add.ptr.i170 to i32
  %sub.ptr.rhs.cast.i.i184 = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i.i185 = sub i32 %sub.ptr.lhs.cast.i.i183, %sub.ptr.rhs.cast.i.i184
  %conv.i.i186 = trunc i32 %sub.ptr.sub.i.i185 to i16
  %network_header.i.i187 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %53 = trunc i32 %sub.ptr.sub.i180 to i16
  %conv1.i188 = add i16 %conv.i.i186, %53
  %54 = ptrtoint ptr %network_header.i.i187 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv1.i188, ptr %network_header.i.i187, align 4
  %call89 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %20) #5
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data, align 4
  %57 = call ptr @memcpy(ptr %call89, ptr %56, i32 %20)
  %call90 = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 1) #5
  %58 = ptrtoint ptr %call90 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 -16, ptr %call90, align 1
  br label %if.end91

if.end91:                                         ; preds = %if.else86, %if.then82, %if.then74.if.end91_crit_edge
  %fragno.2 = phi i32 [ %dec79, %if.then82 ], [ %dec79, %if.then74.if.end91_crit_edge ], [ %fragno.1191, %if.else86 ]
  %first.1 = phi i32 [ 0, %if.then82 ], [ 0, %if.then74.if.end91_crit_edge ], [ %first.0192, %if.else86 ]
  %call92 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %20) #5
  tail call void @skb_queue_tail(ptr noundef %write_queue, ptr noundef nonnull %call.i) #5
  %59 = ptrtoint ptr %len35 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len35, align 4
  %cmp51.not = icmp eq i32 %60, 0
  br i1 %cmp51.not, label %if.end91.while.end_crit_edge, label %if.end91.while.body_crit_edge

if.end91.while.body_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end91.while.end_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end91.while.end_crit_edge, %if.end42.while.end_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %if.end95

if.else93:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %write_queue94 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 28
  tail call void @skb_queue_tail(ptr noundef %write_queue94, ptr noundef %skb) #5
  br label %if.end95

if.end95:                                         ; preds = %if.else93, %while.end
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %61 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ax25_dev, align 4
  %arrayidx = getelementptr %struct.ax25_dev, ptr %62, i32 0, i32 5, i32 12
  %63 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx, align 4
  %65 = zext i32 %64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %64, label %if.end95.cleanup_crit_edge [
    i32 0, label %if.end95.sw.bb_crit_edge
    i32 1, label %if.end95.sw.bb_crit_edge193
    i32 2, label %sw.bb96
  ]

if.end95.sw.bb_crit_edge193:                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end95.sw.bb_crit_edge:                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end95.sw.bb_crit_edge, %if.end95.sw.bb_crit_edge193
  tail call void @ax25_kick(ptr noundef %ax25)
  br label %cleanup

sw.bb96:                                          ; preds = %if.end95
  %dama = getelementptr inbounds %struct.ax25_dev, ptr %62, i32 0, i32 6
  %66 = ptrtoint ptr %dama to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %dama, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool98.not = icmp eq i8 %67, 0
  br i1 %tobool98.not, label %if.then99, label %sw.bb96.cleanup_crit_edge

sw.bb96.cleanup_crit_edge:                        ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then99:                                        ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ax25_kick(ptr noundef %ax25)
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %sw.bb96.cleanup_crit_edge, %sw.bb, %if.end95.cleanup_crit_edge, %if.then57, %if.end26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_create_cb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_fillin_cb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_std_establish_data_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_ds_establish_data_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_cb_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_start_heartbeat(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_kick(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 6
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 1
  %.off = add i8 %1, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %condition = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %2 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %condition, align 2
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %write_queue = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 28
  %5 = ptrtoint ptr %write_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_queue, align 4
  %cmp.i = icmp eq ptr %6, %write_queue
  %cmp9120 = icmp eq ptr %6, null
  %cmp9 = or i1 %cmp.i, %cmp9120
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %ack_queue = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 30
  %7 = ptrtoint ptr %ack_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ack_queue, align 4
  %cmp.i117 = icmp eq ptr %8, %ack_queue
  %cmp14121 = icmp eq ptr %8, null
  %cmp14 = or i1 %cmp.i117, %cmp14121
  %va = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 11
  %vs = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 9
  %cond.in.in = select i1 %cmp14, ptr %va, ptr %vs
  %9 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load2_noabort(i32 %9)
  %cond.in116 = load i16, ptr %cond.in.in, align 4
  %10 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %va, align 4
  %conv20 = zext i16 %11 to i32
  %window = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 32
  %12 = ptrtoint ptr %window to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %window, align 4
  %conv21 = zext i8 %13 to i32
  %add = add nuw nsw i32 %conv21, %conv20
  %modulus = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %14 = ptrtoint ptr %modulus to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %modulus, align 2
  %conv22 = zext i8 %15 to i32
  %rem = urem i32 %add, %conv22
  %conv24 = zext i16 %cond.in116 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %conv24)
  %cmp26 = icmp eq i32 %rem, %conv24
  br i1 %cmp26, label %if.end12.cleanup_crit_edge, label %if.end29

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end12
  %call31 = tail call ptr @skb_dequeue(ptr noundef %write_queue) #5
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end29.cleanup_crit_edge, label %if.end34

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  %16 = ptrtoint ptr %vs to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %cond.in116, ptr %vs, align 4
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %vr27.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %if.end34
  %skb.0 = phi ptr [ %call31, %if.end34 ], [ %call64, %land.rhs.do.body_crit_edge ]
  %call36 = tail call ptr @skb_clone(ptr noundef nonnull %skb.0, i32 noundef 2592) #5
  %cmp37 = icmp eq ptr %call36, null
  br i1 %cmp37, label %if.then39, label %if.end41

if.then39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @skb_queue_head(ptr noundef %write_queue, ptr noundef nonnull %skb.0) #5
  br label %do.end

if.end41:                                         ; preds = %do.body
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %cmp42.not = icmp eq ptr %19, null
  br i1 %cmp42.not, label %if.end41.if.end45_crit_edge, label %if.then44

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @skb_set_owner_w(ptr noundef nonnull %call36, ptr noundef nonnull %19) #5
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end41.if.end45_crit_edge
  %20 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vs, align 4
  %conv47 = zext i16 %21 to i32
  %add48 = add nuw nsw i32 %conv47, 1
  %22 = ptrtoint ptr %modulus to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %modulus, align 2
  %conv50 = zext i8 %23 to i32
  %rem51 = urem i32 %add48, %conv50
  %conv52 = trunc i32 %rem51 to i16
  call void @__sanitizer_cov_trace_cmp4(i32 %rem51, i32 %rem)
  %cmp55 = icmp eq i32 %rem51, %rem
  %24 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ax25_dev, align 4
  %arrayidx = getelementptr %struct.ax25_dev, ptr %25, i32 0, i32 5, i32 12
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %27, label %if.end45.sw.epilog_crit_edge [
    i32 0, label %if.end45.sw.bb_crit_edge
    i32 1, label %if.end45.sw.bb_crit_edge128
    i32 2, label %if.end.i
  ]

if.end45.sw.bb_crit_edge128:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end45.sw.bb_crit_edge:                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end45.sw.epilog_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end45.sw.bb_crit_edge, %if.end45.sw.bb_crit_edge128
  %cond58 = zext i1 %cmp55 to i32
  tail call fastcc void @ax25_send_iframe(ptr noundef %ax25, ptr noundef nonnull %call36, i32 noundef %cond58)
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end45
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 18
  %31 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call36, i32 0, i32 15, i32 0, i32 20
  %33 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %34 = ptrtoint ptr %modulus to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %modulus, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %35)
  %cmp1.i = icmp eq i8 %35, 8
  br i1 %cmp1.i, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call ptr @skb_push(ptr noundef nonnull %call36, i32 noundef 1) #5
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %call.i, align 1
  %37 = ptrtoint ptr %vr27.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vr27.i, align 2
  %conv6.i = trunc i16 %38 to i8
  %shl.i = shl i8 %conv6.i, 5
  store i8 %shl.i, ptr %call.i, align 1
  br label %ax25_send_iframe.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call15.i = tail call ptr @skb_push(ptr noundef nonnull %call36, i32 noundef 2) #5
  %39 = ptrtoint ptr %call15.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %call15.i, align 1
  %40 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vs, align 4
  %conv17.i = trunc i16 %41 to i8
  %shl18.i = shl i8 %conv17.i, 1
  store i8 %shl18.i, ptr %call15.i, align 1
  %arrayidx26.i = getelementptr i8, ptr %call15.i, i32 1
  %42 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %arrayidx26.i, align 1
  br label %ax25_send_iframe.exit

ax25_send_iframe.exit:                            ; preds = %if.else.i, %if.then3.i
  %.sink.in.i = phi ptr [ %vr27.i, %if.else.i ], [ %vs, %if.then3.i ]
  %conv25.sink.i = phi i8 [ 0, %if.else.i ], [ %shl.i, %if.then3.i ]
  %arrayidx26.sink.i = phi ptr [ %arrayidx26.i, %if.else.i ], [ %call.i, %if.then3.i ]
  %43 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %.sink.i = load i16, ptr %.sink.in.i, align 2
  %conv28.i = trunc i16 %.sink.i to i8
  %shl29.i = shl i8 %conv28.i, 1
  %or32.i = or i8 %shl29.i, %conv25.sink.i
  %44 = ptrtoint ptr %arrayidx26.sink.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %or32.i, ptr %arrayidx26.sink.i, align 1
  tail call void @ax25_start_idletimer(ptr noundef %ax25) #5
  tail call void @ax25_transmit_buffer(ptr noundef %ax25, ptr noundef nonnull %call36, i32 noundef 1) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %ax25_send_iframe.exit, %sw.bb, %if.end45.sw.epilog_crit_edge
  %45 = ptrtoint ptr %vs to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv52, ptr %vs, align 4
  tail call void @skb_queue_tail(ptr noundef %ack_queue, ptr noundef nonnull %skb.0) #5
  br i1 %cmp55, label %sw.epilog.do.end_crit_edge, label %land.rhs

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.rhs:                                         ; preds = %sw.epilog
  %call64 = tail call ptr @skb_dequeue(ptr noundef %write_queue) #5
  %cmp65.not = icmp eq ptr %call64, null
  br i1 %cmp65.not, label %land.rhs.do.end_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %land.rhs.do.end_crit_edge, %sw.epilog.do.end_crit_edge, %if.then39
  %46 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %condition, align 2
  %48 = and i8 %47, -2
  store i8 %48, ptr %condition, align 2
  %call71 = tail call i32 @ax25_t1timer_running(ptr noundef %ax25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.then73, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then73:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ax25_stop_t3timer(ptr noundef %ax25) #5
  tail call void @ax25_calculate_t1(ptr noundef %ax25) #5
  tail call void @ax25_start_t1timer(ptr noundef %ax25) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %do.end.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ax25_send_iframe(ptr noundef %ax25, ptr noundef %skb, i32 noundef %poll_bit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %network_header.i, align 4
  %modulus = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %5 = ptrtoint ptr %modulus to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %modulus, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %6)
  %cmp1 = icmp eq i8 %6, 8
  br i1 %cmp1, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %poll_bit)
  %tobool.not = icmp eq i32 %poll_bit, 0
  %conv5 = select i1 %tobool.not, i8 0, i8 16
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv5, ptr %call, align 1
  %vr = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 10
  %8 = ptrtoint ptr %vr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vr, align 2
  %conv6 = trunc i16 %9 to i8
  %shl = shl i8 %conv6, 5
  %or8 = or i8 %shl, %conv5
  store i8 %or8, ptr %call, align 1
  %vs = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 9
  br label %if.end34

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call ptr @skb_push(ptr noundef nonnull %skb, i32 noundef 2) #5
  %10 = ptrtoint ptr %call15 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %call15, align 1
  %vs16 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 9
  %11 = ptrtoint ptr %vs16 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vs16, align 4
  %conv17 = trunc i16 %12 to i8
  %shl18 = shl i8 %conv17, 1
  store i8 %shl18, ptr %call15, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %poll_bit)
  %tobool23.not = icmp ne i32 %poll_bit, 0
  %conv25 = zext i1 %tobool23.not to i8
  %arrayidx26 = getelementptr i8, ptr %call15, i32 1
  %13 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv25, ptr %arrayidx26, align 1
  %vr27 = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 10
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then3
  %.sink.in = phi ptr [ %vr27, %if.else ], [ %vs, %if.then3 ]
  %conv25.sink = phi i8 [ %conv25, %if.else ], [ %or8, %if.then3 ]
  %arrayidx26.sink = phi ptr [ %arrayidx26, %if.else ], [ %call, %if.then3 ]
  %14 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %14)
  %.sink = load i16, ptr %.sink.in, align 2
  %conv28 = trunc i16 %.sink to i8
  %shl29 = shl i8 %conv28, 1
  %or32 = or i8 %shl29, %conv25.sink
  %15 = ptrtoint ptr %arrayidx26.sink to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %or32, ptr %arrayidx26.sink, align 1
  tail call void @ax25_start_idletimer(ptr noundef %ax25) #5
  tail call void @ax25_transmit_buffer(ptr noundef %ax25, ptr noundef nonnull %skb, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_t1timer_running(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_t3timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_calculate_t1(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_start_t1timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_transmit_buffer(ptr noundef %ax25, ptr noundef %skb, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %0 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ax25_dev, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ax25_disconnect(ptr noundef %ax25, i32 noundef 101) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %digipeat = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 3
  %2 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %digipeat, align 4
  %call = tail call i32 @ax25_addr_size(ptr noundef %3) #5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %call)
  %cmp2 = icmp ult i32 %sub.ptr.sub.i, %call
  br i1 %cmp2, label %if.then4, label %if.end.if.end10_crit_edge, !prof !32

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %call5 = tail call ptr @skb_expand_head(ptr noundef %skb, i32 noundef %call) #5
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end, label %if.then4.if.end10_crit_edge

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end10:                                         ; preds = %if.then4.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %skb.addr.0 = phi ptr [ %call5, %if.then4.if.end10_crit_edge ], [ %skb, %if.end.if.end10_crit_edge ]
  %call11 = tail call ptr @skb_push(ptr noundef %skb.addr.0, i32 noundef %call) #5
  %source_addr = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 1
  %dest_addr = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 2
  %8 = ptrtoint ptr %digipeat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %digipeat, align 4
  %modulus = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 7
  %10 = ptrtoint ptr %modulus to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %modulus, align 2
  %conv = zext i8 %11 to i32
  %call13 = tail call i32 @ax25_addr_build(ptr noundef %call11, ptr noundef %source_addr, ptr noundef %dest_addr, ptr noundef %9, i32 noundef %type, i32 noundef %conv) #5
  %12 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ax25_dev, align 4
  %dev = getelementptr inbounds %struct.ax25_dev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call.i = tail call ptr @ax25_fwd_dev(ptr noundef %15) #5
  %16 = getelementptr inbounds %struct.anon.0, ptr %skb.addr.0, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %16, align 8
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 21
  %22 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %pkt_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15
  %23 = ptrtoint ptr %pkt_type.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load.i.i = load i16, ptr %pkt_type.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, 8191
  store i16 %bf.clear.i.i, ptr %pkt_type.i.i, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 18
  %24 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2, ptr %protocol.i, align 8
  %call2.i = tail call ptr @skb_push(ptr noundef %skb.addr.0, i32 noundef 1) #5
  %25 = ptrtoint ptr %call2.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %call2.i, align 1
  %call3.i = tail call i32 @dev_queue_xmit(ptr noundef %skb.addr.0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_disconnect(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_addr_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_expand_head(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_addr_build(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_queue_xmit(ptr noundef %skb, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ax25_fwd_dev(ptr noundef %dev) #5
  %0 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %0, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %7 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  store i16 %bf.clear.i, ptr %pkt_type.i, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %8 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 2, ptr %protocol, align 8
  %call2 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #5
  %9 = ptrtoint ptr %call2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %call2, align 1
  %call3 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ax25_fwd_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25_check_iframes_acked(ptr noundef %ax25, i16 noundef zeroext %nr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vs = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 9
  %0 = ptrtoint ptr %vs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vs, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %nr)
  %cmp = icmp eq i16 %1, %nr
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ax25_frames_acked(ptr noundef %ax25, i16 noundef zeroext %nr) #5
  tail call void @ax25_calculate_rtt(ptr noundef %ax25) #5
  tail call void @ax25_stop_t1timer(ptr noundef %ax25) #5
  tail call void @ax25_start_t3timer(ptr noundef %ax25) #5
  br label %return

if.else:                                          ; preds = %entry
  %va = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 11
  %2 = ptrtoint ptr %va to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %va, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %nr)
  %cmp5.not = icmp eq i16 %3, %nr
  br i1 %cmp5.not, label %if.else.return_crit_edge, label %if.then7

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ax25_frames_acked(ptr noundef %ax25, i16 noundef zeroext %nr) #5
  tail call void @ax25_calculate_t1(ptr noundef %ax25) #5
  tail call void @ax25_start_t1timer(ptr noundef %ax25) #5
  br label %return

return:                                           ; preds = %if.then7, %if.else.return_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then7 ], [ 0, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_frames_acked(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_calculate_rtt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_t1timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_start_t3timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_start_idletimer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !12, !13, !14, !15, !17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__ksymtab_ax25_send_frame, !1, !"__ksymtab_ax25_send_frame", i1 false, i1 false}
!1 = !{!"../net/ax25/ax25_out.c", i32 108, i32 1}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../net/ax25/ax25_out.c", i32 123, i32 3}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/ax25/ax25_out.c", i32 146, i32 5}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ax25_output._entry, !6, !"_entry", i1 false, i1 false}
!9 = !{ptr @ax25_output._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ax25/ax25_out.c", i32 341, i32 4}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ax25_transmit_buffer._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @ax25_transmit_buffer._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ax25/ax25_out.c", i32 30, i32 8}
!17 = !{ptr @ax25_frag_lock, !16, !"ax25_frag_lock", i1 false, i1 false}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2148343204}
!28 = !{i64 2148257668, i64 2148257700, i64 2148257729, i64 2148257763, i64 2148257794, i64 2148257817}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{i64 2149279484}
!31 = !{i64 2148255203, i64 2148255235, i64 2148255264, i64 2148255298, i64 2148255329, i64 2148255352}
!32 = !{!"branch_weights", i32 1, i32 2000}
