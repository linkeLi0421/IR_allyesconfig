; ModuleID = '/llk/IR_all_yes/drivers/scsi/esas2r/esas2r_io.c_pt.bc'
source_filename = "../drivers/scsi/esas2r/esas2r_io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.esas2r_adapter = type { [256 x %struct.esas2r_target], ptr, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %union.anon.101, i32, i64, ptr, ptr, %struct.esas2r_request, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i16, i16, %struct.esas2r_mem_desc, %struct.esas2r_mem_desc, %struct.esas2r_disc_context, ptr, i32, i32, i32, [16 x i8], [16 x i8], [16 x i8], %struct.esas2r_flash_context, i32, i32, %struct.tasklet_struct, ptr, ptr, i32, [32 x i8], %struct.timer_list, %struct.esas2r_firmware, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, ptr, i64, %struct.wait_queue_head, i32, i64, ptr, i32, %struct.wait_queue_head, i32, i32, ptr, %struct.list_head, %struct.spinlock, i8, [20 x i8], i32, %struct.esas2r_sg_context, ptr, %struct.list_head, ptr, i32, %struct.mutex, %struct.mutex, %struct.semaphore, ptr, [524288 x i8], i8 }
%struct.esas2r_target = type { i8, i8, i8, i8, i32, i32, i32, i16, i16, i8, i64, [60 x i8], %struct.atto_vda_ae_lu }
%struct.atto_vda_ae_lu = type { %struct.atto_vda_ae_hdr, i32, i8, i8, i16, %union.anon }
%struct.atto_vda_ae_hdr = type { i8, i8, i8, i8 }
%union.anon = type { %struct.atto_vda_ae_lu_tgt_lun_raid }
%struct.atto_vda_ae_lu_tgt_lun_raid = type { i16, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%union.anon.101 = type { i32 }
%struct.esas2r_request = type { %struct.list_head, %struct.list_head, ptr, ptr, %union.anon.15, ptr, %struct.list_head, ptr, i32, i16, i8, i8, %union.atto_vda_func_rsp, ptr, ptr, ptr, i8, i8, i16, i64, ptr, ptr, i32, i32, %union.anon.23 }
%union.anon.15 = type { ptr }
%union.atto_vda_func_rsp = type { %struct.atto_vda_scsi_rsp }
%struct.atto_vda_scsi_rsp = type { i8, i8, [2 x i8], i32 }
%union.anon.23 = type { ptr }
%struct.esas2r_mem_desc = type { %struct.list_head, ptr, i64, ptr, ptr, i32, i32 }
%struct.esas2r_disc_context = type { i8, i8, i16, i32, i32, i16, i8, i8, [16 x i8], ptr, i16, i16, i8, i8, i64 }
%struct.esas2r_flash_context = type { ptr, ptr, ptr, ptr, i32, i8, i8, i16, i32, i32, i32, i8, %struct.esas2r_sg_context }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.105, i32 }
%union.anon.105 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.esas2r_firmware = type { i32, %struct.esas2r_flash_img, ptr, i64, i32, ptr, i64 }
%struct.esas2r_flash_img = type { i8, i8, i8, i8, i32, i16, i16, i16, i16, [16 x i8], [6 x %struct.esas2r_component_header], [2048 x i8] }
%struct.esas2r_component_header = type { i8, i8, [2 x i8], i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.esas2r_sg_context = type { ptr, ptr, i32, ptr, ptr, %union.anon.102, ptr, ptr, i32, i32 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.atto_vda_scsi_req = type { i32, i8, i8, i8, i8, i32, i32, [16 x i8], %union.anon.3, %union.anon.5 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type <{ i64, i16, i8, i8 }>
%union.anon.5 = type { [245 x i32] }
%struct.atto_vda_flash_req = type { i32, i8, i8, i8, i8, i32, i32, i8, [3 x i8], %union.anon.6 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { [16 x i8], [1 x %struct.atto_vda_sge] }
%struct.atto_vda_sge = type <{ i32, i64 }>
%struct.esas2r_inbound_list_source_entry = type { i64, i32, i32 }
%struct.atto_physical_region_description = type <{ i64, i32 }>

@sgl_page_size = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"heartbeat failed\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"performing a bus reset\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 8, i64 10, i64 40, i64 42, i64 136, i64 138, i64 168, i64 170]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 65536]
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 742, i32 10 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private constant [35 x i8] c"../drivers/scsi/esas2r/esas2r_io.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 845, i32 30 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_start_request(ptr noundef %a, ptr noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags1, align 4
  %2 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.if.then_crit_edge, !prof !13

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.rhs:                                          ; preds = %entry
  %3 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags1, align 4
  %5 = and i32 %4, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %if.else10, label %lor.rhs.if.then_crit_edge, !prof !13

lor.rhs.if.then_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.rhs.if.then_crit_edge, %entry.if.then_crit_edge
  %vrq = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %6 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vrq, align 8
  %function = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %function to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %function, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  br i1 %cmp, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %req_stat to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 112, ptr %req_stat, align 1
  br label %if.end63

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %req_stat to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -5, ptr %req_stat, align 1
  br label %if.end63

if.else10:                                        ; preds = %lor.rhs
  %vrq11 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %12 = ptrtoint ptr %vrq11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vrq11, align 8
  %function12 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %function12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %function12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp14 = icmp eq i8 %15, 0
  br i1 %cmp14, label %if.then22, label %if.else10.if.end63_crit_edge, !prof !13

if.else10.if.end63_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

if.then22:                                        ; preds = %if.else10
  %target_id = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 9
  %16 = ptrtoint ptr %target_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %target_id, align 8
  %conv23 = zext i16 %17 to i32
  %add.ptr = getelementptr %struct.esas2r_target, ptr %a, i32 %conv23
  %targetdb_end = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 1
  %18 = ptrtoint ptr %targetdb_end to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %targetdb_end, align 8
  %cmp24.not = icmp ult ptr %add.ptr, %19
  br i1 %cmp24.not, label %lor.rhs26, label %if.then22.if.then39_crit_edge, !prof !13

if.then22.if.then39_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then39

lor.rhs26:                                        ; preds = %if.then22
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr, align 8
  %22 = and i8 %21, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool29.not = icmp eq i8 %22, 0
  br i1 %tobool29.not, label %lor.rhs26.if.then39_crit_edge, label %if.else41, !prof !14

lor.rhs26.if.then39_crit_edge:                    ; preds = %lor.rhs26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then39

if.then39:                                        ; preds = %lor.rhs26.if.then39_crit_edge, %if.then22.if.then39_crit_edge
  %req_stat40 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %23 = ptrtoint ptr %req_stat40 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 3, ptr %req_stat40, align 1
  br label %if.end63

if.else41:                                        ; preds = %lor.rhs26
  %virt_targ_id = getelementptr %struct.esas2r_target, ptr %a, i32 %conv23, i32 7
  %24 = ptrtoint ptr %virt_targ_id to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %virt_targ_id, align 8
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  %target_id43 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %13, i32 0, i32 8, i32 0, i32 1
  %27 = ptrtoint ptr %target_id43 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %26, ptr %target_id43, align 1
  %target_state = getelementptr %struct.esas2r_target, ptr %a, i32 %conv23, i32 2
  %28 = ptrtoint ptr %target_state to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %target_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %29)
  %cmp45.not = icmp eq i8 %29, 5
  br i1 %cmp45.not, label %if.else41.if.end63_crit_edge, label %land.rhs

if.else41.if.end63_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

land.rhs:                                         ; preds = %if.else41
  %30 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags1, align 4
  %32 = and i32 %31, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool49.not = icmp eq i32 %32, 0
  br i1 %tobool49.not, label %if.then58, label %land.rhs.if.end63_crit_edge, !prof !14

land.rhs.if.end63_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63

if.then58:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  %req_stat59 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %33 = ptrtoint ptr %req_stat59 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 3, ptr %req_stat59, align 1
  br label %if.end63

if.end63:                                         ; preds = %if.then58, %land.rhs.if.end63_crit_edge, %if.else41.if.end63_crit_edge, %if.then39, %if.else10.if.end63_crit_edge, %if.else, %if.then8
  %req_stat64 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %34 = ptrtoint ptr %req_stat64 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %req_stat64, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %35)
  %cmp66.not = icmp eq i8 %35, -2
  br i1 %cmp66.not, label %if.end75, label %if.then74, !prof !13

if.then74:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @esas2r_complete_request(ptr noundef %a, ptr noundef %rq) #4
  br label %cleanup

if.end75:                                         ; preds = %if.end63
  %queue_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 14
  %call87 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #4
  %defer_list = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 19
  %36 = ptrtoint ptr %defer_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %defer_list, align 4
  %cmp.i.not = icmp eq ptr %37, %defer_list
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end75.if.else113_crit_edge, !prof !13

if.end75.if.else113_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else113

land.lhs.true:                                    ; preds = %if.end75
  %38 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %flags1, align 4
  %40 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool94.not = icmp eq i32 %40, 0
  br i1 %tobool94.not, label %land.lhs.true95, label %land.lhs.true.if.else113_crit_edge, !prof !13

land.lhs.true.if.else113_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else113

land.lhs.true95:                                  ; preds = %land.lhs.true
  %41 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags1, align 4
  %43 = and i32 %42, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool98.not = icmp eq i32 %43, 0
  br i1 %tobool98.not, label %land.rhs99, label %land.lhs.true95.if.else113_crit_edge, !prof !13

land.lhs.true95.if.else113_crit_edge:             ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else113

land.rhs99:                                       ; preds = %land.lhs.true95
  %44 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %flags1, align 4
  %46 = and i32 %45, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool102.not = icmp eq i32 %46, 0
  br i1 %tobool102.not, label %if.then112, label %land.rhs99.if.else113_crit_edge, !prof !13

land.rhs99.if.else113_crit_edge:                  ; preds = %land.rhs99
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else113

if.then112:                                       ; preds = %land.rhs99
  %vrq.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %47 = ptrtoint ptr %vrq.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vrq.i, align 8
  %function.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %function.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %function.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp.i159 = icmp eq i8 %50, 1
  br i1 %cmp.i159, label %land.rhs.i, label %if.then112.if.end.i_crit_edge

if.then112.if.end.i_crit_edge:                    ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then112
  %sub_func.i = getelementptr inbounds %struct.atto_vda_flash_req, ptr %48, i32 0, i32 2
  %51 = ptrtoint ptr %sub_func.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sub_func.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %52)
  %cmp4.i = icmp eq i8 %52, 3
  br i1 %cmp4.i, label %if.then.i, label %land.rhs.i.if.end.i_crit_edge, !prof !14

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags1) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.rhs.i.if.end.i_crit_edge, %if.then112.if.end.i_crit_edge
  %req_list.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1
  %active_list.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 18
  %prev.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 18, i32 1
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req_list.i, ptr noundef %54, ptr noundef %active_list.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.esas2r_local_start_request.exit_crit_edge

if.end.i.esas2r_local_start_request.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %esas2r_local_start_request.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %55 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %req_list.i, ptr %prev.i.i, align 4
  %56 = ptrtoint ptr %req_list.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %active_list.i, ptr %req_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %req_list.i, ptr %54, align 4
  br label %esas2r_local_start_request.exit

esas2r_local_start_request.exit:                  ; preds = %if.end.i.i.i, %if.end.i.esas2r_local_start_request.exit_crit_edge
  tail call void @esas2r_start_vda_request(ptr noundef %a, ptr noundef %rq) #4
  br label %if.end115

if.else113:                                       ; preds = %land.rhs99.if.else113_crit_edge, %land.lhs.true95.if.else113_crit_edge, %land.lhs.true.if.else113_crit_edge, %if.end75.if.else113_crit_edge
  %req_list = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 19, i32 1
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req_list, ptr noundef %60, ptr noundef %defer_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.else113.if.end115_crit_edge

if.else113.if.end115_crit_edge:                   ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end115

if.end.i.i:                                       ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %req_list, ptr %prev.i, align 4
  %62 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %defer_list, ptr %req_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %req_list, ptr %60, align 4
  br label %if.end115

if.end115:                                        ; preds = %if.end.i.i, %if.else113.if.end115_crit_edge, %esas2r_local_start_request.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call87) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %if.then74
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_complete_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_local_start_request(ptr noundef %a, ptr noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vrq = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrq, align 8
  %function = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %function to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %function, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp = icmp eq i8 %3, 1
  br i1 %cmp, label %land.rhs, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.rhs:                                         ; preds = %entry
  %sub_func = getelementptr inbounds %struct.atto_vda_flash_req, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %sub_func to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sub_func, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp4 = icmp eq i8 %5, 3
  br i1 %cmp4, label %if.then, label %land.rhs.if.end_crit_edge, !prof !14

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_set_bit(i32 noundef 10, ptr noundef %flags) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %req_list = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1
  %active_list = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 18
  %prev.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 18, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req_list, ptr noundef %7, ptr noundef %active_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %req_list, ptr %prev.i, align 4
  %9 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %active_list, ptr %req_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %req_list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @esas2r_start_vda_request(ptr noundef %a, ptr noundef %rq)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_start_vda_request(ptr noundef %a, ptr nocapture noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %0 = ptrtoint ptr %req_stat to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %req_stat, align 1
  %last_write = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 37
  %1 = ptrtoint ptr %last_write to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_write, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr %last_write, align 4
  %list_size = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 36
  %3 = ptrtoint ptr %list_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %list_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %4)
  %cmp.not = icmp ult i32 %inc, %4
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %last_write to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %last_write, align 4
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_clear_bit(i32 noundef 23, ptr noundef %flags) #4
  br label %if.end6

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_set_bit(i32 noundef 23, ptr noundef %flags) #4
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3, %entry.if.end6_crit_edge
  %virt_addr = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 41, i32 1
  %9 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virt_addr, align 8
  %11 = ptrtoint ptr %last_write to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %last_write, align 4
  %vda_req_sz = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 18
  %13 = ptrtoint ptr %vda_req_sz to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vda_req_sz, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp8 = icmp eq i16 %14, 0
  br i1 %cmp8, label %if.then10, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %max_vdareq_size = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 39
  %15 = ptrtoint ptr %max_vdareq_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %max_vdareq_size, align 4
  %17 = lshr i16 %16, 2
  %18 = ptrtoint ptr %vda_req_sz to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %vda_req_sz, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end6.if.end14_crit_edge
  %add.ptr = getelementptr %struct.esas2r_inbound_list_source_entry, ptr %10, i32 %12
  %vrq_md = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 3
  %19 = ptrtoint ptr %vrq_md to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vrq_md, align 4
  %phys_addr = getelementptr inbounds %struct.esas2r_mem_desc, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %phys_addr, align 8
  %23 = tail call i64 @llvm.bswap.i64(i64 %22)
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %add.ptr, align 8
  %25 = ptrtoint ptr %vda_req_sz to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vda_req_sz, align 2
  %conv16 = zext i16 %26 to i32
  %27 = tail call i32 @llvm.bswap.i32(i32 %conv16)
  %length = getelementptr %struct.esas2r_inbound_list_source_entry, ptr %10, i32 %12, i32 1
  %28 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %length, align 8
  %29 = ptrtoint ptr %last_write to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %last_write, align 4
  %flags18 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %31 = ptrtoint ptr %flags18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags18, align 4
  %33 = lshr i32 %32, 9
  %34 = and i32 %33, 16384
  %35 = or i32 %34, %30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !15
  tail call void @arm_heavy_mb() #4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %regs = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %add.ptr23 = getelementptr i8, ptr %38, i32 16408
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %36) #4, !srcloc !16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_build_sg_list_sge(ptr noundef %a, ptr noundef %sgc) #0 align 64 {
entry:
  %addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %first_req = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 1
  %0 = ptrtoint ptr %first_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %first_req, align 4
  %vrq1 = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %vrq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vrq1, align 8
  %length = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 2
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not230 = icmp eq i32 %5, 0
  br i1 %tobool.not230, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %get_phys_addr = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 4
  %sge = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5
  %limit = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 2
  %sg_list_lock.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 13
  %free_sg_list_head.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16
  %last = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %chain = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 3
  %sg_table = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 7
  %sub.ptr.rhs.cast73 = ptrtoint ptr %3 to i32
  %chain_offset = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %3, i32 0, i32 3
  %vda_req_sz = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 18
  %sg_table_head = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 6
  %cur_offset = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 3
  br label %while.body

while.cond.critedge:                              ; preds = %if.end87
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #4
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %while.cond.critedge.while.end_crit_edge, label %while.cond.critedge.while.body_crit_edge

while.cond.critedge.while.body_crit_edge:         ; preds = %while.cond.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.cond.critedge.while.end_crit_edge:          ; preds = %while.cond.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.cond.critedge.while.body_crit_edge, %while.body.lr.ph
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #4
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 -1, ptr %addr, align 8, !annotation !17
  %9 = ptrtoint ptr %get_phys_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_phys_addr, align 4
  %call = call i32 %10(ptr noundef %sgc, ptr noundef nonnull %addr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %cleanup156.critedge, label %if.end, !prof !14

if.end:                                           ; preds = %while.body
  %11 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %12)
  %cmp5 = icmp ugt i32 %call, %12
  br i1 %cmp5, label %if.then12, label %if.end.another_entry.preheader_crit_edge, !prof !14

if.end.another_entry.preheader_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %another_entry.preheader

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %another_entry.preheader

another_entry.preheader:                          ; preds = %if.then12, %if.end.another_entry.preheader_crit_edge
  %len.1.ph = phi i32 [ %call, %if.end.another_entry.preheader_crit_edge ], [ %12, %if.then12 ]
  br label %another_entry

another_entry:                                    ; preds = %if.then107, %another_entry.preheader
  %len.1 = phi i32 [ %sub, %if.then107 ], [ %len.1.ph, %another_entry.preheader ]
  %sub = add i32 %len.1, -4190208
  %13 = call i32 @llvm.umin.i32(i32 %len.1, i32 4190208)
  %14 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sge, align 4
  %16 = ptrtoint ptr %limit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %limit, align 4
  %cmp19 = icmp ugt ptr %15, %17
  br i1 %cmp19, label %if.then26, label %another_entry.if.end87_crit_edge, !prof !14

another_entry.if.end87_crit_edge:                 ; preds = %another_entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end87

if.then26:                                        ; preds = %another_entry
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %sg_list_lock.i) #4
  %18 = ptrtoint ptr %free_sg_list_head.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %free_sg_list_head.i, align 4
  %cmp.i.not.i = icmp eq ptr %19, %free_sg_list_head.i
  br i1 %cmp.i.not.i, label %esas2r_alloc_sgl.exit.thread, label %if.then.i, !prof !14

esas2r_alloc_sgl.exit.thread:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sg_list_lock.i, i32 noundef %call2.i) #4
  br label %cleanup111

if.then.i:                                        ; preds = %if.then26
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.esas2r_alloc_sgl.exit_crit_edge

if.then.i.esas2r_alloc_sgl.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %esas2r_alloc_sgl.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %esas2r_alloc_sgl.exit

esas2r_alloc_sgl.exit:                            ; preds = %if.end.i.i.i, %if.then.i.esas2r_alloc_sgl.exit_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %19, ptr %19, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %19, ptr %prev.i3.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sg_list_lock.i, i32 noundef %call2.i) #4
  %cmp28 = icmp eq ptr %19, null
  br i1 %cmp28, label %esas2r_alloc_sgl.exit.cleanup111_crit_edge, label %if.end36, !prof !14

esas2r_alloc_sgl.exit.cleanup111_crit_edge:       ; preds = %esas2r_alloc_sgl.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup111

if.end36:                                         ; preds = %esas2r_alloc_sgl.exit
  %28 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sge, align 4
  %30 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %last, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %31 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %virt_addr = getelementptr inbounds %struct.esas2r_mem_desc, ptr %19, i32 0, i32 1
  %32 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %virt_addr, align 8
  %conv42 = and i32 %sub.ptr.sub, 255
  %34 = call ptr @memcpy(ptr %33, ptr %31, i32 %conv42)
  %35 = load ptr, ptr %virt_addr, align 8
  %add.ptr = getelementptr i8, ptr %35, i32 %conv42
  store ptr %add.ptr, ptr %sge, align 4
  %36 = load ptr, ptr %virt_addr, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sgl_page_size to i32))
  %37 = load i32, ptr @sgl_page_size, align 4
  %add.ptr48 = getelementptr i8, ptr %36, i32 -12
  %add.ptr49 = getelementptr i8, ptr %add.ptr48, i32 %37
  %38 = ptrtoint ptr %limit to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr49, ptr %limit, align 4
  %39 = load ptr, ptr %last, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 132, ptr %39, align 1
  %phys_addr = getelementptr inbounds %struct.esas2r_mem_desc, ptr %19, i32 0, i32 2
  %41 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %phys_addr, align 8
  %43 = call i64 @llvm.bswap.i64(i64 %42)
  %44 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %last, align 4
  %address = getelementptr inbounds %struct.atto_vda_sge, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %address to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %43, ptr %address, align 1
  %47 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chain, align 4
  %tobool58.not = icmp eq ptr %48, null
  %49 = load ptr, ptr %last, align 4
  br i1 %tobool58.not, label %if.else, label %if.then59

if.then59:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr62 = getelementptr %struct.atto_vda_sge, ptr %49, i32 1
  %50 = ptrtoint ptr %sg_table to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sg_table, align 8
  %virt_addr63 = getelementptr inbounds %struct.esas2r_mem_desc, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %virt_addr63 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %virt_addr63, align 8
  %sub.ptr.lhs.cast64 = ptrtoint ptr %add.ptr62 to i32
  %sub.ptr.rhs.cast65 = ptrtoint ptr %53 to i32
  %sub.ptr.sub66 = add i32 %sub.ptr.lhs.cast64, 786432
  %add = sub i32 %sub.ptr.sub66, %sub.ptr.rhs.cast65
  %54 = call i32 @llvm.bswap.i32(i32 %add)
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %48, align 1
  %or = or i32 %54, %56
  store i32 %or, ptr %48, align 1
  br label %if.end81

if.else:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %sub.ptr.lhs.cast72 = ptrtoint ptr %49 to i32
  %sub.ptr.sub74 = sub i32 %sub.ptr.lhs.cast72, %sub.ptr.rhs.cast73
  %conv75 = trunc i32 %sub.ptr.sub74 to i8
  %57 = ptrtoint ptr %chain_offset to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv75, ptr %chain_offset, align 1
  %conv77 = and i32 %sub.ptr.sub74, 255
  %add79 = add nuw nsw i32 %conv77, 15
  %div219 = lshr i32 %add79, 2
  %conv80 = trunc i32 %div219 to i16
  %58 = ptrtoint ptr %vda_req_sz to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv80, ptr %vda_req_sz, align 2
  br label %if.end81

if.end81:                                         ; preds = %if.else, %if.then59
  %59 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %last, align 4
  %61 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %chain, align 4
  %62 = ptrtoint ptr %sg_table_head to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sg_table_head, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %19, ptr noundef %sg_table_head, ptr noundef %63) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end81.if.end87_crit_edge

if.end81.if.end87_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end87

if.end.i.i:                                       ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %19, ptr %prev1.i.i, align 4
  %65 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %63, ptr %19, align 4
  %66 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %sg_table_head, ptr %prev.i3.i.i, align 4
  %67 = ptrtoint ptr %sg_table_head to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %19, ptr %sg_table_head, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.end.i.i, %if.end81.if.end87_crit_edge, %another_entry.if.end87_crit_edge
  %68 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sge, align 4
  %70 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %last, align 4
  %or92 = or i32 %13, 67108864
  %71 = call i32 @llvm.bswap.i32(i32 %or92)
  %72 = ptrtoint ptr %69 to i32
  call void @__asan_storeN_noabort(i32 %72, i32 4)
  store i32 %71, ptr %69, align 1
  %73 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %addr, align 8
  %conv96 = trunc i64 %74 to i32
  %75 = call i32 @llvm.bswap.i32(i32 %conv96)
  %conv97 = zext i32 %75 to i64
  %76 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sge, align 4
  %address100 = getelementptr inbounds %struct.atto_vda_sge, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %address100 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 %conv97, ptr %address100, align 1
  %79 = load ptr, ptr %sge, align 4
  %incdec.ptr = getelementptr %struct.atto_vda_sge, ptr %79, i32 1
  store ptr %incdec.ptr, ptr %sge, align 4
  %80 = ptrtoint ptr %cur_offset to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cur_offset, align 4
  %add.ptr103 = getelementptr i8, ptr %81, i32 %13
  store ptr %add.ptr103, ptr %cur_offset, align 4
  %82 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %length, align 4
  %sub105 = sub i32 %83, %13
  store i32 %sub105, ptr %length, align 4
  %tobool106.not = icmp ult i32 %len.1, 4190209
  br i1 %tobool106.not, label %while.cond.critedge, label %if.then107

if.then107:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #6
  %conv108 = zext i32 %13 to i64
  %84 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %addr, align 8
  %add109 = add i64 %85, %conv108
  store i64 %add109, ptr %addr, align 8
  br label %another_entry

cleanup111:                                       ; preds = %esas2r_alloc_sgl.exit.cleanup111_crit_edge, %esas2r_alloc_sgl.exit.thread
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #4
  br label %cleanup156

while.end:                                        ; preds = %while.cond.critedge.while.end_crit_edge, %entry.while.end_crit_edge
  %last117 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %86 = ptrtoint ptr %last117 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %last117, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %89 = load i32, ptr %87, align 1
  %or119 = or i32 %89, 1
  store i32 %or119, ptr %87, align 1
  %chain121 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 3
  %90 = ptrtoint ptr %chain121 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %chain121, align 4
  %tobool122.not = icmp eq ptr %91, null
  br i1 %tobool122.not, label %if.else135, label %if.then123

if.then123:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %sge116 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5
  %92 = ptrtoint ptr %sge116 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sge116, align 4
  %sg_table126 = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 7
  %94 = ptrtoint ptr %sg_table126 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %sg_table126, align 8
  %virt_addr127 = getelementptr inbounds %struct.esas2r_mem_desc, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %virt_addr127 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %virt_addr127, align 8
  %sub.ptr.lhs.cast128 = ptrtoint ptr %93 to i32
  %sub.ptr.rhs.cast129 = ptrtoint ptr %97 to i32
  %sub.ptr.sub130 = sub i32 %sub.ptr.lhs.cast128, %sub.ptr.rhs.cast129
  %98 = call i32 @llvm.bswap.i32(i32 %sub.ptr.sub130)
  %99 = ptrtoint ptr %91 to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %91, align 1
  %or134 = or i32 %98, %100
  store i32 %or134, ptr %91, align 1
  br label %cleanup156

if.else135:                                       ; preds = %while.end
  %101 = ptrtoint ptr %last117 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %last117, align 4
  %sub.ptr.lhs.cast138 = ptrtoint ptr %102 to i32
  %sub.ptr.rhs.cast139 = ptrtoint ptr %3 to i32
  %sub.ptr.sub140 = sub i32 %sub.ptr.lhs.cast138, %sub.ptr.rhs.cast139
  %conv142 = and i32 %sub.ptr.sub140, 65535
  %add144 = add nuw nsw i32 %conv142, 15
  %div145218 = lshr i32 %add144, 2
  %vda_req_sz148 = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 18
  %103 = ptrtoint ptr %vda_req_sz148 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %vda_req_sz148, align 2
  %conv149 = zext i16 %104 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div145218, i32 %conv149)
  %cmp150 = icmp ugt i32 %div145218, %conv149
  br i1 %cmp150, label %if.then152, label %if.else135.cleanup156_crit_edge

if.else135.cleanup156_crit_edge:                  ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup156

if.then152:                                       ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #6
  %conv146 = trunc i32 %div145218 to i16
  %105 = ptrtoint ptr %vda_req_sz148 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv146, ptr %vda_req_sz148, align 2
  br label %cleanup156

cleanup156.critedge:                              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #4
  br label %cleanup156

cleanup156:                                       ; preds = %cleanup156.critedge, %if.then152, %if.else135.cleanup156_crit_edge, %if.then123, %cleanup111
  %tobool.not228 = phi i1 [ true, %if.then123 ], [ true, %if.then152 ], [ true, %if.else135.cleanup156_crit_edge ], [ false, %cleanup111 ], [ false, %cleanup156.critedge ]
  ret i1 %tobool.not228
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_build_sg_list_prd(ptr noundef %a, ptr noundef %sgc) #0 align 64 {
entry:
  %addr.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %first_req = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 1
  %0 = ptrtoint ptr %first_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %first_req, align 4
  %length = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 2
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  %target_id = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %target_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %target_id, align 8
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr %struct.esas2r_target, ptr %a, i32 %conv
  %vrq = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vrq, align 8
  %cdb1 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %7, i32 0, i32 7
  %function = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %function to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %function, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end100_crit_edge

entry.if.end100_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100

land.lhs.true:                                    ; preds = %entry
  %target_state = getelementptr %struct.esas2r_target, ptr %a, i32 %conv, i32 2
  %10 = ptrtoint ptr %target_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %target_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %11)
  %cmp6 = icmp eq i8 %11, 5
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.if.end100_crit_edge

land.lhs.true.if.end100_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100

land.lhs.true8:                                   ; preds = %land.lhs.true
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr, align 8
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true8.if.end100_crit_edge

land.lhs.true8.if.end100_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100

if.then:                                          ; preds = %land.lhs.true8
  %15 = ptrtoint ptr %cdb1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cdb1, align 1
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i8 %16, label %if.then.if.end100_crit_edge [
    i8 -120, label %if.then.sw.bb_crit_edge
    i8 -118, label %if.then.sw.bb_crit_edge262
    i8 -88, label %if.then.sw.bb32_crit_edge
    i8 -86, label %if.then.sw.bb32_crit_edge263
    i8 40, label %if.then.sw.bb32_crit_edge264
    i8 42, label %if.then.sw.bb32_crit_edge265
    i8 8, label %if.then.sw.bb53_crit_edge
    i8 10, label %if.then.sw.bb53_crit_edge266
  ]

if.then.sw.bb53_crit_edge266:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb53

if.then.sw.bb53_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb53

if.then.sw.bb32_crit_edge265:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb32

if.then.sw.bb32_crit_edge264:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb32

if.then.sw.bb32_crit_edge263:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb32

if.then.sw.bb32_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb32

if.then.sw.bb_crit_edge262:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.then.if.end100_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge262
  %arrayidx14 = getelementptr %struct.atto_vda_scsi_req, ptr %7, i32 0, i32 7, i32 9
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %19 to i32
  %arrayidx16 = getelementptr %struct.atto_vda_scsi_req, ptr %7, i32 0, i32 7, i32 8
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx16, align 1
  %conv18 = zext i8 %21 to i32
  %shl = shl nuw nsw i32 %conv18, 8
  %arrayidx21 = getelementptr %struct.atto_vda_scsi_req, ptr %7, i32 0, i32 7, i32 7
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %23 to i32
  %arrayidx23 = getelementptr %struct.atto_vda_scsi_req, ptr %7, i32 0, i32 7, i32 6
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx23, align 1
  %conv25 = zext i8 %25 to i32
  %26 = shl nuw i32 %conv25, 24
  %27 = shl nuw nsw i32 %conv22, 16
  %shl30 = or i32 %shl, %conv15
  %or = or i32 %shl30, %27
  %or31 = or i32 %or, %26
  br label %if.then74

sw.bb32:                                          ; preds = %if.then.sw.bb32_crit_edge, %if.then.sw.bb32_crit_edge263, %if.then.sw.bb32_crit_edge264, %if.then.sw.bb32_crit_edge265
  %arrayidx33 = getelementptr %struct.atto_vda_scsi_req, ptr %7, i32 0, i32 7, i32 5
  %28 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx33, align 1
  %conv34 = zext i8 %29 to i32
  %arrayidx35 = getelementptr %struct.atto_vda_scsi_req, ptr %7, i32 0, i32 7, i32 4
  %30 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx35, align 1
  %conv37 = zext i8 %31 to i32
  %shl38 = shl nuw nsw i32 %conv37, 8
  %arrayidx42 = getelementptr %struct.atto_vda_scsi_req, ptr %7, i32 0, i32 7, i32 3
  %32 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx42, align 1
  %conv43 = zext i8 %33 to i32
  %arrayidx44 = getelementptr %struct.atto_vda_scsi_req, ptr %7, i32 0, i32 7, i32 2
  %34 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx44, align 1
  %conv46 = zext i8 %35 to i32
  %36 = shl nuw i32 %conv46, 24
  %37 = shl nuw nsw i32 %conv43, 16
  %shl51 = or i32 %shl38, %conv34
  %or39 = or i32 %shl51, %37
  %or52 = or i32 %or39, %36
  br label %if.then74

sw.bb53:                                          ; preds = %if.then.sw.bb53_crit_edge, %if.then.sw.bb53_crit_edge266
  %arrayidx54 = getelementptr %struct.atto_vda_scsi_req, ptr %7, i32 0, i32 7, i32 3
  %38 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx54, align 1
  %conv55 = zext i8 %39 to i32
  %arrayidx56 = getelementptr %struct.atto_vda_scsi_req, ptr %7, i32 0, i32 7, i32 2
  %40 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx56, align 1
  %conv58 = zext i8 %41 to i32
  %shl59 = shl nuw nsw i32 %conv58, 8
  %or60 = or i32 %shl59, %conv55
  %arrayidx63 = getelementptr %struct.atto_vda_scsi_req, ptr %7, i32 0, i32 7, i32 1
  %42 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx63, align 1
  %44 = and i8 %43, 31
  %conv70 = zext i8 %44 to i32
  %shl71 = shl nuw nsw i32 %conv70, 16
  %or72 = or i32 %shl71, %or60
  br label %if.then74

if.then74:                                        ; preds = %sw.bb53, %sw.bb32, %sw.bb
  %lbalo.0.ph = phi i32 [ %or31, %sw.bb ], [ %or52, %sw.bb32 ], [ %or72, %sw.bb53 ]
  %iblk_cnt_prd = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %7, i32 0, i32 8, i32 0, i32 2
  %45 = ptrtoint ptr %iblk_cnt_prd to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %iblk_cnt_prd, align 1
  %inter_block = getelementptr %struct.esas2r_target, ptr %a, i32 %conv, i32 5
  %46 = ptrtoint ptr %inter_block to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %inter_block, align 8
  %sub = add i32 %47, -1
  %and77 = and i32 %sub, %lbalo.0.ph
  %sub78 = sub i32 %47, %and77
  %block_size = getelementptr %struct.esas2r_target, ptr %a, i32 %conv, i32 4
  %48 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %block_size, align 4
  %mul = mul i32 %sub78, %49
  %50 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %mul, ptr %length, align 4
  %51 = load i32, ptr %inter_block, align 8
  %sub81 = add i32 %51, -1
  %and82 = and i32 %sub81, %lbalo.0.ph
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %cmp83 = icmp eq i32 %and82, 0
  br i1 %cmp83, label %if.then85, label %if.then74.if.end_crit_edge

if.then74.if.end_crit_edge:                       ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then85:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #6
  %flags86 = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 16
  %52 = ptrtoint ptr %flags86 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %flags86, align 8
  %54 = or i8 %53, 4
  store i8 %54, ptr %flags86, align 8
  br label %if.end

if.end:                                           ; preds = %if.then85, %if.then74.if.end_crit_edge
  %55 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %3)
  %cmp91 = icmp ugt i32 %56, %3
  br i1 %cmp91, label %if.then93, label %if.end.if.end100_crit_edge

if.end.if.end100_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100

if.then93:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %3, ptr %length, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then93, %if.end.if.end100_crit_edge, %if.then.if.end100_crit_edge, %land.lhs.true8.if.end100_crit_edge, %land.lhs.true.if.end100_crit_edge, %entry.if.end100_crit_edge
  %tobool114.not = phi i1 [ true, %entry.if.end100_crit_edge ], [ true, %land.lhs.true.if.end100_crit_edge ], [ true, %land.lhs.true8.if.end100_crit_edge ], [ true, %if.then.if.end100_crit_edge ], [ false, %if.then93 ], [ false, %if.end.if.end100_crit_edge ]
  %sge = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5
  %58 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sge, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sgl_page_size to i32))
  %60 = load i32, ptr @sgl_page_size, align 4
  %div = udiv i32 %60, 12
  %sgl_max_cnt = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 2
  %61 = ptrtoint ptr %sgl_max_cnt to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div, ptr %sgl_max_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool102.not223 = icmp eq i32 %3, 0
  br i1 %tobool102.not223, label %if.end100.while.end_crit_edge, label %while.body.lr.ph

if.end100.while.end_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end100
  %sge_cnt = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 3
  %chain = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %get_phys_addr.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 4
  %sg_list_lock.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 13
  %free_sg_list_head.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16
  %cur_offset76.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 3
  %inter_byte = getelementptr %struct.esas2r_target, ptr %a, i32 %conv, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end126.while.body_crit_edge, %while.body.lr.ph
  %curr_iblk_chn.0225 = phi ptr [ %59, %while.body.lr.ph ], [ %incdec.ptr, %if.end126.while.body_crit_edge ]
  %len.0224 = phi i32 [ %3, %while.body.lr.ph ], [ %sub108, %if.end126.while.body_crit_edge ]
  %62 = ptrtoint ptr %sge_cnt to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %sge_cnt, align 4
  %63 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %chain, align 4
  %64 = ptrtoint ptr %sge to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %curr_iblk_chn.0225, ptr %sge, align 4
  %65 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %length, align 4
  %sub108 = sub i32 %len.0224, %66
  %67 = ptrtoint ptr %first_req to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %first_req, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr.i) #4
  %69 = ptrtoint ptr %addr.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 -1, ptr %addr.i, align 8, !annotation !17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not173.i = icmp eq i32 %66, 0
  br i1 %tobool.not173.i, label %while.body.while.end.i_crit_edge, label %while.body.lr.ph.i

while.body.while.end.i_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %while.body
  %sg_table_head.i = getelementptr inbounds %struct.esas2r_request, ptr %68, i32 0, i32 6
  br label %while.body.i

while.cond.loopexit.i:                            ; preds = %if.end64.i
  %tobool.not.i = icmp eq i32 %148, %74
  br i1 %tobool.not.i, label %while.cond.loopexit.i.while.end.i_crit_edge, label %while.cond.loopexit.i.while.body.i_crit_edge

while.cond.loopexit.i.while.body.i_crit_edge:     ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

while.cond.loopexit.i.while.end.i_crit_edge:      ; preds = %while.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.loopexit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %70 = ptrtoint ptr %get_phys_addr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %get_phys_addr.i, align 4
  %call.i = call i32 %71(ptr noundef %sgc, ptr noundef nonnull %addr.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %while.body.i.esas2r_build_prd_iblk.exit_crit_edge, label %if.end.i, !prof !14

while.body.i.esas2r_build_prd_iblk.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %esas2r_build_prd_iblk.exit

if.end.i:                                         ; preds = %while.body.i
  %72 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %73)
  %cmp4.i = icmp ugt i32 %call.i, %73
  br i1 %cmp4.i, label %if.then11.i, label %if.end.i.another_entry.i.preheader_crit_edge, !prof !14

if.end.i.another_entry.i.preheader_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %another_entry.i.preheader

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %another_entry.i.preheader

another_entry.i.preheader:                        ; preds = %if.then11.i, %if.end.i.another_entry.i.preheader_crit_edge
  %len.1.i.ph = phi i32 [ %call.i, %if.end.i.another_entry.i.preheader_crit_edge ], [ %73, %if.then11.i ]
  br label %another_entry.i

another_entry.i:                                  ; preds = %if.then81.i, %another_entry.i.preheader
  %len.1.i = phi i32 [ %sub.i, %if.then81.i ], [ %len.1.i.ph, %another_entry.i.preheader ]
  %sub.i = add i32 %len.1.i, -4190208
  %74 = call i32 @llvm.umin.i32(i32 %len.1.i, i32 4190208) #4
  %75 = ptrtoint ptr %sge_cnt to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sge_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp17.i = icmp eq i32 %76, 0
  br i1 %cmp17.i, label %if.then18.i, label %another_entry.i.if.end64.i_crit_edge

another_entry.i.if.end64.i_crit_edge:             ; preds = %another_entry.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64.i

if.then18.i:                                      ; preds = %another_entry.i
  %77 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %78)
  %cmp20.i = icmp eq i32 %74, %78
  br i1 %cmp20.i, label %if.then21.i, label %if.end27.i

if.then21.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #6
  %79 = call i32 @llvm.bswap.i32(i32 %74) #4
  %80 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %sge, align 4
  %ctl_len.i = getelementptr inbounds %struct.atto_physical_region_description, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %ctl_len.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 4)
  store i32 %79, ptr %ctl_len.i, align 1
  %83 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %addr.i, align 8
  %85 = call i64 @llvm.bswap.i64(i64 %84) #4
  %86 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %sge, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %85, ptr %87, align 1
  %89 = ptrtoint ptr %cur_offset76.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cur_offset76.i, align 4
  %add.ptr.i = getelementptr i8, ptr %90, i32 %74
  store ptr %add.ptr.i, ptr %cur_offset76.i, align 4
  %91 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %length, align 4
  %sub26.i = sub i32 %92, %74
  store i32 %sub26.i, ptr %length, align 4
  br label %while.end.i

if.end27.i:                                       ; preds = %if.then18.i
  %93 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %chain, align 4
  %tobool29.not.i = icmp eq ptr %94, null
  br i1 %tobool29.not.i, label %if.end27.i.if.end36.i_crit_edge, label %if.then30.i

if.end27.i.if.end36.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36.i

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  %95 = ptrtoint ptr %sgl_max_cnt to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %sgl_max_cnt, align 4
  %97 = call i32 @llvm.bswap.i32(i32 %96) #4
  %ctl_len34.i = getelementptr inbounds %struct.atto_physical_region_description, ptr %94, i32 0, i32 1
  %98 = ptrtoint ptr %ctl_len34.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 4)
  %99 = load i32, ptr %ctl_len34.i, align 1
  %or35.i = or i32 %99, %97
  store i32 %or35.i, ptr %ctl_len34.i, align 1
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then30.i, %if.end27.i.if.end36.i_crit_edge
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %sg_list_lock.i.i) #4
  %100 = ptrtoint ptr %free_sg_list_head.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load volatile ptr, ptr %free_sg_list_head.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %101, %free_sg_list_head.i.i
  br i1 %cmp.i.not.i.i, label %esas2r_alloc_sgl.exit.thread.i, label %if.then.i.i, !prof !14

esas2r_alloc_sgl.exit.thread.i:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sg_list_lock.i.i, i32 noundef %call2.i.i) #4
  br label %esas2r_build_prd_iblk.exit

if.then.i.i:                                      ; preds = %if.end36.i
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %101) #4
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.esas2r_alloc_sgl.exit.i_crit_edge

if.then.i.i.esas2r_alloc_sgl.exit.i_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %esas2r_alloc_sgl.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %prev.i.i.i.i, align 4
  %104 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %101, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  %106 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %103, ptr %prev1.i.i.i.i.i, align 4
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %105, ptr %103, align 4
  br label %esas2r_alloc_sgl.exit.i

esas2r_alloc_sgl.exit.i:                          ; preds = %if.end.i.i.i.i, %if.then.i.i.esas2r_alloc_sgl.exit.i_crit_edge
  %108 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %101, ptr %101, align 4
  %prev.i3.i.i.i = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  %109 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %101, ptr %prev.i3.i.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sg_list_lock.i.i, i32 noundef %call2.i.i) #4
  %cmp38.i = icmp eq ptr %101, null
  br i1 %cmp38.i, label %esas2r_alloc_sgl.exit.i.esas2r_build_prd_iblk.exit_crit_edge, label %if.end46.i, !prof !14

esas2r_alloc_sgl.exit.i.esas2r_build_prd_iblk.exit_crit_edge: ; preds = %esas2r_alloc_sgl.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %esas2r_build_prd_iblk.exit

if.end46.i:                                       ; preds = %esas2r_alloc_sgl.exit.i
  %110 = ptrtoint ptr %sg_table_head.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %sg_table_head.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %101, ptr noundef %sg_table_head.i, ptr noundef %111) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end46.i.list_add.exit.i_crit_edge

if.end46.i.list_add.exit.i_crit_edge:             ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %101, ptr %prev1.i.i.i, align 4
  %113 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %111, ptr %101, align 4
  %114 = ptrtoint ptr %prev.i3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %sg_table_head.i, ptr %prev.i3.i.i.i, align 4
  %115 = ptrtoint ptr %sg_table_head.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %101, ptr %sg_table_head.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end46.i.list_add.exit.i_crit_edge
  %116 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sge, align 4
  %118 = ptrtoint ptr %chain to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %117, ptr %chain, align 4
  %ctl_len53.i = getelementptr inbounds %struct.atto_physical_region_description, ptr %117, i32 0, i32 1
  %119 = ptrtoint ptr %ctl_len53.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 4)
  store i32 1, ptr %ctl_len53.i, align 1
  %phys_addr.i = getelementptr inbounds %struct.esas2r_mem_desc, ptr %101, i32 0, i32 2
  %120 = ptrtoint ptr %phys_addr.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %phys_addr.i, align 8
  %122 = call i64 @llvm.bswap.i64(i64 %121) #4
  %123 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %chain, align 4
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_storeN_noabort(i32 %125, i32 8)
  store i64 %122, ptr %124, align 1
  %virt_addr.i = getelementptr inbounds %struct.esas2r_mem_desc, ptr %101, i32 0, i32 1
  %126 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %virt_addr.i, align 8
  %128 = ptrtoint ptr %sge to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %127, ptr %sge, align 4
  %129 = ptrtoint ptr %sgl_max_cnt to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %sgl_max_cnt, align 4
  %sub61.i = add i32 %130, -1
  %131 = ptrtoint ptr %sge_cnt to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %sub61.i, ptr %sge_cnt, align 4
  br label %if.end64.i

if.end64.i:                                       ; preds = %list_add.exit.i, %another_entry.i.if.end64.i_crit_edge
  %132 = ptrtoint ptr %sge_cnt to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sge_cnt, align 4
  %dec.i = add i32 %133, -1
  store i32 %dec.i, ptr %sge_cnt, align 4
  %134 = call i32 @llvm.bswap.i32(i32 %74) #4
  %135 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %sge, align 4
  %ctl_len70.i = getelementptr inbounds %struct.atto_physical_region_description, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %ctl_len70.i to i32
  call void @__asan_storeN_noabort(i32 %137, i32 4)
  store i32 %134, ptr %ctl_len70.i, align 1
  %138 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %addr.i, align 8
  %140 = call i64 @llvm.bswap.i64(i64 %139) #4
  %141 = ptrtoint ptr %sge to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %sge, align 4
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_storeN_noabort(i32 %143, i32 8)
  store i64 %140, ptr %142, align 1
  %144 = load ptr, ptr %sge, align 4
  %incdec.ptr.i = getelementptr %struct.atto_physical_region_description, ptr %144, i32 1
  store ptr %incdec.ptr.i, ptr %sge, align 4
  %145 = ptrtoint ptr %cur_offset76.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %cur_offset76.i, align 4
  %add.ptr77.i = getelementptr i8, ptr %146, i32 %74
  store ptr %add.ptr77.i, ptr %cur_offset76.i, align 4
  %147 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %length, align 4
  %sub79.i = sub i32 %148, %74
  store i32 %sub79.i, ptr %length, align 4
  %tobool80.not.i = icmp ult i32 %len.1.i, 4190209
  br i1 %tobool80.not.i, label %while.cond.loopexit.i, label %if.then81.i

if.then81.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = zext i32 %74 to i64
  %149 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %addr.i, align 8
  %add.i = add i64 %150, %conv.i
  store i64 %add.i, ptr %addr.i, align 8
  br label %another_entry.i

while.end.i:                                      ; preds = %if.then21.i, %while.cond.loopexit.i.while.end.i_crit_edge, %while.body.while.end.i_crit_edge
  %numchain.0.neg.i = phi i32 [ 0, %if.then21.i ], [ -1, %while.body.while.end.i_crit_edge ], [ -1, %while.cond.loopexit.i.while.end.i_crit_edge ]
  %sg_table_head83.i = getelementptr inbounds %struct.esas2r_request, ptr %68, i32 0, i32 6
  %151 = ptrtoint ptr %sg_table_head83.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile ptr, ptr %sg_table_head83.i, align 4
  %cmp.i.not.i = icmp eq ptr %152, %sg_table_head83.i
  br i1 %cmp.i.not.i, label %while.end.i.if.end113_crit_edge, label %if.then86.i

while.end.i.if.end113_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end113

if.then86.i:                                      ; preds = %while.end.i
  %153 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %chain, align 4
  %tobool89.not.i = icmp eq ptr %154, null
  br i1 %tobool89.not.i, label %if.then86.i.if.end113_crit_edge, label %if.then90.i

if.then86.i.if.end113_crit_edge:                  ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end113

if.then90.i:                                      ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #6
  %155 = ptrtoint ptr %sgl_max_cnt to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %sgl_max_cnt, align 4
  %157 = ptrtoint ptr %sge_cnt to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %sge_cnt, align 4
  %sub95.i = add i32 %156, %numchain.0.neg.i
  %sub96.i = sub i32 %sub95.i, %158
  %159 = call i32 @llvm.bswap.i32(i32 %sub96.i) #4
  %ctl_len99.i = getelementptr inbounds %struct.atto_physical_region_description, ptr %154, i32 0, i32 1
  %160 = ptrtoint ptr %ctl_len99.i to i32
  call void @__asan_loadN_noabort(i32 %160, i32 4)
  %161 = load i32, ptr %ctl_len99.i, align 1
  %or100.i = or i32 %159, %161
  store i32 %or100.i, ptr %ctl_len99.i, align 1
  br label %if.end113

esas2r_build_prd_iblk.exit:                       ; preds = %esas2r_alloc_sgl.exit.i.esas2r_build_prd_iblk.exit_crit_edge, %esas2r_alloc_sgl.exit.thread.i, %while.body.i.esas2r_build_prd_iblk.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i) #4
  br label %cleanup

if.end113:                                        ; preds = %if.then90.i, %if.then86.i.if.end113_crit_edge, %while.end.i.if.end113_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr.i) #4
  %incdec.ptr = getelementptr %struct.atto_physical_region_description, ptr %curr_iblk_chn.0225, i32 1
  br i1 %tobool114.not, label %if.end113.if.end126_crit_edge, label %if.then115

if.end113.if.end126_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end126

if.then115:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #6
  %162 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %vrq, align 8
  %iblk_cnt_prd117 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %163, i32 0, i32 8, i32 0, i32 2
  %164 = ptrtoint ptr %iblk_cnt_prd117 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %iblk_cnt_prd117, align 1
  %inc = add i8 %165, 1
  store i8 %inc, ptr %iblk_cnt_prd117, align 1
  %166 = ptrtoint ptr %inter_byte to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %inter_byte, align 4
  %168 = call i32 @llvm.umin.i32(i32 %sub108, i32 %167)
  %169 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %168, ptr %length, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.then115, %if.end113.if.end126_crit_edge
  %tobool102.not = icmp eq i32 %sub108, 0
  br i1 %tobool102.not, label %if.end126.while.end_crit_edge, label %if.end126.while.body_crit_edge

if.end126.while.body_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end126.while.end_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end126.while.end_crit_edge, %if.end100.while.end_crit_edge
  %curr_iblk_chn.0.lcssa = phi ptr [ %59, %if.end100.while.end_crit_edge ], [ %incdec.ptr, %if.end126.while.end_crit_edge ]
  %170 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %vrq, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %curr_iblk_chn.0.lcssa to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %171 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %172 = trunc i32 %sub.ptr.sub to i16
  %173 = lshr i16 %172, 2
  %vda_req_sz = getelementptr inbounds %struct.esas2r_request, ptr %1, i32 0, i32 18
  %174 = ptrtoint ptr %vda_req_sz to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %vda_req_sz, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %173, i16 %175)
  %cmp134 = icmp ugt i16 %173, %175
  br i1 %cmp134, label %if.then136, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then136:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  %176 = ptrtoint ptr %vda_req_sz to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %173, ptr %vda_req_sz, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then136, %while.end.cleanup_crit_edge, %esas2r_build_prd_iblk.exit
  %tobool102.not216 = phi i1 [ false, %esas2r_build_prd_iblk.exit ], [ true, %while.end.cleanup_crit_edge ], [ true, %if.then136 ]
  ret i1 %tobool102.not216
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_timer_tick(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %0) #4
  %last_tick_time = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 32
  %1 = ptrtoint ptr %last_tick_time to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_tick_time, align 8
  %sub = sub i32 %call, %2
  store i32 %call, ptr %last_tick_time, align 8
  %chip_uptime = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 22
  %3 = ptrtoint ptr %chip_uptime to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chip_uptime, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %land.lhs.true

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

land.lhs.true:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %flags, align 4
  %10 = and i32 %9, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not = icmp eq i32 %10, 0
  br i1 %tobool7.not, label %if.then, label %land.lhs.true4.if.end13_crit_edge

land.lhs.true4.if.end13_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  %11 = call i32 @llvm.usub.sat.i32(i32 %4, i32 %sub)
  %12 = ptrtoint ptr %chip_uptime to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %chip_uptime, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then, %land.lhs.true4.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %entry.if.end13_crit_edge
  %flags14 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %13 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags14, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool16.not = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %flags14, align 4
  br i1 %tobool16.not, label %if.else27, label %if.then17

if.then17:                                        ; preds = %if.end13
  %18 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool20.not = icmp eq i32 %18, 0
  br i1 %tobool20.not, label %land.lhs.true21, label %if.then17.if.end51_crit_edge

if.then17.if.end51_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

land.lhs.true21:                                  ; preds = %if.then17
  %19 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags14, align 4
  %21 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool24.not = icmp eq i32 %21, 0
  br i1 %tobool24.not, label %if.then25, label %land.lhs.true21.if.end51_crit_edge

land.lhs.true21.if.end51_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.then25:                                        ; preds = %land.lhs.true21
  %chip_init_time.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 31
  %22 = ptrtoint ptr %chip_init_time.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %chip_init_time.i, align 4
  %sub.i = sub i32 %call, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 2001, i32 %sub.i)
  %cmp.i = icmp ult i32 %sub.i, 2001
  br i1 %cmp.i, label %if.then25.if.end51_crit_edge, label %if.else.i

if.then25.if.end51_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.else.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_const_cmp4(i32 179999, i32 %sub.i)
  %cmp1.i = icmp ugt i32 %sub.i, 179999
  br i1 %cmp1.i, label %if.then2.i, label %if.else3.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags14) #4
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags14) #4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags14) #4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags14) #4
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flags14) #4
  br label %if.end51

if.else3.i:                                       ; preds = %if.else.i
  %regs.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 2
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 66688
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !18
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp6.i = icmp eq i32 %26, -1
  %and.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp6.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.then7.i, label %if.else8.i

if.then7.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @esas2r_force_interrupt(ptr noundef %a) #4
  br label %if.end51

if.else8.i:                                       ; preds = %if.else3.i
  %and9.i = and i32 %27, 458752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  tail call void @arm_heavy_mb() #4
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %29, i32 66688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %26) #4, !srcloc !16
  %30 = zext i32 %and9.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %and9.i, label %if.else23.i [
    i32 0, label %if.then14.i
    i32 65536, label %if.then18.i
  ]

if.then14.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags14) #4
  tail call void @_set_bit(i32 noundef 24, ptr noundef %flags14) #4
  %max_vdareq_size.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 39
  %31 = ptrtoint ptr %max_vdareq_size.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 128, ptr %max_vdareq_size.i, align 4
  %build_sgl.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 34
  %32 = ptrtoint ptr %build_sgl.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @esas2r_build_sg_list_sge, ptr %build_sgl.i, align 8
  br label %if.end51

if.then18.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags14) #4
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %flags14) #4
  %max_vdareq_size21.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 39
  %33 = ptrtoint ptr %max_vdareq_size21.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 1024, ptr %max_vdareq_size21.i, align 4
  %build_sgl22.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 34
  %34 = ptrtoint ptr %build_sgl22.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @esas2r_build_sg_list_prd, ptr %build_sgl22.i, align 8
  br label %if.end51

if.else23.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags14) #4
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags14) #4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags14) #4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags14) #4
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flags14) #4
  br label %if.end51

if.else27:                                        ; preds = %if.end13
  %35 = and i32 %17, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool30.not = icmp eq i32 %35, 0
  br i1 %tobool30.not, label %if.else27.if.end32_crit_edge, label %if.then31

if.else27.if.end32_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32

if.then31:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @esas2r_disc_check_complete(ptr noundef %a) #4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.else27.if.end32_crit_edge
  %36 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %flags14, align 4
  %38 = and i32 %37, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool35.not = icmp eq i32 %38, 0
  br i1 %tobool35.not, label %if.end32.if.end51_crit_edge, label %if.then36

if.end32.if.end51_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.then36:                                        ; preds = %if.end32
  %39 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags14, align 4
  %41 = and i32 %40, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool39.not = icmp eq i32 %41, 0
  br i1 %tobool39.not, label %if.else47, label %if.then40

if.then40:                                        ; preds = %if.then36
  %42 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 21
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 8
  %sub41 = sub i32 %call, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %sub41)
  %cmp42 = icmp ugt i32 %sub41, 2999
  br i1 %cmp42, label %if.then43, label %if.then40.if.end51_crit_edge

if.then40.if.end51_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end51

if.then43:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags14) #4
  %call45 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 1, ptr noundef nonnull @.str) #4
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags14) #4
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags14) #4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags14) #4
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags14) #4
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flags14) #4
  br label %if.end51

if.else47:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_set_bit(i32 noundef 16, ptr noundef %flags14) #4
  %45 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 21
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call, ptr %45, align 8
  tail call void @esas2r_force_interrupt(ptr noundef %a) #4
  br label %if.end51

if.end51:                                         ; preds = %if.else47, %if.then43, %if.then40.if.end51_crit_edge, %if.end32.if.end51_crit_edge, %if.else23.i, %if.then18.i, %if.then14.i, %if.then7.i, %if.then2.i, %if.then25.if.end51_crit_edge, %land.lhs.true21.if.end51_crit_edge, %if.then17.if.end51_crit_edge
  %disable_cnt = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %disable_cnt, i32 noundef 4) #4
  %47 = ptrtoint ptr %disable_cnt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %disable_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp53 = icmp eq i32 %48, 0
  br i1 %cmp53, label %if.then54, label %if.end51.if.end55_crit_edge

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @esas2r_do_deferred_processes(ptr noundef %a) #4
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.end51.if.end55_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_disc_check_complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_log(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_force_interrupt(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_do_deferred_processes(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_send_task_mgmt(ptr noundef %a, ptr noundef %rqaux, i8 noundef zeroext %task_mgt_func) local_unnamed_addr #0 align 64 {
entry:
  %comp_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %target_id = getelementptr inbounds %struct.esas2r_request, ptr %rqaux, i32 0, i32 9
  %0 = ptrtoint ptr %target_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %target_id, align 8
  %vrq = getelementptr inbounds %struct.esas2r_request, ptr %rqaux, i32 0, i32 2
  %2 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vrq, align 8
  %flags = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %flags, align 1
  %6 = lshr i32 %5, 24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %comp_list) #4
  %7 = getelementptr inbounds %struct.list_head, ptr %comp_list, i32 0, i32 1
  %8 = ptrtoint ptr %comp_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %comp_list, ptr %comp_list, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %comp_list, ptr %7, align 4
  %queue_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 14
  %call5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #4
  %defer_list = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 19
  %10 = ptrtoint ptr %defer_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %defer_list, align 4
  %cmp.i.not170 = icmp eq ptr %11, %defer_list
  br i1 %cmp.i.not170, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %task_mgt_func)
  %cmp31 = icmp eq i8 %task_mgt_func, 32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %element.0171 = phi ptr [ %11, %for.body.lr.ph ], [ %next.0173, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %element.0171 to i32
  call void @__asan_load4_noabort(i32 %12)
  %next.0173 = load ptr, ptr %element.0171, align 4
  %add.ptr = getelementptr i8, ptr %element.0171, i32 -8
  %vrq13 = getelementptr i8, ptr %element.0171, i32 8
  %13 = ptrtoint ptr %vrq13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vrq13, align 8
  %function = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %function to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %function, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp15 = icmp eq i8 %16, 0
  br i1 %cmp15, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %target_id17 = getelementptr i8, ptr %element.0171, i32 40
  %17 = ptrtoint ptr %target_id17 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %target_id17, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %1)
  %cmp20 = icmp eq i16 %18, %1
  br i1 %cmp20, label %land.lhs.true22, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true22:                                  ; preds = %land.lhs.true
  %flags24 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %14, i32 0, i32 6
  %19 = ptrtoint ptr %flags24 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %flags24, align 1
  %21 = lshr i32 %20, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %6)
  %cmp28 = icmp eq i32 %21, %6
  %or.cond = or i1 %cmp31, %cmp28
  br i1 %or.cond, label %if.then, label %land.lhs.true22.for.inc_crit_edge

land.lhs.true22.for.inc_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true22
  %req_stat = getelementptr i8, ptr %element.0171, i32 65
  %22 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %req_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %23)
  %cmp34 = icmp eq i8 %23, -2
  br i1 %cmp34, label %if.then36, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then36:                                        ; preds = %if.then
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %element.0171) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then36.esas2r_ioreq_aborted.exit_crit_edge

if.then36.esas2r_ioreq_aborted.exit_crit_edge:    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %esas2r_ioreq_aborted.exit

if.end.i.i.i:                                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr i8, ptr %element.0171, i32 4
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %element.0171 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %element.0171, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %esas2r_ioreq_aborted.exit

esas2r_ioreq_aborted.exit:                        ; preds = %if.end.i.i.i, %if.then36.esas2r_ioreq_aborted.exit_crit_edge
  %30 = ptrtoint ptr %element.0171 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %element.0171, ptr %element.0171, align 4
  %prev.i3.i.i = getelementptr i8, ptr %element.0171, i32 4
  %31 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %element.0171, ptr %prev.i3.i.i, align 4
  %timeout.i = getelementptr i8, ptr %element.0171, i32 36
  %32 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %timeout.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %33)
  %cmp.i160 = icmp ugt i32 %33, -3
  %spec.select.i = select i1 %cmp.i160, i8 2, i8 10
  %34 = ptrtoint ptr %req_stat to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %spec.select.i, ptr %req_stat, align 1
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %7, align 4
  %call.i.i161 = call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef %36, ptr noundef nonnull %comp_list) #4
  br i1 %call.i.i161, label %if.end.i.i, label %esas2r_ioreq_aborted.exit.for.inc_crit_edge

esas2r_ioreq_aborted.exit.for.inc_crit_edge:      ; preds = %esas2r_ioreq_aborted.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end.i.i:                                       ; preds = %esas2r_ioreq_aborted.exit
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr, ptr %7, align 4
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %comp_list, ptr %add.ptr, align 4
  %prev3.i.i = getelementptr i8, ptr %element.0171, i32 -4
  %39 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %add.ptr, ptr %36, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %esas2r_ioreq_aborted.exit.for.inc_crit_edge, %if.then.for.inc_crit_edge, %land.lhs.true22.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.i.not = icmp eq ptr %next.0173, %defer_list
  br i1 %cmp.i.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %sense_len = getelementptr inbounds %struct.esas2r_request, ptr %rqaux, i32 0, i32 11
  %41 = ptrtoint ptr %sense_len to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %sense_len, align 1
  %42 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vrq, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 0, ptr %43, align 1
  %45 = ptrtoint ptr %target_id to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %1, ptr %target_id, align 8
  %46 = and i32 %5, -16777216
  %47 = load ptr, ptr %vrq, align 8
  %flags47 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %flags47 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 4)
  %49 = load i32, ptr %flags47, align 1
  %or = or i32 %49, %46
  store i32 %or, ptr %flags47, align 1
  %50 = load ptr, ptr %vrq, align 8
  %cdb = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %50, i32 0, i32 7
  %51 = call ptr @memset(ptr %cdb, i32 0, i32 16)
  %flags55 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %52 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %flags55, align 4
  %54 = and i32 %53, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool57.not = icmp eq i32 %54, 0
  br i1 %tobool57.not, label %for.end.if.end100_crit_edge, label %if.then58

for.end.if.end100_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100

if.then58:                                        ; preds = %for.end
  %req_stat59 = getelementptr inbounds %struct.esas2r_request, ptr %rqaux, i32 0, i32 17
  %55 = ptrtoint ptr %req_stat59 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %req_stat59, align 1
  %active_list = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 18
  %56 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %active_list, align 4
  %cmp.i162.not175 = icmp eq ptr %57, %active_list
  br i1 %cmp.i162.not175, label %if.then58.if.end100_crit_edge, label %for.body67.lr.ph

if.then58.if.end100_crit_edge:                    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100

for.body67.lr.ph:                                 ; preds = %if.then58
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %task_mgt_func)
  %cmp92 = icmp eq i8 %task_mgt_func, 32
  br label %for.body67

for.body67:                                       ; preds = %for.inc97.for.body67_crit_edge, %for.body67.lr.ph
  %element.1176 = phi ptr [ %57, %for.body67.lr.ph ], [ %next.1177, %for.inc97.for.body67_crit_edge ]
  %58 = ptrtoint ptr %element.1176 to i32
  call void @__asan_load4_noabort(i32 %58)
  %next.1177 = load ptr, ptr %element.1176, align 4
  %vrq71 = getelementptr i8, ptr %element.1176, i32 8
  %59 = ptrtoint ptr %vrq71 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vrq71, align 8
  %function72 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %function72 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %function72, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp74 = icmp eq i8 %62, 0
  br i1 %cmp74, label %land.lhs.true76, label %for.body67.for.inc97_crit_edge

for.body67.for.inc97_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc97

land.lhs.true76:                                  ; preds = %for.body67
  %target_id77 = getelementptr i8, ptr %element.1176, i32 40
  %63 = ptrtoint ptr %target_id77 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %target_id77, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %64, i16 %1)
  %cmp80 = icmp eq i16 %64, %1
  br i1 %cmp80, label %land.lhs.true82, label %land.lhs.true76.for.inc97_crit_edge

land.lhs.true76.for.inc97_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc97

land.lhs.true82:                                  ; preds = %land.lhs.true76
  %flags84 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %60, i32 0, i32 6
  %65 = ptrtoint ptr %flags84 to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %66 = load i32, ptr %flags84, align 1
  %67 = lshr i32 %66, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %6)
  %cmp88 = icmp eq i32 %67, %6
  %or.cond157 = or i1 %cmp92, %cmp88
  br i1 %or.cond157, label %if.then94, label %land.lhs.true82.for.inc97_crit_edge

land.lhs.true82.for.inc97_crit_edge:              ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc97

if.then94:                                        ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %req_stat59 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 2, ptr %req_stat59, align 1
  br label %for.inc97

for.inc97:                                        ; preds = %if.then94, %land.lhs.true82.for.inc97_crit_edge, %land.lhs.true76.for.inc97_crit_edge, %for.body67.for.inc97_crit_edge
  %cmp.i162.not = icmp eq ptr %next.1177, %active_list
  br i1 %cmp.i162.not, label %for.inc97.if.end100_crit_edge, label %for.inc97.for.body67_crit_edge

for.inc97.for.body67_crit_edge:                   ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body67

for.inc97.if.end100_crit_edge:                    ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end100

if.end100:                                        ; preds = %for.inc97.if.end100_crit_edge, %if.then58.if.end100_crit_edge, %for.end.if.end100_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call5) #4
  %69 = ptrtoint ptr %flags55 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %flags55, align 4
  %71 = and i32 %70, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool104.not = icmp eq i32 %71, 0
  br i1 %tobool104.not, label %if.then105, label %if.end100.if.end106_crit_edge

if.end100.if.end106_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end106

if.then105:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #6
  call void @esas2r_start_request(ptr noundef %a, ptr noundef %rqaux)
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.end100.if.end106_crit_edge
  %72 = ptrtoint ptr %comp_list to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %comp_list, align 4
  %cmp.i.not10.i = icmp eq ptr %73, %comp_list
  br i1 %cmp.i.not10.i, label %if.end106.esas2r_comp_list_drain.exit_crit_edge, label %if.end106.for.body.i_crit_edge

if.end106.for.body.i_crit_edge:                   ; preds = %if.end106
  br label %for.body.i

if.end106.esas2r_comp_list_drain.exit_crit_edge:  ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #6
  br label %esas2r_comp_list_drain.exit

for.body.i:                                       ; preds = %list_del_init.exit.i.for.body.i_crit_edge, %if.end106.for.body.i_crit_edge
  %element.011.i = phi ptr [ %next.013.i, %list_del_init.exit.i.for.body.i_crit_edge ], [ %73, %if.end106.for.body.i_crit_edge ]
  %74 = ptrtoint ptr %element.011.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %next.013.i = load ptr, ptr %element.011.i, align 4
  %call.i.i.i164 = call zeroext i1 @__list_del_entry_valid(ptr noundef %element.011.i) #4
  br i1 %call.i.i.i164, label %if.end.i.i.i167, label %for.body.i.list_del_init.exit.i_crit_edge

for.body.i.list_del_init.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit.i

if.end.i.i.i167:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i165 = getelementptr inbounds %struct.list_head, ptr %element.011.i, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i.i.i165 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %prev.i.i.i165, align 4
  %77 = ptrtoint ptr %element.011.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %element.011.i, align 4
  %prev1.i.i.i.i166 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %prev1.i.i.i.i166 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %76, ptr %prev1.i.i.i.i166, align 4
  %80 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %76, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i167, %for.body.i.list_del_init.exit.i_crit_edge
  %81 = ptrtoint ptr %element.011.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %element.011.i, ptr %element.011.i, align 4
  %prev.i3.i.i168 = getelementptr inbounds %struct.list_head, ptr %element.011.i, i32 0, i32 1
  %82 = ptrtoint ptr %prev.i3.i.i168 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %element.011.i, ptr %prev.i3.i.i168, align 4
  call void @esas2r_complete_request(ptr noundef %a, ptr noundef %element.011.i) #4
  %cmp.i.not.i = icmp eq ptr %next.013.i, %comp_list
  br i1 %cmp.i.not.i, label %list_del_init.exit.i.esas2r_comp_list_drain.exit_crit_edge, label %list_del_init.exit.i.for.body.i_crit_edge

list_del_init.exit.i.for.body.i_crit_edge:        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

list_del_init.exit.i.esas2r_comp_list_drain.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %esas2r_comp_list_drain.exit

esas2r_comp_list_drain.exit:                      ; preds = %list_del_init.exit.i.esas2r_comp_list_drain.exit_crit_edge, %if.end106.esas2r_comp_list_drain.exit_crit_edge
  %disable_cnt = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %disable_cnt, i32 noundef 4) #4
  %83 = ptrtoint ptr %disable_cnt to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %disable_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp108 = icmp eq i32 %84, 0
  br i1 %cmp108, label %if.then110, label %esas2r_comp_list_drain.exit.if.end111_crit_edge

esas2r_comp_list_drain.exit.if.end111_crit_edge:  ; preds = %esas2r_comp_list_drain.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end111

if.then110:                                       ; preds = %esas2r_comp_list_drain.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void @esas2r_do_deferred_processes(ptr noundef %a) #4
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %esas2r_comp_list_drain.exit.if.end111_crit_edge
  %85 = xor i1 %tobool57.not, true
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %comp_list) #4
  ret i1 %85
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_ioreq_aborted(ptr nocapture readnone %a, ptr noundef %rq, i8 noundef zeroext %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %req_list = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %req_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %req_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %req_list, ptr %req_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %req_list, ptr %prev.i3.i, align 4
  %timeout = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 8
  %8 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %9)
  %cmp = icmp ugt i32 %9, -3
  %spec.select = select i1 %cmp, i8 2, i8 %status
  %10 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %10, align 1
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_reset_bus(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 3, ptr noundef nonnull @.str.1) #4
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags, align 4
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %land.lhs.true5, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %if.then, label %land.lhs.true5.if.end_crit_edge

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true5
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags) #4
  tail call void @_set_bit(i32 noundef 5, ptr noundef %flags) #4
  tail call void @_set_bit(i32 noundef 9, ptr noundef %flags) #4
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 15, ptr noundef %flags) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %state.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 54, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %tasklet.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 54
  tail call void @__tasklet_hi_schedule(ptr noundef %tasklet.i) #4
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then.i.if.end_crit_edge, %if.then.if.end_crit_edge, %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_hi_schedule(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/esas2r/esas2r_io.c", i32 742, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/esas2r/esas2r_io.c", i32 845, i32 30}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2155153641}
!16 = !{i64 5053652}
!17 = !{!"auto-init"}
!18 = !{i64 5054070}
!19 = !{i64 2155158398}
!20 = !{i64 2155158843}
