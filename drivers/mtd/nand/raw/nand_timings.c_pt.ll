; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/nand_timings.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/nand_timings.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nand_interface_config = type { i32, %struct.nand_timings }
%struct.nand_timings = type { i32, %union.anon }
%union.anon = type { %struct.nand_sdr_timings }
%struct.nand_sdr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.nand_nvddr_timings = type { i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_chip = type { %struct.nand_device, %struct.nand_id, %struct.nand_parameters, %struct.nand_manufacturer, %struct.nand_chip_ops, %struct.nand_legacy, i32, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.anon.49, i32, %struct.mutex, i8, i32, i32, ptr, i8, ptr, %struct.nand_ecc_ctrl, ptr }
%struct.nand_device = type { %struct.mtd_info, %struct.nand_memory_organization, %struct.nand_ecc, %struct.nand_row_converter, %struct.nand_bbt, ptr }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.44 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.44 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.nand_memory_organization = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc = type { %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_props, %struct.nand_ecc_context, ptr, ptr }
%struct.nand_ecc_props = type { i32, i32, i32, i32, i32, i32 }
%struct.nand_ecc_context = type { %struct.nand_ecc_props, i32, i32, ptr }
%struct.nand_row_converter = type { i32, i32 }
%struct.nand_bbt = type { ptr }
%struct.nand_id = type { [8 x i8], i32 }
%struct.nand_parameters = type { ptr, i8, [8 x i32], [8 x i32], ptr }
%struct.nand_manufacturer = type { ptr, ptr }
%struct.nand_chip_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nand_legacy = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.nand_controller }
%struct.nand_controller = type { %struct.mutex, ptr }
%struct.anon.49 = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nand_ecc_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.onfi_params = type { i32, i16, i16, i16, i16, i8, i16, i16, i16, [88 x i8] }

@onfi_sdr_timings = internal constant { [6 x %struct.nand_interface_config], [288 x i8] } { [6 x %struct.nand_interface_config] [%struct.nand_interface_config { i32 0, %struct.nand_timings { i32 0, %union.anon { %struct.nand_sdr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 20000, i32 400000, i32 50000, i32 25000, i32 100000, i32 20000, i32 20000, i32 100000, i32 20000, i32 20000, i32 50000, i32 0, i32 70000, i32 20000, i32 40000, i32 1000000, i32 10000, i32 1000000, i32 100000, i32 40000, i32 30000, i32 0, i32 200000, i32 200000, i32 0, i32 50000, i32 40000, i64 250000000000, i32 200000, i32 100000, i32 30000, i32 120000, i32 50000, i32 100000 } } } }, %struct.nand_interface_config { i32 0, %struct.nand_timings { i32 1, %union.anon { %struct.nand_sdr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 10000, i32 400000, i32 25000, i32 10000, i32 45000, i32 20000, i32 10000, i32 50000, i32 10000, i32 10000, i32 25000, i32 15000, i32 35000, i32 10000, i32 20000, i32 1000000, i32 0, i32 1000000, i32 50000, i32 30000, i32 15000, i32 15000, i32 100000, i32 100000, i32 0, i32 25000, i32 20000, i64 500000000, i32 100000, i32 45000, i32 15000, i32 80000, i32 25000, i32 100000 } } } }, %struct.nand_interface_config { i32 0, %struct.nand_timings { i32 2, %union.anon { %struct.nand_sdr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 10000, i32 400000, i32 15000, i32 10000, i32 30000, i32 20000, i32 10000, i32 50000, i32 10000, i32 10000, i32 15000, i32 15000, i32 25000, i32 5000, i32 15000, i32 1000000, i32 0, i32 1000000, i32 35000, i32 25000, i32 15000, i32 15000, i32 100000, i32 100000, i32 0, i32 17000, i32 20000, i64 500000000, i32 100000, i32 35000, i32 15000, i32 80000, i32 17000, i32 100000 } } } }, %struct.nand_interface_config { i32 0, %struct.nand_timings { i32 3, %union.anon { %struct.nand_sdr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 5000, i32 400000, i32 10000, i32 10000, i32 25000, i32 20000, i32 5000, i32 50000, i32 5000, i32 10000, i32 10000, i32 15000, i32 25000, i32 5000, i32 10000, i32 1000000, i32 0, i32 1000000, i32 30000, i32 20000, i32 10000, i32 15000, i32 100000, i32 100000, i32 0, i32 15000, i32 20000, i64 500000000, i32 100000, i32 30000, i32 10000, i32 80000, i32 15000, i32 100000 } } } }, %struct.nand_interface_config { i32 0, %struct.nand_timings { i32 4, %union.anon { %struct.nand_sdr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 5000, i32 400000, i32 10000, i32 10000, i32 25000, i32 20000, i32 5000, i32 30000, i32 5000, i32 10000, i32 10000, i32 15000, i32 20000, i32 5000, i32 10000, i32 1000000, i32 0, i32 1000000, i32 25000, i32 20000, i32 10000, i32 15000, i32 100000, i32 100000, i32 5000, i32 12000, i32 20000, i64 500000000, i32 100000, i32 25000, i32 10000, i32 80000, i32 12000, i32 100000 } } } }, %struct.nand_interface_config { i32 0, %struct.nand_timings { i32 5, %union.anon { %struct.nand_sdr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 5000, i32 400000, i32 10000, i32 10000, i32 25000, i32 20000, i32 5000, i32 30000, i32 5000, i32 10000, i32 10000, i32 15000, i32 15000, i32 5000, i32 7000, i32 1000000, i32 0, i32 1000000, i32 20000, i32 16000, i32 7000, i32 15000, i32 100000, i32 100000, i32 5000, i32 10000, i32 20000, i64 500000000, i32 100000, i32 20000, i32 7000, i32 80000, i32 10000, i32 100000 } } } }], [288 x i8] zeroinitializer }, align 32
@onfi_nvddr_timings = internal constant { [6 x { i32, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } }], [288 x i8] } { [6 x { i32, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } }] [{ i32, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } } { i32 1, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } { i32 0, { %struct.nand_nvddr_timings, [16 x i8] } { %struct.nand_nvddr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 3000, i32 25000, i32 400000, i32 45000, i32 10000, i32 10000, i32 10000, i32 10000, i32 20000, i32 10000, i32 50000, i32 35000, i32 5000, i32 3000, i32 25000, i32 0, i32 18000, i32 20000, i32 5000, i32 5000, i32 50000, i32 1000000, i32 1000000, i32 6000, i32 100000, i32 20000, i32 500000000, i32 100000, i32 80000, i32 20000, i32 100000 }, [16 x i8] undef } } }, { i32, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } } { i32 1, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } { i32 1, { %struct.nand_nvddr_timings, [16 x i8] } { %struct.nand_nvddr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 3000, i32 25000, i32 400000, i32 45000, i32 5000, i32 5000, i32 5000, i32 5000, i32 20000, i32 5000, i32 30000, i32 25000, i32 2500, i32 3000, i32 25000, i32 0, i32 18000, i32 20000, i32 2500, i32 3000, i32 30000, i32 1000000, i32 1000000, i32 3000, i32 100000, i32 20000, i32 500000000, i32 100000, i32 80000, i32 20000, i32 100000 }, [16 x i8] undef } } }, { i32, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } } { i32 1, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } { i32 2, { %struct.nand_nvddr_timings, [16 x i8] } { %struct.nand_nvddr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 3000, i32 25000, i32 400000, i32 45000, i32 4000, i32 4000, i32 4000, i32 4000, i32 20000, i32 4000, i32 20000, i32 15000, i32 1700, i32 3000, i32 25000, i32 0, i32 18000, i32 20000, i32 1700, i32 2000, i32 20000, i32 1000000, i32 1000000, i32 2000, i32 100000, i32 20000, i32 500000000, i32 100000, i32 80000, i32 20000, i32 100000 }, [16 x i8] undef } } }, { i32, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } } { i32 1, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } { i32 3, { %struct.nand_nvddr_timings, [16 x i8] } { %struct.nand_nvddr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 3000, i32 25000, i32 400000, i32 45000, i32 3000, i32 3000, i32 3000, i32 3000, i32 20000, i32 3000, i32 15000, i32 15000, i32 1300, i32 3000, i32 25000, i32 0, i32 18000, i32 20000, i32 1300, i32 1500, i32 15000, i32 1000000, i32 1000000, i32 1500, i32 100000, i32 20000, i32 500000000, i32 100000, i32 80000, i32 20000, i32 100000 }, [16 x i8] undef } } }, { i32, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } } { i32 1, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } { i32 4, { %struct.nand_nvddr_timings, [16 x i8] } { %struct.nand_nvddr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 3000, i32 25000, i32 400000, i32 45000, i32 2500, i32 2500, i32 2500, i32 2500, i32 20000, i32 2500, i32 12000, i32 15000, i32 1100, i32 3000, i32 25000, i32 0, i32 18000, i32 20000, i32 1000, i32 1100, i32 12000, i32 1000000, i32 1000000, i32 1200, i32 100000, i32 20000, i32 500000000, i32 100000, i32 80000, i32 20000, i32 100000 }, [16 x i8] undef } } }, { i32, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } } { i32 1, { i32, { %struct.nand_nvddr_timings, [16 x i8] } } { i32 5, { %struct.nand_nvddr_timings, [16 x i8] } { %struct.nand_nvddr_timings { i64 65535000000, i32 500000, i64 65535000000, i64 200000000, i32 3000, i32 25000, i32 400000, i32 45000, i32 2000, i32 2000, i32 2000, i32 2000, i32 20000, i32 2000, i32 10000, i32 15000, i32 900, i32 3000, i32 25000, i32 0, i32 18000, i32 20000, i32 850, i32 900, i32 10000, i32 1000000, i32 1000000, i32 1000, i32 100000, i32 20000, i32 500000000, i32 100000, i32 80000, i32 20000, i32 100000 }, [16 x i8] undef } } }], [288 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/mtd/nand/raw/nand_timings.c\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"onfi_sdr_timings\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 22, i32 43 }
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"onfi_nvddr_timings\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 295, i32 43 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [39 x i8] c"../drivers/mtd/nand/raw/nand_timings.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 658, i32 6 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @onfi_sdr_timings, ptr @onfi_nvddr_timings, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onfi_sdr_timings to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @onfi_nvddr_timings to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @nand_get_reset_interface_config() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @onfi_sdr_timings
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @onfi_find_closest_sdr_mode(ptr noundef readonly %spec_timings) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tWW_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 37
  %tCCS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 1
  %0 = ptrtoint ptr %tCCS_min to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tCCS_min, align 8
  %tADL_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 5
  %tALH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 4
  %tALS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 6
  %tAR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 7
  %tCEH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 9
  %tCH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 10
  %tCLH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 12
  %tCLR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 13
  %tCLS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 14
  %tCOH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 15
  %tCS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 16
  %tDH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 17
  %tDS_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 18
  %tIR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 20
  %tRC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 22
  %tREH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 24
  %tRHOH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 25
  %tRHW_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 26
  %tRLOH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 28
  %tRP_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 29
  %tRR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 30
  %tWC_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 33
  %tWH_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 34
  %tWHR_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 35
  %tWP_min = getelementptr inbounds %struct.nand_sdr_timings, ptr %spec_timings, i32 0, i32 36
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %mode.0136 = phi i32 [ 5, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  %2 = getelementptr [6 x %struct.nand_interface_config], ptr @onfi_sdr_timings, i32 0, i32 %mode.0136, i32 1, i32 1
  %tCCS_min1 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %tCCS_min1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tCCS_min1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %4)
  %cmp2.not = icmp ugt i32 %1, %4
  br i1 %cmp2.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %5 = ptrtoint ptr %tADL_min to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tADL_min, align 4
  %tADL_min3 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 5
  %7 = ptrtoint ptr %tADL_min3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tADL_min3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp4.not = icmp ugt i32 %6, %8
  br i1 %cmp4.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true5

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %9 = ptrtoint ptr %tALH_min to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tALH_min, align 8
  %tALH_min6 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 4
  %11 = ptrtoint ptr %tALH_min6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tALH_min6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp7.not = icmp ugt i32 %10, %12
  br i1 %cmp7.not, label %land.lhs.true5.for.inc_crit_edge, label %land.lhs.true8

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %13 = ptrtoint ptr %tALS_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tALS_min, align 8
  %tALS_min9 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 6
  %15 = ptrtoint ptr %tALS_min9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tALS_min9, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp10.not = icmp ugt i32 %14, %16
  br i1 %cmp10.not, label %land.lhs.true8.for.inc_crit_edge, label %land.lhs.true11

land.lhs.true8.for.inc_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %17 = ptrtoint ptr %tAR_min to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tAR_min, align 4
  %tAR_min12 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 7
  %19 = ptrtoint ptr %tAR_min12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tAR_min12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp13.not = icmp ugt i32 %18, %20
  br i1 %cmp13.not, label %land.lhs.true11.for.inc_crit_edge, label %land.lhs.true14

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %21 = ptrtoint ptr %tCEH_min to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tCEH_min, align 4
  %tCEH_min15 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 9
  %23 = ptrtoint ptr %tCEH_min15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tCEH_min15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp16.not = icmp ugt i32 %22, %24
  br i1 %cmp16.not, label %land.lhs.true14.for.inc_crit_edge, label %land.lhs.true17

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %25 = ptrtoint ptr %tCH_min to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tCH_min, align 8
  %tCH_min18 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 10
  %27 = ptrtoint ptr %tCH_min18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tCH_min18, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp19.not = icmp ugt i32 %26, %28
  br i1 %cmp19.not, label %land.lhs.true17.for.inc_crit_edge, label %land.lhs.true20

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %29 = ptrtoint ptr %tCLH_min to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tCLH_min, align 8
  %tCLH_min21 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 12
  %31 = ptrtoint ptr %tCLH_min21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tCLH_min21, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp22.not = icmp ugt i32 %30, %32
  br i1 %cmp22.not, label %land.lhs.true20.for.inc_crit_edge, label %land.lhs.true23

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %33 = ptrtoint ptr %tCLR_min to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tCLR_min, align 4
  %tCLR_min24 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 13
  %35 = ptrtoint ptr %tCLR_min24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tCLR_min24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp25.not = icmp ugt i32 %34, %36
  br i1 %cmp25.not, label %land.lhs.true23.for.inc_crit_edge, label %land.lhs.true26

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %37 = ptrtoint ptr %tCLS_min to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tCLS_min, align 8
  %tCLS_min27 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 14
  %39 = ptrtoint ptr %tCLS_min27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tCLS_min27, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp28.not = icmp ugt i32 %38, %40
  br i1 %cmp28.not, label %land.lhs.true26.for.inc_crit_edge, label %land.lhs.true29

land.lhs.true26.for.inc_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %41 = ptrtoint ptr %tCOH_min to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tCOH_min, align 4
  %tCOH_min30 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 15
  %43 = ptrtoint ptr %tCOH_min30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tCOH_min30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp31.not = icmp ugt i32 %42, %44
  br i1 %cmp31.not, label %land.lhs.true29.for.inc_crit_edge, label %land.lhs.true32

land.lhs.true29.for.inc_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %45 = ptrtoint ptr %tCS_min to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tCS_min, align 8
  %tCS_min33 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 16
  %47 = ptrtoint ptr %tCS_min33 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tCS_min33, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp34.not = icmp ugt i32 %46, %48
  br i1 %cmp34.not, label %land.lhs.true32.for.inc_crit_edge, label %land.lhs.true35

land.lhs.true32.for.inc_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %49 = ptrtoint ptr %tDH_min to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tDH_min, align 4
  %tDH_min36 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 17
  %51 = ptrtoint ptr %tDH_min36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tDH_min36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp37.not = icmp ugt i32 %50, %52
  br i1 %cmp37.not, label %land.lhs.true35.for.inc_crit_edge, label %land.lhs.true38

land.lhs.true35.for.inc_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true38:                                  ; preds = %land.lhs.true35
  %53 = ptrtoint ptr %tDS_min to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tDS_min, align 8
  %tDS_min39 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 18
  %55 = ptrtoint ptr %tDS_min39 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tDS_min39, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp40.not = icmp ugt i32 %54, %56
  br i1 %cmp40.not, label %land.lhs.true38.for.inc_crit_edge, label %land.lhs.true41

land.lhs.true38.for.inc_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %57 = ptrtoint ptr %tIR_min to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tIR_min, align 8
  %tIR_min42 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 20
  %59 = ptrtoint ptr %tIR_min42 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tIR_min42, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp43.not = icmp ugt i32 %58, %60
  br i1 %cmp43.not, label %land.lhs.true41.for.inc_crit_edge, label %land.lhs.true44

land.lhs.true41.for.inc_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %61 = ptrtoint ptr %tRC_min to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tRC_min, align 8
  %tRC_min45 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 22
  %63 = ptrtoint ptr %tRC_min45 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tRC_min45, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp46.not = icmp ugt i32 %62, %64
  br i1 %cmp46.not, label %land.lhs.true44.for.inc_crit_edge, label %land.lhs.true47

land.lhs.true44.for.inc_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true47:                                  ; preds = %land.lhs.true44
  %65 = ptrtoint ptr %tREH_min to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tREH_min, align 8
  %tREH_min48 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 24
  %67 = ptrtoint ptr %tREH_min48 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tREH_min48, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp49.not = icmp ugt i32 %66, %68
  br i1 %cmp49.not, label %land.lhs.true47.for.inc_crit_edge, label %land.lhs.true50

land.lhs.true47.for.inc_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %69 = ptrtoint ptr %tRHOH_min to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tRHOH_min, align 4
  %tRHOH_min51 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 25
  %71 = ptrtoint ptr %tRHOH_min51 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tRHOH_min51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp52.not = icmp ugt i32 %70, %72
  br i1 %cmp52.not, label %land.lhs.true50.for.inc_crit_edge, label %land.lhs.true53

land.lhs.true50.for.inc_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %73 = ptrtoint ptr %tRHW_min to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tRHW_min, align 8
  %tRHW_min54 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 26
  %75 = ptrtoint ptr %tRHW_min54 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tRHW_min54, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp55.not = icmp ugt i32 %74, %76
  br i1 %cmp55.not, label %land.lhs.true53.for.inc_crit_edge, label %land.lhs.true56

land.lhs.true53.for.inc_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %77 = ptrtoint ptr %tRLOH_min to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tRLOH_min, align 8
  %tRLOH_min57 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 28
  %79 = ptrtoint ptr %tRLOH_min57 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tRLOH_min57, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp58.not = icmp ugt i32 %78, %80
  br i1 %cmp58.not, label %land.lhs.true56.for.inc_crit_edge, label %land.lhs.true59

land.lhs.true56.for.inc_crit_edge:                ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true59:                                  ; preds = %land.lhs.true56
  %81 = ptrtoint ptr %tRP_min to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tRP_min, align 4
  %tRP_min60 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 29
  %83 = ptrtoint ptr %tRP_min60 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tRP_min60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp61.not = icmp ugt i32 %82, %84
  br i1 %cmp61.not, label %land.lhs.true59.for.inc_crit_edge, label %land.lhs.true62

land.lhs.true59.for.inc_crit_edge:                ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true62:                                  ; preds = %land.lhs.true59
  %85 = ptrtoint ptr %tRR_min to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tRR_min, align 8
  %tRR_min63 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 30
  %87 = ptrtoint ptr %tRR_min63 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tRR_min63, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp64.not = icmp ugt i32 %86, %88
  br i1 %cmp64.not, label %land.lhs.true62.for.inc_crit_edge, label %land.lhs.true65

land.lhs.true62.for.inc_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true65:                                  ; preds = %land.lhs.true62
  %89 = ptrtoint ptr %tWC_min to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tWC_min, align 4
  %tWC_min66 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 33
  %91 = ptrtoint ptr %tWC_min66 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tWC_min66, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp67.not = icmp ugt i32 %90, %92
  br i1 %cmp67.not, label %land.lhs.true65.for.inc_crit_edge, label %land.lhs.true68

land.lhs.true65.for.inc_crit_edge:                ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true68:                                  ; preds = %land.lhs.true65
  %93 = ptrtoint ptr %tWH_min to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tWH_min, align 8
  %tWH_min69 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 34
  %95 = ptrtoint ptr %tWH_min69 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %tWH_min69, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %94, i32 %96)
  %cmp70.not = icmp ugt i32 %94, %96
  br i1 %cmp70.not, label %land.lhs.true68.for.inc_crit_edge, label %land.lhs.true71

land.lhs.true68.for.inc_crit_edge:                ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true71:                                  ; preds = %land.lhs.true68
  %97 = ptrtoint ptr %tWHR_min to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %tWHR_min, align 4
  %tWHR_min72 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 35
  %99 = ptrtoint ptr %tWHR_min72 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tWHR_min72, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %100)
  %cmp73.not = icmp ugt i32 %98, %100
  br i1 %cmp73.not, label %land.lhs.true71.for.inc_crit_edge, label %land.lhs.true74

land.lhs.true71.for.inc_crit_edge:                ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true74:                                  ; preds = %land.lhs.true71
  %101 = ptrtoint ptr %tWP_min to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tWP_min, align 8
  %tWP_min75 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 36
  %103 = ptrtoint ptr %tWP_min75 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tWP_min75, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %104)
  %cmp76.not = icmp ugt i32 %102, %104
  br i1 %cmp76.not, label %land.lhs.true74.for.inc_crit_edge, label %land.lhs.true77

land.lhs.true74.for.inc_crit_edge:                ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true77:                                  ; preds = %land.lhs.true74
  %105 = ptrtoint ptr %tWW_min to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tWW_min, align 4
  %tWW_min78 = getelementptr inbounds %struct.nand_sdr_timings, ptr %2, i32 0, i32 37
  %107 = ptrtoint ptr %tWW_min78 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tWW_min78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp79.not = icmp ugt i32 %106, %108
  br i1 %cmp79.not, label %land.lhs.true77.for.inc_crit_edge, label %land.lhs.true77.cleanup_crit_edge

land.lhs.true77.cleanup_crit_edge:                ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true77.for.inc_crit_edge:                ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true77.for.inc_crit_edge, %land.lhs.true74.for.inc_crit_edge, %land.lhs.true71.for.inc_crit_edge, %land.lhs.true68.for.inc_crit_edge, %land.lhs.true65.for.inc_crit_edge, %land.lhs.true62.for.inc_crit_edge, %land.lhs.true59.for.inc_crit_edge, %land.lhs.true56.for.inc_crit_edge, %land.lhs.true53.for.inc_crit_edge, %land.lhs.true50.for.inc_crit_edge, %land.lhs.true47.for.inc_crit_edge, %land.lhs.true44.for.inc_crit_edge, %land.lhs.true41.for.inc_crit_edge, %land.lhs.true38.for.inc_crit_edge, %land.lhs.true35.for.inc_crit_edge, %land.lhs.true32.for.inc_crit_edge, %land.lhs.true29.for.inc_crit_edge, %land.lhs.true26.for.inc_crit_edge, %land.lhs.true23.for.inc_crit_edge, %land.lhs.true20.for.inc_crit_edge, %land.lhs.true17.for.inc_crit_edge, %land.lhs.true14.for.inc_crit_edge, %land.lhs.true11.for.inc_crit_edge, %land.lhs.true8.for.inc_crit_edge, %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dec = add nsw i32 %mode.0136, -1
  %cmp = icmp ugt i32 %mode.0136, 1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true77.cleanup_crit_edge
  %retval.0 = phi i32 [ %mode.0136, %land.lhs.true77.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @onfi_find_closest_nvddr_mode(ptr noundef readonly %spec_timings) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tWW_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 34
  %tCCS_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 1
  %0 = ptrtoint ptr %tCCS_min to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tCCS_min, align 8
  %tAC_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 4
  %tADL_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 6
  %tCAD_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 7
  %tCAH_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 8
  %tCALH_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 9
  %tCALS_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 10
  %tCAS_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 11
  %tCEH_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 12
  %tCH_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 13
  %tCK_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 14
  %tCS_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 15
  %tDH_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 16
  %tDQSCK_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 17
  %tDQSD_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 19
  %tDS_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 23
  %tDSC_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 24
  %tRHW_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 28
  %tRR_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 29
  %tWHR_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 32
  %tWRCK_min = getelementptr inbounds %struct.nand_nvddr_timings, ptr %spec_timings, i32 0, i32 33
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %mode.0111 = phi i32 [ 5, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  %2 = getelementptr [6 x %struct.nand_interface_config], ptr @onfi_nvddr_timings, i32 0, i32 %mode.0111, i32 1, i32 1
  %tCCS_min1 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %tCCS_min1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tCCS_min1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %4)
  %cmp2.not = icmp ugt i32 %1, %4
  br i1 %cmp2.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %5 = ptrtoint ptr %tAC_min to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tAC_min, align 8
  %tAC_min3 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %tAC_min3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tAC_min3, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp4.not = icmp ugt i32 %6, %8
  br i1 %cmp4.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true5

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true5:                                   ; preds = %land.lhs.true
  %9 = ptrtoint ptr %tADL_min to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tADL_min, align 8
  %tADL_min6 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 6
  %11 = ptrtoint ptr %tADL_min6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tADL_min6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp7.not = icmp ugt i32 %10, %12
  br i1 %cmp7.not, label %land.lhs.true5.for.inc_crit_edge, label %land.lhs.true8

land.lhs.true5.for.inc_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true8:                                   ; preds = %land.lhs.true5
  %13 = ptrtoint ptr %tCAD_min to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tCAD_min, align 4
  %tCAD_min9 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 7
  %15 = ptrtoint ptr %tCAD_min9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tCAD_min9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp10.not = icmp ugt i32 %14, %16
  br i1 %cmp10.not, label %land.lhs.true8.for.inc_crit_edge, label %land.lhs.true11

land.lhs.true8.for.inc_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %17 = ptrtoint ptr %tCAH_min to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tCAH_min, align 8
  %tCAH_min12 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 8
  %19 = ptrtoint ptr %tCAH_min12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tCAH_min12, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp13.not = icmp ugt i32 %18, %20
  br i1 %cmp13.not, label %land.lhs.true11.for.inc_crit_edge, label %land.lhs.true14

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true14:                                  ; preds = %land.lhs.true11
  %21 = ptrtoint ptr %tCALH_min to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tCALH_min, align 4
  %tCALH_min15 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 9
  %23 = ptrtoint ptr %tCALH_min15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tCALH_min15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp16.not = icmp ugt i32 %22, %24
  br i1 %cmp16.not, label %land.lhs.true14.for.inc_crit_edge, label %land.lhs.true17

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %25 = ptrtoint ptr %tCALS_min to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tCALS_min, align 8
  %tCALS_min18 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 10
  %27 = ptrtoint ptr %tCALS_min18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tCALS_min18, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp19.not = icmp ugt i32 %26, %28
  br i1 %cmp19.not, label %land.lhs.true17.for.inc_crit_edge, label %land.lhs.true20

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %29 = ptrtoint ptr %tCAS_min to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tCAS_min, align 4
  %tCAS_min21 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 11
  %31 = ptrtoint ptr %tCAS_min21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tCAS_min21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp22.not = icmp ugt i32 %30, %32
  br i1 %cmp22.not, label %land.lhs.true20.for.inc_crit_edge, label %land.lhs.true23

land.lhs.true20.for.inc_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %33 = ptrtoint ptr %tCEH_min to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tCEH_min, align 8
  %tCEH_min24 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 12
  %35 = ptrtoint ptr %tCEH_min24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tCEH_min24, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp25.not = icmp ugt i32 %34, %36
  br i1 %cmp25.not, label %land.lhs.true23.for.inc_crit_edge, label %land.lhs.true26

land.lhs.true23.for.inc_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %37 = ptrtoint ptr %tCH_min to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tCH_min, align 4
  %tCH_min27 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 13
  %39 = ptrtoint ptr %tCH_min27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tCH_min27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp28.not = icmp ugt i32 %38, %40
  br i1 %cmp28.not, label %land.lhs.true26.for.inc_crit_edge, label %land.lhs.true29

land.lhs.true26.for.inc_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %41 = ptrtoint ptr %tCK_min to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tCK_min, align 8
  %tCK_min30 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 14
  %43 = ptrtoint ptr %tCK_min30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tCK_min30, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp31.not = icmp ugt i32 %42, %44
  br i1 %cmp31.not, label %land.lhs.true29.for.inc_crit_edge, label %land.lhs.true32

land.lhs.true29.for.inc_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %45 = ptrtoint ptr %tCS_min to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tCS_min, align 4
  %tCS_min33 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 15
  %47 = ptrtoint ptr %tCS_min33 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tCS_min33, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %48)
  %cmp34.not = icmp ugt i32 %46, %48
  br i1 %cmp34.not, label %land.lhs.true32.for.inc_crit_edge, label %land.lhs.true35

land.lhs.true32.for.inc_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %49 = ptrtoint ptr %tDH_min to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tDH_min, align 8
  %tDH_min36 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 16
  %51 = ptrtoint ptr %tDH_min36 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tDH_min36, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp37.not = icmp ugt i32 %50, %52
  br i1 %cmp37.not, label %land.lhs.true35.for.inc_crit_edge, label %land.lhs.true38

land.lhs.true35.for.inc_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true38:                                  ; preds = %land.lhs.true35
  %53 = ptrtoint ptr %tDQSCK_min to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tDQSCK_min, align 4
  %tDQSCK_min39 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 17
  %55 = ptrtoint ptr %tDQSCK_min39 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tDQSCK_min39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp40.not = icmp ugt i32 %54, %56
  br i1 %cmp40.not, label %land.lhs.true38.for.inc_crit_edge, label %land.lhs.true41

land.lhs.true38.for.inc_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true41:                                  ; preds = %land.lhs.true38
  %57 = ptrtoint ptr %tDQSD_min to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tDQSD_min, align 4
  %tDQSD_min42 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 19
  %59 = ptrtoint ptr %tDQSD_min42 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tDQSD_min42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp43.not = icmp ugt i32 %58, %60
  br i1 %cmp43.not, label %land.lhs.true41.for.inc_crit_edge, label %land.lhs.true44

land.lhs.true41.for.inc_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %61 = ptrtoint ptr %tDS_min to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tDS_min, align 4
  %tDS_min45 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 23
  %63 = ptrtoint ptr %tDS_min45 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tDS_min45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp46.not = icmp ugt i32 %62, %64
  br i1 %cmp46.not, label %land.lhs.true44.for.inc_crit_edge, label %land.lhs.true47

land.lhs.true44.for.inc_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true47:                                  ; preds = %land.lhs.true44
  %65 = ptrtoint ptr %tDSC_min to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tDSC_min, align 8
  %tDSC_min48 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 24
  %67 = ptrtoint ptr %tDSC_min48 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tDSC_min48, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %68)
  %cmp49.not = icmp ugt i32 %66, %68
  br i1 %cmp49.not, label %land.lhs.true47.for.inc_crit_edge, label %land.lhs.true50

land.lhs.true47.for.inc_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true50:                                  ; preds = %land.lhs.true47
  %69 = ptrtoint ptr %tRHW_min to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tRHW_min, align 8
  %tRHW_min51 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 28
  %71 = ptrtoint ptr %tRHW_min51 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tRHW_min51, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp52.not = icmp ugt i32 %70, %72
  br i1 %cmp52.not, label %land.lhs.true50.for.inc_crit_edge, label %land.lhs.true53

land.lhs.true50.for.inc_crit_edge:                ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true53:                                  ; preds = %land.lhs.true50
  %73 = ptrtoint ptr %tRR_min to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tRR_min, align 4
  %tRR_min54 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 29
  %75 = ptrtoint ptr %tRR_min54 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tRR_min54, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %76)
  %cmp55.not = icmp ugt i32 %74, %76
  br i1 %cmp55.not, label %land.lhs.true53.for.inc_crit_edge, label %land.lhs.true56

land.lhs.true53.for.inc_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %77 = ptrtoint ptr %tWHR_min to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tWHR_min, align 8
  %tWHR_min57 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 32
  %79 = ptrtoint ptr %tWHR_min57 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tWHR_min57, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %80)
  %cmp58.not = icmp ugt i32 %78, %80
  br i1 %cmp58.not, label %land.lhs.true56.for.inc_crit_edge, label %land.lhs.true59

land.lhs.true56.for.inc_crit_edge:                ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true59:                                  ; preds = %land.lhs.true56
  %81 = ptrtoint ptr %tWRCK_min to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tWRCK_min, align 4
  %tWRCK_min60 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 33
  %83 = ptrtoint ptr %tWRCK_min60 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tWRCK_min60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp61.not = icmp ugt i32 %82, %84
  br i1 %cmp61.not, label %land.lhs.true59.for.inc_crit_edge, label %land.lhs.true62

land.lhs.true59.for.inc_crit_edge:                ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true62:                                  ; preds = %land.lhs.true59
  %85 = ptrtoint ptr %tWW_min to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tWW_min, align 8
  %tWW_min63 = getelementptr inbounds %struct.nand_nvddr_timings, ptr %2, i32 0, i32 34
  %87 = ptrtoint ptr %tWW_min63 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %tWW_min63, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp64.not = icmp ugt i32 %86, %88
  br i1 %cmp64.not, label %land.lhs.true62.for.inc_crit_edge, label %land.lhs.true62.cleanup_crit_edge

land.lhs.true62.cleanup_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true62.for.inc_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true62.for.inc_crit_edge, %land.lhs.true59.for.inc_crit_edge, %land.lhs.true56.for.inc_crit_edge, %land.lhs.true53.for.inc_crit_edge, %land.lhs.true50.for.inc_crit_edge, %land.lhs.true47.for.inc_crit_edge, %land.lhs.true44.for.inc_crit_edge, %land.lhs.true41.for.inc_crit_edge, %land.lhs.true38.for.inc_crit_edge, %land.lhs.true35.for.inc_crit_edge, %land.lhs.true32.for.inc_crit_edge, %land.lhs.true29.for.inc_crit_edge, %land.lhs.true26.for.inc_crit_edge, %land.lhs.true23.for.inc_crit_edge, %land.lhs.true20.for.inc_crit_edge, %land.lhs.true17.for.inc_crit_edge, %land.lhs.true14.for.inc_crit_edge, %land.lhs.true11.for.inc_crit_edge, %land.lhs.true8.for.inc_crit_edge, %land.lhs.true5.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dec = add nsw i32 %mode.0111, -1
  %cmp = icmp ugt i32 %mode.0111, 1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true62.cleanup_crit_edge
  %retval.0 = phi i32 [ %mode.0111, %land.lhs.true62.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @onfi_fill_interface_config(ptr nocapture noundef readonly %chip, ptr nocapture noundef writeonly %iface, i32 noundef %type, i32 noundef %timing_mode) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  %onfi1.i = getelementptr inbounds %struct.nand_chip, ptr %chip, i32 0, i32 2, i32 4
  %0 = ptrtoint ptr %onfi1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %onfi1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %timing_mode)
  %cmp.i = icmp ugt i32 %timing_mode, 5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp.i, label %do.end.i, label %if.end22.i, !prof !15

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 658, i32 noundef 9, ptr noundef null) #4
  br label %return

if.end22.i:                                       ; preds = %if.then
  %arrayidx.i = getelementptr [6 x %struct.nand_interface_config], ptr @onfi_sdr_timings, i32 0, i32 %timing_mode
  %2 = call ptr @memcpy(ptr %iface, ptr %arrayidx.i, i32 192)
  %tobool23.not.i = icmp eq ptr %1, null
  br i1 %tobool23.not.i, label %if.end22.i.return_crit_edge, label %if.then24.i

if.end22.i.return_crit_edge:                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then24.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  %3 = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1
  %tPROG.i = getelementptr inbounds %struct.onfi_params, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %tPROG.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tPROG.i, align 4
  %conv.i = zext i16 %5 to i64
  %mul.i = mul nuw nsw i64 %conv.i, 1000000
  %tPROG_max.i = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %tPROG_max.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %mul.i, ptr %tPROG_max.i, align 8
  %tBERS.i = getelementptr inbounds %struct.onfi_params, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %tBERS.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %tBERS.i, align 2
  %conv26.i = zext i16 %8 to i64
  %mul27.i = mul nuw nsw i64 %conv26.i, 1000000
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %mul27.i, ptr %3, align 8
  %tR.i = getelementptr inbounds %struct.onfi_params, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %tR.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tR.i, align 4
  %conv28.i = zext i16 %11 to i64
  %mul29.i = mul nuw nsw i64 %conv28.i, 1000000
  %tR_max.i = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1, i32 0, i32 3
  %12 = ptrtoint ptr %tR_max.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %mul29.i, ptr %tR_max.i, align 8
  %tCCS.i = getelementptr inbounds %struct.onfi_params, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %tCCS.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tCCS.i, align 2
  %conv30.i = zext i16 %14 to i32
  %mul31.i = mul nuw nsw i32 %conv30.i, 1000
  %tCCS_min.i = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %tCCS_min.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul31.i, ptr %tCCS_min.i, align 8
  br label %return

if.else:                                          ; preds = %entry
  br i1 %cmp.i, label %do.end.i6, label %if.end22.i9, !prof !15

do.end.i6:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 694, i32 noundef 9, ptr noundef null) #4
  br label %return

if.end22.i9:                                      ; preds = %if.else
  %arrayidx.i7 = getelementptr [6 x %struct.nand_interface_config], ptr @onfi_nvddr_timings, i32 0, i32 %timing_mode
  %16 = call ptr @memcpy(ptr %iface, ptr %arrayidx.i7, i32 192)
  %tobool23.not.i8 = icmp eq ptr %1, null
  br i1 %tobool23.not.i8, label %if.end22.i9.return_crit_edge, label %if.then24.i25

if.end22.i9.return_crit_edge:                     ; preds = %if.end22.i9
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then24.i25:                                    ; preds = %if.end22.i9
  %17 = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1
  %tPROG.i10 = getelementptr inbounds %struct.onfi_params, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %tPROG.i10 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tPROG.i10, align 4
  %conv.i11 = zext i16 %19 to i64
  %mul.i12 = mul nuw nsw i64 %conv.i11, 1000000
  %tPROG_max.i13 = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %tPROG_max.i13 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %mul.i12, ptr %tPROG_max.i13, align 8
  %tBERS.i14 = getelementptr inbounds %struct.onfi_params, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %tBERS.i14 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %tBERS.i14, align 2
  %conv26.i15 = zext i16 %22 to i64
  %mul27.i16 = mul nuw nsw i64 %conv26.i15, 1000000
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %mul27.i16, ptr %17, align 8
  %tR.i17 = getelementptr inbounds %struct.onfi_params, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %tR.i17 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %tR.i17, align 4
  %conv28.i18 = zext i16 %25 to i64
  %mul29.i19 = mul nuw nsw i64 %conv28.i18, 1000000
  %tR_max.i20 = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %tR_max.i20 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %mul29.i19, ptr %tR_max.i20, align 8
  %tCCS.i21 = getelementptr inbounds %struct.onfi_params, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %tCCS.i21 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tCCS.i21, align 2
  %conv30.i22 = zext i16 %28 to i32
  %mul31.i23 = mul nuw nsw i32 %conv30.i22, 1000
  %tCCS_min.i24 = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %tCCS_min.i24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mul31.i23, ptr %tCCS_min.i24, align 8
  %fast_tCAD.i = getelementptr inbounds %struct.onfi_params, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %fast_tCAD.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fast_tCAD.i, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool32.not.i = icmp eq i8 %31, 0
  br i1 %tobool32.not.i, label %if.then24.i25.return_crit_edge, label %if.then33.i

if.then24.i25.return_crit_edge:                   ; preds = %if.then24.i25
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then33.i:                                      ; preds = %if.then24.i25
  call void @__sanitizer_cov_trace_pc() #6
  %tCAD_min.i = getelementptr inbounds %struct.nand_interface_config, ptr %iface, i32 0, i32 1, i32 1, i32 0, i32 7
  %32 = ptrtoint ptr %tCAD_min.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 25000, ptr %tCAD_min.i, align 4
  br label %return

return:                                           ; preds = %if.then33.i, %if.then24.i25.return_crit_edge, %if.end22.i9.return_crit_edge, %do.end.i6, %if.then24.i, %if.end22.i.return_crit_edge, %do.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @onfi_sdr_timings, !1, !"onfi_sdr_timings", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/nand_timings.c", i32 22, i32 43}
!2 = !{ptr @onfi_nvddr_timings, !3, !"onfi_nvddr_timings", i1 false, i1 false}
!3 = !{!"../drivers/mtd/nand/raw/nand_timings.c", i32 295, i32 43}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mtd/nand/raw/nand_timings.c", i32 658, i32 6}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i8 0, i8 2}
