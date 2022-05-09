; ModuleID = '/llk/IR_all_yes/drivers/scsi/esas2r/esas2r_vda.c_pt.bc'
source_filename = "../drivers/scsi/esas2r/esas2r_vda.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atto_ioctl_vda = type { i8, i8, i8, i8, i32, [8 x i8], %union.anon.115, %union.anon.121 }
%union.anon.115 = type { %struct.atto_ioctl_vda_mgt_cmd, [128 x i8] }
%struct.atto_ioctl_vda_mgt_cmd = type { i8, i8, i16, i32, [8 x i8], %union.anon.120 }
%union.anon.120 = type { %struct.atto_vda_devinfo }
%struct.atto_vda_devinfo = type { %struct.atto_dev_addr, [8 x i8], [16 x i8], [4 x i8], i64, i32, i8, %union.anon.17, i8, i8, i8, i8, i16, [32 x i8], %union.anon.18, i16, i16, i8, i8, i16, [2 x i8] }
%struct.atto_dev_addr = type <{ i64, i64, i8, i8, i8, [1 x i8] }>
%union.anon.17 = type { i8 }
%union.anon.18 = type { i16 }
%union.anon.121 = type { %struct.atto_vda_devinfo2 }
%struct.atto_vda_devinfo2 = type { %struct.atto_dev_addr, [8 x i8], [16 x i8], [4 x i8], i64, i32, i8, i8, i8, i8, i8, i8, i16, [32 x i8], %union.anon.122, i16, i16, i8, i8, i16, [2 x i8], i8, [3 x i8], i32, i64, i32, i32, i32, i32, i32, [15 x i8], [4 x i8], i8, [8 x %struct.atto_dev_addr2] }
%union.anon.122 = type { i16 }
%struct.atto_dev_addr2 = type { i64, i64, i8, i8, i8, [5 x i8] }
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
%struct.atto_vda_cli_req = type { i32, i8, i8, i8, i8, i32, i32, [1 x %struct.atto_vda_sge] }
%struct.atto_vda_mgmt_req = type { i32, i8, i8, i8, i8, i32, i8, i8, i16, i32, i32, %union.anon.14, [1 x %struct.atto_vda_sge] }
%union.anon.14 = type { [2 x %struct.atto_vda_sge] }
%struct.atto_vda_cfg_req = type { i32, i8, i8, i8, i8, i32, %union.anon.13 }
%union.anon.13 = type { %struct.atto_vda_cfg_init, [4 x i8] }
%struct.atto_vda_cfg_init = type { %struct.atto_vda_date_and_time, i32, i32, i32, i32, i32, i32, i32, i32, [72 x i8] }
%struct.atto_vda_date_and_time = type { i8, i8, i8, i8, i8, i8, i16 }
%struct.atto_vda_mgmt_rsp = type <{ i32, i16, i8 }>
%struct.atto_physical_region_description = type <{ i64, i32 }>
%struct.atto_vda_ae_req = type { i32, i8, i8, i8, i8, i32, %union.anon.8 }
%union.anon.8 = type { [1 x %struct.atto_vda_sge] }
%struct.atto_vda_ioctl_req = type { i32, i8, i8, i8, i8, i32, %union.anon.9, %union.anon.10, %union.anon.12 }
%union.anon.9 = type { %struct.atto_vda_sge }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { i32, i16, i8, i8 }
%union.anon.12 = type { [1 x %struct.atto_vda_sge] }

@esas2r_vdaioctl_versions = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\FF\00\FF\FF\00\FF\00\00\00", [23 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%1.1u.%2.2u\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 4, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 8, i64 8, i64 9, i64 10, i64 12]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 8]
@___asan_gen_.4 = private unnamed_addr constant [25 x i8] c"esas2r_vdaioctl_versions\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 47, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [36 x i8] c"../drivers/scsi/esas2r/esas2r_vda.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 313, i32 31 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @esas2r_vdaioctl_versions, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @esas2r_vdaioctl_versions to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_process_vda_ioctl(ptr noundef %a, ptr noundef %vi, ptr noundef %rq, ptr noundef %sgc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 2
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %status, align 1
  %vda_status = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 3
  %1 = ptrtoint ptr %vda_status to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -2, ptr %vda_status, align 1
  %function = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 1
  %2 = ptrtoint ptr %function to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %function, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %cmp = icmp ugt i8 %3, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %status, align 1
  br label %cleanup210

if.end:                                           ; preds = %entry
  %conv = zext i8 %3 to i32
  %5 = ptrtoint ptr %vi to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vi, align 1
  %arrayidx = getelementptr [9 x i8], ptr @esas2r_vdaioctl_versions, i32 0, i32 %conv
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp7 = icmp ugt i8 %6, %8
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %status, align 1
  br label %cleanup210

if.end11:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %12 = and i32 %11, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 11, ptr %status, align 1
  br label %cleanup210

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp17.not = icmp eq i8 %3, 0
  br i1 %cmp17.not, label %if.end14.if.end20_crit_edge, label %if.then19

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %vrq.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %14 = ptrtoint ptr %vrq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vrq.i, align 8
  %handle1.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %handle1.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %handle1.i, align 1
  %18 = call ptr @memset(ptr %15, i32 0, i32 1024)
  %19 = load ptr, ptr %vrq.i, align 8
  %handle4.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %handle4.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %17, ptr %handle4.i, align 1
  %req_stat.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %21 = ptrtoint ptr %req_stat.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -2, ptr %req_stat.i, align 1
  %22 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %25 = call ptr @memset(ptr %24, i32 0, i32 256)
  %req_list.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1
  %26 = ptrtoint ptr %req_list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %req_list.i, ptr %req_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %req_list.i, ptr %prev.i.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end14.if.end20_crit_edge
  %28 = ptrtoint ptr %function to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %function, align 1
  %vrq = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %30 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vrq, align 8
  %function22 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %function22 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %29, ptr %function22, align 1
  %interrupt_cb = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 14
  %33 = ptrtoint ptr %interrupt_cb to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @esas2r_complete_vda_ioctl, ptr %interrupt_cb, align 8
  %interrupt_cx = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 15
  %34 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %vi, ptr %interrupt_cx, align 4
  %35 = load i8, ptr %function, align 1
  %36 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i8 %35, label %sw.default [
    i8 1, label %sw.bb
    i8 4, label %sw.bb62
    i8 7, label %sw.bb72
    i8 6, label %sw.bb150
    i8 8, label %sw.bb195
  ]

sw.bb:                                            ; preds = %if.end20
  %sub_func = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 6, i32 0, i32 4
  %37 = ptrtoint ptr %sub_func to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sub_func, align 1
  %.off = add i8 %38, -6
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.end41, label %if.then39

if.then39:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 4, ptr %status, align 1
  br label %cleanup210

if.end41:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %38)
  %cmp45.not = icmp eq i8 %38, 8
  br i1 %cmp45.not, label %if.end41.if.end48_crit_edge, label %if.then47

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %data_length = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 4
  %40 = ptrtoint ptr %data_length to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %data_length, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end41.if.end48_crit_edge
  %datalen.0 = phi i32 [ %41, %if.then47 ], [ 0, %if.end41.if.end48_crit_edge ]
  %42 = tail call i32 @llvm.bswap.i32(i32 %datalen.0)
  %43 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %vrq, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %42, ptr %44, align 1
  %46 = ptrtoint ptr %sub_func to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %sub_func, align 1
  %48 = load ptr, ptr %vrq, align 8
  %sub_func53 = getelementptr inbounds %struct.atto_vda_flash_req, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %sub_func53 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %47, ptr %sub_func53, align 1
  %50 = load ptr, ptr %vrq, align 8
  %data = getelementptr inbounds %struct.atto_vda_flash_req, ptr %50, i32 0, i32 9
  %data56 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 6, i32 0, i32 5, i32 0, i32 0, i32 1
  %51 = call ptr @memcpy(ptr %data, ptr %data56, i32 16)
  %52 = load ptr, ptr %vrq, align 8
  %sge = getelementptr inbounds %struct.atto_vda_flash_req, ptr %52, i32 0, i32 9, i32 0, i32 1
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %data_length63 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 4
  %53 = ptrtoint ptr %data_length63 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %data_length63, align 1
  %cmd64 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 6
  %55 = ptrtoint ptr %cmd64 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %56 = load i32, ptr %cmd64, align 1
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %58 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %vrq, align 8
  %cmd_rsp_len66 = getelementptr inbounds %struct.atto_vda_cli_req, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %cmd_rsp_len66 to i32
  call void @__asan_storeN_noabort(i32 %60, i32 4)
  store i32 %57, ptr %cmd_rsp_len66, align 1
  %61 = tail call i32 @llvm.bswap.i32(i32 %54)
  %62 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vrq, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %61, ptr %63, align 1
  %65 = load ptr, ptr %vrq, align 8
  %sge70 = getelementptr inbounds %struct.atto_vda_cli_req, ptr %65, i32 0, i32 7
  br label %sw.epilog

sw.bb72:                                          ; preds = %if.end20
  %cur_offset = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 3
  %66 = ptrtoint ptr %cur_offset to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cur_offset, align 4
  %add.ptr74 = getelementptr i8, ptr %67, i32 -240
  %data_length75 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 4
  %68 = ptrtoint ptr %data_length75 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %69 = load i32, ptr %data_length75, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool76.not = icmp eq i32 %69, 0
  br i1 %tobool76.not, label %if.else123, label %if.then77

if.then77:                                        ; preds = %sw.bb72
  %cmd78 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 6
  %70 = ptrtoint ptr %cmd78 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %cmd78, align 1
  %72 = zext i8 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %71, label %if.else106 [
    i8 8, label %if.then77.if.end109_crit_edge
    i8 9, label %if.then77.if.end109_crit_edge366
    i8 10, label %if.then77.cleanup148.sink.split_crit_edge
    i8 12, label %if.then77.cleanup148.sink.split_crit_edge367
  ]

if.then77.cleanup148.sink.split_crit_edge367:     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup148.sink.split

if.then77.cleanup148.sink.split_crit_edge:        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup148.sink.split

if.then77.if.end109_crit_edge366:                 ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then77.if.end109_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.else106:                                       ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 8, ptr %status, align 1
  br label %cleanup210

if.end109:                                        ; preds = %if.then77.if.end109_crit_edge, %if.then77.if.end109_crit_edge366
  %74 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %vrq, align 8
  %payld_sglst_offset = getelementptr inbounds %struct.atto_vda_mgmt_req, ptr %75, i32 0, i32 7
  %76 = ptrtoint ptr %payld_sglst_offset to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 48, ptr %payld_sglst_offset, align 1
  %77 = ptrtoint ptr %data_length75 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %78 = load i32, ptr %data_length75, align 1
  %data_length91 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 6, i32 0, i32 3
  %79 = ptrtoint ptr %data_length91 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 4)
  %datalen.1 = load i32, ptr %data_length91, align 1
  %80 = tail call i32 @llvm.bswap.i32(i32 %datalen.1)
  %81 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vrq, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %80, ptr %82, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool112.not = icmp eq i32 %78, 0
  br i1 %tobool112.not, label %if.end109.cleanup148_crit_edge, label %if.then113

if.end109.cleanup148_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup148

if.then113:                                       ; preds = %if.end109
  %84 = tail call i32 @llvm.bswap.i32(i32 %78)
  %85 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vrq, align 8
  %payld_length = getelementptr inbounds %struct.atto_vda_mgmt_req, ptr %86, i32 0, i32 9
  %87 = ptrtoint ptr %payld_length to i32
  call void @__asan_storeN_noabort(i32 %87, i32 4)
  store i32 %84, ptr %payld_length, align 1
  %88 = load ptr, ptr %vrq, align 8
  %payld_sge = getelementptr inbounds %struct.atto_vda_mgmt_req, ptr %88, i32 0, i32 12
  %89 = ptrtoint ptr %sgc to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %a, ptr %sgc, align 4
  %first_req.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 1
  %90 = ptrtoint ptr %first_req.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %rq, ptr %first_req.i, align 4
  %91 = load ptr, ptr %vrq, align 8
  %add.ptr1.i = getelementptr i8, ptr %91, i32 116
  %sge.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5
  %limit.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 2
  %92 = ptrtoint ptr %limit.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %add.ptr1.i, ptr %limit.i, align 4
  %tobool.not.i = icmp eq ptr %payld_sge, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %sge.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %payld_sge, ptr %sge.i, align 4
  %last.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %94 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %payld_sge, ptr %last.i, align 4
  %95 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %vrq, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %payld_sge to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %96 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i8
  br label %esas2r_sgc_init.exit

if.else.i:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %vrq, align 8
  %u.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %98, i32 0, i32 9
  %99 = ptrtoint ptr %sge.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %u.i, ptr %sge.i, align 4
  %last10.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %100 = ptrtoint ptr %last10.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %u.i, ptr %last10.i, align 4
  %101 = load ptr, ptr %vrq, align 8
  br label %esas2r_sgc_init.exit

esas2r_sgc_init.exit:                             ; preds = %if.else.i, %if.then.i
  %.sink28.i = phi ptr [ %101, %if.else.i ], [ %96, %if.then.i ]
  %.sink.i = phi i8 [ 44, %if.else.i ], [ %conv.i, %if.then.i ]
  %sg_list_offset12.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %.sink28.i, i32 0, i32 4
  %102 = ptrtoint ptr %sg_list_offset12.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %.sink.i, ptr %sg_list_offset12.i, align 1
  %chain.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 3
  %103 = ptrtoint ptr %chain.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %chain.i, align 4
  %length117 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 2
  %104 = ptrtoint ptr %length117 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %78, ptr %length117, align 4
  %105 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %vrq, align 8
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %108 = load i32, ptr %106, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp.i = icmp eq i32 %108, 0
  br i1 %cmp.i, label %esas2r_sgc_init.exit.cleanup148_crit_edge, label %esas2r_build_sg_list.exit, !prof !13

esas2r_sgc_init.exit.cleanup148_crit_edge:        ; preds = %esas2r_sgc_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup148

esas2r_build_sg_list.exit:                        ; preds = %esas2r_sgc_init.exit
  %build_sgl.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 34
  %109 = ptrtoint ptr %build_sgl.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %build_sgl.i, align 8
  %call.i = tail call zeroext i1 %110(ptr noundef %a, ptr noundef %sgc) #6
  br i1 %call.i, label %esas2r_build_sg_list.exit.cleanup148_crit_edge, label %if.then119

esas2r_build_sg_list.exit.cleanup148_crit_edge:   ; preds = %esas2r_build_sg_list.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup148

if.then119:                                       ; preds = %esas2r_build_sg_list.exit
  call void @__sanitizer_cov_trace_pc() #8
  %111 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 3, ptr %status, align 1
  br label %cleanup210

if.else123:                                       ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #8
  %data_length125 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 6, i32 0, i32 3
  br label %cleanup148.sink.split

cleanup148.sink.split:                            ; preds = %if.else123, %if.then77.cleanup148.sink.split_crit_edge, %if.then77.cleanup148.sink.split_crit_edge367
  %data_length125.sink = phi ptr [ %data_length125, %if.else123 ], [ %data_length75, %if.then77.cleanup148.sink.split_crit_edge ], [ %data_length75, %if.then77.cleanup148.sink.split_crit_edge367 ]
  %cmdcurr_offset.2.ph = phi ptr [ %add.ptr74, %if.else123 ], [ %67, %if.then77.cleanup148.sink.split_crit_edge ], [ %67, %if.then77.cleanup148.sink.split_crit_edge367 ]
  %112 = ptrtoint ptr %data_length125.sink to i32
  call void @__asan_loadN_noabort(i32 %112, i32 4)
  %113 = load i32, ptr %data_length125.sink, align 1
  %114 = tail call i32 @llvm.bswap.i32(i32 %113)
  %115 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %vrq, align 8
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 4)
  store i32 %114, ptr %116, align 1
  br label %cleanup148

cleanup148:                                       ; preds = %cleanup148.sink.split, %esas2r_build_sg_list.exit.cleanup148_crit_edge, %esas2r_sgc_init.exit.cleanup148_crit_edge, %if.end109.cleanup148_crit_edge
  %datalen.3 = phi i32 [ %datalen.1, %if.end109.cleanup148_crit_edge ], [ %datalen.1, %esas2r_build_sg_list.exit.cleanup148_crit_edge ], [ %datalen.1, %esas2r_sgc_init.exit.cleanup148_crit_edge ], [ %113, %cleanup148.sink.split ]
  %cmdcurr_offset.2 = phi ptr [ %add.ptr74, %if.end109.cleanup148_crit_edge ], [ %add.ptr74, %esas2r_build_sg_list.exit.cleanup148_crit_edge ], [ %add.ptr74, %esas2r_sgc_init.exit.cleanup148_crit_edge ], [ %cmdcurr_offset.2.ph, %cleanup148.sink.split ]
  %118 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %vrq, align 8
  %120 = getelementptr inbounds %struct.atto_vda_mgmt_req, ptr %119, i32 0, i32 11
  %121 = ptrtoint ptr %cur_offset to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %cmdcurr_offset.2, ptr %cur_offset, align 4
  %cmd132 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 6
  %122 = ptrtoint ptr %cmd132 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %cmd132, align 1
  %124 = load ptr, ptr %vrq, align 8
  %mgt_func135 = getelementptr inbounds %struct.atto_vda_mgmt_req, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %mgt_func135 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %123, ptr %mgt_func135, align 1
  %scan_generation = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 6, i32 0, i32 1
  %126 = ptrtoint ptr %scan_generation to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %scan_generation, align 1
  %128 = load ptr, ptr %vrq, align 8
  %scan_generation138 = getelementptr inbounds %struct.atto_vda_mgmt_req, ptr %128, i32 0, i32 6
  %129 = ptrtoint ptr %scan_generation138 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %127, ptr %scan_generation138, align 1
  %130 = load ptr, ptr %vrq, align 8
  %dev_index143 = getelementptr inbounds %struct.atto_vda_mgmt_req, ptr %130, i32 0, i32 8
  %131 = ptrtoint ptr %dev_index143 to i32
  call void @__asan_storeN_noabort(i32 %131, i32 2)
  store i16 0, ptr %dev_index143, align 1
  %132 = load ptr, ptr %vrq, align 8
  %mgt_func145 = getelementptr inbounds %struct.atto_vda_mgmt_req, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %mgt_func145 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %mgt_func145, align 1
  %data147 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 6, i32 0, i32 5
  tail call void @esas2r_nuxi_mgt_data(i8 noundef zeroext %134, ptr noundef %data147) #6
  br label %sw.epilog

sw.bb150:                                         ; preds = %if.end20
  %data_length151 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 4
  %135 = ptrtoint ptr %data_length151 to i32
  call void @__asan_loadN_noabort(i32 %135, i32 4)
  %136 = load i32, ptr %data_length151, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool152.not = icmp eq i32 %136, 0
  br i1 %tobool152.not, label %lor.lhs.false153, label %sw.bb150.if.then158_crit_edge

sw.bb150.if.then158_crit_edge:                    ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then158

lor.lhs.false153:                                 ; preds = %sw.bb150
  %cmd154 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 6
  %137 = ptrtoint ptr %cmd154 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %138 = load i32, ptr %cmd154, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp156 = icmp eq i32 %138, 0
  br i1 %cmp156, label %lor.lhs.false153.if.then158_crit_edge, label %if.end160

lor.lhs.false153.if.then158_crit_edge:            ; preds = %lor.lhs.false153
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then158

if.then158:                                       ; preds = %lor.lhs.false153.if.then158_crit_edge, %sw.bb150.if.then158_crit_edge
  %139 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 8, ptr %status, align 1
  br label %cleanup210

if.end160:                                        ; preds = %lor.lhs.false153
  %cfg_func = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 6, i32 0, i32 3
  %140 = ptrtoint ptr %cfg_func to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %cfg_func, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %cmp163 = icmp eq i8 %141, 0
  br i1 %cmp163, label %if.then165, label %if.end167

if.then165:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #8
  %142 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 4, ptr %status, align 1
  br label %cleanup210

if.end167:                                        ; preds = %if.end160
  %143 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %vrq, align 8
  %sub_func171 = getelementptr inbounds %struct.atto_vda_cfg_req, ptr %144, i32 0, i32 2
  %145 = ptrtoint ptr %sub_func171 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %141, ptr %sub_func171, align 1
  %146 = ptrtoint ptr %cmd154 to i32
  call void @__asan_loadN_noabort(i32 %146, i32 4)
  %147 = load i32, ptr %cmd154, align 1
  %148 = tail call i32 @llvm.bswap.i32(i32 %147)
  %149 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %vrq, align 8
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_storeN_noabort(i32 %151, i32 4)
  store i32 %148, ptr %150, align 1
  %152 = ptrtoint ptr %cfg_func to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %cfg_func, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %153)
  %cmp179 = icmp eq i8 %153, 1
  br i1 %cmp179, label %if.then181, label %if.else192

if.then181:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #8
  %154 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %vrq, align 8
  %data183 = getelementptr inbounds %struct.atto_vda_cfg_req, ptr %155, i32 0, i32 6
  %data185 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 6, i32 0, i32 5
  %156 = ptrtoint ptr %cmd154 to i32
  call void @__asan_loadN_noabort(i32 %156, i32 4)
  %157 = load i32, ptr %cmd154, align 1
  %158 = call ptr @memcpy(ptr %data183, ptr %data185, i32 %157)
  %159 = load ptr, ptr %vrq, align 8
  %sub_func189 = getelementptr inbounds %struct.atto_vda_cfg_req, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %sub_func189 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %sub_func189, align 1
  %data191 = getelementptr inbounds %struct.atto_vda_cfg_req, ptr %159, i32 0, i32 6
  tail call void @esas2r_nuxi_cfg_data(i8 noundef zeroext %161, ptr noundef %data191) #6
  br label %if.end209

if.else192:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #8
  %162 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 4, ptr %status, align 1
  br label %cleanup210

sw.bb195:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %cmd196 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 6
  %163 = ptrtoint ptr %cmd196 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 9, ptr %cmd196, align 1
  %version_info = getelementptr inbounds %struct.atto_ioctl_vda, ptr %vi, i32 0, i32 6, i32 0, i32 4
  %164 = call ptr @memcpy(ptr %version_info, ptr @esas2r_vdaioctl_versions, i32 9)
  %165 = ptrtoint ptr %vda_status to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 0, ptr %vda_status, align 1
  br label %if.end209

sw.default:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %166 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 4, ptr %status, align 1
  br label %cleanup210

sw.epilog:                                        ; preds = %cleanup148, %sw.bb62, %if.end48
  %datalen.5 = phi i32 [ %datalen.3, %cleanup148 ], [ %54, %sw.bb62 ], [ %datalen.0, %if.end48 ]
  %firstsg.1 = phi ptr [ %120, %cleanup148 ], [ %sge70, %sw.bb62 ], [ %sge, %if.end48 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %datalen.5)
  %tobool202.not = icmp eq i32 %datalen.5, 0
  br i1 %tobool202.not, label %sw.epilog.if.end209_crit_edge, label %if.then203

sw.epilog.if.end209_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end209

if.then203:                                       ; preds = %sw.epilog
  %167 = ptrtoint ptr %sgc to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %a, ptr %sgc, align 4
  %first_req.i321 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 1
  %168 = ptrtoint ptr %first_req.i321 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %rq, ptr %first_req.i321, align 4
  %169 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %vrq, align 8
  %add.ptr1.i323 = getelementptr i8, ptr %170, i32 116
  %sge.i324 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5
  %limit.i325 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 2
  %171 = ptrtoint ptr %limit.i325 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %add.ptr1.i323, ptr %limit.i325, align 4
  %tobool.not.i326 = icmp eq ptr %firstsg.1, null
  br i1 %tobool.not.i326, label %if.else.i335, label %if.then.i332

if.then.i332:                                     ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #8
  %172 = ptrtoint ptr %sge.i324 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %firstsg.1, ptr %sge.i324, align 4
  %last.i327 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %173 = ptrtoint ptr %last.i327 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %firstsg.1, ptr %last.i327, align 4
  %174 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %vrq, align 8
  %sub.ptr.lhs.cast.i328 = ptrtoint ptr %firstsg.1 to i32
  %sub.ptr.rhs.cast.i329 = ptrtoint ptr %175 to i32
  %sub.ptr.sub.i330 = sub i32 %sub.ptr.lhs.cast.i328, %sub.ptr.rhs.cast.i329
  %conv.i331 = trunc i32 %sub.ptr.sub.i330 to i8
  br label %esas2r_sgc_init.exit341

if.else.i335:                                     ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #8
  %176 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %vrq, align 8
  %u.i333 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %177, i32 0, i32 9
  %178 = ptrtoint ptr %sge.i324 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %u.i333, ptr %sge.i324, align 4
  %last10.i334 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 1
  %179 = ptrtoint ptr %last10.i334 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %u.i333, ptr %last10.i334, align 4
  %180 = load ptr, ptr %vrq, align 8
  br label %esas2r_sgc_init.exit341

esas2r_sgc_init.exit341:                          ; preds = %if.else.i335, %if.then.i332
  %.sink28.i336 = phi ptr [ %180, %if.else.i335 ], [ %175, %if.then.i332 ]
  %.sink.i337 = phi i8 [ 44, %if.else.i335 ], [ %conv.i331, %if.then.i332 ]
  %sg_list_offset12.i338 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %.sink28.i336, i32 0, i32 4
  %181 = ptrtoint ptr %sg_list_offset12.i338 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %.sink.i337, ptr %sg_list_offset12.i338, align 1
  %chain.i339 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 5, i32 0, i32 3
  %182 = ptrtoint ptr %chain.i339 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr null, ptr %chain.i339, align 4
  %length204 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 2
  %183 = ptrtoint ptr %length204 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %datalen.5, ptr %length204, align 4
  %184 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %vrq, align 8
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_loadN_noabort(i32 %186, i32 4)
  %187 = load i32, ptr %185, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %cmp.i343 = icmp eq i32 %187, 0
  br i1 %cmp.i343, label %esas2r_sgc_init.exit341.if.end209_crit_edge, label %esas2r_build_sg_list.exit348, !prof !13

esas2r_sgc_init.exit341.if.end209_crit_edge:      ; preds = %esas2r_sgc_init.exit341
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end209

esas2r_build_sg_list.exit348:                     ; preds = %esas2r_sgc_init.exit341
  %build_sgl.i344 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 34
  %188 = ptrtoint ptr %build_sgl.i344 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %build_sgl.i344, align 8
  %call.i345 = tail call zeroext i1 %189(ptr noundef %a, ptr noundef %sgc) #6
  br i1 %call.i345, label %esas2r_build_sg_list.exit348.if.end209_crit_edge, label %if.then206

esas2r_build_sg_list.exit348.if.end209_crit_edge: ; preds = %esas2r_build_sg_list.exit348
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end209

if.then206:                                       ; preds = %esas2r_build_sg_list.exit348
  call void @__sanitizer_cov_trace_pc() #8
  %190 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 3, ptr %status, align 1
  br label %cleanup210

if.end209:                                        ; preds = %esas2r_build_sg_list.exit348.if.end209_crit_edge, %esas2r_sgc_init.exit341.if.end209_crit_edge, %sw.epilog.if.end209_crit_edge, %sw.bb195, %if.then181
  tail call void @esas2r_start_request(ptr noundef %a, ptr noundef %rq) #6
  br label %cleanup210

cleanup210:                                       ; preds = %if.end209, %if.then206, %sw.default, %if.else192, %if.then165, %if.then158, %if.then119, %if.else106, %if.then39, %if.then12, %if.then9, %if.then
  %retval.3 = phi i1 [ false, %if.then ], [ false, %if.then9 ], [ false, %if.then12 ], [ false, %sw.default ], [ true, %if.end209 ], [ false, %if.then206 ], [ false, %if.then158 ], [ false, %if.then165 ], [ false, %if.else192 ], [ false, %if.then39 ], [ false, %if.then119 ], [ false, %if.else106 ]
  ret i1 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esas2r_complete_vda_ioctl(ptr nocapture noundef readnone %a, ptr nocapture noundef readonly %rq) #0 align 64 {
entry:
  %buf = alloca [5 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_cx = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 15
  %0 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_cx, align 4
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %2 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %req_stat, align 1
  %vda_status = getelementptr inbounds %struct.atto_ioctl_vda, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %vda_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %vda_status, align 1
  %function = getelementptr inbounds %struct.atto_ioctl_vda, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %function to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %function, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %6, label %entry.sw.epilog_crit_edge [
    i8 1, label %sw.bb
    i8 7, label %sw.bb10
    i8 6, label %sw.bb26
    i8 4, label %sw.bb73
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %sub_func = getelementptr inbounds %struct.atto_ioctl_vda, ptr %1, i32 0, i32 6, i32 0, i32 4
  %8 = ptrtoint ptr %sub_func to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sub_func, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %9, label %sw.bb.sw.epilog_crit_edge [
    i8 8, label %sw.bb.if.then_crit_edge
    i8 6, label %sw.bb.if.then_crit_edge110
  ]

sw.bb.if.then_crit_edge110:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb.if.then_crit_edge, %sw.bb.if.then_crit_edge110
  %func_rsp = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12
  %11 = ptrtoint ptr %func_rsp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %func_rsp, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %file_size9 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %1, i32 0, i32 6, i32 0, i32 5, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %file_size9 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %file_size9, align 1
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  %func_rsp11 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12
  %scan_generation = getelementptr inbounds %struct.atto_vda_mgmt_rsp, ptr %func_rsp11, i32 0, i32 2
  %15 = ptrtoint ptr %scan_generation to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %scan_generation, align 2
  %scan_generation13 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %1, i32 0, i32 6, i32 0, i32 1
  %17 = ptrtoint ptr %scan_generation13 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %scan_generation13, align 1
  %dev_index = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12, i32 0, i32 3
  %18 = ptrtoint ptr %dev_index to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dev_index, align 4
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %dev_index16 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %1, i32 0, i32 6, i32 0, i32 2
  %21 = ptrtoint ptr %dev_index16 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 %20, ptr %dev_index16, align 1
  %data_length = getelementptr inbounds %struct.atto_ioctl_vda, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %data_length to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %data_length, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp17 = icmp eq i32 %23, 0
  br i1 %cmp17, label %if.then19, label %sw.bb10.if.end23_crit_edge

sw.bb10.if.end23_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then19:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %func_rsp11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %func_rsp11, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %data_length22 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %1, i32 0, i32 6, i32 0, i32 3
  %27 = ptrtoint ptr %data_length22 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %data_length22, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %sw.bb10.if.end23_crit_edge
  %vrq = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %28 = ptrtoint ptr %vrq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vrq, align 8
  %mgt_func = getelementptr inbounds %struct.atto_vda_mgmt_req, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %mgt_func to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mgt_func, align 1
  %data25 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %1, i32 0, i32 6, i32 0, i32 5
  tail call void @esas2r_nuxi_mgt_data(i8 noundef zeroext %31, ptr noundef %data25) #6
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %cfg_func = getelementptr inbounds %struct.atto_ioctl_vda, ptr %1, i32 0, i32 6, i32 0, i32 3
  %32 = ptrtoint ptr %cfg_func to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cfg_func, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp29 = icmp eq i8 %33, 1
  br i1 %cmp29, label %if.then31, label %if.else67

if.then31:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  %cmd27 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %1, i32 0, i32 6
  %func_rsp33 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #6
  %34 = call ptr @memset(ptr %buf, i32 255, i32 5)
  %35 = ptrtoint ptr %cmd27 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 1879048192, ptr %cmd27, align 1
  %36 = ptrtoint ptr %func_rsp33 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %func_rsp33, align 1
  %conv35 = zext i16 %37 to i32
  %38 = tail call i32 @llvm.bswap.i32(i32 %conv35)
  %data36 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %1, i32 0, i32 6, i32 0, i32 5
  %vda_version37 = getelementptr inbounds %struct.atto_vda_cfg_init, ptr %data36, i32 0, i32 2
  %39 = ptrtoint ptr %vda_version37 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %38, ptr %vda_version37, align 1
  %fw_build = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12, i32 0, i32 3
  %40 = ptrtoint ptr %fw_build to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %41 = load i32, ptr %fw_build, align 1
  %fw_build39 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %1, i32 0, i32 6, i32 0, i32 5, i32 0, i32 1
  %42 = ptrtoint ptr %fw_build39 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %41, ptr %fw_build39, align 1
  %fw_release = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12, i32 0, i32 2
  %43 = ptrtoint ptr %fw_release to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %fw_release, align 1
  %45 = tail call i16 @llvm.bswap.i16(i16 %44)
  %46 = and i16 %45, 255
  %conv41 = zext i16 %46 to i32
  %47 = lshr i16 %45, 8
  %conv44 = zext i16 %47 to i32
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 5, ptr noundef nonnull @.str, i32 noundef %conv41, i32 noundef %conv44)
  %fw_release47 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %1, i32 0, i32 6, i32 0, i32 5, i32 0, i32 1, i32 4
  %48 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %buf, align 4
  %50 = ptrtoint ptr %fw_release47 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %49, ptr %fw_release47, align 1
  %51 = ptrtoint ptr %fw_build39 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %fw_build39, align 1
  %conv54 = and i32 %52, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %conv54)
  %cmp56 = icmp eq i32 %conv54, 65
  %spec.select = select i1 %cmp56, i32 %52, i32 %49
  %53 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %1, i32 0, i32 6, i32 0, i32 5, i32 0, i32 0, i32 2
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %spec.select, ptr %53, align 1
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #6
  br label %sw.epilog

if.else67:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  %vrq68 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %55 = ptrtoint ptr %vrq68 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vrq68, align 8
  %sub_func69 = getelementptr inbounds %struct.atto_vda_cfg_req, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %sub_func69 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %sub_func69, align 1
  %data71 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %1, i32 0, i32 6, i32 0, i32 5
  tail call void @esas2r_nuxi_cfg_data(i8 noundef zeroext %58, ptr noundef %data71) #6
  br label %sw.epilog

sw.bb73:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %func_rsp74 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12
  %59 = ptrtoint ptr %func_rsp74 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %func_rsp74, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  %cmd75 = getelementptr inbounds %struct.atto_ioctl_vda, ptr %1, i32 0, i32 6
  %62 = ptrtoint ptr %cmd75 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %cmd75, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb73, %if.else67, %if.then31, %if.end23, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_nuxi_mgt_data(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_nuxi_cfg_data(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_start_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_build_flash_req(ptr nocapture noundef readnone %a, ptr noundef %rq, i8 noundef zeroext %sub_func, i8 noundef zeroext %cksum, i32 noundef %addr, i32 noundef %length) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vrq1 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %vrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrq1, align 8
  %handle1.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %handle1.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %handle1.i, align 1
  %4 = call ptr @memset(ptr %1, i32 0, i32 1024)
  %5 = load ptr, ptr %vrq1, align 8
  %handle4.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %handle4.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %3, ptr %handle4.i, align 1
  %req_stat.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %7 = ptrtoint ptr %req_stat.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -2, ptr %req_stat.i, align 1
  %8 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 256)
  %req_list.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1
  %12 = ptrtoint ptr %req_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %req_list.i, ptr %req_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %req_list.i, ptr %prev.i.i, align 4
  %14 = load ptr, ptr %vrq1, align 8
  %function = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %function to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %function, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %sub_func)
  %switch = icmp ult i8 %sub_func, 3
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sg_list_offset = getelementptr inbounds %struct.atto_vda_flash_req, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %sg_list_offset to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 20, ptr %sg_list_offset, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = tail call i32 @llvm.bswap.i32(i32 %length)
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %1, align 1
  %19 = tail call i32 @llvm.bswap.i32(i32 %addr)
  %flash_addr = getelementptr inbounds %struct.atto_vda_flash_req, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %flash_addr to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %flash_addr, align 1
  %checksum = getelementptr inbounds %struct.atto_vda_flash_req, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %checksum to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %cksum, ptr %checksum, align 1
  %sub_func12 = getelementptr inbounds %struct.atto_vda_flash_req, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %sub_func12 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %sub_func, ptr %sub_func12, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_build_mgt_req(ptr noundef %a, ptr noundef %rq, i8 noundef zeroext %sub_func, i8 noundef zeroext %scan_gen, i16 noundef zeroext %dev_index, i32 noundef %length, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vrq1 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %vrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrq1, align 8
  %handle1.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %handle1.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %handle1.i, align 1
  %4 = call ptr @memset(ptr %1, i32 0, i32 1024)
  %5 = load ptr, ptr %vrq1, align 8
  %handle4.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %handle4.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %3, ptr %handle4.i, align 1
  %req_stat.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %7 = ptrtoint ptr %req_stat.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -2, ptr %req_stat.i, align 1
  %8 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 256)
  %req_list.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1
  %12 = ptrtoint ptr %req_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %req_list.i, ptr %req_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %req_list.i, ptr %prev.i.i, align 4
  %14 = load ptr, ptr %vrq1, align 8
  %function = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %function to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 7, ptr %function, align 1
  %mgt_func = getelementptr inbounds %struct.atto_vda_mgmt_req, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %mgt_func to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %sub_func, ptr %mgt_func, align 1
  %scan_generation = getelementptr inbounds %struct.atto_vda_mgmt_req, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %scan_generation to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %scan_gen, ptr %scan_generation, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %dev_index)
  %dev_index3 = getelementptr inbounds %struct.atto_vda_mgmt_req, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %dev_index3 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %18, ptr %dev_index3, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %length)
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool.not = icmp eq i32 %length, 0
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool6.not = icmp eq i32 %24, 0
  %sg_list_offset10 = getelementptr inbounds %struct.atto_vda_mgmt_req, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %sg_list_offset10 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 24, ptr %sg_list_offset10, align 1
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %length, 16777216
  %26 = tail call i32 @llvm.bswap.i32(i32 %or)
  %27 = getelementptr inbounds %struct.atto_vda_mgmt_req, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %26, ptr %27, align 1
  %vrq_md = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 3
  %29 = ptrtoint ptr %vrq_md to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vrq_md, align 4
  %phys_addr = getelementptr inbounds %struct.esas2r_mem_desc, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %phys_addr, align 8
  %add = add i64 %32, 1024
  %33 = tail call i64 @llvm.bswap.i64(i64 %add)
  %address = getelementptr inbounds %struct.atto_vda_mgmt_req, ptr %1, i32 0, i32 11, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %address to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %address, align 1
  br label %if.end17

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %35 = getelementptr inbounds %struct.atto_vda_mgmt_req, ptr %1, i32 0, i32 11
  %ctl_len = getelementptr inbounds %struct.atto_physical_region_description, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %ctl_len to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %20, ptr %ctl_len, align 1
  %vrq_md12 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 3
  %37 = ptrtoint ptr %vrq_md12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vrq_md12, align 4
  %phys_addr13 = getelementptr inbounds %struct.esas2r_mem_desc, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %phys_addr13 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %phys_addr13, align 8
  %add14 = add i64 %40, 1024
  %41 = tail call i64 @llvm.bswap.i64(i64 %add14)
  %42 = ptrtoint ptr %35 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 8)
  store i64 %41, ptr %35, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then7, %entry.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %data, null
  br i1 %tobool18.not, label %if.end17.if.end22_crit_edge, label %if.then19

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @esas2r_nuxi_mgt_data(i8 noundef zeroext %sub_func, ptr noundef nonnull %data) #6
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %8, align 8
  %45 = call ptr @memcpy(ptr %44, ptr %data, i32 %length)
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end17.if.end22_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_build_ae_req(ptr noundef %a, ptr noundef %rq) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vrq1 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %vrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrq1, align 8
  %handle1.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %handle1.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %handle1.i, align 1
  %4 = call ptr @memset(ptr %1, i32 0, i32 1024)
  %5 = load ptr, ptr %vrq1, align 8
  %handle4.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %handle4.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %3, ptr %handle4.i, align 1
  %req_stat.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %7 = ptrtoint ptr %req_stat.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -2, ptr %req_stat.i, align 1
  %8 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 256)
  %req_list.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1
  %12 = ptrtoint ptr %req_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %req_list.i, ptr %req_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %req_list.i, ptr %prev.i.i, align 4
  %14 = load ptr, ptr %vrq1, align 8
  %function = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %function to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %function, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 65536, ptr %1, align 1
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  %sg_list_offset6 = getelementptr inbounds %struct.atto_vda_ae_req, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %sg_list_offset6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 12, ptr %sg_list_offset6, align 1
  %21 = getelementptr inbounds %struct.atto_vda_ae_req, ptr %1, i32 0, i32 6
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 257, ptr %21, align 1
  %vrq_md = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 3
  %23 = ptrtoint ptr %vrq_md to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vrq_md, align 4
  %phys_addr = getelementptr inbounds %struct.esas2r_mem_desc, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %phys_addr to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %phys_addr, align 8
  %add = add i64 %26, 1024
  %27 = tail call i64 @llvm.bswap.i64(i64 %add)
  %address = getelementptr inbounds %struct.atto_vda_ae_req, ptr %1, i32 0, i32 6, i32 0, i32 0, i32 1
  %28 = ptrtoint ptr %address to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 %27, ptr %address, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ctl_len = getelementptr inbounds %struct.atto_physical_region_description, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %ctl_len to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 256, ptr %ctl_len, align 1
  %vrq_md9 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 3
  %30 = ptrtoint ptr %vrq_md9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vrq_md9, align 4
  %phys_addr10 = getelementptr inbounds %struct.esas2r_mem_desc, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %phys_addr10 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %phys_addr10, align 8
  %add11 = add i64 %33, 1024
  %34 = tail call i64 @llvm.bswap.i64(i64 %add11)
  %35 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %34, ptr %21, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_build_cli_req(ptr nocapture noundef readnone %a, ptr noundef %rq, i32 noundef %length, i32 noundef %cmd_rsp_len) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vrq1 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %vrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrq1, align 8
  %handle1.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %handle1.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %handle1.i, align 1
  %4 = call ptr @memset(ptr %1, i32 0, i32 1024)
  %5 = load ptr, ptr %vrq1, align 8
  %handle4.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %handle4.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %3, ptr %handle4.i, align 1
  %req_stat.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %7 = ptrtoint ptr %req_stat.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -2, ptr %req_stat.i, align 1
  %8 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 256)
  %req_list.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1
  %12 = ptrtoint ptr %req_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %req_list.i, ptr %req_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %req_list.i, ptr %prev.i.i, align 4
  %14 = load ptr, ptr %vrq1, align 8
  %function = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %function to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %function, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %length)
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %1, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %cmd_rsp_len)
  %cmd_rsp_len4 = getelementptr inbounds %struct.atto_vda_cli_req, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %cmd_rsp_len4 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %18, ptr %cmd_rsp_len4, align 1
  %sg_list_offset = getelementptr inbounds %struct.atto_vda_cli_req, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %sg_list_offset to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 16, ptr %sg_list_offset, align 1
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_build_ioctl_req(ptr nocapture noundef readnone %a, ptr noundef %rq, i32 noundef %length, i8 noundef zeroext %sub_func) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vrq1 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %vrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrq1, align 8
  %handle1.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %handle1.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %handle1.i, align 1
  %4 = call ptr @memset(ptr %1, i32 0, i32 1024)
  %5 = load ptr, ptr %vrq1, align 8
  %handle4.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %handle4.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %3, ptr %handle4.i, align 1
  %req_stat.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %7 = ptrtoint ptr %req_stat.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -2, ptr %req_stat.i, align 1
  %8 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 256)
  %req_list.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1
  %12 = ptrtoint ptr %req_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %req_list.i, ptr %req_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %req_list.i, ptr %prev.i.i, align 4
  %14 = load ptr, ptr %vrq1, align 8
  %function = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %function to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 5, ptr %function, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %length)
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %1, align 1
  %sub_func4 = getelementptr inbounds %struct.atto_vda_ioctl_req, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %sub_func4 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %sub_func, ptr %sub_func4, align 1
  %sg_list_offset = getelementptr inbounds %struct.atto_vda_ioctl_req, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %sg_list_offset to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 32, ptr %sg_list_offset, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_build_cfg_req(ptr nocapture noundef readnone %a, ptr noundef %rq, i8 noundef zeroext %sub_func, i32 noundef %length, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vrq1 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %0 = ptrtoint ptr %vrq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vrq1, align 8
  %handle1.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %handle1.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %handle1.i, align 1
  %4 = call ptr @memset(ptr %1, i32 0, i32 1024)
  %5 = load ptr, ptr %vrq1, align 8
  %handle4.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %handle4.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %3, ptr %handle4.i, align 1
  %req_stat.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %7 = ptrtoint ptr %req_stat.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -2, ptr %req_stat.i, align 1
  %8 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 256)
  %req_list.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1
  %12 = ptrtoint ptr %req_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %req_list.i, ptr %req_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %req_list.i, ptr %prev.i.i, align 4
  %14 = load ptr, ptr %vrq1, align 8
  %function = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %function to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 6, ptr %function, align 1
  %sub_func3 = getelementptr inbounds %struct.atto_vda_cfg_req, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %sub_func3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %sub_func, ptr %sub_func3, align 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %length)
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %1, align 1
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @esas2r_nuxi_cfg_data(i8 noundef zeroext %sub_func, ptr noundef nonnull %data) #6
  %data5 = getelementptr inbounds %struct.atto_vda_cfg_req, ptr %1, i32 0, i32 6
  %19 = call ptr @memcpy(ptr %data5, ptr %data, i32 %length)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @esas2r_vdaioctl_versions, !1, !"esas2r_vdaioctl_versions", i1 false, i1 false}
!1 = !{!"../drivers/scsi/esas2r/esas2r_vda.c", i32 47, i32 11}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/esas2r/esas2r_vda.c", i32 313, i32 31}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"branch_weights", i32 1, i32 2000}
