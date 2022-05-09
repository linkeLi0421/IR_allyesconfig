; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl1251/rx.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl1251/rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wl1251 = type { ptr, i8, ptr, ptr, i32, i32, i8, ptr, %struct.spinlock, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.boot_attr, ptr, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, i32, i8, i8, ptr, ptr, i32, %struct.sk_buff_head, i8, %struct.work_struct, [16 x ptr], i32, i32, i32, i32, i32, i32, %struct.work_struct, i32, [2 x i32], i8, i32, i32, i32, i32, i32, i8, %struct.delayed_work, i32, i8, i8, i16, i8, i32, i32, %struct.wl1251_stats, %struct.wl1251_debugfs, i32, i32, [8 x i8], ptr, ptr, i32, [21 x i8], i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.boot_attr = type { i32, i8, i8, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wl1251_stats = type { ptr, i32, i32, i32 }
%struct.wl1251_debugfs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acx_data_path_params_resp = type { %struct.acx_header, i16, i16, i8, i8, [2 x i8], i32, i32, i32, i32, i32 }
%struct.acx_header = type { %struct.wl1251_cmd_header, i16, i16 }
%struct.wl1251_cmd_header = type { i16, i16, [0 x i8] }
%struct.wl1251_rx_descriptor = type { i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.sk_buff = type { %union.anon.40, %union.anon.43, %union.anon.44, [48 x i8], %union.anon.45, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.47, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.40 = type { %struct.anon.41 }
%struct.anon.41 = type { ptr, ptr, %union.anon.42 }
%union.anon.42 = type { ptr }
%union.anon.43 = type { ptr }
%union.anon.44 = type { i64 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { i32, ptr }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.49, i32, i32, i32, i16, i16, %union.anon.51, i32, %union.anon.52, %union.anon.53, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.49 = type { i32 }
%union.anon.51 = type { i32 }
%union.anon.52 = type { i32 }
%union.anon.53 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }

@wl1251_rx_body._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014wl1251: WARNING curr ID:%d, last ID inc:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wl1251_rx_body\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/wireless/ti/wl1251/rx.c\00", [60 x i8] zeroinitializer }, align 32
@wl1251_rx_body._entry_ptr = internal global ptr @wl1251_rx_body._entry, section ".printk_index", align 4
@wl1251_rx_body._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013wl1251: ERROR Couldn't allocate RX frame\0A\00", [52 x i8] zeroinitializer }, align 32
@wl1251_rx_body._entry_ptr.5 = internal global ptr @wl1251_rx_body._entry.3, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 8, i64 8, i64 9, i64 11, i64 12, i64 13, i64 14, i64 15, i64 20, i64 55, i64 110]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 147, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private constant [39 x i8] c"../drivers/net/wireless/ti/wl1251/rx.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 161, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @wl1251_rx_body._entry, ptr @wl1251_rx_body._entry.3, ptr @wl1251_rx_body._entry_ptr, ptr @wl1251_rx_body._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_rx_body._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_rx_body._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wl1251_rx(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  %mactime.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 9
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_descriptor = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 65
  %2 = ptrtoint ptr %rx_descriptor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_descriptor, align 4
  %data_path.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 30
  %4 = ptrtoint ptr %data_path.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_path.i, align 4
  %rx_packet_ring_addr1.i = getelementptr inbounds %struct.acx_data_path_params_resp, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %rx_packet_ring_addr1.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %rx_packet_ring_addr1.i, align 1
  %rx_current_buffer.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 39
  %8 = ptrtoint ptr %rx_current_buffer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_current_buffer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.wl1251_rx_header.exit_crit_edge, label %if.then.i

if.end.wl1251_rx_header.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %wl1251_rx_header.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %rx_packet_ring_chunk_size.i = getelementptr inbounds %struct.acx_data_path_params_resp, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %rx_packet_ring_chunk_size.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %rx_packet_ring_chunk_size.i, align 1
  %conv.i = zext i16 %11 to i32
  %add.i = add i32 %7, %conv.i
  br label %wl1251_rx_header.exit

wl1251_rx_header.exit:                            ; preds = %if.then.i, %if.end.wl1251_rx_header.exit_crit_edge
  %rx_packet_ring_addr.0.i = phi i32 [ %add.i, %if.then.i ], [ %7, %if.end.wl1251_rx_header.exit_crit_edge ]
  tail call void @wl1251_mem_read(ptr noundef %wl, i32 noundef %rx_packet_ring_addr.0.i, ptr noundef %3, i32 noundef 16) #5
  %length1.i = getelementptr inbounds %struct.wl1251_rx_descriptor, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %length1.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %length1.i, align 1
  %sub2.i = add i16 %13, -5
  %and.i = and i16 %sub2.i, -4
  %flags.i = getelementptr inbounds %struct.wl1251_rx_descriptor, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %flags.i, align 1
  %16 = lshr i16 %15, 11
  %17 = and i16 %16, 3
  %18 = zext i16 %17 to i32
  %rx_last_id.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 40
  %19 = ptrtoint ptr %rx_last_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_last_id.i, align 4
  %add6.i = add i32 %20, 1
  %rem.i = and i32 %add6.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %18)
  %cmp.not.i = icmp eq i32 %rem.i, %18
  br i1 %cmp.not.i, label %wl1251_rx_header.exit.if.end.i_crit_edge, label %do.end.i

wl1251_rx_header.exit.if.end.i_crit_edge:         ; preds = %wl1251_rx_header.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %wl1251_rx_header.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %18, i32 noundef %rem.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %wl1251_rx_header.exit.if.end.i_crit_edge
  %21 = ptrtoint ptr %rx_last_id.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %18, ptr %rx_last_id.i, align 4
  %22 = ptrtoint ptr %data_path.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data_path.i, align 4
  %rx_packet_ring_addr10.i = getelementptr inbounds %struct.acx_data_path_params_resp, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %rx_packet_ring_addr10.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %rx_packet_ring_addr10.i, align 1
  %add12.i = add i32 %25, 36
  %26 = ptrtoint ptr %rx_current_buffer.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_current_buffer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i8 = icmp eq i32 %27, 0
  br i1 %tobool.not.i8, label %if.end.i.if.end17.i_crit_edge, label %if.then13.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %rx_packet_ring_chunk_size.i9 = getelementptr inbounds %struct.acx_data_path_params_resp, ptr %23, i32 0, i32 1
  %28 = ptrtoint ptr %rx_packet_ring_chunk_size.i9 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %rx_packet_ring_chunk_size.i9, align 1
  %conv15.i = zext i16 %29 to i32
  %add16.i = add i32 %add12.i, %conv15.i
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then13.i, %if.end.i.if.end17.i_crit_edge
  %rx_packet_ring_addr.0.i10 = phi i32 [ %add16.i, %if.then13.i ], [ %add12.i, %if.end.i.if.end17.i_crit_edge ]
  %conv18.i = zext i16 %and.i to i32
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv18.i, i32 noundef 3264) #5
  %tobool20.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool20.not.i, label %do.end24.i, label %if.end27.i

do.end24.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %wl1251_rx_body.exit

if.end27.i:                                       ; preds = %if.end17.i
  %call29.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv18.i) #5
  tail call void @wl1251_mem_read(ptr noundef %wl, i32 noundef %rx_packet_ring_addr.0.i10, ptr noundef %call29.i, i32 noundef %conv18.i) #5
  %30 = ptrtoint ptr %length1.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %length1.i, align 1
  %conv32.i = zext i16 %31 to i32
  %sub33.i = add nsw i32 %conv32.i, -8
  tail call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub33.i) #5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %33, align 2
  %36 = and i16 %35, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %36)
  %cmp36.i = icmp ne i16 %36, 128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mactime.i.i) #5
  %37 = ptrtoint ptr %mactime.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 -1, ptr %mactime.i.i, align 8, !annotation !19
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %3, align 1
  %conv.i.i = zext i32 %39 to i64
  %bss_type.i.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 24
  %40 = ptrtoint ptr %bss_type.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bss_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp.i.i = icmp ne i8 %41, 0
  %or.cond.i.i = or i1 %cmp36.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.end27.i.if.end9.i.i_crit_edge, label %if.then.i.i

if.end27.i.if.end9.i.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i.i

if.then.i.i:                                      ; preds = %if.end27.i
  %call.i75.i = call i32 @wl1251_acx_tsf_info(ptr noundef %wl, ptr noundef nonnull %mactime.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %cmp5.i.i = icmp eq i32 %call.i75.i, 0
  br i1 %cmp5.i.i, label %if.then7.i.i, label %if.then.i.i.if.end9.i.i_crit_edge

if.then.i.i.if.end9.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i.i

if.then7.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %mactime.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %mactime.i.i, align 8
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then7.i.i, %if.then.i.i.if.end9.i.i_crit_edge, %if.end27.i.if.end9.i.i_crit_edge
  %status.sroa.0.0.i = phi i64 [ %conv.i.i, %if.end27.i.if.end9.i.i_crit_edge ], [ %43, %if.then7.i.i ], [ %conv.i.i, %if.then.i.i.if.end9.i.i_crit_edge ]
  %rssi.i.i = getelementptr inbounds %struct.wl1251_rx_descriptor, ptr %3, i32 0, i32 8
  %44 = ptrtoint ptr %rssi.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rssi.i.i, align 1
  %snr.i.i = getelementptr inbounds %struct.wl1251_rx_descriptor, ptr %3, i32 0, i32 10
  %46 = ptrtoint ptr %snr.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %snr.i.i, align 1
  %48 = lshr i8 %47, 1
  %sub.i.i = sub i8 %45, %48
  %noise.i.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 69
  %49 = ptrtoint ptr %noise.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %sub.i.i, ptr %noise.i.i, align 1
  %channel.i.i = getelementptr inbounds %struct.wl1251_rx_descriptor, ptr %3, i32 0, i32 6
  %50 = ptrtoint ptr %channel.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %channel.i.i, align 1
  %conv14.i.i = zext i8 %51 to i32
  %call.i.i.i = call i32 @ieee80211_channel_to_freq_khz(i32 noundef %conv14.i.i, i32 noundef 0) #5
  %div.i.i.i = udiv i32 %call.i.i.i, 1000
  %conv18.i.i = trunc i32 %div.i.i.i to i16
  %bf.shl.i.i = shl i16 %conv18.i.i, 3
  %monitor_present.i.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 27
  %52 = ptrtoint ptr %monitor_present.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %monitor_present.i.i, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool19.not.i.i = icmp eq i8 %53, 0
  br i1 %tobool19.not.i.i, label %land.lhs.true20.i.i, label %if.end9.i.i.if.end51.i.i_crit_edge

if.end9.i.i.if.end51.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i.i

land.lhs.true20.i.i:                              ; preds = %if.end9.i.i
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %flags.i, align 1
  %56 = and i16 %55, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool22.not.i.i = icmp eq i16 %56, 0
  br i1 %tobool22.not.i.i, label %land.lhs.true20.i.i.if.end51.i.i_crit_edge, label %if.then23.i.i

land.lhs.true20.i.i.if.end51.i.i_crit_edge:       ; preds = %land.lhs.true20.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i.i

if.then23.i.i:                                    ; preds = %land.lhs.true20.i.i
  %57 = and i16 %55, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool29.not.i.i = icmp eq i16 %57, 0
  %spec.select97.i = select i1 %tobool29.not.i.i, i32 154, i32 152, !prof !21
  %58 = and i16 %55, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool40.not.i.i = icmp eq i16 %58, 0
  br i1 %tobool40.not.i.i, label %if.then23.i.i.if.end51.i.i_crit_edge, label %if.then47.i.i, !prof !21

if.then23.i.i.if.end51.i.i_crit_edge:             ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51.i.i

if.then47.i.i:                                    ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or49.i.i = or i32 %spec.select97.i, 1
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %if.then47.i.i, %if.then23.i.i.if.end51.i.i_crit_edge, %land.lhs.true20.i.i.if.end51.i.i_crit_edge, %if.end9.i.i.if.end51.i.i_crit_edge
  %status.sroa.776.1.i = phi i32 [ 128, %land.lhs.true20.i.i.if.end51.i.i_crit_edge ], [ %spec.select97.i, %if.then23.i.i.if.end51.i.i_crit_edge ], [ %or49.i.i, %if.then47.i.i ], [ 128, %if.end9.i.i.if.end51.i.i_crit_edge ]
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %flags.i, align 1
  %61 = and i16 %60, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool55.not.i.i = icmp eq i16 %61, 0
  br i1 %tobool55.not.i.i, label %if.then64.i.i, label %if.end51.i.i.if.end67.i.i_crit_edge, !prof !22

if.end51.i.i.if.end67.i.i_crit_edge:              ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67.i.i

if.then64.i.i:                                    ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %or66.i.i = or i32 %status.sroa.776.1.i, 32
  br label %if.end67.i.i

if.end67.i.i:                                     ; preds = %if.then64.i.i, %if.end51.i.i.if.end67.i.i_crit_edge
  %status.sroa.776.2.i = phi i32 [ %or66.i.i, %if.then64.i.i ], [ %status.sroa.776.1.i, %if.end51.i.i.if.end67.i.i_crit_edge ]
  %rate.i.i = getelementptr inbounds %struct.wl1251_rx_descriptor, ptr %3, i32 0, i32 4
  %62 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %rate.i.i, align 1
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values)
  switch i8 %63, label %if.end67.i.i.sw.epilog.i.i_crit_edge [
    i8 20, label %if.end67.i.i.sw.epilogthread-pre-split.i.i_crit_edge
    i8 55, label %sw.bb69.i.i
    i8 110, label %sw.bb71.i.i
    i8 11, label %sw.bb73.i.i
    i8 15, label %sw.bb75.i.i
    i8 14, label %sw.bb77.i.i
    i8 9, label %sw.bb79.i.i
    i8 13, label %sw.bb81.i.i
    i8 8, label %sw.bb83.i.i
    i8 12, label %sw.bb85.i.i
  ]

if.end67.i.i.sw.epilogthread-pre-split.i.i_crit_edge: ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilogthread-pre-split.i.i

if.end67.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

sw.bb69.i.i:                                      ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilogthread-pre-split.i.i

sw.bb71.i.i:                                      ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilogthread-pre-split.i.i

sw.bb73.i.i:                                      ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilogthread-pre-split.i.i

sw.bb75.i.i:                                      ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilogthread-pre-split.i.i

sw.bb77.i.i:                                      ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilogthread-pre-split.i.i

sw.bb79.i.i:                                      ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilogthread-pre-split.i.i

sw.bb81.i.i:                                      ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilogthread-pre-split.i.i

sw.bb83.i.i:                                      ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilogthread-pre-split.i.i

sw.bb85.i.i:                                      ; preds = %if.end67.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilogthread-pre-split.i.i

sw.epilogthread-pre-split.i.i:                    ; preds = %sw.bb85.i.i, %sw.bb83.i.i, %sw.bb81.i.i, %sw.bb79.i.i, %sw.bb77.i.i, %sw.bb75.i.i, %sw.bb73.i.i, %sw.bb71.i.i, %sw.bb69.i.i, %if.end67.i.i.sw.epilogthread-pre-split.i.i_crit_edge
  %.sink.i.i = phi i8 [ 2, %sw.bb69.i.i ], [ 3, %sw.bb71.i.i ], [ 4, %sw.bb73.i.i ], [ 5, %sw.bb75.i.i ], [ 7, %sw.bb77.i.i ], [ 8, %sw.bb79.i.i ], [ 9, %sw.bb81.i.i ], [ 10, %sw.bb83.i.i ], [ 11, %sw.bb85.i.i ], [ 1, %if.end67.i.i.sw.epilogthread-pre-split.i.i_crit_edge ]
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilogthread-pre-split.i.i, %if.end67.i.i.sw.epilog.i.i_crit_edge
  %status.sroa.1979.0.i = phi i8 [ 0, %if.end67.i.i.sw.epilog.i.i_crit_edge ], [ %.sink.i.i, %sw.epilogthread-pre-split.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %63)
  %cmp89.i.i = icmp eq i8 %63, 10
  br i1 %cmp89.i.i, label %if.then91.i.i, label %sw.epilog.i.i.if.end99.i.i_crit_edge

sw.epilog.i.i.if.end99.i.i_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99.i.i

if.then91.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %mod_pre.i.i = getelementptr inbounds %struct.wl1251_rx_descriptor, ptr %3, i32 0, i32 5
  %65 = ptrtoint ptr %mod_pre.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %mod_pre.i.i, align 1
  %67 = and i8 %66, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool94.not.i.i = icmp eq i8 %67, 0
  %..i.i = select i1 %tobool94.not.i.i, i8 0, i8 6
  br label %if.end99.i.i

if.end99.i.i:                                     ; preds = %if.then91.i.i, %sw.epilog.i.i.if.end99.i.i_crit_edge
  %status.sroa.1979.1.i = phi i8 [ %..i.i, %if.then91.i.i ], [ %status.sroa.1979.0.i, %sw.epilog.i.i.if.end99.i.i_crit_edge ]
  %mod_pre100.i.i = getelementptr inbounds %struct.wl1251_rx_descriptor, ptr %3, i32 0, i32 5
  %68 = ptrtoint ptr %mod_pre100.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %mod_pre100.i.i, align 1
  %70 = and i8 %69, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mactime.i.i) #5
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %status.sroa.0.0.i, ptr %cb.i.i, align 8
  %status.sroa.7.0.cb.i.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 8
  %72 = call ptr @memset(ptr %status.sroa.7.0.cb.i.sroa_idx.i, i32 0, i32 16)
  %status.sroa.776.0.cb.i.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 24
  %73 = ptrtoint ptr %status.sroa.776.0.cb.i.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %status.sroa.776.2.i, ptr %status.sroa.776.0.cb.i.sroa_idx.i, align 8
  %status.sroa.15.0.cb.i.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 28
  %74 = ptrtoint ptr %status.sroa.15.0.cb.i.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %bf.shl.i.i, ptr %status.sroa.15.0.cb.i.sroa_idx.i, align 4
  %status.sroa.17.0.cb.i.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 30
  %75 = ptrtoint ptr %status.sroa.17.0.cb.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %70, ptr %status.sroa.17.0.cb.i.sroa_idx.i, align 2
  %status.sroa.19.0.cb.i.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 31
  %76 = ptrtoint ptr %status.sroa.19.0.cb.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 0, ptr %status.sroa.19.0.cb.i.sroa_idx.i, align 1
  %status.sroa.1979.0.cb.i.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 33
  %77 = ptrtoint ptr %status.sroa.1979.0.cb.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %status.sroa.1979.1.i, ptr %status.sroa.1979.0.cb.i.sroa_idx.i, align 1
  %status.sroa.21.0.cb.i.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 34
  %status.sroa.2281.0.cb.i.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 38
  %78 = ptrtoint ptr %status.sroa.21.0.cb.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %78, i32 4)
  store i32 0, ptr %status.sroa.21.0.cb.i.sroa_idx.i, align 2
  %79 = ptrtoint ptr %status.sroa.2281.0.cb.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %45, ptr %status.sroa.2281.0.cb.i.sroa_idx.i, align 2
  %status.sroa.23.0.cb.i.sroa_idx.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 39
  %80 = call ptr @memset(ptr %status.sroa.23.0.cb.i.sroa_idx.i, i32 0, i32 9)
  %81 = ptrtoint ptr %wl to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wl, align 4
  call fastcc void @local_bh_disable() #5
  call void @ieee80211_rx_napi(ptr noundef %82, ptr noundef null, ptr noundef nonnull %call.i.i, ptr noundef null) #5
  call fastcc void @local_bh_enable() #5
  br label %wl1251_rx_body.exit

wl1251_rx_body.exit:                              ; preds = %if.end99.i.i, %do.end24.i
  %83 = ptrtoint ptr %rx_current_buffer.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rx_current_buffer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i12 = icmp eq i32 %84, 0
  %..i = select i1 %tobool.not.i12, i32 8, i32 131072
  %not.tobool.not.i = xor i1 %tobool.not.i12, true
  %.7.i = zext i1 %not.tobool.not.i to i32
  call void @wl1251_reg_write32(ptr noundef %wl, i32 noundef %.7.i, i32 noundef %..i) #5
  %85 = ptrtoint ptr %rx_current_buffer.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rx_current_buffer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool2.not.i = icmp eq i32 %86, 0
  %lnot.ext.i = zext i1 %tobool2.not.i to i32
  %87 = ptrtoint ptr %rx_current_buffer.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %lnot.ext.i, ptr %rx_current_buffer.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %wl1251_rx_body.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_mem_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_tsf_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee80211_channel_to_freq_khz(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #5
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee80211_rx_napi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wl1251_reg_write32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl1251/rx.c", i32 147, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @wl1251_rx_body._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @wl1251_rx_body._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wl1251/rx.c", i32 161, i32 3}
!8 = !{ptr @wl1251_rx_body._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @wl1251_rx_body._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"auto-init"}
!20 = !{i8 0, i8 2}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{!"branch_weights", i32 1, i32 2000}
