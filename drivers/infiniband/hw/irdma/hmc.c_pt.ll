; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/irdma/hmc.c_pt.bc'
source_filename = "../drivers/infiniband/hw/irdma/hmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.irdma_update_sds_info = type { i32, i8, [11 x %struct.irdma_update_sd_entry] }
%struct.irdma_update_sd_entry = type { i64, i64 }
%struct.irdma_sc_dev = type { %struct.list_head, %struct.spinlock, [128 x i8], [32 x %struct.irdma_dma_mem], i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr], i32, [6 x i64], [6 x i64], [13 x i64], [33 x i64], [27 x i64], [51 x i64], %struct.irdma_hw_attrs, ptr, ptr, ptr, [1024 x ptr], ptr, ptr, %struct.irdma_hmc_fpm_misc, ptr, %struct.mutex, i16, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irdma_dma_mem = type { ptr, i32, i32 }
%struct.irdma_hw_attrs = type { %struct.irdma_uk_attrs, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.irdma_uk_attrs = type { i64, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.irdma_hmc_fpm_misc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irdma_sc_cqp = type { i32, i64, i64, ptr, ptr, ptr, %struct.irdma_dma_mem, %struct.irdma_ring, ptr, %struct.irdma_dcqcn_cc_params, ptr, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.irdma_ring = type { i32, i32, i32 }
%struct.irdma_dcqcn_cc_params = type { i8, i8, i8, i8, i16, i16, i16, i32, i32 }
%struct.irdma_hmc_create_obj_info = type { ptr, %struct.irdma_virt_mem, i32, i32, i32, i32, i32, i8 }
%struct.irdma_virt_mem = type { ptr, i32 }
%struct.irdma_hmc_info = type { i32, i8, i16, ptr, %struct.irdma_virt_mem, %struct.irdma_hmc_sd_table, [8192 x i16] }
%struct.irdma_hmc_sd_table = type { %struct.irdma_virt_mem, i32, i32, ptr }
%struct.irdma_hmc_obj_info = type { i64, i32, i32, i64 }
%struct.irdma_hmc_sd_entry = type { i32, i8, %union.anon.127 }
%union.anon.127 = type { %struct.irdma_hmc_pd_table }
%struct.irdma_hmc_pd_table = type { %struct.irdma_dma_mem, ptr, %struct.irdma_virt_mem, i32, i32 }
%struct.irdma_hw = type { ptr, ptr, ptr, %struct.irdma_hmc_info }
%struct.irdma_hmc_bp = type { i32, %struct.irdma_dma_mem, i32, i32 }
%struct.irdma_hmc_pd_entry = type { %struct.irdma_hmc_bp, i32, i8 }
%struct.irdma_hmc_del_obj_info = type { ptr, %struct.irdma_virt_mem, i32, i32, i32, i32, i8 }

@irdma_sc_create_hmc_obj.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"irdma\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"irdma_sc_create_hmc_obj\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/infiniband/hw/irdma/hmc.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"HMC: error type %u, start = %u, req cnt %u, cnt = %u\0A\00", [42 x i8] zeroinitializer }, align 32
@irdma_sc_del_hmc_obj.__UNIQUE_ID_ddebug558 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"irdma_sc_del_hmc_obj\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"HMC: error start_idx[%04d]  >= [type %04d].cnt[%04d]\0A\00", [42 x i8] zeroinitializer }, align 32
@irdma_sc_del_hmc_obj.__UNIQUE_ID_ddebug559 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"HMC: error start_idx[%04d] + count %04d  >= [type %04d].cnt[%04d]\0A\00", [61 x i8] zeroinitializer }, align 32
@irdma_sc_del_hmc_obj.__UNIQUE_ID_ddebug560 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.7, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HMC: remove_pd_bp error\0A\00", [39 x i8] zeroinitializer }, align 32
@irdma_sc_del_hmc_obj.__UNIQUE_ID_ddebug561 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.8, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HMC: invalid sd_idx\0A\00", [43 x i8] zeroinitializer }, align 32
@irdma_hmc_sd_grp.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irdma_hmc_sd_grp\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"HMC: sd_programming failed err=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@irdma_finish_del_sd_reg.__UNIQUE_ID_ddebug556 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"irdma_finish_del_sd_reg\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HMC: error cqp sd sd_grp\0A\00", [38 x i8] zeroinitializer }, align 32
@irdma_finish_del_sd_reg.__UNIQUE_ID_ddebug557 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HMC: error cqp sd mem\0A\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 242, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 387, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 396, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 423, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 435, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 179, i32 5 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 345, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [37 x i8] c"../drivers/infiniband/hw/irdma/hmc.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 354, i32 4 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_hmc_sd_one(ptr noundef %dev, i8 noundef zeroext %hmc_fn_id, i64 noundef %pa, i32 noundef %sd_idx, i32 noundef %type, i1 noundef zeroext %setsd) local_unnamed_addr #0 align 64 {
entry:
  %sdinfo = alloca %struct.irdma_update_sds_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %sdinfo) #6
  %0 = call ptr @memset(ptr %sdinfo, i32 255, i32 184)
  %1 = ptrtoint ptr %sdinfo to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %sdinfo, align 8
  %hmc_fn_id1 = getelementptr inbounds %struct.irdma_update_sds_info, ptr %sdinfo, i32 0, i32 1
  %2 = ptrtoint ptr %hmc_fn_id1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %hmc_fn_id, ptr %hmc_fn_id1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not.i = icmp eq i32 %type, 1
  br i1 %setsd, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = select i1 %cmp.not.i, i32 1, i32 2
  %conv29.i = zext i32 %shl.i to i64
  %or.i = or i64 %conv29.i, %pa
  %or43.i = or i64 %or.i, 2049
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or.i9 = select i1 %cmp.not.i, i32 2048, i32 2050
  %conv.i = zext i32 %or.i9 to i64
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %conv.i.sink = phi i64 [ %or43.i, %if.then ], [ %conv.i, %if.else ]
  %conv39.i.sink.in = or i32 %sd_idx, -2147450880
  %conv39.i.sink = zext i32 %conv39.i.sink.in to i64
  %3 = getelementptr inbounds %struct.irdma_update_sds_info, ptr %sdinfo, i32 0, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv.i.sink, ptr %3, align 8
  %5 = getelementptr inbounds %struct.irdma_update_sds_info, ptr %sdinfo, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv39.i.sink, ptr %5, align 8
  %cqp = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 27
  %7 = ptrtoint ptr %cqp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cqp, align 4
  %process_cqp_sds = getelementptr inbounds %struct.irdma_sc_cqp, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %process_cqp_sds to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %process_cqp_sds, align 8
  %call = call i32 %10(ptr noundef %dev, ptr noundef nonnull %sdinfo) #6
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %sdinfo) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_sc_create_hmc_obj(ptr noundef %dev, ptr nocapture noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %start_idx = getelementptr inbounds %struct.irdma_hmc_create_obj_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %start_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_idx, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %hmc_obj = getelementptr inbounds %struct.irdma_hmc_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hmc_obj, align 4
  %rsrc_type = getelementptr inbounds %struct.irdma_hmc_create_obj_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %rsrc_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rsrc_type, align 4
  %cnt = getelementptr %struct.irdma_hmc_obj_info, ptr %5, i32 %7, i32 2
  %8 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %9)
  %cmp.not = icmp ult i32 %1, %9
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %count = getelementptr inbounds %struct.irdma_hmc_create_obj_info, ptr %info, i32 0, i32 4
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  %add = add i32 %11, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp7 = icmp ugt i32 %add, %9
  br i1 %cmp7, label %do.body, label %if.end22

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_sc_create_hmc_obj.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_sc_create_hmc_obj, %if.then11)) #6
          to label %cleanup [label %if.then11], !srcloc !39

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call ptr @to_ibdev(ptr noundef %dev) #6
  %12 = ptrtoint ptr %rsrc_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rsrc_type, align 4
  %14 = ptrtoint ptr %start_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %start_idx, align 4
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info, align 4
  %hmc_obj17 = getelementptr inbounds %struct.irdma_hmc_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %hmc_obj17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hmc_obj17, align 4
  %cnt20 = getelementptr %struct.irdma_hmc_obj_info, ptr %21, i32 %13, i32 2
  %22 = ptrtoint ptr %cnt20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cnt20, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_sc_create_hmc_obj.__UNIQUE_ID_ddebug547, ptr noundef %call12, ptr noundef nonnull @.str.3, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %23) #6
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %arrayidx.i = getelementptr %struct.irdma_hmc_obj_info, ptr %5, i32 %7
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.i, align 8
  %size.i = getelementptr %struct.irdma_hmc_obj_info, ptr %5, i32 %7, i32 3
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %size.i, align 8
  %conv.i = zext i32 %1 to i64
  %mul.i = mul i64 %27, %conv.i
  %add.i = add i64 %mul.i, %25
  %conv6.i = zext i32 %11 to i64
  %mul7.i = mul i64 %27, %conv6.i
  %div19.i = lshr i64 %add.i, 21
  %conv9.i = trunc i64 %div19.i to i32
  %add8.i = add i64 %add.i, %mul7.i
  %sub.i = add i64 %add8.i, 9007199254740991
  %div1020.i = lshr i64 %sub.i, 21
  %conv11.i = trunc i64 %div1020.i to i32
  %add12.i = add i32 %conv11.i, 1
  %sd_cnt = getelementptr inbounds %struct.irdma_hmc_info, ptr %3, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %sd_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sd_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %conv9.i)
  %cmp28.not = icmp ule i32 %29, %conv9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i, i32 %29)
  %cmp32 = icmp ugt i32 %add12.i, %29
  %or.cond279 = select i1 %cmp28.not, i1 true, i1 %cmp32
  br i1 %or.cond279, label %if.end22.cleanup_crit_edge, label %if.end34

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  %div19.i250 = lshr i64 %add.i, 12
  %conv9.i251 = trunc i64 %div19.i250 to i32
  %sub.i253 = add i64 %add8.i, 17592186044415
  %div1020.i254 = lshr i64 %sub.i253, 12
  %conv11.i255 = trunc i64 %div1020.i254 to i32
  %add12.i256 = add i32 %conv11.i255, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i, i32 %conv9.i)
  %cmp39291 = icmp ugt i32 %add12.i, %conv9.i
  br i1 %cmp39291, label %for.body.lr.ph, label %if.end34.for.end94_crit_edge

if.end34.for.end94_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end94

for.body.lr.ph:                                   ; preds = %if.end34
  %hw = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 8
  %entry_type = getelementptr inbounds %struct.irdma_hmc_create_obj_info, ptr %info, i32 0, i32 6
  %hmc_info51 = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 26
  %add_sd_cnt = getelementptr inbounds %struct.irdma_hmc_create_obj_info, ptr %info, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc92.for.body_crit_edge, %for.body.lr.ph
  %j.0293 = phi i32 [ %conv9.i, %for.body.lr.ph ], [ %inc93, %for.inc92.for.body_crit_edge ]
  %pd_error.0.off0292 = phi i1 [ false, %for.body.lr.ph ], [ %pd_error.2.off0, %for.inc92.for.body_crit_edge ]
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 8
  %32 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info, align 4
  %34 = ptrtoint ptr %entry_type to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %entry_type, align 4
  %call41 = tail call i32 @irdma_add_sd_table_entry(ptr noundef %31, ptr noundef %33, i32 noundef %j.0293, i32 noundef %35, i64 noundef 2097152)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %while.cond96.preheader

while.cond96.preheader:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0293)
  %tobool97.not298 = icmp ne i32 %j.0293, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0293, i32 %conv9.i)
  %cmp99299 = icmp ugt i32 %j.0293, %conv9.i
  %or.cond280300 = select i1 %tobool97.not298, i1 %cmp99299, i1 false
  br i1 %or.cond280300, label %while.cond96.preheader.while.body102_crit_edge, label %while.cond96.preheader.cleanup_crit_edge

while.cond96.preheader.cleanup_crit_edge:         ; preds = %while.cond96.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond96.preheader.while.body102_crit_edge:   ; preds = %while.cond96.preheader
  br label %while.body102

if.end44:                                         ; preds = %for.body
  %36 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info, align 4
  %sd_entry47 = getelementptr inbounds %struct.irdma_hmc_info, ptr %37, i32 0, i32 5, i32 3
  %38 = ptrtoint ptr %sd_entry47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sd_entry47, align 4
  %arrayidx48 = getelementptr %struct.irdma_hmc_sd_entry, ptr %39, i32 %j.0293
  %40 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp50 = icmp eq i32 %41, 1
  br i1 %cmp50, label %land.lhs.true, label %if.end44.if.end83_crit_edge

if.end44.if.end83_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

land.lhs.true:                                    ; preds = %if.end44
  %42 = ptrtoint ptr %hmc_info51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hmc_info51, align 8
  %cmp53 = icmp eq ptr %43, %37
  br i1 %cmp53, label %land.lhs.true54, label %land.lhs.true.if.end83_crit_edge

land.lhs.true.if.end83_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

land.lhs.true54:                                  ; preds = %land.lhs.true
  %44 = ptrtoint ptr %rsrc_type to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rsrc_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %45)
  %cmp56.not = icmp eq i32 %45, 14
  br i1 %cmp56.not, label %land.lhs.true54.if.end83_crit_edge, label %if.then57

land.lhs.true54.if.end83_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

if.then57:                                        ; preds = %land.lhs.true54
  %mul = shl i32 %j.0293, 9
  %46 = tail call i32 @llvm.umax.i32(i32 %mul, i32 %conv9.i251)
  %mul61 = add i32 %mul, 512
  %47 = tail call i32 @llvm.umin.i32(i32 %add12.i256, i32 %mul61)
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %47)
  %cmp69282 = icmp ult i32 %46, %47
  br i1 %cmp69282, label %if.then57.for.body70_crit_edge, label %if.then57.for.end_crit_edge

if.then57.for.end_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then57.for.body70_crit_edge:                   ; preds = %if.then57
  br label %for.body70

for.body70:                                       ; preds = %for.inc.for.body70_crit_edge, %if.then57.for.body70_crit_edge
  %i.0283 = phi i32 [ %inc, %for.inc.for.body70_crit_edge ], [ %46, %if.then57.for.body70_crit_edge ]
  %48 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %info, align 4
  %call72 = tail call i32 @irdma_add_pd_table_entry(ptr noundef %dev, ptr noundef %49, i32 noundef %i.0283, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %for.inc, label %for.body70.while.cond.preheader_crit_edge

for.body70.while.cond.preheader_crit_edge:        ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader

for.inc:                                          ; preds = %for.body70
  %inc = add nuw i32 %i.0283, 1
  %cmp69 = icmp ult i32 %inc, %47
  br i1 %cmp69, label %for.inc.for.body70_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body70_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body70

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then57.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %46, %if.then57.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  br i1 %pd_error.0.off0292, label %for.end.while.cond.preheader_crit_edge, label %for.end.if.end83_crit_edge

for.end.if.end83_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

for.end.while.cond.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.end.while.cond.preheader_crit_edge, %for.body70.while.cond.preheader_crit_edge
  %i.0.lcssa308 = phi i32 [ %i.0.lcssa, %for.end.while.cond.preheader_crit_edge ], [ %i.0283, %for.body70.while.cond.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa308)
  %tobool78.not287 = icmp ne i32 %i.0.lcssa308, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa308, i32 %46)
  %cmp79288 = icmp ugt i32 %i.0.lcssa308, %46
  %or.cond289 = select i1 %tobool78.not287, i1 %cmp79288, i1 false
  br i1 %or.cond289, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.end83_crit_edge

while.cond.preheader.if.end83_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.1290 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %i.0.lcssa308, %while.cond.preheader.while.body_crit_edge ]
  %50 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %info, align 4
  %sub = add i32 %i.1290, -1
  %call81 = tail call i32 @irdma_remove_pd_bp(ptr noundef %dev, ptr noundef %51, i32 noundef %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool78.not = icmp ne i32 %sub, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %46)
  %cmp79 = icmp ugt i32 %sub, %46
  %or.cond = select i1 %tobool78.not, i1 %cmp79, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.if.end83_crit_edge

while.body.if.end83_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end83:                                         ; preds = %while.body.if.end83_crit_edge, %while.cond.preheader.if.end83_crit_edge, %for.end.if.end83_crit_edge, %land.lhs.true54.if.end83_crit_edge, %land.lhs.true.if.end83_crit_edge, %if.end44.if.end83_crit_edge
  %pd_error.2.off0 = phi i1 [ false, %for.end.if.end83_crit_edge ], [ %pd_error.0.off0292, %land.lhs.true54.if.end83_crit_edge ], [ %pd_error.0.off0292, %land.lhs.true.if.end83_crit_edge ], [ %pd_error.0.off0292, %if.end44.if.end83_crit_edge ], [ true, %while.cond.preheader.if.end83_crit_edge ], [ true, %while.body.if.end83_crit_edge ]
  %valid = getelementptr %struct.irdma_hmc_sd_entry, ptr %39, i32 %j.0293, i32 1
  %52 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %valid, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool84.not = icmp eq i8 %53, 0
  br i1 %tobool84.not, label %if.end86, label %if.end83.for.inc92_crit_edge

if.end83.for.inc92_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc92

if.end86:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %j.0293 to i16
  %54 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info, align 4
  %56 = ptrtoint ptr %add_sd_cnt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add_sd_cnt, align 4
  %arrayidx88 = getelementptr %struct.irdma_hmc_info, ptr %55, i32 0, i32 6, i32 %57
  %58 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv, ptr %arrayidx88, align 2
  %59 = load i32, ptr %add_sd_cnt, align 4
  %inc90 = add i32 %59, 1
  store i32 %inc90, ptr %add_sd_cnt, align 4
  %60 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %valid, align 4
  br label %for.inc92

for.inc92:                                        ; preds = %if.end86, %if.end83.for.inc92_crit_edge
  %inc93 = add nuw i32 %j.0293, 1
  %exitcond.not = icmp eq i32 %j.0293, %conv11.i
  br i1 %exitcond.not, label %for.inc92.for.end94_crit_edge, label %for.inc92.for.body_crit_edge

for.inc92.for.body_crit_edge:                     ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc92.for.end94_crit_edge:                    ; preds = %for.inc92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end94

for.end94:                                        ; preds = %for.inc92.for.end94_crit_edge, %if.end34.for.end94_crit_edge
  %61 = ptrtoint ptr %start_idx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %start_idx, align 4
  %63 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %info, align 4
  %hmc_obj.i257 = getelementptr inbounds %struct.irdma_hmc_info, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %hmc_obj.i257 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hmc_obj.i257, align 4
  %67 = ptrtoint ptr %rsrc_type to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rsrc_type, align 4
  %cnt.i = getelementptr %struct.irdma_hmc_obj_info, ptr %66, i32 %68, i32 2
  %69 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cnt.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %70)
  %cmp.not.i = icmp ult i32 %62, %70
  br i1 %cmp.not.i, label %if.end.i, label %for.end94.cleanup_crit_edge

for.end94.cleanup_crit_edge:                      ; preds = %for.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %for.end94
  %71 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %count, align 4
  %add.i258 = add i32 %72, %62
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i258, i32 %70)
  %cmp7.i = icmp ugt i32 %add.i258, %70
  br i1 %cmp7.i, label %if.end.i.cleanup_crit_edge, label %if.end9.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %add_sd_cnt.i = getelementptr inbounds %struct.irdma_hmc_create_obj_info, ptr %info, i32 0, i32 5
  %73 = ptrtoint ptr %add_sd_cnt.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %add_sd_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i, label %if.end9.i.cleanup_crit_edge, label %if.end11.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %sd_indexes.i = getelementptr inbounds %struct.irdma_hmc_info, ptr %64, i32 0, i32 6
  %75 = ptrtoint ptr %sd_indexes.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %sd_indexes.i, align 4
  %conv.i259 = zext i16 %76 to i32
  %call.i = tail call fastcc i32 @irdma_hmc_sd_grp(ptr noundef %dev, ptr noundef %64, i32 noundef %conv.i259, i32 noundef %74, i1 noundef zeroext true) #6
  br label %cleanup

while.body102:                                    ; preds = %sw.epilog.while.body102_crit_edge, %while.cond96.preheader.while.body102_crit_edge
  %j.1302 = phi i32 [ %sub106, %sw.epilog.while.body102_crit_edge ], [ %j.0293, %while.cond96.preheader.while.body102_crit_edge ]
  %ret_code.0301 = phi i32 [ %ret_code.1, %sw.epilog.while.body102_crit_edge ], [ %call41, %while.cond96.preheader.while.body102_crit_edge ]
  %77 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %info, align 4
  %sd_entry105 = getelementptr inbounds %struct.irdma_hmc_info, ptr %78, i32 0, i32 5, i32 3
  %79 = ptrtoint ptr %sd_entry105 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %sd_entry105, align 4
  %sub106 = add i32 %j.1302, -1
  %arrayidx107 = getelementptr %struct.irdma_hmc_sd_entry, ptr %80, i32 %sub106
  %81 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx107, align 4
  %83 = zext i32 %82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values)
  switch i32 %82, label %while.body102.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb135
  ]

while.body102.sw.epilog_crit_edge:                ; preds = %while.body102
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %while.body102
  %mul110 = shl i32 %sub106, 9
  %84 = tail call i32 @llvm.umax.i32(i32 %mul110, i32 %conv9.i251)
  %mul118 = shl i32 %j.1302, 9
  %85 = tail call i32 @llvm.umin.i32(i32 %add12.i256, i32 %mul118)
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %85)
  %cmp127295 = icmp ult i32 %84, %85
  br i1 %cmp127295, label %sw.bb.for.body129_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.for.body129_crit_edge:                      ; preds = %sw.bb
  br label %for.body129

for.body129:                                      ; preds = %irdma_prep_remove_pd_page.exit.for.body129_crit_edge, %sw.bb.for.body129_crit_edge
  %i.2296 = phi i32 [ %inc133, %irdma_prep_remove_pd_page.exit.for.body129_crit_edge ], [ %84, %sw.bb.for.body129_crit_edge ]
  %86 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %info, align 4
  %sd_entry1.i = getelementptr inbounds %struct.irdma_hmc_info, ptr %87, i32 0, i32 5, i32 3
  %88 = ptrtoint ptr %sd_entry1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sd_entry1.i, align 4
  %use_cnt.i = getelementptr %struct.irdma_hmc_sd_entry, ptr %89, i32 %i.2296, i32 2, i32 0, i32 3
  %90 = ptrtoint ptr %use_cnt.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %use_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i261 = icmp eq i32 %91, 0
  br i1 %tobool.not.i261, label %if.end.i262, label %for.body129.irdma_prep_remove_pd_page.exit_crit_edge

for.body129.irdma_prep_remove_pd_page.exit_crit_edge: ; preds = %for.body129
  call void @__sanitizer_cov_trace_pc() #8
  br label %irdma_prep_remove_pd_page.exit

if.end.i262:                                      ; preds = %for.body129
  call void @__sanitizer_cov_trace_pc() #8
  %valid.i = getelementptr %struct.irdma_hmc_sd_entry, ptr %89, i32 %i.2296, i32 1
  %92 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %valid.i, align 4
  %use_cnt3.i = getelementptr inbounds %struct.irdma_hmc_info, ptr %87, i32 0, i32 5, i32 2
  %93 = ptrtoint ptr %use_cnt3.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %use_cnt3.i, align 4
  %dec.i = add i32 %94, -1
  store i32 %dec.i, ptr %use_cnt3.i, align 4
  br label %irdma_prep_remove_pd_page.exit

irdma_prep_remove_pd_page.exit:                   ; preds = %if.end.i262, %for.body129.irdma_prep_remove_pd_page.exit_crit_edge
  %inc133 = add nuw i32 %i.2296, 1
  %cmp127 = icmp ult i32 %inc133, %85
  br i1 %cmp127, label %irdma_prep_remove_pd_page.exit.for.body129_crit_edge, label %irdma_prep_remove_pd_page.exit.sw.epilog_crit_edge

irdma_prep_remove_pd_page.exit.sw.epilog_crit_edge: ; preds = %irdma_prep_remove_pd_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

irdma_prep_remove_pd_page.exit.for.body129_crit_edge: ; preds = %irdma_prep_remove_pd_page.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body129

sw.bb135:                                         ; preds = %while.body102
  %use_cnt.i265 = getelementptr %struct.irdma_hmc_sd_entry, ptr %80, i32 %sub106, i32 2, i32 0, i32 3
  %95 = ptrtoint ptr %use_cnt.i265 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %use_cnt.i265, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i266 = icmp eq i32 %96, 0
  br i1 %tobool.not.i266, label %if.end.i270, label %sw.bb135.sw.epilog_crit_edge

sw.bb135.sw.epilog_crit_edge:                     ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i270:                                      ; preds = %sw.bb135
  call void @__sanitizer_cov_trace_pc() #8
  %valid.i267 = getelementptr %struct.irdma_hmc_sd_entry, ptr %80, i32 %sub106, i32 1
  %97 = ptrtoint ptr %valid.i267 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 0, ptr %valid.i267, align 4
  %use_cnt3.i268 = getelementptr inbounds %struct.irdma_hmc_info, ptr %78, i32 0, i32 5, i32 2
  %98 = ptrtoint ptr %use_cnt3.i268 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %use_cnt3.i268, align 4
  %dec.i269 = add i32 %99, -1
  store i32 %dec.i269, ptr %use_cnt3.i268, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i270, %sw.bb135.sw.epilog_crit_edge, %irdma_prep_remove_pd_page.exit.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %while.body102.sw.epilog_crit_edge
  %ret_code.1 = phi i32 [ -37, %while.body102.sw.epilog_crit_edge ], [ %ret_code.0301, %sw.bb135.sw.epilog_crit_edge ], [ %ret_code.0301, %if.end.i270 ], [ %ret_code.0301, %sw.bb.sw.epilog_crit_edge ], [ %ret_code.0301, %irdma_prep_remove_pd_page.exit.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub106)
  %tobool97.not = icmp ne i32 %sub106, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub106, i32 %conv9.i)
  %cmp99 = icmp ugt i32 %sub106, %conv9.i
  %or.cond280 = select i1 %tobool97.not, i1 %cmp99, i1 false
  br i1 %or.cond280, label %sw.epilog.while.body102_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog.while.body102_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body102

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %if.end11.i, %if.end9.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.end94.cleanup_crit_edge, %while.cond96.preheader.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then11, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -39, %entry.cleanup_crit_edge ], [ -40, %if.then11 ], [ -35, %if.end22.cleanup_crit_edge ], [ -40, %do.body ], [ %call.i, %if.end11.i ], [ -39, %for.end94.cleanup_crit_edge ], [ -40, %if.end.i.cleanup_crit_edge ], [ 0, %if.end9.i.cleanup_crit_edge ], [ %call41, %while.cond96.preheader.cleanup_crit_edge ], [ %ret_code.1, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_ibdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @to_ibdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_add_sd_table_entry(ptr nocapture noundef readonly %hw, ptr nocapture noundef %hmc_info, i32 noundef %sd_index, i32 noundef %type, i64 noundef %direct_mode_sz) local_unnamed_addr #0 align 64 {
entry:
  %dma_mem = alloca %struct.irdma_dma_mem, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %dma_mem) #6
  %0 = ptrtoint ptr %dma_mem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %dma_mem, align 4, !annotation !41
  %1 = getelementptr inbounds %struct.irdma_dma_mem, ptr %dma_mem, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !41
  %3 = getelementptr inbounds %struct.irdma_dma_mem, ptr %dma_mem, i32 0, i32 2
  %sd_entry1 = getelementptr inbounds %struct.irdma_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %sd_entry1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_entry1, align 4
  %arrayidx = getelementptr %struct.irdma_hmc_sd_entry, ptr %5, i32 %sd_index
  %valid = getelementptr %struct.irdma_hmc_sd_entry, ptr %5, i32 %sd_index, i32 1
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %valid, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  %8 = trunc i64 %direct_mode_sz to i32
  %9 = add i32 %8, 4095
  %extract.t = and i32 %9, -4096
  %alloc_len.0.off0 = select i1 %cmp, i32 4096, i32 %extract.t
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %alloc_len.0.off0, ptr %3, align 4
  %device = getelementptr inbounds %struct.irdma_hw, ptr %hw, i32 0, i32 2
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %12, i32 noundef %alloc_len.0.off0, ptr noundef %1, i32 noundef 3264, i32 noundef 0) #6
  %13 = ptrtoint ptr %dma_mem to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %dma_mem, align 4
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.then.cleanup44_crit_edge, label %if.end7

if.then.cleanup44_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup44

if.end7:                                          ; preds = %if.then
  %u = getelementptr %struct.irdma_hmc_sd_entry, ptr %5, i32 %sd_index, i32 2
  br i1 %cmp, label %if.then10, label %if.else27

if.then10:                                        ; preds = %if.end7
  %pd_entry_virt_mem = getelementptr inbounds %struct.irdma_hmc_pd_table, ptr %u, i32 0, i32 2
  %size11 = getelementptr inbounds %struct.irdma_hmc_pd_table, ptr %u, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %size11 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 16384, ptr %size11, align 1
  %call1.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3520, i32 noundef 2) #9
  %15 = ptrtoint ptr %pd_entry_virt_mem to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store ptr %call1.i.i.i, ptr %pd_entry_virt_mem, align 1
  %tobool16.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool16.not, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  %20 = ptrtoint ptr %dma_mem to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_mem, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %1, align 4
  call void @dma_free_attrs(ptr noundef %17, i32 noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef 0) #6
  br label %cleanup44

if.end23:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  %pd_entry = getelementptr inbounds %struct.irdma_hmc_pd_table, ptr %u, i32 0, i32 1
  %24 = ptrtoint ptr %pd_entry to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call1.i.i.i, ptr %pd_entry, align 4
  %25 = call ptr @memcpy(ptr %u, ptr %dma_mem, i32 12)
  br label %if.end30

if.else27:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %addr = getelementptr inbounds %struct.irdma_hmc_bp, ptr %u, i32 0, i32 1
  %26 = call ptr @memcpy(ptr %addr, ptr %dma_mem, i32 12)
  %sd_pd_index = getelementptr inbounds %struct.irdma_hmc_bp, ptr %u, i32 0, i32 2
  %27 = ptrtoint ptr %sd_pd_index to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sd_index, ptr %sd_pd_index, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.end23
  %28 = ptrtoint ptr %sd_entry1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sd_entry1, align 4
  %arrayidx33 = getelementptr %struct.irdma_hmc_sd_entry, ptr %29, i32 %sd_index
  %30 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %type, ptr %arrayidx33, align 4
  %use_cnt = getelementptr inbounds %struct.irdma_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 2
  %31 = ptrtoint ptr %use_cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %use_cnt, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %use_cnt, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end30, %entry.if.end35_crit_edge
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp37 = icmp eq i32 %34, 2
  br i1 %cmp37, label %if.then39, label %if.end35.cleanup44_crit_edge

if.end35.cleanup44_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup44

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %use_cnt41 = getelementptr %struct.irdma_hmc_sd_entry, ptr %5, i32 %sd_index, i32 2, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %use_cnt41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %use_cnt41, align 4
  %inc42 = add i32 %36, 1
  store i32 %inc42, ptr %use_cnt41, align 4
  br label %cleanup44

cleanup44:                                        ; preds = %if.then39, %if.end35.cleanup44_crit_edge, %if.then17, %if.then.cleanup44_crit_edge
  %retval.1 = phi i32 [ -9, %if.then.cleanup44_crit_edge ], [ -9, %if.then17 ], [ 0, %if.then39 ], [ 0, %if.end35.cleanup44_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %dma_mem) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_add_pd_table_entry(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %hmc_info, i32 noundef %pd_index, ptr noundef readonly %rsrc_pg) local_unnamed_addr #0 align 64 {
entry:
  %mem = alloca %struct.irdma_dma_mem, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mem) #6
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %mem, align 4, !annotation !41
  %1 = getelementptr inbounds %struct.irdma_dma_mem, ptr %mem, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !41
  %3 = getelementptr inbounds %struct.irdma_dma_mem, ptr %mem, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !41
  %div75 = lshr i32 %pd_index, 9
  %sd_cnt = getelementptr inbounds %struct.irdma_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %sd_cnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sd_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div75, i32 %6)
  %cmp.not = icmp ult i32 %div75, %6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd_entry = getelementptr inbounds %struct.irdma_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 3
  %7 = ptrtoint ptr %sd_entry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sd_entry, align 4
  %arrayidx = getelementptr %struct.irdma_hmc_sd_entry, ptr %8, i32 %div75
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp3.not = icmp eq i32 %10, 1
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %rem = and i32 %pd_index, 511
  %u = getelementptr %struct.irdma_hmc_sd_entry, ptr %8, i32 %div75, i32 2
  %pd_entry9 = getelementptr inbounds %struct.irdma_hmc_pd_table, ptr %u, i32 0, i32 1
  %11 = ptrtoint ptr %pd_entry9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pd_entry9, align 4
  %arrayidx10 = getelementptr %struct.irdma_hmc_pd_entry, ptr %12, i32 %rem
  %valid = getelementptr %struct.irdma_hmc_pd_entry, ptr %12, i32 %rem, i32 2
  %13 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %valid, align 4
  %14 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %bf.cast.not = icmp eq i8 %14, 0
  br i1 %bf.cast.not, label %if.then11, label %if.end5.if.end35_crit_edge

if.end5.if.end35_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then11:                                        ; preds = %if.end5
  %tobool.not = icmp eq ptr %rsrc_pg, null
  br i1 %tobool.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set = or i8 %bf.load, -128
  br label %if.end25

if.else:                                          ; preds = %if.then11
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %3, align 4
  %hw = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 8
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %device = getelementptr inbounds %struct.irdma_hw, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %19, i32 noundef 4096, ptr noundef %1, i32 noundef 3264, i32 noundef 0) #6
  %20 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %mem, align 4
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.else.cleanup_crit_edge, label %if.end20

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load22 = load i8, ptr %valid, align 4
  %bf.clear23 = and i8 %bf.load22, 127
  br label %if.end25

if.end25:                                         ; preds = %if.end20, %if.then12
  %storemerge = phi i8 [ %bf.clear23, %if.end20 ], [ %bf.set, %if.then12 ]
  %page.0 = phi ptr [ %mem, %if.end20 ], [ %rsrc_pg, %if.then12 ]
  %22 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %storemerge, ptr %valid, align 4
  %addr = getelementptr inbounds %struct.irdma_hmc_bp, ptr %arrayidx10, i32 0, i32 1
  %23 = call ptr @memcpy(ptr %addr, ptr %page.0, i32 12)
  %sd_pd_index = getelementptr inbounds %struct.irdma_hmc_bp, ptr %arrayidx10, i32 0, i32 2
  %24 = ptrtoint ptr %sd_pd_index to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %pd_index, ptr %sd_pd_index, align 4
  %25 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %arrayidx10, align 4
  %pa29 = getelementptr inbounds %struct.irdma_dma_mem, ptr %page.0, i32 0, i32 1
  %26 = ptrtoint ptr %pa29 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %pa29, align 1
  %or = or i32 %27, 1
  %conv = zext i32 %or to i64
  %28 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %u, align 4
  %add.ptr = getelementptr i64, ptr %29, i32 %rem
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv, ptr %add.ptr, align 8
  %sd_index = getelementptr %struct.irdma_hmc_pd_entry, ptr %12, i32 %rem, i32 1
  %31 = ptrtoint ptr %sd_index to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div75, ptr %sd_index, align 4
  %bf.load32 = load i8, ptr %valid, align 4
  %bf.set34 = or i8 %bf.load32, 64
  store i8 %bf.set34, ptr %valid, align 4
  %use_cnt = getelementptr inbounds %struct.irdma_hmc_pd_table, ptr %u, i32 0, i32 3
  %32 = ptrtoint ptr %use_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %use_cnt, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %use_cnt, align 4
  %and13.i = and i32 %div75, 4095
  %shl52.i = shl nuw nsw i32 %rem, 16
  %or.i = or i32 %and13.i, %shl52.i
  %or54.i = or i32 %or.i, 32768
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  call void @arm_heavy_mb() #6
  %34 = call i32 @llvm.bswap.i32(i32 %or54.i) #6
  %arrayidx.i = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 17, i32 19
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #6, !srcloc !43
  br label %if.end35

if.end35:                                         ; preds = %if.end25, %if.end5.if.end35_crit_edge
  %use_cnt37 = getelementptr inbounds %struct.irdma_hmc_bp, ptr %arrayidx10, i32 0, i32 3
  %37 = ptrtoint ptr %use_cnt37 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %use_cnt37, align 4
  %inc38 = add i32 %38, 1
  store i32 %inc38, ptr %use_cnt37, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ -36, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -9, %if.else.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mem) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_remove_pd_bp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %hmc_info, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %div59 = lshr i32 %idx, 9
  %rem = and i32 %idx, 511
  %sd_cnt = getelementptr inbounds %struct.irdma_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %sd_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div59, i32 %1)
  %cmp.not = icmp ult i32 %div59, %1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd_entry2 = getelementptr inbounds %struct.irdma_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 3
  %2 = ptrtoint ptr %sd_entry2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_entry2, align 4
  %arrayidx = getelementptr %struct.irdma_hmc_sd_entry, ptr %3, i32 %div59
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp3.not = icmp eq i32 %5, 1
  br i1 %cmp3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %u = getelementptr %struct.irdma_hmc_sd_entry, ptr %3, i32 %div59, i32 2
  %pd_entry9 = getelementptr inbounds %struct.irdma_hmc_pd_table, ptr %u, i32 0, i32 1
  %6 = ptrtoint ptr %pd_entry9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pd_entry9, align 4
  %arrayidx10 = getelementptr %struct.irdma_hmc_pd_entry, ptr %7, i32 %rem
  %use_cnt = getelementptr inbounds %struct.irdma_hmc_bp, ptr %arrayidx10, i32 0, i32 3
  %8 = ptrtoint ptr %use_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %use_cnt, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %use_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end12, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %valid = getelementptr %struct.irdma_hmc_pd_entry, ptr %7, i32 %rem, i32 2
  %10 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %valid, align 4
  %bf.clear = and i8 %bf.load, -65
  store i8 %bf.clear, ptr %valid, align 4
  %use_cnt13 = getelementptr inbounds %struct.irdma_hmc_pd_table, ptr %u, i32 0, i32 3
  %11 = ptrtoint ptr %use_cnt13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %use_cnt13, align 4
  %dec14 = add i32 %12, -1
  store i32 %dec14, ptr %use_cnt13, align 4
  %13 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %u, align 4
  %add.ptr = getelementptr i64, ptr %14, i32 %rem
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %add.ptr, align 8
  %and13.i = and i32 %div59, 4095
  %shl52.i = shl i32 %idx, 16
  %and53.i = and i32 %shl52.i, 33488896
  %or.i = or i32 %and53.i, %and13.i
  %or54.i = or i32 %or.i, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !42
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %or54.i) #6
  %arrayidx.i = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 17, i32 19
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !43
  %19 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load15 = load i8, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load15)
  %bf.cast.not = icmp sgt i8 %bf.load15, -1
  br i1 %bf.cast.not, label %if.then16, label %if.end12.if.end25_crit_edge

if.end12.if.end25_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then16:                                        ; preds = %if.end12
  %addr = getelementptr inbounds %struct.irdma_hmc_bp, ptr %arrayidx10, i32 0, i32 1
  %tobool18.not = icmp eq ptr %addr, null
  br i1 %tobool18.not, label %if.then16.cleanup_crit_edge, label %lor.lhs.false

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then16
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load ptr, ptr %addr, align 1
  %tobool20.not = icmp eq ptr %21, null
  br i1 %tobool20.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end22

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %hw = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 8
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 8
  %device = getelementptr inbounds %struct.irdma_hw, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device, align 4
  %size = getelementptr inbounds %struct.irdma_dma_mem, ptr %addr, i32 0, i32 2
  %26 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %size, align 1
  %pa = getelementptr inbounds %struct.irdma_dma_mem, ptr %addr, i32 0, i32 1
  %28 = ptrtoint ptr %pa to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %29 = load i32, ptr %pa, align 1
  tail call void @dma_free_attrs(ptr noundef %25, i32 noundef %27, ptr noundef nonnull %21, i32 noundef %29, i32 noundef 0) #6
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store ptr null, ptr %addr, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.end22, %if.end12.if.end25_crit_edge
  %31 = ptrtoint ptr %use_cnt13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %use_cnt13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool27.not = icmp eq i32 %32, 0
  br i1 %tobool27.not, label %if.then28, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %pd_entry_virt_mem = getelementptr inbounds %struct.irdma_hmc_pd_table, ptr %u, i32 0, i32 2
  %33 = ptrtoint ptr %pd_entry_virt_mem to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pd_entry_virt_mem, align 4
  tail call void @kfree(ptr noundef %34) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end25.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -36, %entry.cleanup_crit_edge ], [ -37, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %if.then16.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @irdma_prep_remove_pd_page(ptr nocapture noundef %hmc_info, i32 noundef %idx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_entry1 = getelementptr inbounds %struct.irdma_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %sd_entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_entry1, align 4
  %use_cnt = getelementptr %struct.irdma_hmc_sd_entry, ptr %1, i32 %idx, i32 2, i32 0, i32 3
  %2 = ptrtoint ptr %use_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %valid = getelementptr %struct.irdma_hmc_sd_entry, ptr %1, i32 %idx, i32 1
  %4 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %valid, align 4
  %use_cnt3 = getelementptr inbounds %struct.irdma_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %use_cnt3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %use_cnt3, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %use_cnt3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -48, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_sc_del_hmc_obj(ptr noundef %dev, ptr nocapture noundef %info, i1 noundef zeroext %reset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %start_idx = getelementptr inbounds %struct.irdma_hmc_del_obj_info, ptr %info, i32 0, i32 3
  %0 = ptrtoint ptr %start_idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_idx, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %hmc_obj = getelementptr inbounds %struct.irdma_hmc_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %hmc_obj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hmc_obj, align 4
  %rsrc_type = getelementptr inbounds %struct.irdma_hmc_del_obj_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %rsrc_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rsrc_type, align 4
  %cnt = getelementptr %struct.irdma_hmc_obj_info, ptr %5, i32 %7, i32 2
  %8 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %9)
  %cmp.not = icmp ult i32 %1, %9
  br i1 %cmp.not, label %if.end13, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_sc_del_hmc_obj.__UNIQUE_ID_ddebug558, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_sc_del_hmc_obj, %if.then4)) #6
          to label %cleanup [label %if.then4], !srcloc !39

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call ptr @to_ibdev(ptr noundef %dev) #6
  %10 = ptrtoint ptr %start_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start_idx, align 4
  %12 = ptrtoint ptr %rsrc_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rsrc_type, align 4
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 4
  %hmc_obj9 = getelementptr inbounds %struct.irdma_hmc_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %hmc_obj9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hmc_obj9, align 4
  %cnt12 = getelementptr %struct.irdma_hmc_obj_info, ptr %17, i32 %13, i32 2
  %18 = ptrtoint ptr %cnt12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cnt12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_sc_del_hmc_obj.__UNIQUE_ID_ddebug558, ptr noundef %call5, ptr noundef nonnull @.str.5, i32 noundef %11, i32 noundef %13, i32 noundef %19) #6
  br label %cleanup

if.end13:                                         ; preds = %entry
  %count = getelementptr inbounds %struct.irdma_hmc_del_obj_info, ptr %info, i32 0, i32 4
  %20 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count, align 4
  %add = add i32 %21, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %9)
  %cmp20 = icmp ugt i32 %add, %9
  br i1 %cmp20, label %do.body22, label %if.end47

do.body22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_sc_del_hmc_obj.__UNIQUE_ID_ddebug559, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_sc_del_hmc_obj, %if.then34)) #6
          to label %cleanup [label %if.then34], !srcloc !39

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call ptr @to_ibdev(ptr noundef %dev) #6
  %22 = ptrtoint ptr %start_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %start_idx, align 4
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count, align 4
  %26 = ptrtoint ptr %rsrc_type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rsrc_type, align 4
  %28 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %info, align 4
  %hmc_obj40 = getelementptr inbounds %struct.irdma_hmc_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %hmc_obj40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hmc_obj40, align 4
  %cnt43 = getelementptr %struct.irdma_hmc_obj_info, ptr %31, i32 %27, i32 2
  %32 = ptrtoint ptr %cnt43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cnt43, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_sc_del_hmc_obj.__UNIQUE_ID_ddebug559, ptr noundef %call35, ptr noundef nonnull @.str.6, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %33) #6
  br label %cleanup

if.end47:                                         ; preds = %if.end13
  %arrayidx.i = getelementptr %struct.irdma_hmc_obj_info, ptr %5, i32 %7
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx.i, align 8
  %size.i = getelementptr %struct.irdma_hmc_obj_info, ptr %5, i32 %7, i32 3
  %36 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %size.i, align 8
  %conv.i = zext i32 %1 to i64
  %mul.i = mul i64 %37, %conv.i
  %add.i = add i64 %mul.i, %35
  %conv6.i = zext i32 %21 to i64
  %mul7.i = mul i64 %37, %conv6.i
  %div19.i = lshr i64 %add.i, 12
  %conv9.i = trunc i64 %div19.i to i32
  %add8.i = add i64 %mul7.i, 17592186044415
  %sub.i = add i64 %add8.i, %add.i
  %div1020.i = lshr i64 %sub.i, 12
  %conv11.i = trunc i64 %div1020.i to i32
  %add12.i = add i32 %conv11.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i, i32 %conv9.i)
  %cmp52312 = icmp ugt i32 %add12.i, %conv9.i
  br i1 %cmp52312, label %if.end47.for.body_crit_edge, label %if.end47.for.end_crit_edge

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end47.for.body_crit_edge:                      ; preds = %if.end47
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end47.for.body_crit_edge
  %j.0313 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %conv9.i, %if.end47.for.body_crit_edge ]
  %div269 = lshr i32 %j.0313, 9
  %38 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info, align 4
  %sd_entry = getelementptr inbounds %struct.irdma_hmc_info, ptr %39, i32 0, i32 5, i32 3
  %40 = ptrtoint ptr %sd_entry to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sd_entry, align 4
  %valid = getelementptr %struct.irdma_hmc_sd_entry, ptr %41, i32 %div269, i32 1
  %42 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %valid, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool55.not = icmp eq i8 %43, 0
  br i1 %tobool55.not, label %for.body.for.inc_crit_edge, label %if.end57

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end57:                                         ; preds = %for.body
  %arrayidx54 = getelementptr %struct.irdma_hmc_sd_entry, ptr %41, i32 %div269
  %44 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp62.not = icmp eq i32 %45, 1
  br i1 %cmp62.not, label %if.end64, label %if.end57.for.inc_crit_edge

if.end57.for.inc_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end64:                                         ; preds = %if.end57
  %pd_entry = getelementptr %struct.irdma_hmc_sd_entry, ptr %41, i32 %div269, i32 2, i32 0, i32 1
  %46 = ptrtoint ptr %pd_entry to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pd_entry, align 4
  %tobool69.not = icmp eq ptr %47, null
  br i1 %tobool69.not, label %if.end64.for.inc_crit_edge, label %land.lhs.true

if.end64.for.inc_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end64
  %rem = and i32 %j.0313, 511
  %valid72 = getelementptr %struct.irdma_hmc_pd_entry, ptr %47, i32 %rem, i32 2
  %48 = ptrtoint ptr %valid72 to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load = load i8, ptr %valid72, align 4
  %49 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %bf.cast.not = icmp eq i8 %49, 0
  br i1 %bf.cast.not, label %land.lhs.true.for.inc_crit_edge, label %if.then73

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then73:                                        ; preds = %land.lhs.true
  %call75 = tail call i32 @irdma_remove_pd_bp(ptr noundef %dev, ptr noundef %39, i32 noundef %j.0313)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then73.for.inc_crit_edge, label %do.body78

if.then73.for.inc_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body78:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_sc_del_hmc_obj.__UNIQUE_ID_ddebug560, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_sc_del_hmc_obj, %if.then90)) #6
          to label %cleanup [label %if.then90], !srcloc !39

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  %call91 = tail call ptr @to_ibdev(ptr noundef %dev) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_sc_del_hmc_obj.__UNIQUE_ID_ddebug560, ptr noundef %call91, ptr noundef nonnull @.str.7) #6
  br label %cleanup

for.inc:                                          ; preds = %if.then73.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end64.for.inc_crit_edge, %if.end57.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %j.0313, 1
  %exitcond.not = icmp eq i32 %j.0313, %conv11.i
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end47.for.end_crit_edge
  %50 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %info, align 4
  %52 = ptrtoint ptr %rsrc_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rsrc_type, align 4
  %54 = ptrtoint ptr %start_idx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %start_idx, align 4
  %56 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %count, align 4
  %hmc_obj.i279 = getelementptr inbounds %struct.irdma_hmc_info, ptr %51, i32 0, i32 3
  %58 = ptrtoint ptr %hmc_obj.i279 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hmc_obj.i279, align 4
  %arrayidx.i280 = getelementptr %struct.irdma_hmc_obj_info, ptr %59, i32 %53
  %60 = ptrtoint ptr %arrayidx.i280 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx.i280, align 8
  %size.i281 = getelementptr %struct.irdma_hmc_obj_info, ptr %59, i32 %53, i32 3
  %62 = ptrtoint ptr %size.i281 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %size.i281, align 8
  %conv.i282 = zext i32 %55 to i64
  %mul.i283 = mul i64 %63, %conv.i282
  %add.i284 = add i64 %mul.i283, %61
  %conv6.i285 = zext i32 %57 to i64
  %mul7.i286 = mul i64 %63, %conv6.i285
  %div19.i287 = lshr i64 %add.i284, 21
  %conv9.i288 = trunc i64 %div19.i287 to i32
  %add8.i289 = add i64 %mul7.i286, 9007199254740991
  %sub.i290 = add i64 %add8.i289, %add.i284
  %div1020.i291 = lshr i64 %sub.i290, 21
  %conv11.i292 = trunc i64 %div1020.i291 to i32
  %add12.i293 = add i32 %conv11.i292, 1
  %sd_cnt = getelementptr inbounds %struct.irdma_hmc_info, ptr %51, i32 0, i32 5, i32 1
  %64 = ptrtoint ptr %sd_cnt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sd_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %conv9.i288)
  %cmp103.not = icmp ule i32 %65, %conv9.i288
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i293, i32 %65)
  %cmp107 = icmp ugt i32 %add12.i293, %65
  %or.cond = select i1 %cmp103.not, i1 true, i1 %cmp107
  br i1 %or.cond, label %do.body109, label %for.cond127.preheader

for.cond127.preheader:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i293, i32 %conv9.i288)
  %cmp128315 = icmp ugt i32 %add12.i293, %conv9.i288
  br i1 %cmp128315, label %for.body129.lr.ph, label %for.cond127.preheader.for.end186_crit_edge

for.cond127.preheader.for.end186_crit_edge:       ; preds = %for.cond127.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end186

for.body129.lr.ph:                                ; preds = %for.cond127.preheader
  %hmc_info163 = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 26
  %del_sd_cnt180 = getelementptr inbounds %struct.irdma_hmc_del_obj_info, ptr %info, i32 0, i32 5
  br label %for.body129

do.body109:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_sc_del_hmc_obj.__UNIQUE_ID_ddebug561, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_sc_del_hmc_obj, %if.then121)) #6
          to label %cleanup [label %if.then121], !srcloc !39

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #8
  %call122 = tail call ptr @to_ibdev(ptr noundef %dev) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_sc_del_hmc_obj.__UNIQUE_ID_ddebug561, ptr noundef %call122, ptr noundef nonnull @.str.8) #6
  br label %cleanup

for.body129:                                      ; preds = %for.inc184.for.body129_crit_edge, %for.body129.lr.ph
  %i.0316 = phi i32 [ %conv9.i288, %for.body129.lr.ph ], [ %inc185, %for.inc184.for.body129_crit_edge ]
  %66 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %info, align 4
  %sd_entry132 = getelementptr inbounds %struct.irdma_hmc_info, ptr %67, i32 0, i32 5, i32 3
  %68 = ptrtoint ptr %sd_entry132 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sd_entry132, align 4
  %u134 = getelementptr %struct.irdma_hmc_sd_entry, ptr %69, i32 %i.0316, i32 2
  %valid139 = getelementptr %struct.irdma_hmc_sd_entry, ptr %69, i32 %i.0316, i32 1
  %70 = ptrtoint ptr %valid139 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %valid139, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool140.not = icmp eq i8 %71, 0
  br i1 %tobool140.not, label %for.body129.for.inc184_crit_edge, label %if.end142

for.body129.for.inc184_crit_edge:                 ; preds = %for.body129
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc184

if.end142:                                        ; preds = %for.body129
  %arrayidx133 = getelementptr %struct.irdma_hmc_sd_entry, ptr %69, i32 %i.0316
  %72 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx133, align 4
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %73, label %if.end142.for.inc184_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb157
  ]

if.end142.for.inc184_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc184

sw.bb:                                            ; preds = %if.end142
  %use_cnt.i = getelementptr %struct.irdma_hmc_sd_entry, ptr %69, i32 %i.0316, i32 2, i32 0, i32 2, i32 1
  %75 = ptrtoint ptr %use_cnt.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %use_cnt.i, align 4
  %dec.i = add i32 %76, -1
  store i32 %dec.i, ptr %use_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.then151, label %sw.bb.for.inc184_crit_edge

sw.bb.for.inc184_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc184

if.then151:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %use_cnt3.i = getelementptr inbounds %struct.irdma_hmc_info, ptr %67, i32 0, i32 5, i32 2
  %77 = ptrtoint ptr %use_cnt3.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %use_cnt3.i, align 4
  %dec4.i = add i32 %78, -1
  store i32 %dec4.i, ptr %use_cnt3.i, align 4
  %79 = ptrtoint ptr %valid139 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %valid139, align 4
  br label %for.inc184.sink.split

sw.bb157:                                         ; preds = %if.end142
  %use_cnt.i296 = getelementptr %struct.irdma_hmc_sd_entry, ptr %69, i32 %i.0316, i32 2, i32 0, i32 3
  %80 = ptrtoint ptr %use_cnt.i296 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %use_cnt.i296, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i297 = icmp eq i32 %81, 0
  br i1 %tobool.not.i297, label %if.end162, label %sw.bb157.for.inc184_crit_edge

sw.bb157.for.inc184_crit_edge:                    ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc184

if.end162:                                        ; preds = %sw.bb157
  %82 = ptrtoint ptr %valid139 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %valid139, align 4
  %use_cnt3.i299 = getelementptr inbounds %struct.irdma_hmc_info, ptr %67, i32 0, i32 5, i32 2
  %83 = ptrtoint ptr %use_cnt3.i299 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %use_cnt3.i299, align 4
  %dec.i300 = add i32 %84, -1
  store i32 %dec.i300, ptr %use_cnt3.i299, align 4
  %85 = ptrtoint ptr %hmc_info163 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hmc_info163, align 8
  %87 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %info, align 4
  %cmp165.not = icmp eq ptr %86, %88
  br i1 %cmp165.not, label %if.end162.for.inc184.sink.split_crit_edge, label %land.lhs.true167

if.end162.for.inc184.sink.split_crit_edge:        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc184.sink.split

land.lhs.true167:                                 ; preds = %if.end162
  %89 = ptrtoint ptr %rsrc_type to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rsrc_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %90)
  %cmp169 = icmp eq i32 %90, 14
  br i1 %cmp169, label %land.lhs.true171, label %land.lhs.true167.for.inc184.sink.split_crit_edge

land.lhs.true167.for.inc184.sink.split_crit_edge: ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc184.sink.split

land.lhs.true171:                                 ; preds = %land.lhs.true167
  %pd_entry172 = getelementptr inbounds %struct.irdma_hmc_pd_table, ptr %u134, i32 0, i32 1
  %91 = ptrtoint ptr %pd_entry172 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pd_entry172, align 4
  %tobool173.not = icmp eq ptr %92, null
  br i1 %tobool173.not, label %land.lhs.true171.for.inc184.sink.split_crit_edge, label %if.then174

land.lhs.true171.for.inc184.sink.split_crit_edge: ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc184.sink.split

if.then174:                                       ; preds = %land.lhs.true171
  call void @__sanitizer_cov_trace_pc() #8
  %pd_entry_virt_mem = getelementptr inbounds %struct.irdma_hmc_pd_table, ptr %u134, i32 0, i32 2
  %93 = ptrtoint ptr %pd_entry_virt_mem to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pd_entry_virt_mem, align 4
  tail call void @kfree(ptr noundef %94) #6
  %95 = ptrtoint ptr %pd_entry172 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr null, ptr %pd_entry172, align 4
  br label %for.inc184.sink.split

for.inc184.sink.split:                            ; preds = %if.then174, %land.lhs.true171.for.inc184.sink.split_crit_edge, %land.lhs.true167.for.inc184.sink.split_crit_edge, %if.end162.for.inc184.sink.split_crit_edge, %if.then151
  %conv177 = trunc i32 %i.0316 to i16
  %96 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %info, align 4
  %98 = ptrtoint ptr %del_sd_cnt180 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %del_sd_cnt180, align 4
  %arrayidx181 = getelementptr %struct.irdma_hmc_info, ptr %97, i32 0, i32 6, i32 %99
  %100 = ptrtoint ptr %arrayidx181 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv177, ptr %arrayidx181, align 2
  %101 = load i32, ptr %del_sd_cnt180, align 4
  %inc183 = add i32 %101, 1
  store i32 %inc183, ptr %del_sd_cnt180, align 4
  br label %for.inc184

for.inc184:                                       ; preds = %for.inc184.sink.split, %sw.bb157.for.inc184_crit_edge, %sw.bb.for.inc184_crit_edge, %if.end142.for.inc184_crit_edge, %for.body129.for.inc184_crit_edge
  %inc185 = add i32 %i.0316, 1
  %exitcond318.not = icmp eq i32 %i.0316, %conv11.i292
  br i1 %exitcond318.not, label %for.inc184.for.end186_crit_edge, label %for.inc184.for.body129_crit_edge

for.inc184.for.body129_crit_edge:                 ; preds = %for.inc184
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body129

for.inc184.for.end186_crit_edge:                  ; preds = %for.inc184
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end186

for.end186:                                       ; preds = %for.inc184.for.end186_crit_edge, %for.cond127.preheader.for.end186_crit_edge
  %call188 = tail call fastcc i32 @irdma_finish_del_sd_reg(ptr noundef %dev, ptr noundef %info, i1 noundef zeroext %reset)
  br label %cleanup

cleanup:                                          ; preds = %for.end186, %if.then121, %do.body109, %if.then90, %do.body78, %if.then34, %do.body22, %if.then4, %do.body
  %retval.0 = phi i32 [ %call188, %for.end186 ], [ -39, %if.then4 ], [ -40, %if.then34 ], [ %call75, %if.then90 ], [ -35, %if.then121 ], [ -39, %do.body ], [ -40, %do.body22 ], [ %call75, %do.body78 ], [ -35, %do.body109 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @irdma_prep_remove_sd_bp(ptr nocapture noundef %hmc_info, i32 noundef %idx) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_entry1 = getelementptr inbounds %struct.irdma_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %sd_entry1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_entry1, align 4
  %use_cnt = getelementptr %struct.irdma_hmc_sd_entry, ptr %1, i32 %idx, i32 2, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %use_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use_cnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %use_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %use_cnt3 = getelementptr inbounds %struct.irdma_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 2
  %4 = ptrtoint ptr %use_cnt3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %use_cnt3, align 4
  %dec4 = add i32 %5, -1
  store i32 %dec4, ptr %use_cnt3, align 4
  %valid = getelementptr %struct.irdma_hmc_sd_entry, ptr %1, i32 %idx, i32 1
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %valid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -48, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_finish_del_sd_reg(ptr noundef %dev, ptr nocapture noundef readonly %info, i1 noundef zeroext %reset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %reset, label %entry.if.end12_crit_edge, label %if.end

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %sd_indexes = getelementptr inbounds %struct.irdma_hmc_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sd_indexes to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sd_indexes, align 4
  %conv = zext i16 %3 to i32
  %del_sd_cnt = getelementptr inbounds %struct.irdma_hmc_del_obj_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %del_sd_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %del_sd_cnt, align 4
  %call = tail call fastcc i32 @irdma_hmc_sd_grp(ptr noundef %dev, ptr noundef %1, i32 noundef %conv, i32 noundef %5, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end.if.end12_crit_edge, label %do.body

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_finish_del_sd_reg.__UNIQUE_ID_ddebug556, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_finish_del_sd_reg, %if.then9)) #6
          to label %if.end12 [label %if.then9], !srcloc !39

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call ptr @to_ibdev(ptr noundef %dev) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_finish_del_sd_reg.__UNIQUE_ID_ddebug556, ptr noundef %call10, ptr noundef nonnull @.str.12) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.body, %if.end.if.end12_crit_edge, %entry.if.end12_crit_edge
  %ret_code.071 = phi i32 [ %call, %if.then9 ], [ 0, %if.end.if.end12_crit_edge ], [ %call, %do.body ], [ 0, %entry.if.end12_crit_edge ]
  %del_sd_cnt13 = getelementptr inbounds %struct.irdma_hmc_del_obj_info, ptr %info, i32 0, i32 5
  %6 = ptrtoint ptr %del_sd_cnt13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %del_sd_cnt13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp74.not = icmp eq i32 %7, 0
  br i1 %cmp74.not, label %if.end12.for.end_crit_edge, label %for.body.lr.ph

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %hw = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  %arrayidx17 = getelementptr %struct.irdma_hmc_info, ptr %9, i32 0, i32 6, i32 %i.075
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx17, align 2
  %conv18 = zext i16 %11 to i32
  %sd_entry20 = getelementptr inbounds %struct.irdma_hmc_info, ptr %9, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %sd_entry20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sd_entry20, align 4
  %arrayidx21 = getelementptr %struct.irdma_hmc_sd_entry, ptr %13, i32 %conv18
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp22 = icmp eq i32 %15, 1
  %u = getelementptr %struct.irdma_hmc_sd_entry, ptr %13, i32 %conv18, i32 2
  %addr = getelementptr %struct.irdma_hmc_sd_entry, ptr %13, i32 %conv18, i32 2, i32 0, i32 0, i32 1
  %cond = select i1 %cmp22, ptr %u, ptr %addr
  %tobool25.not = icmp eq ptr %cond, null
  br i1 %tobool25.not, label %for.body.do.body28_crit_edge, label %lor.lhs.false

for.body.do.body28_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body28

lor.lhs.false:                                    ; preds = %for.body
  %16 = ptrtoint ptr %cond to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load ptr, ptr %cond, align 1
  %tobool26.not = icmp eq ptr %17, null
  br i1 %tobool26.not, label %lor.lhs.false.do.body28_crit_edge, label %if.else

lor.lhs.false.do.body28_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body28

do.body28:                                        ; preds = %lor.lhs.false.do.body28_crit_edge, %for.body.do.body28_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_finish_del_sd_reg.__UNIQUE_ID_ddebug557, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_finish_del_sd_reg, %if.then40)) #6
          to label %for.inc [label %if.then40], !srcloc !39

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  %call41 = tail call ptr @to_ibdev(ptr noundef %dev) #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_finish_del_sd_reg.__UNIQUE_ID_ddebug557, ptr noundef %call41, ptr noundef nonnull @.str.13) #6
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 8
  %device = getelementptr inbounds %struct.irdma_hw, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device, align 4
  %size = getelementptr inbounds %struct.irdma_dma_mem, ptr %cond, i32 0, i32 2
  %22 = ptrtoint ptr %size to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %size, align 1
  %pa = getelementptr inbounds %struct.irdma_dma_mem, ptr %cond, i32 0, i32 1
  %24 = ptrtoint ptr %pa to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %pa, align 1
  tail call void @dma_free_attrs(ptr noundef %21, i32 noundef %23, ptr noundef nonnull %17, i32 noundef %25, i32 noundef 0) #6
  %26 = ptrtoint ptr %cond to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store ptr null, ptr %cond, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then40, %do.body28
  %inc = add nuw i32 %i.075, 1
  %27 = ptrtoint ptr %del_sd_cnt13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %del_sd_cnt13, align 4
  %cmp = icmp ult i32 %inc, %28
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end12.for.end_crit_edge
  ret i32 %ret_code.071
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_hmc_sd_grp(ptr noundef %dev, ptr nocapture noundef readonly %hmc_info, i32 noundef %sd_index, i32 noundef %sd_cnt, i1 noundef zeroext %setsd) unnamed_addr #0 align 64 {
entry:
  %sdinfo = alloca %struct.irdma_update_sds_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 184, ptr nonnull %sdinfo) #6
  %0 = call ptr @memset(ptr %sdinfo, i32 0, i32 184)
  %hmc_fn_id = getelementptr inbounds %struct.irdma_hmc_info, ptr %hmc_info, i32 0, i32 1
  %1 = ptrtoint ptr %hmc_fn_id to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %hmc_fn_id, align 4
  %hmc_fn_id1 = getelementptr inbounds %struct.irdma_update_sds_info, ptr %sdinfo, i32 0, i32 1
  %3 = ptrtoint ptr %hmc_fn_id1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %hmc_fn_id1, align 4
  %add = add i32 %sd_cnt, %sd_index
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sd_index)
  %cmp82 = icmp ugt i32 %add, %sd_index
  br i1 %cmp82, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %sd_entry2 = getelementptr inbounds %struct.irdma_hmc_info, ptr %hmc_info, i32 0, i32 5, i32 3
  %cqp = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.083 = phi i32 [ %sd_index, %for.body.lr.ph ], [ %inc42, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %sd_entry2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_entry2, align 4
  %arrayidx = getelementptr %struct.irdma_hmc_sd_entry, ptr %5, i32 %i.083
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %valid = getelementptr %struct.irdma_hmc_sd_entry, ptr %5, i32 %i.083, i32 1
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %valid, align 4, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  %or.cond = xor i1 %tobool3.not, %setsd
  br i1 %or.cond, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp12 = icmp eq i32 %9, 1
  br i1 %setsd, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pa13 = getelementptr %struct.irdma_hmc_sd_entry, ptr %5, i32 %i.083, i32 2, i32 0, i32 0, i32 1
  %pa15 = getelementptr %struct.irdma_hmc_sd_entry, ptr %5, i32 %i.083, i32 2, i32 0, i32 0, i32 2
  %cond.in = select i1 %cmp12, ptr %pa13, ptr %pa15
  %10 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond = load i32, ptr %cond.in, align 4
  %shl.i = select i1 %cmp12, i32 1, i32 2
  %or.i81 = or i32 %cond, %shl.i
  %11 = or i32 %or.i81, 2049
  br label %if.end23

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %or.i78 = select i1 %cmp12, i32 2048, i32 2050
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then11
  %or.i78.sink = phi i32 [ %or.i78, %if.else ], [ %11, %if.then11 ]
  %12 = ptrtoint ptr %sdinfo to i32
  call void @__asan_load4_noabort(i32 %12)
  %.sink = load i32, ptr %sdinfo, align 8
  %arrayidx22.sink = getelementptr %struct.irdma_update_sds_info, ptr %sdinfo, i32 0, i32 2, i32 %.sink
  %conv.i = zext i32 %or.i78.sink to i64
  %data.i79 = getelementptr %struct.irdma_update_sds_info, ptr %sdinfo, i32 0, i32 2, i32 %.sink, i32 1
  %13 = ptrtoint ptr %data.i79 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv.i, ptr %data.i79, align 8
  %or38.i = or i32 %i.083, -2147450880
  %conv39.i = zext i32 %or38.i to i64
  %14 = ptrtoint ptr %arrayidx22.sink to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv39.i, ptr %arrayidx22.sink, align 8
  %15 = load i32, ptr %sdinfo, align 8
  %inc = add i32 %15, 1
  store i32 %inc, ptr %sdinfo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %inc)
  %cmp26 = icmp eq i32 %inc, 11
  br i1 %cmp26, label %if.then28, label %if.end23.for.inc_crit_edge

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then28:                                        ; preds = %if.end23
  %16 = ptrtoint ptr %cqp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cqp, align 4
  %process_cqp_sds = getelementptr inbounds %struct.irdma_sc_cqp, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %process_cqp_sds to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %process_cqp_sds, align 8
  %call = call i32 %19(ptr noundef %dev, ptr noundef nonnull %sdinfo) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool29.not = icmp eq i32 %call, 0
  br i1 %tobool29.not, label %if.end39, label %do.body

do.body:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_hmc_sd_grp.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_hmc_sd_grp, %if.then36)) #6
          to label %cleanup [label %if.then36], !srcloc !39

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = call ptr @to_ibdev(ptr noundef %dev) #6
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_hmc_sd_grp.__UNIQUE_ID_ddebug546, ptr noundef %call37, ptr noundef nonnull @.str.10, i32 noundef %call) #6
  br label %cleanup

if.end39:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %sdinfo to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %sdinfo, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end39, %if.end23.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc42 = add i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc42, %add
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %21 = ptrtoint ptr %sdinfo to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sdinfo, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool44.not = icmp eq i32 %22, 0
  br i1 %tobool44.not, label %for.end.cleanup_crit_edge, label %if.then45

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %cqp46 = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 27
  %23 = ptrtoint ptr %cqp46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cqp46, align 4
  %process_cqp_sds47 = getelementptr inbounds %struct.irdma_sc_cqp, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %process_cqp_sds47 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %process_cqp_sds47, align 8
  %call48 = call i32 %26(ptr noundef %dev, ptr noundef nonnull %sdinfo) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %for.end.cleanup_crit_edge, %if.then36, %do.body
  %retval.0 = phi i32 [ %call, %if.then36 ], [ %call48, %if.then45 ], [ 0, %for.end.cleanup_crit_edge ], [ %call, %do.body ]
  call void @llvm.lifetime.end.p0(i64 184, ptr nonnull %sdinfo) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !23, !25, !26, !27, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/irdma/hmc.c", i32 242, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @irdma_sc_create_hmc_obj.__UNIQUE_ID_ddebug547, !1, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/irdma/hmc.c", i32 387, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @irdma_sc_del_hmc_obj.__UNIQUE_ID_ddebug558, !7, !"__UNIQUE_ID_ddebug558", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/hw/irdma/hmc.c", i32 396, i32 3}
!12 = !{ptr @irdma_sc_del_hmc_obj.__UNIQUE_ID_ddebug559, !11, !"__UNIQUE_ID_ddebug559", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/hw/irdma/hmc.c", i32 423, i32 5}
!15 = !{ptr @irdma_sc_del_hmc_obj.__UNIQUE_ID_ddebug560, !14, !"__UNIQUE_ID_ddebug560", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/hw/irdma/hmc.c", i32 435, i32 3}
!18 = !{ptr @irdma_sc_del_hmc_obj.__UNIQUE_ID_ddebug561, !17, !"__UNIQUE_ID_ddebug561", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/hw/irdma/hmc.c", i32 179, i32 5}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @irdma_hmc_sd_grp.__UNIQUE_ID_ddebug546, !20, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/hw/irdma/hmc.c", i32 345, i32 3}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @irdma_finish_del_sd_reg.__UNIQUE_ID_ddebug556, !24, !"__UNIQUE_ID_ddebug556", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/hw/irdma/hmc.c", i32 354, i32 4}
!29 = !{ptr @irdma_finish_del_sd_reg.__UNIQUE_ID_ddebug557, !28, !"__UNIQUE_ID_ddebug557", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2148507708, i64 2148507713, i64 2148507726, i64 2148507770, i64 2148507804, i64 2148507825}
!40 = !{i8 0, i8 2}
!41 = !{!"auto-init"}
!42 = !{i64 2158542754}
!43 = !{i64 5002305}
