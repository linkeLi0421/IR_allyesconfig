; ModuleID = '/llk/IR_all_yes/drivers/net/wan/hdlc_raw_eth.c_pt.bc'
source_filename = "../drivers/net/wan/hdlc_raw_eth.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hdlc_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_hdlc_proto = type { i16, i16 }
%struct.if_settings = type { i32, i32, %union.anon.21 }
%union.anon.21 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }

@proto = internal global { %struct.hdlc_proto, [52 x i8] } { %struct.hdlc_proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @raw_eth_ioctl, ptr @eth_type_trans, ptr null, ptr @eth_tx, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__initcall__kmod_hdlc_raw_eth__345_127_hdlc_eth_init6 = internal global ptr @hdlc_eth_init, section ".initcall6.init", align 4
@__exitcall_hdlc_eth_exit = internal global ptr @hdlc_eth_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author346 = internal constant [53 x i8] c"hdlc_raw_eth.author=Krzysztof Halasa <khc@pm.waw.pl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description347 = internal constant [73 x i8] c"hdlc_raw_eth.description=Ethernet encapsulation support for generic HDLC\00", section ".modinfo", align 1
@__UNIQUE_ID_file348 = internal constant [47 x i8] c"hdlc_raw_eth.file=drivers/net/wan/hdlc_raw_eth\00", section ".modinfo", align 1
@__UNIQUE_ID_license349 = internal constant [28 x i8] c"hdlc_raw_eth.license=GPL v2\00", section ".modinfo", align 1
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8199]
@___asan_gen_.3 = private unnamed_addr constant [6 x i8] c"proto\00", align 1
@___asan_gen_.4 = private constant [34 x i8] c"../drivers/net/wan/hdlc_raw_eth.c\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.4, i32 43, i32 26 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 174, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author346, ptr @__UNIQUE_ID_description347, ptr @__UNIQUE_ID_file348, ptr @__UNIQUE_ID_license349, ptr @__exitcall_hdlc_eth_exit, ptr @__initcall__kmod_hdlc_raw_eth__345_127_hdlc_eth_init6, ptr @hdlc_eth_exit, ptr @proto, ptr @.str.2], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proto to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hdlc_eth_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @unregister_hdlc_protocol(ptr noundef nonnull @proto) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_hdlc_protocol(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlc_eth_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @register_hdlc_protocol(ptr noundef nonnull @proto) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raw_eth_ioctl(ptr noundef %dev, ptr nocapture noundef %ifs) #2 align 64 {
entry:
  %new_settings = alloca %struct.raw_hdlc_proto, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ifs_ifsu = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 2
  %0 = ptrtoint ptr %ifs_ifsu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifs_ifsu, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_settings) #6
  %2 = ptrtoint ptr %new_settings to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %new_settings, align 4, !annotation !30
  %3 = getelementptr inbounds %struct.raw_hdlc_proto, ptr %new_settings, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2, !annotation !30
  %add.ptr.i.i82 = getelementptr i8, ptr %dev, i32 2304
  %5 = ptrtoint ptr %ifs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ifs, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 8199, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %proto = getelementptr i8, ptr %dev, i32 2312
  %8 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %proto, align 4
  %cmp.not = icmp eq ptr %9, @proto
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %10 = ptrtoint ptr %ifs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8199, ptr %ifs, align 4
  %size3 = getelementptr inbounds %struct.if_settings, ptr %ifs, i32 0, i32 1
  %11 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp4 = icmp ult i32 %12, 4
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %size3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %size3, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %state = getelementptr i8, ptr %dev, i32 2368
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %if.end7.cleanup_crit_edge, label %if.end.i.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end7
  %16 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1226833920) #9, !srcloc !31
  %asmresult.i.i = extractvalue { i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %15, i32 noundef 4) #6
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %1, ptr noundef %15, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %call12 = tail call zeroext i1 @capable(i32 noundef 12) #6
  br i1 %call12, label %if.end14, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %sw.bb11
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.then.i76, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i76:                                      ; preds = %if.end14
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #6
  %call.i.i75 = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i75, label %if.then.i76.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i76.if.then11.i.i_crit_edge:              ; preds = %if.then.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i76
  %19 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 4, i32 -1226833920) #9, !srcloc !32
  %asmresult.i.i77 = extractvalue { i32, i32 } %19, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i77)
  %cmp.i.i78 = icmp eq i32 %asmresult.i.i77, 0
  br i1 %cmp.i.i78, label %if.end.i.i80, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !33

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i80:                                     ; preds = %land.lhs.true.i.i
  %call.i.i.i79 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %new_settings, i32 noundef 4) #6
  %20 = call i32 @llvm.read_register.i32(metadata !20) #6
  %and.i.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !34
  %and.i.i.i.i = and i32 %22, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %new_settings, ptr noundef %1, i32 noundef 4) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end21, label %if.end.i.i80.if.then11.i.i_crit_edge, !prof !33

if.end.i.i80.if.then11.i.i_crit_edge:             ; preds = %if.end.i.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i80.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i76.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i80.if.then11.i.i_crit_edge ], [ 4, %if.then.i76.if.then11.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 4, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %new_settings, i32 %sub.i.i
  %23 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end21:                                         ; preds = %if.end.i.i80
  %24 = ptrtoint ptr %new_settings to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %new_settings, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp22 = icmp eq i16 %25, 0
  br i1 %cmp22, label %if.then24, label %if.end21.if.end26_crit_edge

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %new_settings to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %new_settings, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21.if.end26_crit_edge
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %3, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp28 = icmp eq i16 %28, 0
  br i1 %cmp28, label %if.then30, label %if.end26.if.end32_crit_edge

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 5, ptr %3, align 2
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end26.if.end32_crit_edge
  %30 = ptrtoint ptr %add.ptr.i.i82 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr.i.i82, align 4
  %32 = ptrtoint ptr %new_settings to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %new_settings, align 4
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %3, align 2
  %call35 = call i32 %31(ptr noundef %dev, i16 noundef zeroext %33, i16 noundef zeroext %35) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %call39 = call i32 @attach_hdlc_protocol(ptr noundef %dev, ptr noundef nonnull @proto, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %state43 = getelementptr i8, ptr %dev, i32 2368
  %36 = ptrtoint ptr %state43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %state43, align 4
  %38 = ptrtoint ptr %new_settings to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %new_settings, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %39, ptr %37, align 1
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 107
  %41 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_queue_len, align 16
  call void @ether_setup(ptr noundef %dev) #6
  %43 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %tx_queue_len, align 16
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %44 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %priv_flags, align 16
  %and45 = and i64 %45, -2049
  store i64 %and45, ptr %priv_flags, align 16
  call fastcc void @eth_hw_addr_random(ptr noundef %dev)
  %call46 = call i32 @call_netdevice_notifiers(i32 noundef 16, ptr noundef %dev) #6
  call fastcc void @netif_dormant_off(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end38.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.then11.i.i, %if.end14.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then5, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end42 ], [ -105, %if.then5 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -1, %sw.bb11.cleanup_crit_edge ], [ -16, %if.end14.cleanup_crit_edge ], [ %call35, %if.end32.cleanup_crit_edge ], [ %call39, %if.end38.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -14, %if.end7.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_settings) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eth_tx(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %sub = sub i32 60, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp sgt i32 %sub, 0
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then:                                          ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.then.skb_tailroom.exit_crit_edge

if.then.skb_tailroom.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.then.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.then.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %sub)
  %cmp3 = icmp slt i32 %cond.i, %sub
  br i1 %cmp3, label %if.then4, label %skb_tailroom.exit.if.end7_crit_edge

skb_tailroom.exit.if.end7_crit_edge:              ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %skb_tailroom.exit
  %call5 = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef %sub, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.then4.if.end7_crit_edge, label %if.then6

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %8 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx_dropped, align 4
  tail call void @consume_skb(ptr noundef %skb) #6
  br label %cleanup12

if.end7:                                          ; preds = %if.then4.if.end7_crit_edge, %skb_tailroom.exit.if.end7_crit_edge
  %call8 = tail call ptr @skb_put(ptr noundef %skb, i32 noundef %sub) #6
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %1
  %12 = call ptr @memset(ptr %add.ptr, i32 0, i32 %sub)
  br label %if.end9

if.end9:                                          ; preds = %if.end7, %entry.if.end9_crit_edge
  %xmit = getelementptr i8, ptr %dev, i32 2308
  %13 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xmit, align 4
  %call11 = tail call i32 %14(ptr noundef %skb, ptr noundef %dev) #6
  br label %cleanup12

cleanup12:                                        ; preds = %if.end9, %if.then6
  %retval.1 = phi i32 [ %call11, %if.end9 ], [ 0, %if.then6 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @attach_hdlc_protocol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #6
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #6
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #6
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netif_dormant_off(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @linkwatch_fire_event(ptr noundef %dev) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @linkwatch_fire_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_hdlc_protocol(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18}
!llvm.named.register.sp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_hdlc_raw_eth__345_127_hdlc_eth_init6, !1, !"__initcall__kmod_hdlc_raw_eth__345_127_hdlc_eth_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/wan/hdlc_raw_eth.c", i32 127, i32 1}
!2 = !{ptr @__exitcall_hdlc_eth_exit, !3, !"__exitcall_hdlc_eth_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/wan/hdlc_raw_eth.c", i32 128, i32 1}
!4 = !{ptr @__UNIQUE_ID_author346, !5, !"__UNIQUE_ID_author346", i1 false, i1 false}
!5 = !{!"../drivers/net/wan/hdlc_raw_eth.c", i32 130, i32 1}
!6 = !{ptr @__UNIQUE_ID_description347, !7, !"__UNIQUE_ID_description347", i1 false, i1 false}
!7 = !{!"../drivers/net/wan/hdlc_raw_eth.c", i32 131, i32 1}
!8 = !{ptr @__UNIQUE_ID_file348, !9, !"__UNIQUE_ID_file348", i1 false, i1 false}
!9 = !{!"../drivers/net/wan/hdlc_raw_eth.c", i32 132, i32 1}
!10 = !{ptr @__UNIQUE_ID_license349, !9, !"__UNIQUE_ID_license349", i1 false, i1 false}
!11 = !{ptr @proto, !12, !"proto", i1 false, i1 false}
!12 = !{!"../drivers/net/wan/hdlc_raw_eth.c", i32 43, i32 26}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!15 = distinct !{null, !14, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!20 = !{!"sp"}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
!31 = !{i64 2152342602, i64 2152342627}
!32 = !{i64 2152341921, i64 2152341946}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 4837476}
!35 = !{i64 4837673}
!36 = !{i64 2152322906}
