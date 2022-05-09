; ModuleID = '/llk/IR_all_yes/drivers/mmc/core/mmc_test.c_pt.bc'
source_filename = "../drivers/mmc/core/mmc_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mmc_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_test_case = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_test_general_result = type { %struct.list_head, ptr, i32, i32, %struct.list_head }
%struct.mmc_test_dbgfs_file = type { %struct.list_head, ptr, ptr }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
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
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mmc_test_card = type { ptr, [16384 x i8], ptr, ptr, %struct.mmc_test_area, ptr }
%struct.mmc_test_area = type { i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mmc_test_mem = type { ptr, i32 }
%struct.mmc_test_pages = type { ptr, i32 }
%struct.mmc_test_multiple_rw = type { ptr, ptr, i32, i32, i8, i8, i32 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_test_req = type { %struct.mmc_request, %struct.mmc_command, %struct.mmc_command, %struct.mmc_command, %struct.mmc_command, %struct.mmc_data }
%struct.mmc_test_transfer_result = type { %struct.list_head, i32, i32, %struct.timespec64, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.67, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.67 = type { %struct.atomic_t }

@mmc_driver = internal global { %struct.mmc_driver, [40 x i8] } { %struct.mmc_driver { %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mmc_test_probe, ptr @mmc_test_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_mmc_test__303_3277_mmc_test_init6 = internal global ptr @mmc_test_init, section ".initcall6.init", align 4
@__exitcall_mmc_test_exit = internal global ptr @mmc_test_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file304 = internal constant [40 x i8] c"mmc_test.file=drivers/mmc/core/mmc_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [21 x i8] c"mmc_test.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [60 x i8] c"mmc_test.description=Multimedia Card (MMC) host test driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [30 x i8] c"mmc_test.author=Pierre Ossman\00", section ".modinfo", align 1
@mmc_test_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mmc_test_lock, i64 52), ptr getelementptr (i8, ptr @mmc_test_lock, i64 52) }, ptr @mmc_test_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@mmc_test_result = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mmc_test_result, ptr @mmc_test_result }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mmc_test_lock.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mmc_test_lock\00", [18 x i8] zeroinitializer }, align 32
@mmc_test_file_test = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mmc_test_file_test, ptr @mmc_test_file_test }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc_test\00", [23 x i8] zeroinitializer }, align 32
@mmc_test_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 3239, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Card claimed for testing.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mmc_test_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/mmc/core/mmc_test.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmc_test_probe._entry_ptr = internal global ptr @mmc_test_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"test\00", [27 x i8] zeroinitializer }, align 32
@mmc_test_fops_test = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @mtf_test_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mtf_test_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"testlist\00", [23 x i8] zeroinitializer }, align 32
@mtf_testlist_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mtf_testlist_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mmc_test_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 2941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: Starting tests of card %s...\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmc_test_run\00", [19 x i8] zeroinitializer }, align 32
@mmc_test_run._entry_ptr = internal global ptr @mmc_test_run._entry, section ".printk_index", align 4
@mmc_test_run._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.5, i32 2953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: Test case %d. %s...\0A\00", [37 x i8] zeroinitializer }, align 32
@mmc_test_run._entry_ptr.15 = internal global ptr @mmc_test_run._entry.13, section ".printk_index", align 4
@mmc_test_cases = internal constant { [51 x %struct.mmc_test_case], [208 x i8] } { [51 x %struct.mmc_test_case] [%struct.mmc_test_case { ptr @.str.40, ptr null, ptr @mmc_test_basic_write, ptr null }, %struct.mmc_test_case { ptr @.str.41, ptr null, ptr @mmc_test_basic_read, ptr null }, %struct.mmc_test_case { ptr @.str.42, ptr @mmc_test_prepare_write, ptr @mmc_test_verify_write, ptr @mmc_test_cleanup }, %struct.mmc_test_case { ptr @.str.43, ptr @mmc_test_prepare_read, ptr @mmc_test_verify_read, ptr @mmc_test_cleanup }, %struct.mmc_test_case { ptr @.str.44, ptr @mmc_test_prepare_write, ptr @mmc_test_multi_write, ptr @mmc_test_cleanup }, %struct.mmc_test_case { ptr @.str.45, ptr @mmc_test_prepare_read, ptr @mmc_test_multi_read, ptr @mmc_test_cleanup }, %struct.mmc_test_case { ptr @.str.46, ptr @mmc_test_prepare_write, ptr @mmc_test_pow2_write, ptr @mmc_test_cleanup }, %struct.mmc_test_case { ptr @.str.47, ptr @mmc_test_prepare_read, ptr @mmc_test_pow2_read, ptr @mmc_test_cleanup }, %struct.mmc_test_case { ptr @.str.48, ptr @mmc_test_prepare_write, ptr @mmc_test_weird_write, ptr @mmc_test_cleanup }, %struct.mmc_test_case { ptr @.str.49, ptr @mmc_test_prepare_read, ptr @mmc_test_weird_read, ptr @mmc_test_cleanup }, %struct.mmc_test_case { ptr @.str.50, ptr @mmc_test_prepare_write, ptr @mmc_test_align_write, ptr @mmc_test_cleanup }, %struct.mmc_test_case { ptr @.str.51, ptr @mmc_test_prepare_read, ptr @mmc_test_align_read, ptr @mmc_test_cleanup }, %struct.mmc_test_case { ptr @.str.52, ptr @mmc_test_prepare_write, ptr @mmc_test_align_multi_write, ptr @mmc_test_cleanup }, %struct.mmc_test_case { ptr @.str.53, ptr @mmc_test_prepare_read, ptr @mmc_test_align_multi_read, ptr @mmc_test_cleanup }, %struct.mmc_test_case { ptr @.str.54, ptr null, ptr @mmc_test_xfersize_write, ptr null }, %struct.mmc_test_case { ptr @.str.55, ptr null, ptr @mmc_test_xfersize_read, ptr null }, %struct.mmc_test_case { ptr @.str.56, ptr null, ptr @mmc_test_multi_xfersize_write, ptr null }, %struct.mmc_test_case { ptr @.str.57, ptr null, ptr @mmc_test_multi_xfersize_read, ptr null }, %struct.mmc_test_case { ptr @.str.58, ptr @mmc_test_prepare_write, ptr @mmc_test_write_high, ptr @mmc_test_cleanup }, %struct.mmc_test_case { ptr @.str.59, ptr @mmc_test_prepare_read, ptr @mmc_test_read_high, ptr @mmc_test_cleanup }, %struct.mmc_test_case { ptr @.str.60, ptr @mmc_test_prepare_write, ptr @mmc_test_multi_write_high, ptr @mmc_test_cleanup }, %struct.mmc_test_case { ptr @.str.61, ptr @mmc_test_prepare_read, ptr @mmc_test_multi_read_high, ptr @mmc_test_cleanup }, %struct.mmc_test_case { ptr @.str.62, ptr @mmc_test_area_prepare_fill, ptr @mmc_test_best_read_performance, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.63, ptr @mmc_test_area_prepare_erase, ptr @mmc_test_best_write_performance, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.64, ptr @mmc_test_area_prepare_fill, ptr @mmc_test_best_read_perf_max_scatter, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.65, ptr @mmc_test_area_prepare_erase, ptr @mmc_test_best_write_perf_max_scatter, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.66, ptr @mmc_test_area_prepare_fill, ptr @mmc_test_profile_read_perf, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.67, ptr @mmc_test_area_prepare, ptr @mmc_test_profile_write_perf, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.68, ptr @mmc_test_area_prepare_fill, ptr @mmc_test_profile_trim_perf, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.69, ptr @mmc_test_area_prepare_fill, ptr @mmc_test_profile_seq_read_perf, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.70, ptr @mmc_test_area_prepare, ptr @mmc_test_profile_seq_write_perf, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.71, ptr @mmc_test_area_prepare, ptr @mmc_test_profile_seq_trim_perf, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.72, ptr @mmc_test_area_prepare, ptr @mmc_test_random_read_perf, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.73, ptr @mmc_test_area_prepare, ptr @mmc_test_random_write_perf, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.74, ptr @mmc_test_area_prepare, ptr @mmc_test_large_seq_read_perf, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.75, ptr @mmc_test_area_prepare, ptr @mmc_test_large_seq_write_perf, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.76, ptr @mmc_test_area_prepare, ptr @mmc_test_profile_mult_write_blocking_perf, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.77, ptr @mmc_test_area_prepare, ptr @mmc_test_profile_mult_write_nonblock_perf, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.78, ptr @mmc_test_area_prepare, ptr @mmc_test_profile_mult_read_blocking_perf, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.79, ptr @mmc_test_area_prepare, ptr @mmc_test_profile_mult_read_nonblock_perf, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.80, ptr @mmc_test_area_prepare, ptr @mmc_test_profile_sglen_wr_blocking_perf, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.81, ptr @mmc_test_area_prepare, ptr @mmc_test_profile_sglen_wr_nonblock_perf, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.82, ptr @mmc_test_area_prepare, ptr @mmc_test_profile_sglen_r_blocking_perf, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.83, ptr @mmc_test_area_prepare, ptr @mmc_test_profile_sglen_r_nonblock_perf, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.84, ptr null, ptr @mmc_test_reset, ptr null }, %struct.mmc_test_case { ptr @.str.85, ptr @mmc_test_area_prepare, ptr @mmc_test_cmds_during_read, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.86, ptr @mmc_test_area_prepare, ptr @mmc_test_cmds_during_write, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.87, ptr @mmc_test_area_prepare, ptr @mmc_test_cmds_during_read_cmd23, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.88, ptr @mmc_test_area_prepare, ptr @mmc_test_cmds_during_write_cmd23, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.89, ptr @mmc_test_area_prepare, ptr @mmc_test_cmds_during_read_cmd23_nonblock, ptr @mmc_test_area_cleanup }, %struct.mmc_test_case { ptr @.str.90, ptr @mmc_test_area_prepare, ptr @mmc_test_cmds_during_write_cmd23_nonblock, ptr @mmc_test_area_cleanup }], [208 x i8] zeroinitializer }, align 32
@mmc_test_run._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.5, i32 2960, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: Result: Prepare stage failed! (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@mmc_test_run._entry_ptr.18 = internal global ptr @mmc_test_run._entry.16, section ".printk_index", align 4
@mmc_test_run._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.5, i32 2987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016%s: Result: OK\0A\00", [46 x i8] zeroinitializer }, align 32
@mmc_test_run._entry_ptr.21 = internal global ptr @mmc_test_run._entry.19, section ".printk_index", align 4
@mmc_test_run._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.5, i32 2991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: Result: FAILED\0A\00", [42 x i8] zeroinitializer }, align 32
@mmc_test_run._entry_ptr.24 = internal global ptr @mmc_test_run._entry.22, section ".printk_index", align 4
@mmc_test_run._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.5, i32 2995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Result: UNSUPPORTED (by host)\0A\00", [59 x i8] zeroinitializer }, align 32
@mmc_test_run._entry_ptr.27 = internal global ptr @mmc_test_run._entry.25, section ".printk_index", align 4
@mmc_test_run._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.12, ptr @.str.5, i32 2999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Result: UNSUPPORTED (by card)\0A\00", [59 x i8] zeroinitializer }, align 32
@mmc_test_run._entry_ptr.30 = internal global ptr @mmc_test_run._entry.28, section ".printk_index", align 4
@mmc_test_run._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.12, ptr @.str.5, i32 3003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: Result: ERROR (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@mmc_test_run._entry_ptr.33 = internal global ptr @mmc_test_run._entry.31, section ".printk_index", align 4
@mmc_test_run._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.12, ptr @.str.5, i32 3015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: Warning: Cleanup stage failed! (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@mmc_test_run._entry_ptr.36 = internal global ptr @mmc_test_run._entry.34, section ".printk_index", align 4
@mmc_test_run._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.12, ptr @.str.5, i32 3023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: Tests completed.\0A\00", [40 x i8] zeroinitializer }, align 32
@mmc_test_run._entry_ptr.39 = internal global ptr @mmc_test_run._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Basic write (no data verification)\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Basic read (no data verification)\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Basic write (with data verification)\00", [59 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Basic read (with data verification)\00", [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Multi-block write\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Multi-block read\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Power of two block writes\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Power of two block reads\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Weird sized block writes\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Weird sized block reads\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Badly aligned write\00", [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Badly aligned read\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Badly aligned multi-block write\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Badly aligned multi-block read\00", [33 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Proper xfer_size at write (start failure)\00", [54 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Proper xfer_size at read (start failure)\00", [55 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Proper xfer_size at write (midway failure)\00", [53 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Proper xfer_size at read (midway failure)\00", [54 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Highmem write\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Highmem read\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Multi-block highmem write\00", [38 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Multi-block highmem read\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Best-case read performance\00", [37 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Best-case write performance\00", [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Best-case read performance into scattered pages\00", [48 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Best-case write performance from scattered pages\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Single read performance by transfer size\00", [55 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Single write performance by transfer size\00", [54 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Single trim performance by transfer size\00", [55 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Consecutive read performance by transfer size\00", [50 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Consecutive write performance by transfer size\00", [49 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Consecutive trim performance by transfer size\00", [50 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Random read performance by transfer size\00", [55 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Random write performance by transfer size\00", [54 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Large sequential read into scattered pages\00", [53 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Large sequential write from scattered pages\00", [52 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Write performance with blocking req 4k to 4MB\00", [50 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Write performance with non-blocking req 4k to 4MB\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Read performance with blocking req 4k to 4MB\00", [51 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Read performance with non-blocking req 4k to 4MB\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Write performance blocking req 1 to 512 sg elems\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Write performance non-blocking req 1 to 512 sg elems\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Read performance blocking req 1 to 512 sg elems\00", [48 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Read performance non-blocking req 1 to 512 sg elems\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Reset test\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Commands during read - no Set Block Count (CMD23)\00", [46 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Commands during write - no Set Block Count (CMD23)\00", [45 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Commands during read - use Set Block Count (CMD23)\00", [45 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Commands during write - use Set Block Count (CMD23)\00", [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Commands during non-blocking read - use Set Block Count (CMD23)\00", [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Commands during non-blocking write - use Set Block Count (CMD23)\00", [63 x i8] zeroinitializer }, align 32
@mmc_test_wait_busy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.5, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s: Warning: Host did not wait for busy state to end.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmc_test_wait_busy\00", [45 x i8] zeroinitializer }, align 32
@mmc_test_wait_busy._entry_ptr = internal global ptr @mmc_test_wait_busy._entry, section ".printk_index", align 4
@mmc_test_area_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.5, i32 1423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: Failed to map sg list\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mmc_test_area_map\00", [46 x i8] zeroinitializer }, align 32
@mmc_test_area_map._entry_ptr = internal global ptr @mmc_test_area_map._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.95 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mmc_test_print_avg_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.5, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [119 x i8], [41 x i8] } { [119 x i8] c"\016%s: Transfer of %u x %u sectors (%u x %u%s KiB) took %llu.%09u seconds (%u kB/s, %u KiB/s, %u.%02u IOPS, sg_len %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mmc_test_print_avg_rate\00", [40 x i8] zeroinitializer }, align 32
@mmc_test_print_avg_rate._entry_ptr = internal global ptr @mmc_test_print_avg_rate._entry, section ".printk_index", align 4
@.str.98 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c".5\00", [29 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@mmc_test_print_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.5, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\016%s: Transfer of %u sectors (%u%s KiB) took %llu.%09u seconds (%u kB/s, %u KiB/s, %u.%02u IOPS)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mmc_test_print_rate\00", [44 x i8] zeroinitializer }, align 32
@mmc_test_print_rate._entry_ptr = internal global ptr @mmc_test_print_rate._entry, section ".printk_index", align 4
@rnd_next = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@mmc_test_rw_multiple_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.5, i32 2143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016error: only one of pre/post is defined\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mmc_test_rw_multiple_size\00", [38 x i8] zeroinitializer }, align 32
@mmc_test_rw_multiple_size._entry_ptr = internal global ptr @mmc_test_rw_multiple_size._entry, section ".printk_index", align 4
@mmc_test_rw_multiple._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.5, i32 2129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016[%s] error\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmc_test_rw_multiple\00", [43 x i8] zeroinitializer }, align 32
@mmc_test_rw_multiple._entry_ptr = internal global ptr @mmc_test_rw_multiple._entry, section ".printk_index", align 4
@__const.mmc_test_profile_mult_read_nonblock_perf.bs = private unnamed_addr constant [10 x i32] [i32 4096, i32 8192, i32 16384, i32 32768, i32 65536, i32 131072, i32 262144, i32 524288, i32 1048576, i32 4194304], align 4
@__const.mmc_test_profile_sglen_r_nonblock_perf.sg_len = private unnamed_addr constant [8 x i32] [i32 1, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256, i32 512], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mmc_test_ongoing_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.5, i32 2422, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: timeout waiting for Tran state status %#x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mmc_test_ongoing_transfer\00", [38 x i8] zeroinitializer }, align 32
@mmc_test_ongoing_transfer._entry_ptr = internal global ptr @mmc_test_ongoing_transfer._entry, section ".printk_index", align 4
@mmc_test_ongoing_transfer._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.5, i32 2451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s: Send Status failed: status %#x, error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@mmc_test_ongoing_transfer._entry_ptr.110 = internal global ptr @mmc_test_ongoing_transfer._entry.108, section ".printk_index", align 4
@mmc_test_ongoing_transfer._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.107, ptr @.str.5, i32 2464, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016%s: %d commands completed during transfer of %u blocks\0A\00", [38 x i8] zeroinitializer }, align 32
@mmc_test_ongoing_transfer._entry_ptr.113 = internal global ptr @mmc_test_ongoing_transfer._entry.111, section ".printk_index", align 4
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Test %d: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%u %d %llu.%09u %u %u.%02u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"0:\09Run all tests\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%d:\09%s\0A\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 25]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@___asan_gen_.122 = private unnamed_addr constant [11 x i8] c"mmc_driver\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 3255, i32 26 }
@___asan_gen_.125 = private unnamed_addr constant [14 x i8] c"mmc_test_lock\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [16 x i8] c"mmc_test_result\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2934, i32 8 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2932, i32 8 }
@___asan_gen_.137 = private unnamed_addr constant [19 x i8] c"mmc_test_file_test\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 3050, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 3257, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 3239, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 3204, i32 45 }
@___asan_gen_.164 = private unnamed_addr constant [19 x i8] c"mmc_test_fops_test\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 3134, i32 37 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 3209, i32 45 }
@___asan_gen_.170 = private unnamed_addr constant [18 x i8] c"mtf_testlist_fops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 3157, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2940, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2951, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [15 x i8] c"mmc_test_cases\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2561, i32 35 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2958, i32 5 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2986, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2990, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2994, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2998, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 3002, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 3013, i32 5 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 3022, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2563, i32 11 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2568, i32 11 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2573, i32 11 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2580, i32 11 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2587, i32 11 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2594, i32 11 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2601, i32 11 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2608, i32 11 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2615, i32 11 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2622, i32 11 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2629, i32 11 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2636, i32 11 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2643, i32 11 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2650, i32 11 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2657, i32 11 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2662, i32 11 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2667, i32 11 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2672, i32 11 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2679, i32 11 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2686, i32 11 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2693, i32 11 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2700, i32 11 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2731, i32 11 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2738, i32 11 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2745, i32 11 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2752, i32 11 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2759, i32 11 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2766, i32 11 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2773, i32 11 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2780, i32 11 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2787, i32 11 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2794, i32 11 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2801, i32 11 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2808, i32 11 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2815, i32 11 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2822, i32 11 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2829, i32 11 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2836, i32 11 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2843, i32 11 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2850, i32 11 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2857, i32 11 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2864, i32 11 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2871, i32 11 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2878, i32 11 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2885, i32 11 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2890, i32 11 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2897, i32 11 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2904, i32 11 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2911, i32 11 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2918, i32 11 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2925, i32 11 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 278, i32 5 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1422, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.414, i32 87, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 595, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 569, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant [9 x i8] c"rnd_next\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 1900, i32 21 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2143, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2129, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2421, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2450, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 2463, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 3065, i32 18 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 3068, i32 19 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 3148, i32 15 }
@___asan_gen_.491 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.492 = private constant [31 x i8] c"../drivers/mmc/core/mmc_test.c\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.492, i32 3150, i32 18 }
@llvm.compiler.used = appending global [151 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_mmc_test_exit, ptr @__initcall__kmod_mmc_test__303_3277_mmc_test_init6, ptr @mmc_test_area_map._entry, ptr @mmc_test_area_map._entry_ptr, ptr @mmc_test_exit, ptr @mmc_test_ongoing_transfer._entry, ptr @mmc_test_ongoing_transfer._entry.108, ptr @mmc_test_ongoing_transfer._entry.111, ptr @mmc_test_ongoing_transfer._entry_ptr, ptr @mmc_test_ongoing_transfer._entry_ptr.110, ptr @mmc_test_ongoing_transfer._entry_ptr.113, ptr @mmc_test_print_avg_rate._entry, ptr @mmc_test_print_avg_rate._entry_ptr, ptr @mmc_test_print_rate._entry, ptr @mmc_test_print_rate._entry_ptr, ptr @mmc_test_probe._entry, ptr @mmc_test_probe._entry_ptr, ptr @mmc_test_run._entry, ptr @mmc_test_run._entry.13, ptr @mmc_test_run._entry.16, ptr @mmc_test_run._entry.19, ptr @mmc_test_run._entry.22, ptr @mmc_test_run._entry.25, ptr @mmc_test_run._entry.28, ptr @mmc_test_run._entry.31, ptr @mmc_test_run._entry.34, ptr @mmc_test_run._entry.37, ptr @mmc_test_run._entry_ptr, ptr @mmc_test_run._entry_ptr.15, ptr @mmc_test_run._entry_ptr.18, ptr @mmc_test_run._entry_ptr.21, ptr @mmc_test_run._entry_ptr.24, ptr @mmc_test_run._entry_ptr.27, ptr @mmc_test_run._entry_ptr.30, ptr @mmc_test_run._entry_ptr.33, ptr @mmc_test_run._entry_ptr.36, ptr @mmc_test_run._entry_ptr.39, ptr @mmc_test_rw_multiple._entry, ptr @mmc_test_rw_multiple._entry_ptr, ptr @mmc_test_rw_multiple_size._entry, ptr @mmc_test_rw_multiple_size._entry_ptr, ptr @mmc_test_wait_busy._entry, ptr @mmc_test_wait_busy._entry_ptr, ptr @mmc_driver, ptr @mmc_test_lock, ptr @mmc_test_result, ptr @.str, ptr @.str.1, ptr @mmc_test_file_test, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mmc_test_fops_test, ptr @.str.9, ptr @mtf_testlist_fops, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @mmc_test_cases, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @init_completion.__key, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @rnd_next, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117], section "llvm.metadata"
@0 = internal global [124 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_result to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_file_test to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_fops_test to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtf_testlist_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_run._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_cases to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_run._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_run._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_run._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_run._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_run._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_run._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_run._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_run._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_wait_busy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_area_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_print_avg_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_print_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rnd_next to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_rw_multiple_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_rw_multiple._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_ongoing_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_ongoing_transfer._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_test_ongoing_transfer._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mmc_test_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mmc_test_free_result(ptr noundef null)
  tail call fastcc void @mmc_test_free_dbgfs_file(ptr noundef null)
  tail call void @mmc_unregister_driver(ptr noundef nonnull @mmc_driver) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_test_free_result(ptr noundef readnone %card) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mmc_test_lock, i32 noundef 0) #8
  %0 = load ptr, ptr @mmc_test_result, align 4
  %cmp.not59 = icmp eq ptr %0, @mmc_test_result
  br i1 %cmp.not59, label %entry.for.end36_crit_edge, label %for.body.lr.ph

entry.for.end36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end36

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %card, null
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %gr.060 = phi ptr [ %0, %for.body.lr.ph ], [ %grs.062, %cleanup.for.body_crit_edge ]
  %1 = ptrtoint ptr %gr.060 to i32
  call void @__asan_load4_noabort(i32 %1)
  %grs.062 = load ptr, ptr %gr.060, align 4
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %card5 = getelementptr inbounds %struct.mmc_test_general_result, ptr %gr.060, i32 0, i32 1
  %2 = ptrtoint ptr %card5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card5, align 4
  %cmp6.not = icmp eq ptr %3, %card
  br i1 %cmp6.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %tr_lst = getelementptr inbounds %struct.mmc_test_general_result, ptr %gr.060, i32 0, i32 4
  %4 = ptrtoint ptr %tr_lst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tr_lst, align 4
  %cmp19.not55 = icmp eq ptr %5, %tr_lst
  br i1 %cmp19.not55, label %if.end.for.end_crit_edge, label %if.end.for.body21_crit_edge

if.end.for.body21_crit_edge:                      ; preds = %if.end
  br label %for.body21

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body21:                                       ; preds = %list_del.exit.for.body21_crit_edge, %if.end.for.body21_crit_edge
  %tr.056 = phi ptr [ %trs.0, %list_del.exit.for.body21_crit_edge ], [ %5, %if.end.for.body21_crit_edge ]
  %6 = ptrtoint ptr %tr.056 to i32
  call void @__asan_load4_noabort(i32 %6)
  %trs.0 = load ptr, ptr %tr.056, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tr.056) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body21.list_del.exit_crit_edge

for.body21.list_del.exit_crit_edge:               ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tr.056, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %tr.056 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tr.056, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body21.list_del.exit_crit_edge
  %13 = ptrtoint ptr %tr.056 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %tr.056, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tr.056, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tr.056) #8
  %cmp19.not = icmp eq ptr %trs.0, %tr_lst
  br i1 %cmp19.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body21_crit_edge

list_del.exit.for.body21_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body21

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %call.i.i49 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %gr.060) #8
  br i1 %call.i.i49, label %if.end.i.i52, label %for.end.list_del.exit54_crit_edge

for.end.list_del.exit54_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit54

if.end.i.i52:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i50 = getelementptr inbounds %struct.list_head, ptr %gr.060, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i50 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i50, align 4
  %17 = ptrtoint ptr %gr.060 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gr.060, align 4
  %prev1.i.i.i51 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i51, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit54

list_del.exit54:                                  ; preds = %if.end.i.i52, %for.end.list_del.exit54_crit_edge
  %21 = ptrtoint ptr %gr.060 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %gr.060, align 4
  %prev.i53 = getelementptr inbounds %struct.list_head, ptr %gr.060, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i53 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i53, align 4
  tail call void @kfree(ptr noundef %gr.060) #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit54, %land.lhs.true.cleanup_crit_edge
  %cmp.not = icmp eq ptr %grs.062, @mmc_test_result
  br i1 %cmp.not, label %cleanup.for.end36_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end36_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end36

for.end36:                                        ; preds = %cleanup.for.end36_crit_edge, %entry.for.end36_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mmc_test_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_test_free_dbgfs_file(ptr noundef readnone %card) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mmc_test_lock, i32 noundef 0) #8
  %0 = load ptr, ptr @mmc_test_file_test, align 4
  %cmp.not21 = icmp eq ptr %0, @mmc_test_file_test
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %card, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %df.022 = phi ptr [ %0, %for.body.lr.ph ], [ %dfs.024, %for.inc.for.body_crit_edge ]
  %1 = ptrtoint ptr %df.022 to i32
  call void @__asan_load4_noabort(i32 %1)
  %dfs.024 = load ptr, ptr %df.022, align 4
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %card5 = getelementptr inbounds %struct.mmc_test_dbgfs_file, ptr %df.022, i32 0, i32 1
  %2 = ptrtoint ptr %card5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card5, align 4
  %cmp6.not = icmp eq ptr %3, %card
  br i1 %cmp6.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %file = getelementptr inbounds %struct.mmc_test_dbgfs_file, ptr %df.022, i32 0, i32 2
  %4 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %file, align 4
  tail call void @debugfs_remove(ptr noundef %5) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %df.022) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %df.022, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %df.022 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %df.022, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %12 = ptrtoint ptr %df.022 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %df.022, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %df.022, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %df.022) #8
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %land.lhs.true.for.inc_crit_edge
  %cmp.not = icmp eq ptr %dfs.024, @mmc_test_file_test
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mmc_test_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mmc_register_driver(ptr noundef nonnull @mmc_driver) #8
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_probe(ptr noundef %card) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @mmc_test_lock, i32 noundef 0) #8
  %debugfs_root.i.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 41
  %2 = ptrtoint ptr %debugfs_root.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.if.end.i.i_crit_edge, label %if.then.i.i

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 420, ptr noundef nonnull %3, ptr noundef %card, ptr noundef nonnull @mmc_test_fops_test) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.if.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 16) #11
  %tobool3.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.mmc_test_register_dbgfs_file.exit_crit_edge, label %if.end5.i.i

if.end.i.i.mmc_test_register_dbgfs_file.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_register_dbgfs_file.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  %card6.i.i = getelementptr inbounds %struct.mmc_test_dbgfs_file, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %card6.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %card, ptr %card6.i.i, align 8
  %file7.i.i = getelementptr inbounds %struct.mmc_test_dbgfs_file, ptr %call7.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %file7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %file7.i.i, align 4
  %7 = load ptr, ptr @mmc_test_file_test, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @mmc_test_file_test, ptr noundef %7) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end5.i.i.if.end.i_crit_edge

if.end5.i.i.if.end.i_crit_edge:                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i.i.i.i:                                   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %call7.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mmc_test_file_test, ptr %prev3.i.i.i.i, align 4
  store volatile ptr %call7.i.i.i, ptr @mmc_test_file_test, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i.i.i, %if.end5.i.i.if.end.i_crit_edge
  %11 = ptrtoint ptr %debugfs_root.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %debugfs_root.i.i, align 4
  %tobool.not.i8.i = icmp eq ptr %12, null
  br i1 %tobool.not.i8.i, label %if.end.i.if.end.i13.i_crit_edge, label %if.then.i10.i

if.end.i.if.end.i13.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i13.i

if.then.i10.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i9.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.9, i16 noundef zeroext 292, ptr noundef nonnull %12, ptr noundef %card, ptr noundef nonnull @mtf_testlist_fops) #8
  br label %if.end.i13.i

if.end.i13.i:                                     ; preds = %if.then.i10.i, %if.end.i.if.end.i13.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i11.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 16) #11
  %tobool3.not.i12.i = icmp eq ptr %call7.i.i11.i, null
  br i1 %tobool3.not.i12.i, label %if.end.i13.i.mmc_test_register_dbgfs_file.exit_crit_edge, label %if.end5.i18.i

if.end.i13.i.mmc_test_register_dbgfs_file.exit_crit_edge: ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_register_dbgfs_file.exit

if.end5.i18.i:                                    ; preds = %if.end.i13.i
  %card6.i15.i = getelementptr inbounds %struct.mmc_test_dbgfs_file, ptr %call7.i.i11.i, i32 0, i32 1
  %14 = ptrtoint ptr %card6.i15.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %card, ptr %card6.i15.i, align 8
  %file7.i16.i = getelementptr inbounds %struct.mmc_test_dbgfs_file, ptr %call7.i.i11.i, i32 0, i32 2
  %15 = ptrtoint ptr %file7.i16.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %file7.i16.i, align 4
  %16 = load ptr, ptr @mmc_test_file_test, align 4
  %call.i.i.i17.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i11.i, ptr noundef nonnull @mmc_test_file_test, ptr noundef %16) #8
  br i1 %call.i.i.i17.i, label %if.end.i.i.i21.i, label %if.end5.i18.i.if.end4_crit_edge

if.end5.i18.i.if.end4_crit_edge:                  ; preds = %if.end5.i18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end.i.i.i21.i:                                 ; preds = %if.end5.i18.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i19.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i19.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i11.i, ptr %prev1.i.i.i19.i, align 4
  %18 = ptrtoint ptr %call7.i.i11.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %call7.i.i11.i, align 8
  %prev3.i.i.i20.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i11.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i20.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mmc_test_file_test, ptr %prev3.i.i.i20.i, align 4
  store volatile ptr %call7.i.i11.i, ptr @mmc_test_file_test, align 4
  br label %if.end4

mmc_test_register_dbgfs_file.exit:                ; preds = %if.end.i13.i.mmc_test_register_dbgfs_file.exit_crit_edge, %if.end.i.i.mmc_test_register_dbgfs_file.exit_crit_edge
  tail call void @debugfs_remove(ptr noundef null) #8
  tail call void @mutex_unlock(ptr noundef nonnull @mmc_test_lock) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i.i21.i, %if.end5.i18.i.if.end4_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mmc_test_lock) #8
  %cmdq_en = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 40
  %20 = ptrtoint ptr %cmdq_en to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %cmdq_en, align 2, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool5.not = icmp eq i8 %21, 0
  br i1 %tobool5.not, label %if.end4.do.end_crit_edge, label %if.then6

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then6:                                         ; preds = %if.end4
  %22 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card, align 8
  %call.i = tail call i32 @__mmc_claim_host(ptr noundef %23, ptr noundef null, ptr noundef null) #8
  %call7 = tail call i32 @mmc_cmdq_disable(ptr noundef %card) #8
  %24 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card, align 8
  tail call void @mmc_release_host(ptr noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool9.not = icmp eq i32 %call7, 0
  br i1 %tobool9.not, label %if.then6.do.end_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6.do.end_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %if.then6.do.end_crit_edge, %if.end4.do.end_crit_edge
  %dev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.3) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then6.cleanup_crit_edge, %mmc_test_register_dbgfs_file.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -12, %mmc_test_register_dbgfs_file.exit ], [ %call7, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_test_remove(ptr noundef %card) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reenable_cmdq = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 8
  %0 = ptrtoint ptr %reenable_cmdq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reenable_cmdq, align 8, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 8
  %call.i = tail call i32 @__mmc_claim_host(ptr noundef %3, ptr noundef null, ptr noundef null) #8
  %call = tail call i32 @mmc_cmdq_enable(ptr noundef %card) #8
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 8
  tail call void @mmc_release_host(ptr noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @mmc_test_free_result(ptr noundef %card)
  tail call fastcc void @mmc_test_free_dbgfs_file(ptr noundef %card)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_cmdq_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_release_host(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtf_test_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %pos) #1 align 64 {
entry:
  %testcase = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %testcase) #8
  %4 = ptrtoint ptr %testcase to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %testcase, align 4, !annotation !255
  %call = call i32 @kstrtol_from_user(ptr noundef %buf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %testcase) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i.i.i = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16440, i32 noundef 3520, i32 noundef 3) #13
  %tobool2.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call fastcc void @mmc_test_free_result(ptr noundef %3)
  %5 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %call1.i.i.i, align 4096
  %call1.i.i.i32 = call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 16384, i32 noundef 3520, i32 noundef 2) #13
  %buffer = getelementptr inbounds %struct.mmc_test_card, ptr %call1.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1.i.i.i32, ptr %buffer, align 4
  %call38.i.i.i = call ptr @__alloc_pages(i32 noundef 3266, i32 noundef 2, i32 noundef 0, ptr noundef null) #8
  %highmem = getelementptr inbounds %struct.mmc_test_card, ptr %call1.i.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %highmem to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call38.i.i.i, ptr %highmem, align 8
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %tobool9.not = icmp eq ptr %9, null
  %tobool11.not = icmp eq ptr %call38.i.i.i, null
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %if.end4.if.end13_crit_edge, label %if.then12

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.end4
  call void @mutex_lock_nested(ptr noundef nonnull @mmc_test_lock, i32 noundef 0) #8
  %10 = ptrtoint ptr %testcase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %testcase, align 4
  %12 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call1.i.i.i, align 4096
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then12.dev_name.exit.i_crit_edge

if.then12.dev_name.exit.i_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %class_dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then12.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %19, %if.end.i.i ], [ %17, %if.then12.dev_name.exit.i_crit_edge ]
  %init_name.i170.i = getelementptr inbounds %struct.mmc_card, ptr %13, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %init_name.i170.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i170.i, align 8
  %tobool.not.i171.i = icmp eq ptr %21, null
  br i1 %tobool.not.i171.i, label %if.end.i172.i, label %dev_name.exit.i.dev_name.exit174.i_crit_edge

dev_name.exit.i.dev_name.exit174.i_crit_edge:     ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit174.i

if.end.i172.i:                                    ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.mmc_card, ptr %13, i32 0, i32 1
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit174.i

dev_name.exit174.i:                               ; preds = %if.end.i172.i, %dev_name.exit.i.dev_name.exit174.i_crit_edge
  %retval.0.i173.i = phi ptr [ %23, %if.end.i172.i ], [ %21, %dev_name.exit.i.dev_name.exit174.i_crit_edge ]
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i173.i) #12
  %24 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call1.i.i.i, align 4096
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 8
  %call.i.i = call i32 @__mmc_claim_host(ptr noundef %27, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %gr42.i = getelementptr inbounds %struct.mmc_test_card, ptr %call1.i.i.i, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup116.i.for.body.i_crit_edge, %dev_name.exit174.i
  %i.0220.i = phi i32 [ 0, %dev_name.exit174.i ], [ %add.i, %cleanup116.i.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.0220.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %11)
  %cmp6.not.i = icmp eq i32 %add.i, %11
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp6.not.i
  br i1 %or.cond.i, label %do.end9.i, label %for.body.i.cleanup116.i_crit_edge

for.body.i.cleanup116.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116.i

do.end9.i:                                        ; preds = %for.body.i
  %28 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call1.i.i.i, align 4096
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 8
  %init_name.i175.i = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %init_name.i175.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i175.i, align 8
  %tobool.not.i176.i = icmp eq ptr %33, null
  br i1 %tobool.not.i176.i, label %if.end.i177.i, label %do.end9.i.dev_name.exit179.i_crit_edge

do.end9.i.dev_name.exit179.i_crit_edge:           ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit179.i

if.end.i177.i:                                    ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev13.i = getelementptr inbounds %struct.mmc_host, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %class_dev13.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %class_dev13.i, align 4
  br label %dev_name.exit179.i

dev_name.exit179.i:                               ; preds = %if.end.i177.i, %do.end9.i.dev_name.exit179.i_crit_edge
  %retval.0.i178.i = phi ptr [ %35, %if.end.i177.i ], [ %33, %do.end9.i.dev_name.exit179.i_crit_edge ]
  %arrayidx.i = getelementptr [51 x %struct.mmc_test_case], ptr @mmc_test_cases, i32 0, i32 %i.0220.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %retval.0.i178.i, i32 noundef %add.i, ptr noundef %37) #12
  %prepare.i = getelementptr [51 x %struct.mmc_test_case], ptr @mmc_test_cases, i32 0, i32 %i.0220.i, i32 1
  %38 = ptrtoint ptr %prepare.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prepare.i, align 4
  %tobool18.not.i = icmp eq ptr %39, null
  br i1 %tobool18.not.i, label %dev_name.exit179.i.if.end35.i_crit_edge, label %if.then19.i

dev_name.exit179.i.if.end35.i_crit_edge:          ; preds = %dev_name.exit179.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then19.i:                                      ; preds = %dev_name.exit179.i
  %call22.i = call i32 %39(ptr noundef %call1.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then19.i.if.end35.i_crit_edge, label %do.end27.i

if.then19.i.if.end35.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

do.end27.i:                                       ; preds = %if.then19.i
  %40 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call1.i.i.i, align 4096
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %init_name.i180.i = getelementptr inbounds %struct.mmc_host, ptr %43, i32 0, i32 1, i32 3
  %44 = ptrtoint ptr %init_name.i180.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i180.i, align 8
  %tobool.not.i181.i = icmp eq ptr %45, null
  br i1 %tobool.not.i181.i, label %if.end.i182.i, label %do.end27.i.dev_name.exit184.i_crit_edge

do.end27.i.dev_name.exit184.i_crit_edge:          ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit184.i

if.end.i182.i:                                    ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev31.i = getelementptr inbounds %struct.mmc_host, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %class_dev31.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %class_dev31.i, align 4
  br label %dev_name.exit184.i

dev_name.exit184.i:                               ; preds = %if.end.i182.i, %do.end27.i.dev_name.exit184.i_crit_edge
  %retval.0.i183.i = phi ptr [ %47, %if.end.i182.i ], [ %45, %do.end27.i.dev_name.exit184.i_crit_edge ]
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %retval.0.i183.i, i32 noundef %call22.i) #12
  br label %cleanup116.i

if.end35.i:                                       ; preds = %if.then19.i.if.end35.i_crit_edge, %dev_name.exit179.i.if.end35.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 28) #11
  %tobool37.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool37.not.i, label %if.end35.i.if.end43.i_crit_edge, label %if.then38.i

if.end35.i.if.end43.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

if.then38.i:                                      ; preds = %if.end35.i
  %tr_lst.i = getelementptr inbounds %struct.mmc_test_general_result, ptr %call7.i.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %tr_lst.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %tr_lst.i, ptr %tr_lst.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mmc_test_general_result, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %tr_lst.i, ptr %prev.i.i, align 8
  %51 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call1.i.i.i, align 4096
  %card40.i = getelementptr inbounds %struct.mmc_test_general_result, ptr %call7.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %card40.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %card40.i, align 8
  %testcase41.i = getelementptr inbounds %struct.mmc_test_general_result, ptr %call7.i.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %testcase41.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %i.0220.i, ptr %testcase41.i, align 4
  %55 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mmc_test_result, i32 0, i32 1), align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %55, ptr noundef nonnull @mmc_test_result) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then38.i.list_add_tail.exit.i_crit_edge

if.then38.i.list_add_tail.exit.i_crit_edge:       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call7.i.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @mmc_test_result, i32 0, i32 1), align 4
  %56 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @mmc_test_result, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %prev3.i.i.i, align 4
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %call7.i.i.i, ptr %55, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then38.i.list_add_tail.exit.i_crit_edge
  %59 = ptrtoint ptr %gr42.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i.i, ptr %gr42.i, align 4
  br label %if.end43.i

if.end43.i:                                       ; preds = %list_add_tail.exit.i, %if.end35.i.if.end43.i_crit_edge
  %run.i = getelementptr [51 x %struct.mmc_test_case], ptr @mmc_test_cases, i32 0, i32 %i.0220.i, i32 2
  %60 = ptrtoint ptr %run.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %run.i, align 4
  %call45.i = call i32 %61(ptr noundef %call1.i.i.i) #8
  %62 = zext i32 %call45.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call45.i, label %do.end87.i [
    i32 0, label %do.end48.i
    i32 1, label %do.end58.i
    i32 2, label %do.end68.i
    i32 3, label %do.end78.i
  ]

do.end48.i:                                       ; preds = %if.end43.i
  %63 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call1.i.i.i, align 4096
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %init_name.i185.i = getelementptr inbounds %struct.mmc_host, ptr %66, i32 0, i32 1, i32 3
  %67 = ptrtoint ptr %init_name.i185.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init_name.i185.i, align 8
  %tobool.not.i186.i = icmp eq ptr %68, null
  br i1 %tobool.not.i186.i, label %if.end.i187.i, label %do.end48.i.dev_name.exit189.i_crit_edge

do.end48.i.dev_name.exit189.i_crit_edge:          ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit189.i

if.end.i187.i:                                    ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev52.i = getelementptr inbounds %struct.mmc_host, ptr %66, i32 0, i32 1
  %69 = ptrtoint ptr %class_dev52.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %class_dev52.i, align 4
  br label %dev_name.exit189.i

dev_name.exit189.i:                               ; preds = %if.end.i187.i, %do.end48.i.dev_name.exit189.i_crit_edge
  %retval.0.i188.i = phi ptr [ %70, %if.end.i187.i ], [ %68, %do.end48.i.dev_name.exit189.i_crit_edge ]
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %retval.0.i188.i) #12
  br label %sw.epilog.i

do.end58.i:                                       ; preds = %if.end43.i
  %71 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call1.i.i.i, align 4096
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %72, align 8
  %init_name.i190.i = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 1, i32 3
  %75 = ptrtoint ptr %init_name.i190.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %init_name.i190.i, align 8
  %tobool.not.i191.i = icmp eq ptr %76, null
  br i1 %tobool.not.i191.i, label %if.end.i192.i, label %do.end58.i.dev_name.exit194.i_crit_edge

do.end58.i.dev_name.exit194.i_crit_edge:          ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit194.i

if.end.i192.i:                                    ; preds = %do.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev62.i = getelementptr inbounds %struct.mmc_host, ptr %74, i32 0, i32 1
  %77 = ptrtoint ptr %class_dev62.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %class_dev62.i, align 4
  br label %dev_name.exit194.i

dev_name.exit194.i:                               ; preds = %if.end.i192.i, %do.end58.i.dev_name.exit194.i_crit_edge
  %retval.0.i193.i = phi ptr [ %78, %if.end.i192.i ], [ %76, %do.end58.i.dev_name.exit194.i_crit_edge ]
  %call64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %retval.0.i193.i) #12
  br label %sw.epilog.i

do.end68.i:                                       ; preds = %if.end43.i
  %79 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %call1.i.i.i, align 4096
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 8
  %init_name.i195.i = getelementptr inbounds %struct.mmc_host, ptr %82, i32 0, i32 1, i32 3
  %83 = ptrtoint ptr %init_name.i195.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %init_name.i195.i, align 8
  %tobool.not.i196.i = icmp eq ptr %84, null
  br i1 %tobool.not.i196.i, label %if.end.i197.i, label %do.end68.i.dev_name.exit199.i_crit_edge

do.end68.i.dev_name.exit199.i_crit_edge:          ; preds = %do.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit199.i

if.end.i197.i:                                    ; preds = %do.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev72.i = getelementptr inbounds %struct.mmc_host, ptr %82, i32 0, i32 1
  %85 = ptrtoint ptr %class_dev72.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %class_dev72.i, align 4
  br label %dev_name.exit199.i

dev_name.exit199.i:                               ; preds = %if.end.i197.i, %do.end68.i.dev_name.exit199.i_crit_edge
  %retval.0.i198.i = phi ptr [ %86, %if.end.i197.i ], [ %84, %do.end68.i.dev_name.exit199.i_crit_edge ]
  %call74.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %retval.0.i198.i) #12
  br label %sw.epilog.i

do.end78.i:                                       ; preds = %if.end43.i
  %87 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call1.i.i.i, align 4096
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 8
  %init_name.i200.i = getelementptr inbounds %struct.mmc_host, ptr %90, i32 0, i32 1, i32 3
  %91 = ptrtoint ptr %init_name.i200.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %init_name.i200.i, align 8
  %tobool.not.i201.i = icmp eq ptr %92, null
  br i1 %tobool.not.i201.i, label %if.end.i202.i, label %do.end78.i.dev_name.exit204.i_crit_edge

do.end78.i.dev_name.exit204.i_crit_edge:          ; preds = %do.end78.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit204.i

if.end.i202.i:                                    ; preds = %do.end78.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev82.i = getelementptr inbounds %struct.mmc_host, ptr %90, i32 0, i32 1
  %93 = ptrtoint ptr %class_dev82.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %class_dev82.i, align 4
  br label %dev_name.exit204.i

dev_name.exit204.i:                               ; preds = %if.end.i202.i, %do.end78.i.dev_name.exit204.i_crit_edge
  %retval.0.i203.i = phi ptr [ %94, %if.end.i202.i ], [ %92, %do.end78.i.dev_name.exit204.i_crit_edge ]
  %call84.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %retval.0.i203.i) #12
  br label %sw.epilog.i

do.end87.i:                                       ; preds = %if.end43.i
  %95 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call1.i.i.i, align 4096
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 8
  %init_name.i205.i = getelementptr inbounds %struct.mmc_host, ptr %98, i32 0, i32 1, i32 3
  %99 = ptrtoint ptr %init_name.i205.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %init_name.i205.i, align 8
  %tobool.not.i206.i = icmp eq ptr %100, null
  br i1 %tobool.not.i206.i, label %if.end.i207.i, label %do.end87.i.dev_name.exit209.i_crit_edge

do.end87.i.dev_name.exit209.i_crit_edge:          ; preds = %do.end87.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit209.i

if.end.i207.i:                                    ; preds = %do.end87.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev91.i = getelementptr inbounds %struct.mmc_host, ptr %98, i32 0, i32 1
  %101 = ptrtoint ptr %class_dev91.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %class_dev91.i, align 4
  br label %dev_name.exit209.i

dev_name.exit209.i:                               ; preds = %if.end.i207.i, %do.end87.i.dev_name.exit209.i_crit_edge
  %retval.0.i208.i = phi ptr [ %102, %if.end.i207.i ], [ %100, %do.end87.i.dev_name.exit209.i_crit_edge ]
  %call93.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %retval.0.i208.i, i32 noundef %call45.i) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %dev_name.exit209.i, %dev_name.exit204.i, %dev_name.exit199.i, %dev_name.exit194.i, %dev_name.exit189.i
  br i1 %tobool37.not.i, label %sw.epilog.i.if.end96.i_crit_edge, label %if.then95.i

sw.epilog.i.if.end96.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end96.i

if.then95.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %result.i = getelementptr inbounds %struct.mmc_test_general_result, ptr %call7.i.i.i, i32 0, i32 3
  %103 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %call45.i, ptr %result.i, align 8
  br label %if.end96.i

if.end96.i:                                       ; preds = %if.then95.i, %sw.epilog.i.if.end96.i_crit_edge
  %cleanup.i = getelementptr [51 x %struct.mmc_test_case], ptr @mmc_test_cases, i32 0, i32 %i.0220.i, i32 3
  %104 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cleanup.i, align 4
  %tobool98.not.i = icmp eq ptr %105, null
  br i1 %tobool98.not.i, label %if.end96.i.cleanup116.i_crit_edge, label %if.then99.i

if.end96.i.cleanup116.i_crit_edge:                ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116.i

if.then99.i:                                      ; preds = %if.end96.i
  %call102.i = call i32 %105(ptr noundef %call1.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.i)
  %tobool103.not.i = icmp eq i32 %call102.i, 0
  br i1 %tobool103.not.i, label %if.then99.i.cleanup116.i_crit_edge, label %do.end107.i

if.then99.i.cleanup116.i_crit_edge:               ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup116.i

do.end107.i:                                      ; preds = %if.then99.i
  %106 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call1.i.i.i, align 4096
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 8
  %init_name.i210.i = getelementptr inbounds %struct.mmc_host, ptr %109, i32 0, i32 1, i32 3
  %110 = ptrtoint ptr %init_name.i210.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %init_name.i210.i, align 8
  %tobool.not.i211.i = icmp eq ptr %111, null
  br i1 %tobool.not.i211.i, label %if.end.i212.i, label %do.end107.i.dev_name.exit214.i_crit_edge

do.end107.i.dev_name.exit214.i_crit_edge:         ; preds = %do.end107.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit214.i

if.end.i212.i:                                    ; preds = %do.end107.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev111.i = getelementptr inbounds %struct.mmc_host, ptr %109, i32 0, i32 1
  %112 = ptrtoint ptr %class_dev111.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %class_dev111.i, align 4
  br label %dev_name.exit214.i

dev_name.exit214.i:                               ; preds = %if.end.i212.i, %do.end107.i.dev_name.exit214.i_crit_edge
  %retval.0.i213.i = phi ptr [ %113, %if.end.i212.i ], [ %111, %do.end107.i.dev_name.exit214.i_crit_edge ]
  %call113.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %retval.0.i213.i, i32 noundef %call102.i) #12
  br label %cleanup116.i

cleanup116.i:                                     ; preds = %dev_name.exit214.i, %if.then99.i.cleanup116.i_crit_edge, %if.end96.i.cleanup116.i_crit_edge, %dev_name.exit184.i, %for.body.i.cleanup116.i_crit_edge
  %exitcond.not.i = icmp eq i32 %add.i, 51
  br i1 %exitcond.not.i, label %for.end.i, label %cleanup116.i.for.body.i_crit_edge

cleanup116.i.for.body.i_crit_edge:                ; preds = %cleanup116.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup116.i
  %114 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %call1.i.i.i, align 4096
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 8
  call void @mmc_release_host(ptr noundef %117) #8
  %118 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %call1.i.i.i, align 4096
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 8
  %init_name.i215.i = getelementptr inbounds %struct.mmc_host, ptr %121, i32 0, i32 1, i32 3
  %122 = ptrtoint ptr %init_name.i215.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %init_name.i215.i, align 8
  %tobool.not.i216.i = icmp eq ptr %123, null
  br i1 %tobool.not.i216.i, label %if.end.i217.i, label %for.end.i.mmc_test_run.exit_crit_edge

for.end.i.mmc_test_run.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_run.exit

if.end.i217.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev125.i = getelementptr inbounds %struct.mmc_host, ptr %121, i32 0, i32 1
  %124 = ptrtoint ptr %class_dev125.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %class_dev125.i, align 4
  br label %mmc_test_run.exit

mmc_test_run.exit:                                ; preds = %if.end.i217.i, %for.end.i.mmc_test_run.exit_crit_edge
  %retval.0.i218.i = phi ptr [ %125, %if.end.i217.i ], [ %123, %for.end.i.mmc_test_run.exit_crit_edge ]
  %call127.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %retval.0.i218.i) #12
  call void @mutex_unlock(ptr noundef nonnull @mmc_test_lock) #8
  br label %if.end13

if.end13:                                         ; preds = %mmc_test_run.exit, %if.end4.if.end13_crit_edge
  %126 = ptrtoint ptr %highmem to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %highmem, align 8
  call void @__free_pages(ptr noundef %127, i32 noundef 2) #8
  %128 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %buffer, align 4
  call void @kfree(ptr noundef %129) #8
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end13 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %testcase) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtf_test_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mtf_test_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtol_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_basic_write(ptr nocapture noundef readonly %test) #1 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %test, align 4
  %call.i = tail call i32 @mmc_set_blocklen(ptr noundef %2, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %buffer = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %4, i32 noundef 512) #8
  %call1 = call fastcc i32 @mmc_test_simple_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 512, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_basic_read(ptr nocapture noundef readonly %test) #1 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %test, align 4
  %call.i = tail call i32 @mmc_set_blocklen(ptr noundef %2, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %buffer = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %4, i32 noundef 512) #8
  %call1 = call fastcc i32 @mmc_test_simple_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 512, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_prepare_write(ptr nocapture noundef readonly %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %call.i.i = tail call i32 @mmc_set_blocklen(ptr noundef %1, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__mmc_test_prepare.exit_crit_edge

entry.__mmc_test_prepare.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mmc_test_prepare.exit

if.end.i:                                         ; preds = %entry
  %buffer3.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  %2 = ptrtoint ptr %buffer3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer3.i, align 4
  %4 = call ptr @memset(ptr %3, i32 223, i32 512)
  br label %for.body8.i

for.cond5.i:                                      ; preds = %for.body8.i
  %inc15.i = add nuw nsw i32 %i.132.i, 1
  %exitcond33.not.i = icmp eq i32 %inc15.i, 32
  br i1 %exitcond33.not.i, label %for.cond5.i.__mmc_test_prepare.exit_crit_edge, label %for.cond5.i.for.body8.i_crit_edge

for.cond5.i.for.body8.i_crit_edge:                ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8.i

for.cond5.i.__mmc_test_prepare.exit_crit_edge:    ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mmc_test_prepare.exit

for.body8.i:                                      ; preds = %for.cond5.i.for.body8.i_crit_edge, %if.end.i
  %i.132.i = phi i32 [ 0, %if.end.i ], [ %inc15.i, %for.cond5.i.for.body8.i_crit_edge ]
  %5 = ptrtoint ptr %buffer3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer3.i, align 4
  %call10.i = tail call fastcc i32 @mmc_test_buffer_transfer(ptr noundef %test, ptr noundef %6, i32 noundef %i.132.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %for.cond5.i, label %for.body8.i.__mmc_test_prepare.exit_crit_edge

for.body8.i.__mmc_test_prepare.exit_crit_edge:    ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mmc_test_prepare.exit

__mmc_test_prepare.exit:                          ; preds = %for.body8.i.__mmc_test_prepare.exit_crit_edge, %for.cond5.i.__mmc_test_prepare.exit_crit_edge, %entry.__mmc_test_prepare.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %entry.__mmc_test_prepare.exit_crit_edge ], [ %call10.i, %for.body8.i.__mmc_test_prepare.exit_crit_edge ], [ 0, %for.cond5.i.__mmc_test_prepare.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_verify_write(ptr noundef %test) #1 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %buffer = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %2, i32 noundef 512) #8
  %call = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 512, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_cleanup(ptr nocapture noundef readonly %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %call.i.i = tail call i32 @mmc_set_blocklen(ptr noundef %1, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__mmc_test_prepare.exit_crit_edge

entry.__mmc_test_prepare.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mmc_test_prepare.exit

if.end.i:                                         ; preds = %entry
  %buffer3.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  %2 = ptrtoint ptr %buffer3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer3.i, align 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 512)
  br label %for.body8.i

for.cond5.i:                                      ; preds = %for.body8.i
  %inc15.i = add nuw nsw i32 %i.132.i, 1
  %exitcond33.not.i = icmp eq i32 %inc15.i, 32
  br i1 %exitcond33.not.i, label %for.cond5.i.__mmc_test_prepare.exit_crit_edge, label %for.cond5.i.for.body8.i_crit_edge

for.cond5.i.for.body8.i_crit_edge:                ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8.i

for.cond5.i.__mmc_test_prepare.exit_crit_edge:    ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mmc_test_prepare.exit

for.body8.i:                                      ; preds = %for.cond5.i.for.body8.i_crit_edge, %if.end.i
  %i.132.i = phi i32 [ 0, %if.end.i ], [ %inc15.i, %for.cond5.i.for.body8.i_crit_edge ]
  %5 = ptrtoint ptr %buffer3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer3.i, align 4
  %call10.i = tail call fastcc i32 @mmc_test_buffer_transfer(ptr noundef %test, ptr noundef %6, i32 noundef %i.132.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %for.cond5.i, label %for.body8.i.__mmc_test_prepare.exit_crit_edge

for.body8.i.__mmc_test_prepare.exit_crit_edge:    ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mmc_test_prepare.exit

__mmc_test_prepare.exit:                          ; preds = %for.body8.i.__mmc_test_prepare.exit_crit_edge, %for.cond5.i.__mmc_test_prepare.exit_crit_edge, %entry.__mmc_test_prepare.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %entry.__mmc_test_prepare.exit_crit_edge ], [ %call10.i, %for.body8.i.__mmc_test_prepare.exit_crit_edge ], [ 0, %for.cond5.i.__mmc_test_prepare.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_prepare_read(ptr nocapture noundef readonly %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %call.i.i = tail call i32 @mmc_set_blocklen(ptr noundef %1, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__mmc_test_prepare.exit_crit_edge

entry.__mmc_test_prepare.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mmc_test_prepare.exit

if.end.i:                                         ; preds = %entry
  %buffer3.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i
  %i.031.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i ]
  %conv.i = trunc i32 %i.031.i to i8
  %2 = ptrtoint ptr %buffer3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer3.i, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %i.031.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 512
  br i1 %exitcond.not.i, label %for.body.i.for.body8.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.body8.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body8.i

for.cond5.i:                                      ; preds = %for.body8.i
  %inc15.i = add nuw nsw i32 %i.132.i, 1
  %exitcond33.not.i = icmp eq i32 %inc15.i, 32
  br i1 %exitcond33.not.i, label %for.cond5.i.__mmc_test_prepare.exit_crit_edge, label %for.cond5.i.for.body8.i_crit_edge

for.cond5.i.for.body8.i_crit_edge:                ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8.i

for.cond5.i.__mmc_test_prepare.exit_crit_edge:    ; preds = %for.cond5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mmc_test_prepare.exit

for.body8.i:                                      ; preds = %for.cond5.i.for.body8.i_crit_edge, %for.body.i.for.body8.i_crit_edge
  %i.132.i = phi i32 [ %inc15.i, %for.cond5.i.for.body8.i_crit_edge ], [ 0, %for.body.i.for.body8.i_crit_edge ]
  %5 = ptrtoint ptr %buffer3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer3.i, align 4
  %call10.i = tail call fastcc i32 @mmc_test_buffer_transfer(ptr noundef %test, ptr noundef %6, i32 noundef %i.132.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %for.cond5.i, label %for.body8.i.__mmc_test_prepare.exit_crit_edge

for.body8.i.__mmc_test_prepare.exit_crit_edge:    ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__mmc_test_prepare.exit

__mmc_test_prepare.exit:                          ; preds = %for.body8.i.__mmc_test_prepare.exit_crit_edge, %for.cond5.i.__mmc_test_prepare.exit_crit_edge, %entry.__mmc_test_prepare.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %entry.__mmc_test_prepare.exit_crit_edge ], [ %call10.i, %for.body8.i.__mmc_test_prepare.exit_crit_edge ], [ 0, %for.cond5.i.__mmc_test_prepare.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_verify_read(ptr noundef %test) #1 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %buffer = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %2, i32 noundef 512) #8
  %call = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 512, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_multi_write(ptr noundef %test) #1 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %test, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_blk_count, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 23
  %7 = ptrtoint ptr %max_req_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_req_size, align 8
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 20
  %9 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_seg_size, align 16
  %11 = tail call i32 @llvm.umin.i32(i32 %8, i32 %10)
  %mul = shl i32 %6, 9
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %mul)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 8192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %13)
  %cmp21 = icmp ult i32 %13, 1024
  br i1 %cmp21, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %buffer = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %15, i32 noundef %13) #8
  %div42 = lshr i32 %13, 9
  %call = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef %div42, i32 noundef 512, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end23 ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_multi_read(ptr noundef %test) #1 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %test, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_blk_count, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 23
  %7 = ptrtoint ptr %max_req_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_req_size, align 8
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 20
  %9 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_seg_size, align 16
  %11 = tail call i32 @llvm.umin.i32(i32 %8, i32 %10)
  %mul = shl i32 %6, 9
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %mul)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 8192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %13)
  %cmp21 = icmp ult i32 %13, 1024
  br i1 %cmp21, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %buffer = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %15, i32 noundef %13) #8
  %div42 = lshr i32 %13, 9
  %call = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef %div42, i32 noundef 512, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end23 ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_pow2_write(ptr noundef %test) #1 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %test, align 4
  %write_partial = getelementptr inbounds %struct.mmc_card, ptr %2, i32 0, i32 20, i32 12
  %3 = ptrtoint ptr %write_partial to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %write_partial, align 8
  %4 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %buffer = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %6, i32 noundef 1) #8
  %call = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.cond, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.cond.preheader
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %8, i32 noundef 2) #8
  %call.1 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 2, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool1.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool1.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %10, i32 noundef 4) #8
  %call.2 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 4, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool1.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool1.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %12, i32 noundef 8) #8
  %call.3 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 8, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool1.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool1.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %14, i32 noundef 16) #8
  %call.4 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 16, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool1.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool1.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %16, i32 noundef 32) #8
  %call.5 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 32, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool1.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool1.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %18, i32 noundef 64) #8
  %call.6 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 64, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool1.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool1.not.6, label %for.cond.6, label %for.cond.5.cleanup_crit_edge

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %20, i32 noundef 128) #8
  %call.7 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 128, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool1.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool1.not.7, label %for.cond.7, label %for.cond.6.cleanup_crit_edge

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %22, i32 noundef 256) #8
  %call.8 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 256, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %for.cond.7, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ %call, %for.cond.preheader.cleanup_crit_edge ], [ %call.1, %for.cond.cleanup_crit_edge ], [ %call.2, %for.cond.1.cleanup_crit_edge ], [ %call.3, %for.cond.2.cleanup_crit_edge ], [ %call.4, %for.cond.3.cleanup_crit_edge ], [ %call.5, %for.cond.4.cleanup_crit_edge ], [ %call.6, %for.cond.5.cleanup_crit_edge ], [ %call.7, %for.cond.6.cleanup_crit_edge ], [ %call.8, %for.cond.7 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_pow2_read(ptr noundef %test) #1 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %test, align 4
  %read_partial = getelementptr inbounds %struct.mmc_card, ptr %2, i32 0, i32 20, i32 12
  %3 = ptrtoint ptr %read_partial to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %read_partial, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %buffer = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %5, i32 noundef 1) #8
  %call = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.cond, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.cond.preheader
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %7, i32 noundef 2) #8
  %call.1 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 2, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool1.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool1.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %9, i32 noundef 4) #8
  %call.2 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 4, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool1.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool1.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %11, i32 noundef 8) #8
  %call.3 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 8, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool1.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool1.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %13, i32 noundef 16) #8
  %call.4 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 16, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool1.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool1.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %15, i32 noundef 32) #8
  %call.5 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 32, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool1.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool1.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %17, i32 noundef 64) #8
  %call.6 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 64, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool1.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool1.not.6, label %for.cond.6, label %for.cond.5.cleanup_crit_edge

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %19, i32 noundef 128) #8
  %call.7 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 128, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool1.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool1.not.7, label %for.cond.7, label %for.cond.6.cleanup_crit_edge

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %21, i32 noundef 256) #8
  %call.8 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 256, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %for.cond.7, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ %call, %for.cond.preheader.cleanup_crit_edge ], [ %call.1, %for.cond.cleanup_crit_edge ], [ %call.2, %for.cond.1.cleanup_crit_edge ], [ %call.3, %for.cond.2.cleanup_crit_edge ], [ %call.4, %for.cond.3.cleanup_crit_edge ], [ %call.5, %for.cond.4.cleanup_crit_edge ], [ %call.6, %for.cond.5.cleanup_crit_edge ], [ %call.7, %for.cond.6.cleanup_crit_edge ], [ %call.8, %for.cond.7 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_weird_write(ptr noundef %test) #1 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %test, align 4
  %write_partial = getelementptr inbounds %struct.mmc_card, ptr %2, i32 0, i32 20, i32 12
  %3 = ptrtoint ptr %write_partial to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %write_partial, align 8
  %4 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %buffer = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %add = add nuw nsw i32 %i.012, 7
  %cmp = icmp ult i32 %i.012, 505
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.012 = phi i32 [ 3, %for.cond.preheader ], [ %add, %for.cond.for.body_crit_edge ]
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %6, i32 noundef %i.012) #8
  %call = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef %i.012, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_weird_read(ptr noundef %test) #1 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %test, align 4
  %read_partial = getelementptr inbounds %struct.mmc_card, ptr %2, i32 0, i32 20, i32 12
  %3 = ptrtoint ptr %read_partial to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %read_partial, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %buffer = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %add = add nuw nsw i32 %i.012, 7
  %cmp = icmp ult i32 %i.012, 505
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.012 = phi i32 [ 3, %for.cond.preheader ], [ %add, %for.cond.for.body_crit_edge ]
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %5, i32 noundef %i.012) #8
  %call = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef %i.012, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_align_write(ptr noundef %test) #1 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %buffer = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buffer, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 1
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr, i32 noundef 512) #8
  %call = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 512, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %entry
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer, align 4
  %add.ptr.1 = getelementptr i8, ptr %4, i32 2
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.1, i32 noundef 512) #8
  %call.1 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 512, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  %add.ptr.2 = getelementptr i8, ptr %6, i32 3
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.2, i32 noundef 512) #8
  %call.2 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 512, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %add.ptr.3 = getelementptr i8, ptr %8, i32 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.3, i32 noundef 512) #8
  %call.3 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 512, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  %add.ptr.4 = getelementptr i8, ptr %10, i32 5
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.4, i32 noundef 512) #8
  %call.4 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 512, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %add.ptr.5 = getelementptr i8, ptr %12, i32 6
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.5, i32 noundef 512) #8
  %call.5 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 512, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 4
  %add.ptr.6 = getelementptr i8, ptr %14, i32 7
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.6, i32 noundef 512) #8
  %call.6 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 512, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %for.cond.5, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.1, %for.cond.cleanup_crit_edge ], [ %call.2, %for.cond.1.cleanup_crit_edge ], [ %call.3, %for.cond.2.cleanup_crit_edge ], [ %call.4, %for.cond.3.cleanup_crit_edge ], [ %call.5, %for.cond.4.cleanup_crit_edge ], [ %call.6, %for.cond.5 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_align_read(ptr noundef %test) #1 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %buffer = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %buffer, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 1
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr, i32 noundef 512) #8
  %call = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 512, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %entry
  %3 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buffer, align 4
  %add.ptr.1 = getelementptr i8, ptr %4, i32 2
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.1, i32 noundef 512) #8
  %call.1 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 512, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buffer, align 4
  %add.ptr.2 = getelementptr i8, ptr %6, i32 3
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.2, i32 noundef 512) #8
  %call.2 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 512, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %add.ptr.3 = getelementptr i8, ptr %8, i32 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.3, i32 noundef 512) #8
  %call.3 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 512, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buffer, align 4
  %add.ptr.4 = getelementptr i8, ptr %10, i32 5
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.4, i32 noundef 512) #8
  %call.4 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 512, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %add.ptr.5 = getelementptr i8, ptr %12, i32 6
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.5, i32 noundef 512) #8
  %call.5 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 512, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 4
  %add.ptr.6 = getelementptr i8, ptr %14, i32 7
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.6, i32 noundef 512) #8
  %call.6 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 512, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %for.cond.5, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.1, %for.cond.cleanup_crit_edge ], [ %call.2, %for.cond.1.cleanup_crit_edge ], [ %call.3, %for.cond.2.cleanup_crit_edge ], [ %call.4, %for.cond.3.cleanup_crit_edge ], [ %call.5, %for.cond.4.cleanup_crit_edge ], [ %call.6, %for.cond.5 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_align_multi_write(ptr noundef %test) #1 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %test, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_blk_count, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 23
  %7 = ptrtoint ptr %max_req_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_req_size, align 8
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 20
  %9 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_seg_size, align 16
  %11 = tail call i32 @llvm.umin.i32(i32 %8, i32 %10)
  %mul = shl i32 %6, 9
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %mul)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 8192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %13)
  %cmp21 = icmp ult i32 %13, 1024
  br i1 %cmp21, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %buffer = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  %div50 = lshr i32 %13, 9
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 1
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr, i32 noundef %13) #8
  %call = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef %div50, i32 noundef 512, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.cond.preheader
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %add.ptr.1 = getelementptr i8, ptr %17, i32 2
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.1, i32 noundef %13) #8
  %call.1 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef %div50, i32 noundef 512, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %add.ptr.2 = getelementptr i8, ptr %19, i32 3
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.2, i32 noundef %13) #8
  %call.2 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef %div50, i32 noundef 512, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  %add.ptr.3 = getelementptr i8, ptr %21, i32 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.3, i32 noundef %13) #8
  %call.3 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef %div50, i32 noundef 512, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  %add.ptr.4 = getelementptr i8, ptr %23, i32 5
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.4, i32 noundef %13) #8
  %call.4 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef %div50, i32 noundef 512, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  %add.ptr.5 = getelementptr i8, ptr %25, i32 6
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.5, i32 noundef %13) #8
  %call.5 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef %div50, i32 noundef 512, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  %add.ptr.6 = getelementptr i8, ptr %27, i32 7
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.6, i32 noundef %13) #8
  %call.6 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef %div50, i32 noundef 512, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %for.cond.5, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ %call, %for.cond.preheader.cleanup_crit_edge ], [ %call.1, %for.cond.cleanup_crit_edge ], [ %call.2, %for.cond.1.cleanup_crit_edge ], [ %call.3, %for.cond.2.cleanup_crit_edge ], [ %call.4, %for.cond.3.cleanup_crit_edge ], [ %call.5, %for.cond.4.cleanup_crit_edge ], [ %call.6, %for.cond.5 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_align_multi_read(ptr noundef %test) #1 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %1 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %test, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 25
  %5 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_blk_count, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 23
  %7 = ptrtoint ptr %max_req_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_req_size, align 8
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %4, i32 0, i32 20
  %9 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_seg_size, align 16
  %11 = tail call i32 @llvm.umin.i32(i32 %8, i32 %10)
  %mul = shl i32 %6, 9
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 %mul)
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 8192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %13)
  %cmp21 = icmp ult i32 %13, 1024
  br i1 %cmp21, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %buffer = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  %div50 = lshr i32 %13, 9
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 1
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr, i32 noundef %13) #8
  %call = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef %div50, i32 noundef 512, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.cond.preheader
  %16 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buffer, align 4
  %add.ptr.1 = getelementptr i8, ptr %17, i32 2
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.1, i32 noundef %13) #8
  %call.1 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef %div50, i32 noundef 512, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buffer, align 4
  %add.ptr.2 = getelementptr i8, ptr %19, i32 3
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.2, i32 noundef %13) #8
  %call.2 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef %div50, i32 noundef 512, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %20 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buffer, align 4
  %add.ptr.3 = getelementptr i8, ptr %21, i32 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.3, i32 noundef %13) #8
  %call.3 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef %div50, i32 noundef 512, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %buffer, align 4
  %add.ptr.4 = getelementptr i8, ptr %23, i32 5
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.4, i32 noundef %13) #8
  %call.4 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef %div50, i32 noundef 512, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %24 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buffer, align 4
  %add.ptr.5 = getelementptr i8, ptr %25, i32 6
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.5, i32 noundef %13) #8
  %call.5 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef %div50, i32 noundef 512, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buffer, align 4
  %add.ptr.6 = getelementptr i8, ptr %27, i32 7
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %add.ptr.6, i32 noundef %13) #8
  %call.6 = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef %div50, i32 noundef 512, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %for.cond.5, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ %call, %for.cond.preheader.cleanup_crit_edge ], [ %call.1, %for.cond.cleanup_crit_edge ], [ %call.2, %for.cond.1.cleanup_crit_edge ], [ %call.3, %for.cond.2.cleanup_crit_edge ], [ %call.4, %for.cond.3.cleanup_crit_edge ], [ %call.5, %for.cond.4.cleanup_crit_edge ], [ %call.6, %for.cond.5 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_xfersize_write(ptr nocapture noundef readonly %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %call.i = tail call i32 @mmc_set_blocklen(ptr noundef %1, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @mmc_test_broken_transfer(ptr noundef %test, i32 noundef 1, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_xfersize_read(ptr nocapture noundef readonly %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %call.i = tail call i32 @mmc_set_blocklen(ptr noundef %1, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @mmc_test_broken_transfer(ptr noundef %test, i32 noundef 1, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_multi_xfersize_write(ptr nocapture noundef readonly %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_blk_count, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @mmc_set_blocklen(ptr noundef %1, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call fastcc i32 @mmc_test_broken_transfer(ptr noundef %test, i32 noundef 2, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ 2, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_multi_xfersize_read(ptr nocapture noundef readonly %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 25
  %4 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_blk_count, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @mmc_set_blocklen(ptr noundef %1, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call fastcc i32 @mmc_test_broken_transfer(ptr noundef %test, i32 noundef 2, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ 2, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_write_high(ptr noundef %test) #1 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 1) #8
  %highmem = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 3
  %1 = ptrtoint ptr %highmem to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %highmem, align 4
  %3 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sg, align 4
  %5 = ptrtoint ptr %2 to i32
  %and2.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !256

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !257
  unreachable

do.body11.i.i:                                    ; preds = %entry
  %and.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !256

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !258
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %7 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %and.i.i = and i32 %4, 3
  %or.i.i = or i32 %and.i.i, %5
  %8 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i.i, ptr %sg, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %7, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 512, ptr %6, align 4
  %call = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 512, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_read_high(ptr noundef %test) #1 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 1) #8
  %highmem = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 3
  %1 = ptrtoint ptr %highmem to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %highmem, align 4
  %3 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sg, align 4
  %5 = ptrtoint ptr %2 to i32
  %and2.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !256

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !257
  unreachable

do.body11.i.i:                                    ; preds = %entry
  %and.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !256

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !258
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %7 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %and.i.i = and i32 %4, 3
  %or.i.i = or i32 %and.i.i, %5
  %8 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i.i, ptr %sg, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %7, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 512, ptr %6, align 4
  %call = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 512, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_multi_write_high(ptr noundef %test) #1 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %0 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %2 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %3 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %test, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_blk_count, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 23
  %9 = ptrtoint ptr %max_req_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_req_size, align 8
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 20
  %11 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_seg_size, align 16
  %13 = tail call i32 @llvm.umin.i32(i32 %10, i32 %12)
  %mul = shl i32 %8, 9
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %mul)
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 8192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %15)
  %cmp21 = icmp ult i32 %15, 1024
  br i1 %cmp21, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 1) #8
  %highmem = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 3
  %16 = ptrtoint ptr %highmem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %highmem, align 4
  %18 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sg, align 4
  %20 = ptrtoint ptr %17 to i32
  %and2.i.i = and i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !256

do.body5.i.i:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !257
  unreachable

do.body11.i.i:                                    ; preds = %if.end23
  %and.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !256

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !258
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i = and i32 %19, 3
  %or.i.i = or i32 %and.i.i, %20
  %21 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i.i, ptr %sg, align 4
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %0, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %15, ptr %1, align 4
  %div42 = lshr i32 %15, 9
  %call = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef %div42, i32 noundef 512, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %sg_set_page.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sg_set_page.exit ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_multi_read_high(ptr noundef %test) #1 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %0 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %2 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %3 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %test, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_blk_count, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 23
  %9 = ptrtoint ptr %max_req_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_req_size, align 8
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %6, i32 0, i32 20
  %11 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_seg_size, align 16
  %13 = tail call i32 @llvm.umin.i32(i32 %10, i32 %12)
  %mul = shl i32 %8, 9
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %mul)
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 8192)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %15)
  %cmp21 = icmp ult i32 %15, 1024
  br i1 %cmp21, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 1) #8
  %highmem = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 3
  %16 = ptrtoint ptr %highmem to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %highmem, align 4
  %18 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sg, align 4
  %20 = ptrtoint ptr %17 to i32
  %and2.i.i = and i32 %20, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !256

do.body5.i.i:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !257
  unreachable

do.body11.i.i:                                    ; preds = %if.end23
  %and.i.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !256

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !258
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i = and i32 %19, 3
  %or.i.i = or i32 %and.i.i, %20
  %21 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i.i, ptr %sg, align 4
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %0, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %15, ptr %1, align 4
  %div42 = lshr i32 %15, 9
  %call = call fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef nonnull %sg, i32 noundef %div42, i32 noundef 512, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %sg_set_page.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sg_set_page.exit ], [ 2, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_area_prepare_fill(ptr noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mmc_test_area_init(ptr noundef %test, i32 noundef 1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_best_read_performance(ptr noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_tfr.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %max_tfr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_tfr.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_addr.i, align 4
  %call.i.i = tail call fastcc i32 @mmc_test_area_io_seq(ptr noundef %test, i32 noundef %1, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0) #8
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_area_cleanup(ptr nocapture noundef readonly %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sg = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg, align 4
  tail call void @kfree(ptr noundef %1) #8
  %sg_areq = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 9
  %2 = ptrtoint ptr %sg_areq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg_areq, align 4
  tail call void @kfree(ptr noundef %3) #8
  %mem = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 7
  %4 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mem, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.mmc_test_free_mem.exit_crit_edge, label %while.cond.preheader.i

entry.mmc_test_free_mem.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_free_mem.exit

while.cond.preheader.i:                           ; preds = %entry
  %cnt.i = getelementptr inbounds %struct.mmc_test_mem, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cnt.i, align 4
  %dec14.i = add i32 %7, -1
  store i32 %dec14.i, ptr %cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not15.i = icmp eq i32 %7, 0
  br i1 %tobool1.not15.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %dec16.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %dec14.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %arrayidx.i = getelementptr %struct.mmc_test_pages, ptr %9, i32 %dec16.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %order.i = getelementptr %struct.mmc_test_pages, ptr %9, i32 %dec16.i, i32 1
  %12 = ptrtoint ptr %order.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %order.i, align 4
  tail call void @__free_pages(ptr noundef %11, i32 noundef %13) #8
  %14 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cnt.i, align 4
  %dec.i = add i32 %15, -1
  store i32 %dec.i, ptr %cnt.i, align 4
  %tobool1.not.i = icmp eq i32 %15, 0
  br i1 %tobool1.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %17) #8
  tail call void @kfree(ptr noundef nonnull %5) #8
  br label %mmc_test_free_mem.exit

mmc_test_free_mem.exit:                           ; preds = %while.end.i, %entry.mmc_test_free_mem.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_area_prepare_erase(ptr noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mmc_test_area_init(ptr noundef %test, i32 noundef 1, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_best_write_performance(ptr noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_tfr.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %max_tfr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_tfr.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_addr.i, align 4
  %call.i.i = tail call fastcc i32 @mmc_test_area_io_seq(ptr noundef %test, i32 noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0) #8
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_best_read_perf_max_scatter(ptr noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_tfr.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %max_tfr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_tfr.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_addr.i, align 4
  %call.i.i = tail call fastcc i32 @mmc_test_area_io_seq(ptr noundef %test, i32 noundef %1, i32 noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0) #8
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_best_write_perf_max_scatter(ptr noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_tfr.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %max_tfr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_tfr.i, align 4
  %dev_addr.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_addr.i, align 4
  %call.i.i = tail call fastcc i32 @mmc_test_area_io_seq(ptr noundef %test, i32 noundef %1, i32 noundef %3, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0) #8
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_profile_read_perf(ptr noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_tfr = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_tfr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp21 = icmp ugt i32 %1, 512
  br i1 %cmp21, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev_addr1 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %shl = shl i32 %sz.022, 1
  %2 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_tfr, align 4
  %cmp = icmp ult i32 %shl, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %sz.022 = phi i32 [ 512, %for.body.lr.ph ], [ %shl, %for.cond.for.body_crit_edge ]
  %4 = ptrtoint ptr %dev_addr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_addr1, align 4
  %shr = lshr exact i32 %sz.022, 9
  %add = add i32 %5, %shr
  %call.i = tail call fastcc i32 @mmc_test_area_io_seq(ptr noundef %test, i32 noundef %sz.022, i32 noundef %add, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %1, %entry.for.end_crit_edge ], [ %3, %for.cond.for.end_crit_edge ]
  %dev_addr3 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %dev_addr3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_addr3, align 4
  %call.i19 = tail call fastcc i32 @mmc_test_area_io_seq(ptr noundef %test, i32 noundef %.lcssa, i32 noundef %7, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i19, %for.end ], [ %call.i, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_area_prepare(ptr noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mmc_test_area_init(ptr noundef %test, i32 noundef 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_profile_write_perf(ptr noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %call.i = tail call i32 @mmc_can_erase(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.for.cond.preheader_crit_edge, label %mmc_test_area_erase.exit

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

mmc_test_area_erase.exit:                         ; preds = %entry
  %area.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4
  %2 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %test, align 4
  %dev_addr.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_addr.i, align 4
  %6 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %area.i, align 4
  %shr.i = lshr i32 %7, 9
  %call2.i = tail call i32 @mmc_erase(ptr noundef %3, i32 noundef %5, i32 noundef %shr.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %mmc_test_area_erase.exit.for.cond.preheader_crit_edge, label %mmc_test_area_erase.exit.cleanup_crit_edge

mmc_test_area_erase.exit.cleanup_crit_edge:       ; preds = %mmc_test_area_erase.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mmc_test_area_erase.exit.for.cond.preheader_crit_edge: ; preds = %mmc_test_area_erase.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %mmc_test_area_erase.exit.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %max_tfr = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 2
  %8 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_tfr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %9)
  %cmp47 = icmp ugt i32 %9, 512
  br i1 %cmp47, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev_addr1 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %shl = shl i32 %sz.048, 1
  %10 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_tfr, align 4
  %cmp = icmp ult i32 %shl, %11
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %sz.048 = phi i32 [ 512, %for.body.lr.ph ], [ %shl, %for.cond.for.body_crit_edge ]
  %12 = ptrtoint ptr %dev_addr1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_addr1, align 4
  %shr = lshr exact i32 %sz.048, 9
  %add = add i32 %13, %shr
  %call.i33 = tail call fastcc i32 @mmc_test_area_io_seq(ptr noundef %test, i32 noundef %sz.048, i32 noundef %add, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool3.not = icmp eq i32 %call.i33, 0
  br i1 %tobool3.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %14 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %test, align 4
  %call.i34 = tail call i32 @mmc_can_erase(ptr noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %for.end.if.end9_crit_edge, label %mmc_test_area_erase.exit42

for.end.if.end9_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

mmc_test_area_erase.exit42:                       ; preds = %for.end
  %area.i36 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4
  %16 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %test, align 4
  %dev_addr.i37 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %dev_addr.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev_addr.i37, align 4
  %20 = ptrtoint ptr %area.i36 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %area.i36, align 4
  %shr.i38 = lshr i32 %21, 9
  %call2.i39 = tail call i32 @mmc_erase(ptr noundef %17, i32 noundef %19, i32 noundef %shr.i38, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i39)
  %tobool7.not = icmp eq i32 %call2.i39, 0
  br i1 %tobool7.not, label %mmc_test_area_erase.exit42.if.end9_crit_edge, label %mmc_test_area_erase.exit42.cleanup_crit_edge

mmc_test_area_erase.exit42.cleanup_crit_edge:     ; preds = %mmc_test_area_erase.exit42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mmc_test_area_erase.exit42.if.end9_crit_edge:     ; preds = %mmc_test_area_erase.exit42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %mmc_test_area_erase.exit42.if.end9_crit_edge, %for.end.if.end9_crit_edge
  %22 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_tfr, align 4
  %dev_addr11 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %dev_addr11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dev_addr11, align 4
  %call.i43 = tail call fastcc i32 @mmc_test_area_io_seq(ptr noundef %test, i32 noundef %23, i32 noundef %25, i32 noundef 1, i32 noundef 0, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %mmc_test_area_erase.exit42.cleanup_crit_edge, %for.body.cleanup_crit_edge, %mmc_test_area_erase.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i43, %if.end9 ], [ %call2.i, %mmc_test_area_erase.exit.cleanup_crit_edge ], [ %call2.i39, %mmc_test_area_erase.exit42.cleanup_crit_edge ], [ %call.i33, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_profile_trim_perf(ptr nocapture noundef readonly %test) #1 align 64 {
entry:
  %ts1 = alloca %struct.timespec64, align 8
  %ts2 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %area = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts1) #8
  %0 = call ptr @memset(ptr %ts1, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts2) #8
  %1 = call ptr @memset(ptr %ts2, i32 255, i32 16)
  %2 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %test, align 4
  %call = tail call i32 @mmc_can_trim(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %test, align 4
  %call2 = tail call i32 @mmc_can_erase(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %6 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %area, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %7)
  %cmp45 = icmp ugt i32 %7, 512
  br i1 %cmp45, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev_addr6 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.lr.ph
  %sz.046 = phi i32 [ 512, %for.body.lr.ph ], [ %shl, %if.end12.for.body_crit_edge ]
  %8 = ptrtoint ptr %dev_addr6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_addr6, align 4
  %shr = lshr exact i32 %sz.046, 9
  %add = add i32 %9, %shr
  call void @ktime_get_ts64(ptr noundef nonnull %ts1) #8
  %10 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %test, align 4
  %call9 = call i32 @mmc_erase(ptr noundef %11, i32 noundef %add, i32 noundef %shr, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %for.body
  call void @ktime_get_ts64(ptr noundef nonnull %ts2) #8
  %conv = zext i32 %sz.046 to i64
  call fastcc void @mmc_test_print_rate(ptr noundef %test, i64 noundef %conv, ptr noundef nonnull %ts1, ptr noundef nonnull %ts2)
  %shl = shl i32 %sz.046, 1
  %12 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %area, align 4
  %cmp = icmp ult i32 %shl, %13
  br i1 %cmp, label %if.end12.for.body_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end12.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %sz.0.lcssa = phi i32 [ 512, %for.cond.preheader.for.end_crit_edge ], [ %shl, %if.end12.for.end_crit_edge ]
  %dev_addr13 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %dev_addr13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_addr13, align 4
  call void @ktime_get_ts64(ptr noundef nonnull %ts1) #8
  %16 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %test, align 4
  %shr15 = lshr exact i32 %sz.0.lcssa, 9
  %call16 = call i32 @mmc_erase(ptr noundef %17, i32 noundef %15, i32 noundef %shr15, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @ktime_get_ts64(ptr noundef nonnull %ts2) #8
  %conv20 = zext i32 %sz.0.lcssa to i64
  call fastcc void @mmc_test_print_rate(ptr noundef %test, i64 noundef %conv20, ptr noundef nonnull %ts1, ptr noundef nonnull %ts2)
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ 3, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ %call16, %for.end.cleanup_crit_edge ], [ %call9, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts1) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_profile_seq_read_perf(ptr nocapture noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_tfr = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_tfr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp13 = icmp ugt i32 %1, 512
  br i1 %cmp13, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %shl = shl i32 %sz.014, 1
  %2 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_tfr, align 4
  %cmp = icmp ult i32 %shl, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %sz.014 = phi i32 [ %shl, %for.cond.for.body_crit_edge ], [ 512, %entry.for.body_crit_edge ]
  %call = tail call fastcc i32 @mmc_test_seq_read_perf(ptr noundef %test, i32 noundef %sz.014)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %1, %entry.for.end_crit_edge ], [ %3, %for.cond.for.end_crit_edge ]
  %call2 = tail call fastcc i32 @mmc_test_seq_read_perf(ptr noundef %test, i32 noundef %.lcssa)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %for.end ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_profile_seq_write_perf(ptr nocapture noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_tfr = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_tfr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp13 = icmp ugt i32 %1, 512
  br i1 %cmp13, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %shl = shl i32 %sz.014, 1
  %2 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_tfr, align 4
  %cmp = icmp ult i32 %shl, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %sz.014 = phi i32 [ %shl, %for.cond.for.body_crit_edge ], [ 512, %entry.for.body_crit_edge ]
  %call = tail call fastcc i32 @mmc_test_seq_write_perf(ptr noundef %test, i32 noundef %sz.014)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %1, %entry.for.end_crit_edge ], [ %3, %for.cond.for.end_crit_edge ]
  %call2 = tail call fastcc i32 @mmc_test_seq_write_perf(ptr noundef %test, i32 noundef %.lcssa)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %for.end ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_profile_seq_trim_perf(ptr nocapture noundef %test) #1 align 64 {
entry:
  %ts1 = alloca %struct.timespec64, align 8
  %ts2 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %area = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts1) #8
  %0 = call ptr @memset(ptr %ts1, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts2) #8
  %1 = call ptr @memset(ptr %ts2, i32 255, i32 16)
  %2 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %test, align 4
  %call = tail call i32 @mmc_can_trim(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %test, align 4
  %call2 = tail call i32 @mmc_can_erase(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %6 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %area, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %7)
  %cmp.not61 = icmp ult i32 %7, 512
  br i1 %cmp.not61, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev_addr.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %sz.062 = phi i32 [ 512, %for.body.lr.ph ], [ %shl, %for.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %test, align 4
  %call.i = call i32 @mmc_can_erase(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.if.end9_crit_edge, label %mmc_test_area_erase.exit

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

mmc_test_area_erase.exit:                         ; preds = %for.body
  %10 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %test, align 4
  %12 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_addr.i, align 4
  %14 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %area, align 4
  %shr.i = lshr i32 %15, 9
  %call2.i = call i32 @mmc_erase(ptr noundef %11, i32 noundef %13, i32 noundef %shr.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool7.not = icmp eq i32 %call2.i, 0
  br i1 %tobool7.not, label %mmc_test_area_erase.exit.if.end9_crit_edge, label %mmc_test_area_erase.exit.cleanup_crit_edge

mmc_test_area_erase.exit.cleanup_crit_edge:       ; preds = %mmc_test_area_erase.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mmc_test_area_erase.exit.if.end9_crit_edge:       ; preds = %mmc_test_area_erase.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %mmc_test_area_erase.exit.if.end9_crit_edge, %for.body.if.end9_crit_edge
  %call10 = call fastcc i32 @mmc_test_area_fill(ptr noundef %test)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %16 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %area, align 4
  %div = udiv i32 %17, %sz.062
  %18 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev_addr.i, align 4
  call void @ktime_get_ts64(ptr noundef nonnull %ts1) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %sz.062, i32 %17)
  %cmp1758.not = icmp ugt i32 %sz.062, %17
  br i1 %cmp1758.not, label %if.end13.for.end_crit_edge, label %for.body18.lr.ph

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body18.lr.ph:                                 ; preds = %if.end13
  %shr = lshr exact i32 %sz.062, 9
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body18

for.body18:                                       ; preds = %if.end23.for.body18_crit_edge, %for.body18.lr.ph
  %i.060 = phi i32 [ 0, %for.body18.lr.ph ], [ %inc, %if.end23.for.body18_crit_edge ]
  %dev_addr.059 = phi i32 [ %19, %for.body18.lr.ph ], [ %add, %if.end23.for.body18_crit_edge ]
  %20 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %test, align 4
  %call20 = call i32 @mmc_erase(ptr noundef %21, i32 noundef %dev_addr.059, i32 noundef %shr, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %for.body18.cleanup_crit_edge

for.body18.cleanup_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %for.body18
  %add = add i32 %dev_addr.059, %shr
  %inc = add nuw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end23.for.end_crit_edge, label %if.end23.for.body18_crit_edge

if.end23.for.body18_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body18

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end23.for.end_crit_edge, %if.end13.for.end_crit_edge
  call void @ktime_get_ts64(ptr noundef nonnull %ts2) #8
  %conv = zext i32 %sz.062 to i64
  call fastcc void @mmc_test_print_avg_rate(ptr noundef %test, i64 noundef %conv, i32 noundef %div, ptr noundef nonnull %ts1, ptr noundef nonnull %ts2)
  %shl = shl i32 %sz.062, 1
  %22 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %area, align 4
  %cmp.not = icmp ugt i32 %shl, %23
  br i1 %cmp.not, label %for.end.cleanup_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %for.body18.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %mmc_test_area_erase.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call20, %for.body18.cleanup_crit_edge ], [ %call2.i, %mmc_test_area_erase.exit.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts1) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_random_read_perf(ptr nocapture noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_tfr.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %max_tfr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_tfr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp42.i = icmp ugt i32 %1, 512
  br i1 %cmp42.i, label %entry.for.body.i_crit_edge, label %entry.for.end.i_crit_edge

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %shl.i = shl i32 %sz.043.i, 1
  %2 = ptrtoint ptr %max_tfr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_tfr.i, align 4
  %cmp.i = icmp ult i32 %shl.i, %3
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.for.end.i_crit_edge

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %sz.043.i = phi i32 [ %shl.i, %for.cond.i.for.body.i_crit_edge ], [ 512, %entry.for.body.i_crit_edge ]
  %call4.i = tail call fastcc i32 @mmc_test_rnd_perf(ptr noundef %test, i32 noundef 0, i32 noundef 1, i32 noundef %sz.043.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %for.cond.i, label %for.body.i.mmc_test_random_perf.exit_crit_edge

for.body.i.mmc_test_random_perf.exit_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_random_perf.exit

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ %1, %entry.for.end.i_crit_edge ], [ %3, %for.cond.i.for.end.i_crit_edge ]
  %call16.i = tail call fastcc i32 @mmc_test_rnd_perf(ptr noundef %test, i32 noundef 0, i32 noundef 1, i32 noundef %.lcssa.i) #8
  br label %mmc_test_random_perf.exit

mmc_test_random_perf.exit:                        ; preds = %for.end.i, %for.body.i.mmc_test_random_perf.exit_crit_edge
  %retval.0.i = phi i32 [ %call16.i, %for.end.i ], [ %call4.i, %for.body.i.mmc_test_random_perf.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_random_write_perf(ptr nocapture noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mmc_test_random_perf(ptr noundef %test, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_large_seq_read_perf(ptr nocapture noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mmc_test_large_seq_perf(ptr noundef %test, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_large_seq_write_perf(ptr nocapture noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mmc_test_large_seq_perf(ptr noundef %test, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_profile_mult_write_blocking_perf(ptr noundef %test) #1 align 64 {
for.body.lr.ph.i:
  %bs = alloca [10 x i32], align 4
  %test_data = alloca %struct.mmc_test_multiple_rw, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %bs) #8
  %0 = call ptr @memcpy(ptr %bs, ptr @__const.mmc_test_profile_mult_read_nonblock_perf.bs, i32 40)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %test_data) #8
  %1 = getelementptr inbounds i8, ptr %test_data, i32 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %3 = ptrtoint ptr %test_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %test_data, align 4
  %bs1 = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 1
  %4 = ptrtoint ptr %bs1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bs, ptr %bs1, align 4
  %len = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %len, align 4
  %size = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 134217728, ptr %size, align 4
  %do_write = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 4
  %7 = ptrtoint ptr %do_write to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %do_write, align 4
  %do_nonblock_req = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 5
  %8 = ptrtoint ptr %do_nonblock_req to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %do_nonblock_req, align 1
  %prepare = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 6
  %9 = ptrtoint ptr %prepare to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %prepare, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.036.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %bs, i32 %i.036.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %call13.i = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %11, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  %inc.i = add nuw nsw i32 %i.036.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.036.i)
  %cmp.i = icmp ult i32 %i.036.i, 9
  %or.cond = select i1 %tobool14.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond, label %for.body.i.for.body.i_crit_edge, label %mmc_test_rw_multiple_size.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mmc_test_rw_multiple_size.exit:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %test_data) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %bs) #8
  ret i32 %call13.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_profile_mult_write_nonblock_perf(ptr noundef %test) #1 align 64 {
land.lhs.true.i:
  %bs = alloca [10 x i32], align 4
  %test_data = alloca %struct.mmc_test_multiple_rw, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %bs) #8
  %0 = call ptr @memcpy(ptr %bs, ptr @__const.mmc_test_profile_mult_read_nonblock_perf.bs, i32 40)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %test_data) #8
  %1 = getelementptr inbounds i8, ptr %test_data, i32 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %3 = ptrtoint ptr %test_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %test_data, align 4
  %bs1 = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 1
  %4 = ptrtoint ptr %bs1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bs, ptr %bs1, align 4
  %len = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %len, align 4
  %size = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 134217728, ptr %size, align 4
  %do_write = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 4
  %7 = ptrtoint ptr %do_write to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %do_write, align 4
  %do_nonblock_req = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 5
  %8 = ptrtoint ptr %do_nonblock_req to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %do_nonblock_req, align 1
  %prepare = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 6
  %9 = ptrtoint ptr %prepare to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %prepare, align 4
  %10 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %test, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %pre_req1.i = getelementptr inbounds %struct.mmc_host_ops, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %pre_req1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pre_req1.i, align 4
  %tobool6.not.i = icmp ne ptr %19, null
  %tobool8.not.i = icmp eq ptr %17, null
  %or.cond.i = select i1 %tobool6.not.i, i1 true, i1 %tobool8.not.i
  %or.cond.not.i = xor i1 %or.cond.i, true
  %or.cond33.i = select i1 %tobool6.not.i, i1 %tobool8.not.i, i1 false
  %or.cond34.i = select i1 %or.cond.not.i, i1 true, i1 %or.cond33.i
  br i1 %or.cond34.i, label %do.end.i, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %land.lhs.true.i
  %20 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bs, align 4
  %call13.i = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %21, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %for.cond.i, label %for.body.i.preheader.mmc_test_rw_multiple_size.exit_crit_edge

for.body.i.preheader.mmc_test_rw_multiple_size.exit_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_size.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #12
  br label %mmc_test_rw_multiple_size.exit

for.cond.i:                                       ; preds = %for.body.i.preheader
  %arrayidx.i.1 = getelementptr inbounds i32, ptr %bs, i32 1
  %22 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.1, align 4
  %call13.i.1 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %23, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.1)
  %tobool14.not.i.1 = icmp eq i32 %call13.i.1, 0
  br i1 %tobool14.not.i.1, label %for.cond.i.1, label %for.cond.i.mmc_test_rw_multiple_size.exit_crit_edge

for.cond.i.mmc_test_rw_multiple_size.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_size.exit

for.cond.i.1:                                     ; preds = %for.cond.i
  %arrayidx.i.2 = getelementptr inbounds i32, ptr %bs, i32 2
  %24 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.2, align 4
  %call13.i.2 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %25, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.2)
  %tobool14.not.i.2 = icmp eq i32 %call13.i.2, 0
  br i1 %tobool14.not.i.2, label %for.cond.i.2, label %for.cond.i.1.mmc_test_rw_multiple_size.exit_crit_edge

for.cond.i.1.mmc_test_rw_multiple_size.exit_crit_edge: ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_size.exit

for.cond.i.2:                                     ; preds = %for.cond.i.1
  %arrayidx.i.3 = getelementptr inbounds i32, ptr %bs, i32 3
  %26 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.3, align 4
  %call13.i.3 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %27, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.3)
  %tobool14.not.i.3 = icmp eq i32 %call13.i.3, 0
  br i1 %tobool14.not.i.3, label %for.cond.i.3, label %for.cond.i.2.mmc_test_rw_multiple_size.exit_crit_edge

for.cond.i.2.mmc_test_rw_multiple_size.exit_crit_edge: ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_size.exit

for.cond.i.3:                                     ; preds = %for.cond.i.2
  %arrayidx.i.4 = getelementptr inbounds i32, ptr %bs, i32 4
  %28 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.4, align 4
  %call13.i.4 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %29, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.4)
  %tobool14.not.i.4 = icmp eq i32 %call13.i.4, 0
  br i1 %tobool14.not.i.4, label %for.cond.i.4, label %for.cond.i.3.mmc_test_rw_multiple_size.exit_crit_edge

for.cond.i.3.mmc_test_rw_multiple_size.exit_crit_edge: ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_size.exit

for.cond.i.4:                                     ; preds = %for.cond.i.3
  %arrayidx.i.5 = getelementptr inbounds i32, ptr %bs, i32 5
  %30 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.5, align 4
  %call13.i.5 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %31, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.5)
  %tobool14.not.i.5 = icmp eq i32 %call13.i.5, 0
  br i1 %tobool14.not.i.5, label %for.cond.i.5, label %for.cond.i.4.mmc_test_rw_multiple_size.exit_crit_edge

for.cond.i.4.mmc_test_rw_multiple_size.exit_crit_edge: ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_size.exit

for.cond.i.5:                                     ; preds = %for.cond.i.4
  %arrayidx.i.6 = getelementptr inbounds i32, ptr %bs, i32 6
  %32 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.6, align 4
  %call13.i.6 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %33, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.6)
  %tobool14.not.i.6 = icmp eq i32 %call13.i.6, 0
  br i1 %tobool14.not.i.6, label %for.cond.i.6, label %for.cond.i.5.mmc_test_rw_multiple_size.exit_crit_edge

for.cond.i.5.mmc_test_rw_multiple_size.exit_crit_edge: ; preds = %for.cond.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_size.exit

for.cond.i.6:                                     ; preds = %for.cond.i.5
  %arrayidx.i.7 = getelementptr inbounds i32, ptr %bs, i32 7
  %34 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.7, align 4
  %call13.i.7 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %35, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.7)
  %tobool14.not.i.7 = icmp eq i32 %call13.i.7, 0
  br i1 %tobool14.not.i.7, label %for.cond.i.7, label %for.cond.i.6.mmc_test_rw_multiple_size.exit_crit_edge

for.cond.i.6.mmc_test_rw_multiple_size.exit_crit_edge: ; preds = %for.cond.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_size.exit

for.cond.i.7:                                     ; preds = %for.cond.i.6
  %arrayidx.i.8 = getelementptr inbounds i32, ptr %bs, i32 8
  %36 = ptrtoint ptr %arrayidx.i.8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.8, align 4
  %call13.i.8 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %37, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.8)
  %tobool14.not.i.8 = icmp eq i32 %call13.i.8, 0
  br i1 %tobool14.not.i.8, label %for.cond.i.8, label %for.cond.i.7.mmc_test_rw_multiple_size.exit_crit_edge

for.cond.i.7.mmc_test_rw_multiple_size.exit_crit_edge: ; preds = %for.cond.i.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_size.exit

for.cond.i.8:                                     ; preds = %for.cond.i.7
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.9 = getelementptr inbounds i32, ptr %bs, i32 9
  %38 = ptrtoint ptr %arrayidx.i.9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.9, align 4
  %call13.i.9 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %39, i32 noundef 134217728, i32 noundef 0) #8
  br label %mmc_test_rw_multiple_size.exit

mmc_test_rw_multiple_size.exit:                   ; preds = %for.cond.i.8, %for.cond.i.7.mmc_test_rw_multiple_size.exit_crit_edge, %for.cond.i.6.mmc_test_rw_multiple_size.exit_crit_edge, %for.cond.i.5.mmc_test_rw_multiple_size.exit_crit_edge, %for.cond.i.4.mmc_test_rw_multiple_size.exit_crit_edge, %for.cond.i.3.mmc_test_rw_multiple_size.exit_crit_edge, %for.cond.i.2.mmc_test_rw_multiple_size.exit_crit_edge, %for.cond.i.1.mmc_test_rw_multiple_size.exit_crit_edge, %for.cond.i.mmc_test_rw_multiple_size.exit_crit_edge, %do.end.i, %for.body.i.preheader.mmc_test_rw_multiple_size.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %call13.i, %for.body.i.preheader.mmc_test_rw_multiple_size.exit_crit_edge ], [ %call13.i.1, %for.cond.i.mmc_test_rw_multiple_size.exit_crit_edge ], [ %call13.i.2, %for.cond.i.1.mmc_test_rw_multiple_size.exit_crit_edge ], [ %call13.i.3, %for.cond.i.2.mmc_test_rw_multiple_size.exit_crit_edge ], [ %call13.i.4, %for.cond.i.3.mmc_test_rw_multiple_size.exit_crit_edge ], [ %call13.i.5, %for.cond.i.4.mmc_test_rw_multiple_size.exit_crit_edge ], [ %call13.i.6, %for.cond.i.5.mmc_test_rw_multiple_size.exit_crit_edge ], [ %call13.i.7, %for.cond.i.6.mmc_test_rw_multiple_size.exit_crit_edge ], [ %call13.i.8, %for.cond.i.7.mmc_test_rw_multiple_size.exit_crit_edge ], [ %call13.i.9, %for.cond.i.8 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %test_data) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %bs) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_profile_mult_read_blocking_perf(ptr noundef %test) #1 align 64 {
for.body.lr.ph.i:
  %bs = alloca [10 x i32], align 4
  %test_data = alloca %struct.mmc_test_multiple_rw, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %bs) #8
  %0 = call ptr @memcpy(ptr %bs, ptr @__const.mmc_test_profile_mult_read_nonblock_perf.bs, i32 40)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %test_data) #8
  %1 = getelementptr inbounds i8, ptr %test_data, i32 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %3 = ptrtoint ptr %test_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %test_data, align 4
  %bs1 = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 1
  %4 = ptrtoint ptr %bs1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bs, ptr %bs1, align 4
  %len = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %len, align 4
  %size = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 134217728, ptr %size, align 4
  %do_write = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 4
  %7 = ptrtoint ptr %do_write to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %do_write, align 4
  %do_nonblock_req = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 5
  %8 = ptrtoint ptr %do_nonblock_req to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %do_nonblock_req, align 1
  %prepare = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 6
  %9 = ptrtoint ptr %prepare to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %prepare, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.036.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %bs, i32 %i.036.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %call13.i = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %11, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  %inc.i = add nuw nsw i32 %i.036.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.036.i)
  %cmp.i = icmp ult i32 %i.036.i, 9
  %or.cond = select i1 %tobool14.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond, label %for.body.i.for.body.i_crit_edge, label %mmc_test_rw_multiple_size.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

mmc_test_rw_multiple_size.exit:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %test_data) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %bs) #8
  ret i32 %call13.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_profile_mult_read_nonblock_perf(ptr noundef %test) #1 align 64 {
land.lhs.true.i:
  %bs = alloca [10 x i32], align 4
  %test_data = alloca %struct.mmc_test_multiple_rw, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %bs) #8
  %0 = call ptr @memcpy(ptr %bs, ptr @__const.mmc_test_profile_mult_read_nonblock_perf.bs, i32 40)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %test_data) #8
  %1 = getelementptr inbounds i8, ptr %test_data, i32 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %3 = ptrtoint ptr %test_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %test_data, align 4
  %bs1 = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 1
  %4 = ptrtoint ptr %bs1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %bs, ptr %bs1, align 4
  %len = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %len, align 4
  %size = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 134217728, ptr %size, align 4
  %do_write = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 4
  %7 = ptrtoint ptr %do_write to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %do_write, align 4
  %do_nonblock_req = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 5
  %8 = ptrtoint ptr %do_nonblock_req to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %do_nonblock_req, align 1
  %prepare = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 6
  %9 = ptrtoint ptr %prepare to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %prepare, align 4
  %10 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %test, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %pre_req1.i = getelementptr inbounds %struct.mmc_host_ops, ptr %15, i32 0, i32 1
  %18 = ptrtoint ptr %pre_req1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pre_req1.i, align 4
  %tobool6.not.i = icmp ne ptr %19, null
  %tobool8.not.i = icmp eq ptr %17, null
  %or.cond.i = select i1 %tobool6.not.i, i1 true, i1 %tobool8.not.i
  %or.cond.not.i = xor i1 %or.cond.i, true
  %or.cond33.i = select i1 %tobool6.not.i, i1 %tobool8.not.i, i1 false
  %or.cond34.i = select i1 %or.cond.not.i, i1 true, i1 %or.cond33.i
  br i1 %or.cond34.i, label %do.end.i, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %land.lhs.true.i
  %20 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bs, align 4
  %call13.i = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %21, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %for.cond.i, label %for.body.i.preheader.mmc_test_rw_multiple_size.exit_crit_edge

for.body.i.preheader.mmc_test_rw_multiple_size.exit_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_size.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #12
  br label %mmc_test_rw_multiple_size.exit

for.cond.i:                                       ; preds = %for.body.i.preheader
  %arrayidx.i.1 = getelementptr inbounds i32, ptr %bs, i32 1
  %22 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.1, align 4
  %call13.i.1 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %23, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.1)
  %tobool14.not.i.1 = icmp eq i32 %call13.i.1, 0
  br i1 %tobool14.not.i.1, label %for.cond.i.1, label %for.cond.i.mmc_test_rw_multiple_size.exit_crit_edge

for.cond.i.mmc_test_rw_multiple_size.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_size.exit

for.cond.i.1:                                     ; preds = %for.cond.i
  %arrayidx.i.2 = getelementptr inbounds i32, ptr %bs, i32 2
  %24 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.2, align 4
  %call13.i.2 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %25, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.2)
  %tobool14.not.i.2 = icmp eq i32 %call13.i.2, 0
  br i1 %tobool14.not.i.2, label %for.cond.i.2, label %for.cond.i.1.mmc_test_rw_multiple_size.exit_crit_edge

for.cond.i.1.mmc_test_rw_multiple_size.exit_crit_edge: ; preds = %for.cond.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_size.exit

for.cond.i.2:                                     ; preds = %for.cond.i.1
  %arrayidx.i.3 = getelementptr inbounds i32, ptr %bs, i32 3
  %26 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.3, align 4
  %call13.i.3 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %27, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.3)
  %tobool14.not.i.3 = icmp eq i32 %call13.i.3, 0
  br i1 %tobool14.not.i.3, label %for.cond.i.3, label %for.cond.i.2.mmc_test_rw_multiple_size.exit_crit_edge

for.cond.i.2.mmc_test_rw_multiple_size.exit_crit_edge: ; preds = %for.cond.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_size.exit

for.cond.i.3:                                     ; preds = %for.cond.i.2
  %arrayidx.i.4 = getelementptr inbounds i32, ptr %bs, i32 4
  %28 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.4, align 4
  %call13.i.4 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %29, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.4)
  %tobool14.not.i.4 = icmp eq i32 %call13.i.4, 0
  br i1 %tobool14.not.i.4, label %for.cond.i.4, label %for.cond.i.3.mmc_test_rw_multiple_size.exit_crit_edge

for.cond.i.3.mmc_test_rw_multiple_size.exit_crit_edge: ; preds = %for.cond.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_size.exit

for.cond.i.4:                                     ; preds = %for.cond.i.3
  %arrayidx.i.5 = getelementptr inbounds i32, ptr %bs, i32 5
  %30 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.5, align 4
  %call13.i.5 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %31, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.5)
  %tobool14.not.i.5 = icmp eq i32 %call13.i.5, 0
  br i1 %tobool14.not.i.5, label %for.cond.i.5, label %for.cond.i.4.mmc_test_rw_multiple_size.exit_crit_edge

for.cond.i.4.mmc_test_rw_multiple_size.exit_crit_edge: ; preds = %for.cond.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_size.exit

for.cond.i.5:                                     ; preds = %for.cond.i.4
  %arrayidx.i.6 = getelementptr inbounds i32, ptr %bs, i32 6
  %32 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.6, align 4
  %call13.i.6 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %33, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.6)
  %tobool14.not.i.6 = icmp eq i32 %call13.i.6, 0
  br i1 %tobool14.not.i.6, label %for.cond.i.6, label %for.cond.i.5.mmc_test_rw_multiple_size.exit_crit_edge

for.cond.i.5.mmc_test_rw_multiple_size.exit_crit_edge: ; preds = %for.cond.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_size.exit

for.cond.i.6:                                     ; preds = %for.cond.i.5
  %arrayidx.i.7 = getelementptr inbounds i32, ptr %bs, i32 7
  %34 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.7, align 4
  %call13.i.7 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %35, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.7)
  %tobool14.not.i.7 = icmp eq i32 %call13.i.7, 0
  br i1 %tobool14.not.i.7, label %for.cond.i.7, label %for.cond.i.6.mmc_test_rw_multiple_size.exit_crit_edge

for.cond.i.6.mmc_test_rw_multiple_size.exit_crit_edge: ; preds = %for.cond.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_size.exit

for.cond.i.7:                                     ; preds = %for.cond.i.6
  %arrayidx.i.8 = getelementptr inbounds i32, ptr %bs, i32 8
  %36 = ptrtoint ptr %arrayidx.i.8 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i.8, align 4
  %call13.i.8 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %37, i32 noundef 134217728, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.8)
  %tobool14.not.i.8 = icmp eq i32 %call13.i.8, 0
  br i1 %tobool14.not.i.8, label %for.cond.i.8, label %for.cond.i.7.mmc_test_rw_multiple_size.exit_crit_edge

for.cond.i.7.mmc_test_rw_multiple_size.exit_crit_edge: ; preds = %for.cond.i.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_size.exit

for.cond.i.8:                                     ; preds = %for.cond.i.7
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.9 = getelementptr inbounds i32, ptr %bs, i32 9
  %38 = ptrtoint ptr %arrayidx.i.9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i.9, align 4
  %call13.i.9 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef %39, i32 noundef 134217728, i32 noundef 0) #8
  br label %mmc_test_rw_multiple_size.exit

mmc_test_rw_multiple_size.exit:                   ; preds = %for.cond.i.8, %for.cond.i.7.mmc_test_rw_multiple_size.exit_crit_edge, %for.cond.i.6.mmc_test_rw_multiple_size.exit_crit_edge, %for.cond.i.5.mmc_test_rw_multiple_size.exit_crit_edge, %for.cond.i.4.mmc_test_rw_multiple_size.exit_crit_edge, %for.cond.i.3.mmc_test_rw_multiple_size.exit_crit_edge, %for.cond.i.2.mmc_test_rw_multiple_size.exit_crit_edge, %for.cond.i.1.mmc_test_rw_multiple_size.exit_crit_edge, %for.cond.i.mmc_test_rw_multiple_size.exit_crit_edge, %do.end.i, %for.body.i.preheader.mmc_test_rw_multiple_size.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %call13.i, %for.body.i.preheader.mmc_test_rw_multiple_size.exit_crit_edge ], [ %call13.i.1, %for.cond.i.mmc_test_rw_multiple_size.exit_crit_edge ], [ %call13.i.2, %for.cond.i.1.mmc_test_rw_multiple_size.exit_crit_edge ], [ %call13.i.3, %for.cond.i.2.mmc_test_rw_multiple_size.exit_crit_edge ], [ %call13.i.4, %for.cond.i.3.mmc_test_rw_multiple_size.exit_crit_edge ], [ %call13.i.5, %for.cond.i.4.mmc_test_rw_multiple_size.exit_crit_edge ], [ %call13.i.6, %for.cond.i.5.mmc_test_rw_multiple_size.exit_crit_edge ], [ %call13.i.7, %for.cond.i.6.mmc_test_rw_multiple_size.exit_crit_edge ], [ %call13.i.8, %for.cond.i.7.mmc_test_rw_multiple_size.exit_crit_edge ], [ %call13.i.9, %for.cond.i.8 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %test_data) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %bs) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_profile_sglen_wr_blocking_perf(ptr noundef %test) #1 align 64 {
entry:
  %sg_len = alloca [8 x i32], align 4
  %test_data = alloca %struct.mmc_test_multiple_rw, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sg_len) #8
  %0 = call ptr @memcpy(ptr %sg_len, ptr @__const.mmc_test_profile_sglen_r_nonblock_perf.sg_len, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %test_data) #8
  %1 = getelementptr inbounds i8, ptr %test_data, i32 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %3 = ptrtoint ptr %test_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sg_len, ptr %test_data, align 4
  %bs = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 1
  %4 = ptrtoint ptr %bs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bs, align 4
  %len = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %len, align 4
  %size = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 134217728, ptr %size, align 4
  %do_write = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 4
  %7 = ptrtoint ptr %do_write to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %do_write, align 4
  %do_nonblock_req = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 5
  %8 = ptrtoint ptr %do_nonblock_req to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %do_nonblock_req, align 1
  %prepare = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 6
  %9 = ptrtoint ptr %prepare to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %prepare, align 4
  %10 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_len, align 4
  %call.i = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.1, label %entry.mmc_test_rw_multiple_sg_len.exit_crit_edge

entry.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.1:                                     ; preds = %entry
  %arrayidx.i.1 = getelementptr inbounds i32, ptr %sg_len, i32 1
  %12 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.1, align 4
  %call.i.1 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %for.body.i.2, label %for.body.i.1.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.1.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %arrayidx.i.2 = getelementptr inbounds i32, ptr %sg_len, i32 2
  %14 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.2, align 4
  %call.i.2 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %for.body.i.3, label %for.body.i.2.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.2.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  %arrayidx.i.3 = getelementptr inbounds i32, ptr %sg_len, i32 3
  %16 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.3, align 4
  %call.i.3 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.i.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.i.3, label %for.body.i.4, label %for.body.i.3.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.3.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.4:                                     ; preds = %for.body.i.3
  %arrayidx.i.4 = getelementptr inbounds i32, ptr %sg_len, i32 4
  %18 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.4, align 4
  %call.i.4 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %tobool.not.i.4 = icmp eq i32 %call.i.4, 0
  br i1 %tobool.not.i.4, label %for.body.i.5, label %for.body.i.4.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.4.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.5:                                     ; preds = %for.body.i.4
  %arrayidx.i.5 = getelementptr inbounds i32, ptr %sg_len, i32 5
  %20 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.5, align 4
  %call.i.5 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %tobool.not.i.5 = icmp eq i32 %call.i.5, 0
  br i1 %tobool.not.i.5, label %for.body.i.6, label %for.body.i.5.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.5.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.6:                                     ; preds = %for.body.i.5
  %arrayidx.i.6 = getelementptr inbounds i32, ptr %sg_len, i32 6
  %22 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.6, align 4
  %call.i.6 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6)
  %tobool.not.i.6 = icmp eq i32 %call.i.6, 0
  br i1 %tobool.not.i.6, label %for.body.i.7, label %for.body.i.6.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.6.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.7 = getelementptr inbounds i32, ptr %sg_len, i32 7
  %24 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.7, align 4
  %call.i.7 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %25) #8
  br label %mmc_test_rw_multiple_sg_len.exit

mmc_test_rw_multiple_sg_len.exit:                 ; preds = %for.body.i.7, %for.body.i.6.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.5.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.4.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.3.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.2.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.1.mmc_test_rw_multiple_sg_len.exit_crit_edge, %entry.mmc_test_rw_multiple_sg_len.exit_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.1, %for.body.i.1.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.2, %for.body.i.2.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.3, %for.body.i.3.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.4, %for.body.i.4.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.5, %for.body.i.5.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.6, %for.body.i.6.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.7, %for.body.i.7 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %test_data) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sg_len) #8
  ret i32 %call.i.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_profile_sglen_wr_nonblock_perf(ptr noundef %test) #1 align 64 {
entry:
  %sg_len = alloca [8 x i32], align 4
  %test_data = alloca %struct.mmc_test_multiple_rw, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sg_len) #8
  %0 = call ptr @memcpy(ptr %sg_len, ptr @__const.mmc_test_profile_sglen_r_nonblock_perf.sg_len, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %test_data) #8
  %1 = getelementptr inbounds i8, ptr %test_data, i32 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %3 = ptrtoint ptr %test_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sg_len, ptr %test_data, align 4
  %bs = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 1
  %4 = ptrtoint ptr %bs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bs, align 4
  %len = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %len, align 4
  %size = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 134217728, ptr %size, align 4
  %do_write = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 4
  %7 = ptrtoint ptr %do_write to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %do_write, align 4
  %do_nonblock_req = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 5
  %8 = ptrtoint ptr %do_nonblock_req to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %do_nonblock_req, align 1
  %prepare = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 6
  %9 = ptrtoint ptr %prepare to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %prepare, align 4
  %10 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_len, align 4
  %call.i = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.1, label %entry.mmc_test_rw_multiple_sg_len.exit_crit_edge

entry.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.1:                                     ; preds = %entry
  %arrayidx.i.1 = getelementptr inbounds i32, ptr %sg_len, i32 1
  %12 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.1, align 4
  %call.i.1 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %for.body.i.2, label %for.body.i.1.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.1.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %arrayidx.i.2 = getelementptr inbounds i32, ptr %sg_len, i32 2
  %14 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.2, align 4
  %call.i.2 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %for.body.i.3, label %for.body.i.2.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.2.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  %arrayidx.i.3 = getelementptr inbounds i32, ptr %sg_len, i32 3
  %16 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.3, align 4
  %call.i.3 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.i.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.i.3, label %for.body.i.4, label %for.body.i.3.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.3.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.4:                                     ; preds = %for.body.i.3
  %arrayidx.i.4 = getelementptr inbounds i32, ptr %sg_len, i32 4
  %18 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.4, align 4
  %call.i.4 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %tobool.not.i.4 = icmp eq i32 %call.i.4, 0
  br i1 %tobool.not.i.4, label %for.body.i.5, label %for.body.i.4.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.4.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.5:                                     ; preds = %for.body.i.4
  %arrayidx.i.5 = getelementptr inbounds i32, ptr %sg_len, i32 5
  %20 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.5, align 4
  %call.i.5 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %tobool.not.i.5 = icmp eq i32 %call.i.5, 0
  br i1 %tobool.not.i.5, label %for.body.i.6, label %for.body.i.5.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.5.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.6:                                     ; preds = %for.body.i.5
  %arrayidx.i.6 = getelementptr inbounds i32, ptr %sg_len, i32 6
  %22 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.6, align 4
  %call.i.6 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6)
  %tobool.not.i.6 = icmp eq i32 %call.i.6, 0
  br i1 %tobool.not.i.6, label %for.body.i.7, label %for.body.i.6.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.6.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.7 = getelementptr inbounds i32, ptr %sg_len, i32 7
  %24 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.7, align 4
  %call.i.7 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %25) #8
  br label %mmc_test_rw_multiple_sg_len.exit

mmc_test_rw_multiple_sg_len.exit:                 ; preds = %for.body.i.7, %for.body.i.6.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.5.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.4.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.3.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.2.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.1.mmc_test_rw_multiple_sg_len.exit_crit_edge, %entry.mmc_test_rw_multiple_sg_len.exit_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.1, %for.body.i.1.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.2, %for.body.i.2.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.3, %for.body.i.3.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.4, %for.body.i.4.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.5, %for.body.i.5.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.6, %for.body.i.6.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.7, %for.body.i.7 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %test_data) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sg_len) #8
  ret i32 %call.i.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_profile_sglen_r_blocking_perf(ptr noundef %test) #1 align 64 {
entry:
  %sg_len = alloca [8 x i32], align 4
  %test_data = alloca %struct.mmc_test_multiple_rw, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sg_len) #8
  %0 = call ptr @memcpy(ptr %sg_len, ptr @__const.mmc_test_profile_sglen_r_nonblock_perf.sg_len, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %test_data) #8
  %1 = getelementptr inbounds i8, ptr %test_data, i32 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %3 = ptrtoint ptr %test_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sg_len, ptr %test_data, align 4
  %bs = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 1
  %4 = ptrtoint ptr %bs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bs, align 4
  %len = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %len, align 4
  %size = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 134217728, ptr %size, align 4
  %do_write = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 4
  %7 = ptrtoint ptr %do_write to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %do_write, align 4
  %do_nonblock_req = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 5
  %8 = ptrtoint ptr %do_nonblock_req to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %do_nonblock_req, align 1
  %prepare = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 6
  %9 = ptrtoint ptr %prepare to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %prepare, align 4
  %10 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_len, align 4
  %call.i = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.1, label %entry.mmc_test_rw_multiple_sg_len.exit_crit_edge

entry.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.1:                                     ; preds = %entry
  %arrayidx.i.1 = getelementptr inbounds i32, ptr %sg_len, i32 1
  %12 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.1, align 4
  %call.i.1 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %for.body.i.2, label %for.body.i.1.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.1.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %arrayidx.i.2 = getelementptr inbounds i32, ptr %sg_len, i32 2
  %14 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.2, align 4
  %call.i.2 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %for.body.i.3, label %for.body.i.2.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.2.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  %arrayidx.i.3 = getelementptr inbounds i32, ptr %sg_len, i32 3
  %16 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.3, align 4
  %call.i.3 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.i.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.i.3, label %for.body.i.4, label %for.body.i.3.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.3.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.4:                                     ; preds = %for.body.i.3
  %arrayidx.i.4 = getelementptr inbounds i32, ptr %sg_len, i32 4
  %18 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.4, align 4
  %call.i.4 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %tobool.not.i.4 = icmp eq i32 %call.i.4, 0
  br i1 %tobool.not.i.4, label %for.body.i.5, label %for.body.i.4.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.4.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.5:                                     ; preds = %for.body.i.4
  %arrayidx.i.5 = getelementptr inbounds i32, ptr %sg_len, i32 5
  %20 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.5, align 4
  %call.i.5 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %tobool.not.i.5 = icmp eq i32 %call.i.5, 0
  br i1 %tobool.not.i.5, label %for.body.i.6, label %for.body.i.5.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.5.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.6:                                     ; preds = %for.body.i.5
  %arrayidx.i.6 = getelementptr inbounds i32, ptr %sg_len, i32 6
  %22 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.6, align 4
  %call.i.6 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6)
  %tobool.not.i.6 = icmp eq i32 %call.i.6, 0
  br i1 %tobool.not.i.6, label %for.body.i.7, label %for.body.i.6.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.6.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.7 = getelementptr inbounds i32, ptr %sg_len, i32 7
  %24 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.7, align 4
  %call.i.7 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %25) #8
  br label %mmc_test_rw_multiple_sg_len.exit

mmc_test_rw_multiple_sg_len.exit:                 ; preds = %for.body.i.7, %for.body.i.6.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.5.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.4.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.3.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.2.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.1.mmc_test_rw_multiple_sg_len.exit_crit_edge, %entry.mmc_test_rw_multiple_sg_len.exit_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.1, %for.body.i.1.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.2, %for.body.i.2.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.3, %for.body.i.3.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.4, %for.body.i.4.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.5, %for.body.i.5.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.6, %for.body.i.6.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.7, %for.body.i.7 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %test_data) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sg_len) #8
  ret i32 %call.i.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_profile_sglen_r_nonblock_perf(ptr noundef %test) #1 align 64 {
entry:
  %sg_len = alloca [8 x i32], align 4
  %test_data = alloca %struct.mmc_test_multiple_rw, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sg_len) #8
  %0 = call ptr @memcpy(ptr %sg_len, ptr @__const.mmc_test_profile_sglen_r_nonblock_perf.sg_len, i32 32)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %test_data) #8
  %1 = getelementptr inbounds i8, ptr %test_data, i32 16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %3 = ptrtoint ptr %test_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sg_len, ptr %test_data, align 4
  %bs = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 1
  %4 = ptrtoint ptr %bs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bs, align 4
  %len = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %len, align 4
  %size = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 3
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 134217728, ptr %size, align 4
  %do_write = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 4
  %7 = ptrtoint ptr %do_write to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %do_write, align 4
  %do_nonblock_req = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 5
  %8 = ptrtoint ptr %do_nonblock_req to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %do_nonblock_req, align 1
  %prepare = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %test_data, i32 0, i32 6
  %9 = ptrtoint ptr %prepare to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %prepare, align 4
  %10 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sg_len, align 4
  %call.i = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.i.1, label %entry.mmc_test_rw_multiple_sg_len.exit_crit_edge

entry.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.1:                                     ; preds = %entry
  %arrayidx.i.1 = getelementptr inbounds i32, ptr %sg_len, i32 1
  %12 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.1, align 4
  %call.i.1 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %for.body.i.2, label %for.body.i.1.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.1.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %arrayidx.i.2 = getelementptr inbounds i32, ptr %sg_len, i32 2
  %14 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.2, align 4
  %call.i.2 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %for.body.i.3, label %for.body.i.2.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.2.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  %arrayidx.i.3 = getelementptr inbounds i32, ptr %sg_len, i32 3
  %16 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.3, align 4
  %call.i.3 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.i.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.i.3, label %for.body.i.4, label %for.body.i.3.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.3.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.4:                                     ; preds = %for.body.i.3
  %arrayidx.i.4 = getelementptr inbounds i32, ptr %sg_len, i32 4
  %18 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.4, align 4
  %call.i.4 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %tobool.not.i.4 = icmp eq i32 %call.i.4, 0
  br i1 %tobool.not.i.4, label %for.body.i.5, label %for.body.i.4.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.4.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.5:                                     ; preds = %for.body.i.4
  %arrayidx.i.5 = getelementptr inbounds i32, ptr %sg_len, i32 5
  %20 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.5, align 4
  %call.i.5 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %tobool.not.i.5 = icmp eq i32 %call.i.5, 0
  br i1 %tobool.not.i.5, label %for.body.i.6, label %for.body.i.5.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.5.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.6:                                     ; preds = %for.body.i.5
  %arrayidx.i.6 = getelementptr inbounds i32, ptr %sg_len, i32 6
  %22 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.6, align 4
  %call.i.6 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6)
  %tobool.not.i.6 = icmp eq i32 %call.i.6, 0
  br i1 %tobool.not.i.6, label %for.body.i.7, label %for.body.i.6.mmc_test_rw_multiple_sg_len.exit_crit_edge

for.body.i.6.mmc_test_rw_multiple_sg_len.exit_crit_edge: ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rw_multiple_sg_len.exit

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.7 = getelementptr inbounds i32, ptr %sg_len, i32 7
  %24 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.7, align 4
  %call.i.7 = call fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr noundef nonnull %test_data, i32 noundef 524288, i32 noundef 134217728, i32 noundef %25) #8
  br label %mmc_test_rw_multiple_sg_len.exit

mmc_test_rw_multiple_sg_len.exit:                 ; preds = %for.body.i.7, %for.body.i.6.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.5.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.4.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.3.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.2.mmc_test_rw_multiple_sg_len.exit_crit_edge, %for.body.i.1.mmc_test_rw_multiple_sg_len.exit_crit_edge, %entry.mmc_test_rw_multiple_sg_len.exit_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.1, %for.body.i.1.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.2, %for.body.i.2.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.3, %for.body.i.3.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.4, %for.body.i.4.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.5, %for.body.i.5.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.6, %for.body.i.6.mmc_test_rw_multiple_sg_len.exit_crit_edge ], [ %call.i.7, %for.body.i.7 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %test_data) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sg_len) #8
  ret i32 %call.i.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_reset(ptr nocapture noundef readonly %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call = tail call i32 @mmc_hw_reset(ptr noundef %3) #8
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %call, label %if.end8 [
    i32 0, label %if.then
    i32 -95, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %cmdq_en = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 40
  %5 = ptrtoint ptr %cmdq_en to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cmdq_en, align 2, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @mmc_cmdq_disable(ptr noundef %1) #8
  br label %cleanup

if.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then4, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %if.then4 ], [ 0, %if.then.cleanup_crit_edge ], [ 2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_cmds_during_read(ptr noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mmc_test_cmds_during_tfr(ptr noundef %test, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_cmds_during_write(ptr noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mmc_test_cmds_during_tfr(ptr noundef %test, i32 noundef 0, i32 noundef 1, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_cmds_during_read_cmd23(ptr noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mmc_test_cmds_during_tfr(ptr noundef %test, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_cmds_during_write_cmd23(ptr noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mmc_test_cmds_during_tfr(ptr noundef %test, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_cmds_during_read_cmd23_nonblock(ptr noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mmc_test_cmds_during_tfr(ptr noundef %test, i32 noundef 1, i32 noundef 0, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_test_cmds_during_write_cmd23_nonblock(ptr noundef %test) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mmc_test_cmds_during_tfr(ptr noundef %test, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_simple_transfer(ptr nocapture noundef readonly %test, ptr noundef %sg, i32 noundef %sg_len, i32 noundef %dev_addr, i32 noundef %blocks, i32 noundef %blksz, i32 noundef %write) unnamed_addr #1 align 64 {
entry:
  %mrq = alloca %struct.mmc_request, align 4
  %cmd = alloca %struct.mmc_command, align 4
  %stop = alloca %struct.mmc_command, align 4
  %data = alloca %struct.mmc_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mrq) #8
  %0 = call ptr @memset(ptr %mrq, i32 0, i32 156)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #8
  %1 = call ptr @memset(ptr %cmd, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %stop) #8
  %2 = call ptr @memset(ptr %stop, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %data) #8
  %3 = call ptr @memset(ptr %data, i32 0, i32 56)
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %4 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cmd, ptr %cmd1, align 4
  %data2 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %5 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data, ptr %data2, align 4
  %stop3 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 3
  %6 = ptrtoint ptr %stop3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %stop, ptr %stop3, align 4
  call fastcc void @mmc_test_prepare_mrq(ptr noundef %test, ptr noundef nonnull %mrq, ptr noundef %sg, i32 noundef %sg_len, i32 noundef %dev_addr, i32 noundef %blocks, i32 noundef %blksz, i32 noundef %write)
  %7 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %test, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  call void @mmc_wait_for_req(ptr noundef %10, ptr noundef nonnull %mrq) #8
  %call = call fastcc i32 @mmc_test_wait_busy(ptr noundef %test)
  %11 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd1, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %entry.do.end.i_crit_edge, label %lor.rhs.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.rhs.i:                                        ; preds = %entry
  %13 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data2, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %lor.rhs.i.do.end.i_crit_edge, label %if.end25.i, !prof !259

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 696, i32 noundef 9, ptr noundef null) #8
  br label %mmc_test_check_result.exit

if.end25.i:                                       ; preds = %lor.rhs.i
  %15 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mrq, align 4
  %tobool26.not.i = icmp eq ptr %16, null
  br i1 %tobool26.not.i, label %if.end25.i.if.end41.i_crit_edge, label %if.end32.i

if.end25.i.if.end41.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.end32.i:                                       ; preds = %if.end25.i
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool33.not.i = icmp eq i32 %18, 0
  br i1 %tobool33.not.i, label %if.end32.i.if.end41.i_crit_edge, label %if.end32.i.if.end68.i_crit_edge

if.end32.i.if.end68.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.end32.i.if.end41.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end32.i.if.end41.i_crit_edge, %if.end25.i.if.end41.i_crit_edge
  %error36.i = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 5
  %19 = ptrtoint ptr %error36.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %error36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool42.not.i = icmp eq i32 %20, 0
  br i1 %tobool42.not.i, label %if.end50.i, label %if.end41.i.if.end68.i_crit_edge

if.end41.i.if.end68.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.end50.i:                                       ; preds = %if.end41.i
  %error45.i = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 5
  %21 = ptrtoint ptr %error45.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %error45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool51.not.i = icmp eq i32 %22, 0
  br i1 %tobool51.not.i, label %land.lhs.true52.i, label %if.end50.i.if.end68.i_crit_edge

if.end50.i.if.end68.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

land.lhs.true52.i:                                ; preds = %if.end50.i
  %23 = ptrtoint ptr %stop3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stop3, align 4
  %tobool53.not.i = icmp eq ptr %24, null
  br i1 %tobool53.not.i, label %land.lhs.true52.i.land.lhs.true63.i_crit_edge, label %if.end61.i

land.lhs.true52.i.land.lhs.true63.i_crit_edge:    ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true63.i

if.end61.i:                                       ; preds = %land.lhs.true52.i
  %error56.i = getelementptr inbounds %struct.mmc_command, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %error56.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %error56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool62.not.i = icmp eq i32 %26, 0
  br i1 %tobool62.not.i, label %if.end61.i.land.lhs.true63.i_crit_edge, label %if.end61.i.if.end68.i_crit_edge

if.end61.i.if.end68.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.end61.i.land.lhs.true63.i_crit_edge:           ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true63.i

land.lhs.true63.i:                                ; preds = %if.end61.i.land.lhs.true63.i_crit_edge, %land.lhs.true52.i.land.lhs.true63.i_crit_edge
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 7
  %27 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bytes_xfered.i, align 4
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 3
  %29 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blocks.i, align 4
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %14, i32 0, i32 2
  %31 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %blksz.i, align 4
  %mul.i = mul i32 %32, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %mul.i)
  %cmp.not.i = icmp ne i32 %28, %mul.i
  %spec.select4.i = zext i1 %cmp.not.i to i32
  br label %if.end68.i

if.end68.i:                                       ; preds = %land.lhs.true63.i, %if.end61.i.if.end68.i_crit_edge, %if.end50.i.if.end68.i_crit_edge, %if.end41.i.if.end68.i_crit_edge, %if.end32.i.if.end68.i_crit_edge
  %ret.4.i = phi i32 [ %26, %if.end61.i.if.end68.i_crit_edge ], [ %spec.select4.i, %land.lhs.true63.i ], [ %22, %if.end50.i.if.end68.i_crit_edge ], [ %20, %if.end41.i.if.end68.i_crit_edge ], [ %18, %if.end32.i.if.end68.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %ret.4.i)
  %cmp69.i = icmp eq i32 %ret.4.i, -22
  %spec.store.select.i = select i1 %cmp69.i, i32 2, i32 %ret.4.i
  br label %mmc_test_check_result.exit

mmc_test_check_result.exit:                       ; preds = %if.end68.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ %spec.store.select.i, %if.end68.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %stop) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #8
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq) #8
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_set_blocklen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_test_prepare_mrq(ptr nocapture noundef readonly %test, ptr noundef %mrq, ptr noundef %sg, i32 noundef %sg_len, i32 noundef %dev_addr, i32 noundef %blocks, i32 noundef %blksz, i32 noundef %write) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mrq, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %cmd = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmd, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false2

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false2.do.end_crit_edge, label %lor.rhs

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.rhs:                                          ; preds = %lor.lhs.false2
  %stop = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 3
  %4 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stop, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.rhs.do.end_crit_edge, label %if.end27.critedge, !prof !259

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %lor.lhs.false2.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 213, i32 noundef 9, ptr noundef null) #8
  br label %return

if.end27.critedge:                                ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %blocks)
  %cmp = icmp ugt i32 %blocks, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool31.not = icmp eq i32 %write, 0
  %cond32 = select i1 %tobool31.not, i32 17, i32 24
  %cond = select i1 %tobool31.not, i32 18, i32 25
  %storemerge = select i1 %cmp, i32 %cond, i32 %cond32
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge, ptr %1, align 4
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd, align 4
  %arg = getelementptr inbounds %struct.mmc_command, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dev_addr, ptr %arg, align 4
  %10 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %test, align 4
  %state = getelementptr inbounds %struct.mmc_card, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  %and = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.then38, label %if.end27.critedge.if.end41_crit_edge

if.end27.critedge.if.end41_crit_edge:             ; preds = %if.end27.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then38:                                        ; preds = %if.end27.critedge
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmd, align 4
  %arg40 = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %arg40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arg40, align 4
  %shl = shl i32 %17, 9
  store i32 %shl, ptr %arg40, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end27.critedge.if.end41_crit_edge
  %18 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cmd, align 4
  %flags = getelementptr inbounds %struct.mmc_command, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 53, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %blocks)
  %cmp43 = icmp eq i32 %blocks, 1
  br i1 %cmp43, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %stop, align 4
  br label %if.end53

if.else46:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stop, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 12, ptr %23, align 4
  %25 = load ptr, ptr %stop, align 4
  %arg50 = getelementptr inbounds %struct.mmc_command, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %arg50 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %arg50, align 4
  %27 = load ptr, ptr %stop, align 4
  %flags52 = getelementptr inbounds %struct.mmc_command, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %flags52 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 29, ptr %flags52, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.else46, %if.then44
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %blksz55 = getelementptr inbounds %struct.mmc_data, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %blksz55 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %blksz, ptr %blksz55, align 4
  %32 = load ptr, ptr %data, align 4
  %blocks57 = getelementptr inbounds %struct.mmc_data, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %blocks57 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %blocks, ptr %blocks57, align 4
  %cond59 = select i1 %tobool31.not, i32 512, i32 256
  %34 = load ptr, ptr %data, align 4
  %flags61 = getelementptr inbounds %struct.mmc_data, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %flags61 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond59, ptr %flags61, align 4
  %36 = load ptr, ptr %data, align 4
  %sg63 = getelementptr inbounds %struct.mmc_data, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %sg63 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %sg, ptr %sg63, align 4
  %38 = load ptr, ptr %data, align 4
  %sg_len65 = getelementptr inbounds %struct.mmc_data, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %sg_len65 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sg_len, ptr %sg_len65, align 4
  %40 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %test, align 4
  %42 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mrq, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.end53.if.then.i_crit_edge, label %lor.lhs.false.i

if.end53.if.then.i_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end53
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 8
  %caps.i.i = getelementptr inbounds %struct.mmc_host, ptr %45, i32 0, i32 16
  %46 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %caps.i.i, align 32
  %and.i.i = and i32 %47, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool2.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %type.i.i = getelementptr inbounds %struct.mmc_card, ptr %41, i32 0, i32 4
  %48 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type.i.i, align 8
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %49, label %lor.lhs.false3.i.if.then.i_crit_edge [
    i32 0, label %lor.lhs.false3.i.lor.lhs.false5.i_crit_edge
    i32 1, label %mmc_test_card_cmd23.exit.i
  ]

lor.lhs.false3.i.lor.lhs.false5.i_crit_edge:      ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false5.i

lor.lhs.false3.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

mmc_test_card_cmd23.exit.i:                       ; preds = %lor.lhs.false3.i
  %cmds.i.i = getelementptr inbounds %struct.mmc_card, ptr %41, i32 0, i32 22, i32 5
  %51 = ptrtoint ptr %cmds.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %cmds.i.i, align 1
  %53 = and i8 %52, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.i.not.i = icmp eq i8 %53, 0
  br i1 %tobool.i.not.i, label %mmc_test_card_cmd23.exit.i.if.then.i_crit_edge, label %mmc_test_card_cmd23.exit.i.lor.lhs.false5.i_crit_edge

mmc_test_card_cmd23.exit.i.lor.lhs.false5.i_crit_edge: ; preds = %mmc_test_card_cmd23.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false5.i

mmc_test_card_cmd23.exit.i.if.then.i_crit_edge:   ; preds = %mmc_test_card_cmd23.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false5.i:                                 ; preds = %mmc_test_card_cmd23.exit.i.lor.lhs.false5.i_crit_edge, %lor.lhs.false3.i.lor.lhs.false5.i_crit_edge
  %54 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cmd, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %57, label %lor.lhs.false5.i.if.then.i_crit_edge [
    i32 25, label %lor.lhs.false5.i.lor.lhs.false7.i_crit_edge
    i32 18, label %lor.lhs.false5.i.lor.lhs.false7.i_crit_edge97
  ]

lor.lhs.false5.i.lor.lhs.false7.i_crit_edge97:    ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false7.i

lor.lhs.false5.i.lor.lhs.false7.i_crit_edge:      ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false7.i

lor.lhs.false5.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false7.i:                                 ; preds = %lor.lhs.false5.i.lor.lhs.false7.i_crit_edge, %lor.lhs.false5.i.lor.lhs.false7.i_crit_edge97
  %quirks.i = getelementptr inbounds %struct.mmc_card, ptr %41, i32 0, i32 6
  %59 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %quirks.i, align 8
  %and.i = and i32 %60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %if.end.i, label %lor.lhs.false7.i.if.then.i_crit_edge

lor.lhs.false7.i.if.then.i_crit_edge:             ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false7.i.if.then.i_crit_edge, %lor.lhs.false5.i.if.then.i_crit_edge, %mmc_test_card_cmd23.exit.i.if.then.i_crit_edge, %lor.lhs.false3.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %if.end53.if.then.i_crit_edge
  %61 = ptrtoint ptr %mrq to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %mrq, align 4
  br label %mmc_test_prepare_sbc.exit

if.end.i:                                         ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 23, ptr %43, align 4
  %63 = ptrtoint ptr %mrq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mrq, align 4
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %blocks, ptr %arg.i, align 4
  %66 = load ptr, ptr %mrq, align 4
  %flags.i = getelementptr inbounds %struct.mmc_command, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 21, ptr %flags.i, align 4
  br label %mmc_test_prepare_sbc.exit

mmc_test_prepare_sbc.exit:                        ; preds = %if.end.i, %if.then.i
  %68 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data, align 4
  %70 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %test, align 4
  tail call void @mmc_set_data_timeout(ptr noundef %69, ptr noundef %71) #8
  br label %return

return:                                           ; preds = %mmc_test_prepare_sbc.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_wait_for_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_wait_busy(ptr nocapture noundef readonly %test) unnamed_addr #1 align 64 {
entry:
  %cmd = alloca %struct.mmc_command, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #8
  %arg = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 1
  %flags = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 3
  %resp.i = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 2
  %0 = getelementptr inbounds i8, ptr %cmd, i32 8
  br label %do.body

do.body:                                          ; preds = %do.cond17.do.body_crit_edge, %entry
  %busy.0 = phi i32 [ 0, %entry ], [ %busy.1, %do.cond17.do.body_crit_edge ]
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 13, ptr %cmd, align 4
  %3 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %test, align 4
  %rca = getelementptr inbounds %struct.mmc_card, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %rca to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rca, align 4
  %shl = shl i32 %6, 16
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl, ptr %arg, align 4
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 21, ptr %flags, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 8
  %call = call i32 @mmc_wait_for_cmd(ptr noundef %10, ptr noundef nonnull %cmd, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.body.do.end20_crit_edge

do.body.do.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

if.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %busy.0)
  %tobool2.not = icmp eq i32 %busy.0, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.do.cond17_crit_edge

if.end.do.cond17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond17

land.lhs.true:                                    ; preds = %if.end
  %11 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %resp.i, align 4
  %and.i = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %13 = and i32 %12, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 3584, i32 %13)
  %cmp.i = icmp ne i32 %13, 3584
  %tobool4.not = and i1 %tobool.not.i, %cmp.i
  br i1 %tobool4.not, label %land.lhs.true.do.cond17_crit_edge, label %if.then5

land.lhs.true.do.cond17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond17

if.then5:                                         ; preds = %land.lhs.true
  %14 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %test, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %caps = getelementptr inbounds %struct.mmc_host, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %caps, align 32
  %and = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.then5.do.cond17_crit_edge, label %do.end

if.then5.do.cond17_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond17

do.end:                                           ; preds = %if.then5
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %17, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i25 = icmp eq ptr %21, null
  br i1 %tobool.not.i25, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %23, %if.end.i ], [ %21, %do.end.dev_name.exit_crit_edge ]
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %retval.0.i) #12
  br label %do.cond17

do.cond17:                                        ; preds = %dev_name.exit, %if.then5.do.cond17_crit_edge, %land.lhs.true.do.cond17_crit_edge, %if.end.do.cond17_crit_edge
  %busy.1 = phi i32 [ 1, %if.end.do.cond17_crit_edge ], [ 1, %dev_name.exit ], [ 1, %if.then5.do.cond17_crit_edge ], [ 0, %land.lhs.true.do.cond17_crit_edge ]
  %24 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %resp.i, align 4
  %and.i27 = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27)
  %tobool.not.i28 = icmp ne i32 %and.i27, 0
  %26 = and i32 %25, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 3584, i32 %26)
  %cmp.i29 = icmp ne i32 %26, 3584
  %tobool19.not = and i1 %tobool.not.i28, %cmp.i29
  br i1 %tobool19.not, label %do.cond17.do.end20_crit_edge, label %do.cond17.do.body_crit_edge

do.cond17.do.body_crit_edge:                      ; preds = %do.cond17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.cond17.do.end20_crit_edge:                     ; preds = %do.cond17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

do.end20:                                         ; preds = %do.cond17.do.end20_crit_edge, %do.body.do.end20_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_data_timeout(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_wait_for_cmd(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_buffer_transfer(ptr nocapture noundef readonly %test, ptr noundef %buffer, i32 noundef %addr, i32 noundef %write) unnamed_addr #1 align 64 {
entry:
  %mrq = alloca %struct.mmc_request, align 4
  %cmd = alloca %struct.mmc_command, align 4
  %stop = alloca %struct.mmc_command, align 4
  %data = alloca %struct.mmc_data, align 4
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mrq) #8
  %0 = call ptr @memset(ptr %mrq, i32 0, i32 156)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #8
  %1 = call ptr @memset(ptr %cmd, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %stop) #8
  %2 = call ptr @memset(ptr %stop, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %data) #8
  %3 = call ptr @memset(ptr %data, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %4 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %5 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cmd, ptr %cmd1, align 4
  %data2 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %6 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data, ptr %data2, align 4
  %stop3 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 3
  %7 = ptrtoint ptr %stop3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %stop, ptr %stop3, align 4
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %buffer, i32 noundef 512) #8
  call fastcc void @mmc_test_prepare_mrq(ptr noundef %test, ptr noundef nonnull %mrq, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef %addr, i32 noundef 1, i32 noundef 512, i32 noundef %write)
  %8 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %test, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  call void @mmc_wait_for_req(ptr noundef %11, ptr noundef nonnull %mrq) #8
  %error = getelementptr inbounds %struct.mmc_command, ptr %cmd, i32 0, i32 5
  %12 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %error5 = getelementptr inbounds %struct.mmc_data, ptr %data, i32 0, i32 5
  %14 = ptrtoint ptr %error5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %error5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not = icmp eq i32 %15, 0
  br i1 %tobool6.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call = call fastcc i32 @mmc_test_wait_busy(ptr noundef %test)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end9 ], [ %13, %entry.cleanup_crit_edge ], [ %15, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %stop) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #8
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_transfer(ptr noundef %test, ptr noundef %sg, i32 noundef %blocks, i32 noundef %blksz, i32 noundef %write) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br i1 %tobool.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %mul = mul i32 %blksz, %blocks
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp19.not = icmp eq i32 %mul, 0
  br i1 %cmp19.not, label %for.cond.preheader.do.body2_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body2_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv = trunc i32 %i.020 to i8
  %arrayidx = getelementptr %struct.mmc_test_card, ptr %test, i32 0, i32 1, i32 %i.020
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %mul
  br i1 %exitcond.not, label %for.body.do.body2_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.do.body2_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %scratch1 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 1
  %1 = call ptr @memset(ptr %scratch1, i32 0, i32 16384)
  br label %do.body2

do.body2:                                         ; preds = %if.else, %for.body.do.body2_crit_edge, %for.cond.preheader.do.body2_crit_edge
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !260
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not = icmp eq i32 %and.i, 0
  br i1 %tobool12.not, label %if.then29, label %do.end16

do.end16:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %scratch17 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 1
  %call19 = tail call i32 @sg_copy_from_buffer(ptr noundef %sg, i32 noundef 1, ptr noundef %scratch17, i32 noundef 16384) #8
  br label %do.body31

if.then29:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %scratch177 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 1
  %call198 = tail call i32 @sg_copy_from_buffer(ptr noundef %sg, i32 noundef 1, ptr noundef %scratch177, i32 noundef 16384) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body31

do.body31:                                        ; preds = %if.then29, %do.end16
  %scratch179 = phi ptr [ %scratch17, %do.end16 ], [ %scratch177, %if.then29 ]
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !261
  %and.i.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool39.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool39.not, label %if.then43, label %do.body31.do.end46_crit_edge, !prof !259

do.body31.do.end46_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end46

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %do.body31.do.end46_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #8, !srcloc !262
  %4 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %test, align 4
  %call.i = tail call i32 @mmc_set_blocklen(ptr noundef %5, i32 noundef %blksz) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool52.not = icmp eq i32 %call.i, 0
  br i1 %tobool52.not, label %if.end54, label %do.end46.cleanup205_crit_edge

do.end46.cleanup205_crit_edge:                    ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup205

if.end54:                                         ; preds = %do.end46
  %call55 = tail call fastcc i32 @mmc_test_simple_transfer(ptr noundef %test, ptr noundef %sg, i32 noundef 1, i32 noundef 0, i32 noundef %blocks, i32 noundef %blksz, i32 noundef %write)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.cleanup205_crit_edge

if.end54.cleanup205_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup205

if.end58:                                         ; preds = %if.end54
  br i1 %tobool.not, label %do.body127, label %if.then60

if.then60:                                        ; preds = %if.end58
  %6 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %test, align 4
  %call.i3 = tail call i32 @mmc_set_blocklen(ptr noundef %7, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool62.not = icmp eq i32 %call.i3, 0
  br i1 %tobool62.not, label %if.end64, label %if.then60.cleanup205_crit_edge

if.then60.cleanup205_crit_edge:                   ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup205

if.end64:                                         ; preds = %if.then60
  %mul65 = mul i32 %blksz, %blocks
  %add = add i32 %mul65, 511
  %div1 = lshr i32 %add, 9
  %mul66 = and i32 %add, -512
  call void @__sanitizer_cov_trace_cmp4(i32 %mul66, i32 %mul65)
  %cmp68 = icmp eq i32 %mul66, %mul65
  %inc71 = zext i1 %cmp68 to i32
  %spec.select = add nuw nsw i32 %div1, %inc71
  %mul73 = shl i32 %spec.select, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %mul73)
  %cmp74 = icmp ugt i32 %mul73, 16384
  br i1 %cmp74, label %if.end64.cleanup205_crit_edge, label %if.end77

if.end64.cleanup205_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup205

if.end77:                                         ; preds = %if.end64
  %buffer = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 %mul73)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp8021.not = icmp eq i32 %spec.select, 0
  br i1 %cmp8021.not, label %if.end77.for.cond93.preheader_crit_edge, label %if.end77.for.body82_crit_edge

if.end77.for.body82_crit_edge:                    ; preds = %if.end77
  br label %for.body82

if.end77.for.cond93.preheader_crit_edge:          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond93.preheader

for.cond79:                                       ; preds = %for.body82
  %inc91 = add nuw nsw i32 %i.122, 1
  %exitcond38.not = icmp eq i32 %inc91, %spec.select
  br i1 %exitcond38.not, label %for.cond79.for.cond93.preheader_crit_edge, label %for.cond79.for.body82_crit_edge

for.cond79.for.body82_crit_edge:                  ; preds = %for.cond79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body82

for.cond79.for.cond93.preheader_crit_edge:        ; preds = %for.cond79
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond93.preheader

for.cond93.preheader:                             ; preds = %for.cond79.for.cond93.preheader_crit_edge, %if.end77.for.cond93.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul65)
  %cmp9523.not = icmp eq i32 %mul65, 0
  br i1 %cmp9523.not, label %for.cond93.preheader.for.cond110.preheader_crit_edge, label %for.body97.lr.ph

for.cond93.preheader.for.cond110.preheader_crit_edge: ; preds = %for.cond93.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond110.preheader

for.body97.lr.ph:                                 ; preds = %for.cond93.preheader
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  br label %for.body97

for.body82:                                       ; preds = %for.cond79.for.body82_crit_edge, %if.end77.for.body82_crit_edge
  %i.122 = phi i32 [ %inc91, %for.cond79.for.body82_crit_edge ], [ 0, %if.end77.for.body82_crit_edge ]
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %buffer, align 4
  %mul84 = shl i32 %i.122, 9
  %add.ptr = getelementptr i8, ptr %14, i32 %mul84
  %call86 = tail call fastcc i32 @mmc_test_buffer_transfer(ptr noundef %test, ptr noundef %add.ptr, i32 noundef %i.122, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %for.cond79, label %for.body82.cleanup205_crit_edge

for.body82.cleanup205_crit_edge:                  ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup205

for.cond110.preheader:                            ; preds = %for.inc107.for.cond110.preheader_crit_edge, %for.cond93.preheader.for.cond110.preheader_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %mul65, i32 %mul73)
  %cmp11225 = icmp slt i32 %mul65, %mul73
  br i1 %cmp11225, label %for.body114.lr.ph, label %for.cond110.preheader.cleanup205_crit_edge

for.cond110.preheader.cleanup205_crit_edge:       ; preds = %for.cond110.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup205

for.body114.lr.ph:                                ; preds = %for.cond110.preheader
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  br label %for.body114

for.body97:                                       ; preds = %for.inc107.for.body97_crit_edge, %for.body97.lr.ph
  %i.224 = phi i32 [ 0, %for.body97.lr.ph ], [ %inc108, %for.inc107.for.body97_crit_edge ]
  %arrayidx99 = getelementptr i8, ptr %12, i32 %i.224
  %17 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx99, align 1
  %19 = trunc i32 %i.224 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %19)
  %cmp103.not = icmp eq i8 %18, %19
  br i1 %cmp103.not, label %for.inc107, label %for.body97.cleanup205_crit_edge

for.body97.cleanup205_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup205

for.inc107:                                       ; preds = %for.body97
  %inc108 = add nuw i32 %i.224, 1
  %exitcond39.not = icmp eq i32 %inc108, %mul65
  br i1 %exitcond39.not, label %for.inc107.for.cond110.preheader_crit_edge, label %for.inc107.for.body97_crit_edge

for.inc107.for.body97_crit_edge:                  ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body97

for.inc107.for.cond110.preheader_crit_edge:       ; preds = %for.inc107
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond110.preheader

for.cond110:                                      ; preds = %for.body114
  %inc123 = add i32 %i.326, 1
  %exitcond40.not = icmp eq i32 %inc123, %mul73
  br i1 %exitcond40.not, label %for.cond110.cleanup205_crit_edge, label %for.cond110.for.body114_crit_edge

for.cond110.for.body114_crit_edge:                ; preds = %for.cond110
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body114

for.cond110.cleanup205_crit_edge:                 ; preds = %for.cond110
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup205

for.body114:                                      ; preds = %for.cond110.for.body114_crit_edge, %for.body114.lr.ph
  %i.326 = phi i32 [ %mul65, %for.body114.lr.ph ], [ %inc123, %for.cond110.for.body114_crit_edge ]
  %arrayidx116 = getelementptr i8, ptr %16, i32 %i.326
  %20 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx116, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %21)
  %cmp118.not = icmp eq i8 %21, -33
  br i1 %cmp118.not, label %for.cond110, label %for.body114.cleanup205_crit_edge

for.body114.cleanup205_crit_edge:                 ; preds = %for.body114
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup205

do.body127:                                       ; preds = %if.end58
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !260
  %and.i4 = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4)
  %tobool143.not = icmp eq i32 %and.i4, 0
  br i1 %tobool143.not, label %if.then160, label %do.end147

do.end147:                                        ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #10
  %call150 = tail call i32 @sg_copy_to_buffer(ptr noundef %sg, i32 noundef 1, ptr noundef %scratch179, i32 noundef 16384) #8
  br label %do.body162

if.then160:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %call15013 = tail call i32 @sg_copy_to_buffer(ptr noundef %sg, i32 noundef 1, ptr noundef %scratch179, i32 noundef 16384) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body162

do.body162:                                       ; preds = %if.then160, %do.end147
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !261
  %and.i.i6 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i6)
  %tobool170.not = icmp eq i32 %and.i.i6, 0
  br i1 %tobool170.not, label %if.then179, label %do.body162.do.end182_crit_edge, !prof !259

do.body162.do.end182_crit_edge:                   ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end182

if.then179:                                       ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %do.end182

do.end182:                                        ; preds = %if.then179, %do.body162.do.end182_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #8, !srcloc !262
  %mul188 = mul i32 %blksz, %blocks
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul188)
  %cmp18929.not = icmp eq i32 %mul188, 0
  br i1 %cmp18929.not, label %do.end182.cleanup205_crit_edge, label %do.end182.for.body191_crit_edge

do.end182.for.body191_crit_edge:                  ; preds = %do.end182
  br label %for.body191

do.end182.cleanup205_crit_edge:                   ; preds = %do.end182
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup205

for.cond187:                                      ; preds = %for.body191
  %inc202 = add nuw i32 %i.430, 1
  %exitcond41.not = icmp eq i32 %inc202, %mul188
  br i1 %exitcond41.not, label %for.cond187.cleanup205_crit_edge, label %for.cond187.for.body191_crit_edge

for.cond187.for.body191_crit_edge:                ; preds = %for.cond187
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body191

for.cond187.cleanup205_crit_edge:                 ; preds = %for.cond187
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup205

for.body191:                                      ; preds = %for.cond187.for.body191_crit_edge, %do.end182.for.body191_crit_edge
  %i.430 = phi i32 [ %inc202, %for.cond187.for.body191_crit_edge ], [ 0, %do.end182.for.body191_crit_edge ]
  %arrayidx193 = getelementptr %struct.mmc_test_card, ptr %test, i32 0, i32 1, i32 %i.430
  %24 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx193, align 1
  %26 = trunc i32 %i.430 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %26)
  %cmp197.not = icmp eq i8 %25, %26
  br i1 %cmp197.not, label %for.cond187, label %for.body191.cleanup205_crit_edge

for.body191.cleanup205_crit_edge:                 ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup205

cleanup205:                                       ; preds = %for.body191.cleanup205_crit_edge, %for.cond187.cleanup205_crit_edge, %do.end182.cleanup205_crit_edge, %for.body114.cleanup205_crit_edge, %for.cond110.cleanup205_crit_edge, %for.body97.cleanup205_crit_edge, %for.cond110.preheader.cleanup205_crit_edge, %for.body82.cleanup205_crit_edge, %if.end64.cleanup205_crit_edge, %if.then60.cleanup205_crit_edge, %if.end54.cleanup205_crit_edge, %do.end46.cleanup205_crit_edge
  %retval.1 = phi i32 [ %call.i, %do.end46.cleanup205_crit_edge ], [ %call55, %if.end54.cleanup205_crit_edge ], [ -22, %if.end64.cleanup205_crit_edge ], [ %call.i3, %if.then60.cleanup205_crit_edge ], [ 0, %do.end182.cleanup205_crit_edge ], [ 0, %for.cond110.preheader.cleanup205_crit_edge ], [ 1, %for.body191.cleanup205_crit_edge ], [ 0, %for.cond187.cleanup205_crit_edge ], [ 0, %for.cond110.cleanup205_crit_edge ], [ 1, %for.body114.cleanup205_crit_edge ], [ 1, %for.body97.cleanup205_crit_edge ], [ %call86, %for.body82.cleanup205_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_broken_transfer(ptr nocapture noundef readonly %test, i32 noundef %blocks, i32 noundef %write) unnamed_addr #1 align 64 {
entry:
  %mrq = alloca %struct.mmc_request, align 4
  %cmd = alloca %struct.mmc_command, align 4
  %stop = alloca %struct.mmc_command, align 4
  %data = alloca %struct.mmc_data, align 4
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 156, ptr nonnull %mrq) #8
  %0 = call ptr @memset(ptr %mrq, i32 0, i32 156)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %cmd) #8
  %1 = call ptr @memset(ptr %cmd, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %stop) #8
  %2 = call ptr @memset(ptr %stop, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %data) #8
  %3 = call ptr @memset(ptr %data, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %cmd1 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 1
  %4 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %5 = ptrtoint ptr %cmd1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cmd, ptr %cmd1, align 4
  %data2 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 2
  %6 = ptrtoint ptr %data2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data, ptr %data2, align 4
  %stop3 = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 3
  %7 = ptrtoint ptr %stop3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %stop, ptr %stop3, align 4
  %buffer = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 2
  %8 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer, align 4
  %mul = shl i32 %blocks, 9
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %9, i32 noundef %mul) #8
  call fastcc void @mmc_test_prepare_mrq(ptr noundef %test, ptr noundef nonnull %mrq, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 0, i32 noundef %blocks, i32 noundef 512, i32 noundef %write)
  %10 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd1, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %entry.do.end.i_crit_edge, label %lor.rhs.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.rhs.i:                                        ; preds = %entry
  %12 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data2, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %lor.rhs.i.do.end.i_crit_edge, label %if.end25.critedge.i, !prof !259

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 675, i32 noundef 9, ptr noundef null) #8
  br label %mmc_test_prepare_broken_mrq.exit

if.end25.critedge.i:                              ; preds = %lor.rhs.i
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blocks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.i = icmp ugt i32 %15, 1
  br i1 %cmp.i, label %if.then27.i, label %if.else.i

if.then27.i:                                      ; preds = %if.end25.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool28.not.i = icmp eq i32 %write, 0
  %cond.i = select i1 %tobool28.not.i, i32 17, i32 24
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond.i, ptr %11, align 4
  %17 = ptrtoint ptr %stop3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %stop3, align 4
  br label %mmc_test_prepare_broken_mrq.exit

if.else.i:                                        ; preds = %if.end25.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 13, ptr %11, align 4
  %19 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %test, align 4
  %rca.i = getelementptr inbounds %struct.mmc_card, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %rca.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rca.i, align 4
  %shl.i = shl i32 %22, 16
  %23 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cmd1, align 4
  %arg.i = getelementptr inbounds %struct.mmc_command, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %arg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl.i, ptr %arg.i, align 4
  br label %mmc_test_prepare_broken_mrq.exit

mmc_test_prepare_broken_mrq.exit:                 ; preds = %if.else.i, %if.then27.i, %do.end.i
  %26 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %test, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 8
  call void @mmc_wait_for_req(ptr noundef %29, ptr noundef nonnull %mrq) #8
  %call = call fastcc i32 @mmc_test_wait_busy(ptr noundef %test)
  %30 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmd1, align 4
  %tobool1.not.i2 = icmp eq ptr %31, null
  br i1 %tobool1.not.i2, label %mmc_test_prepare_broken_mrq.exit.do.end.i6_crit_edge, label %lor.rhs.i5

mmc_test_prepare_broken_mrq.exit.do.end.i6_crit_edge: ; preds = %mmc_test_prepare_broken_mrq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i6

lor.rhs.i5:                                       ; preds = %mmc_test_prepare_broken_mrq.exit
  %32 = ptrtoint ptr %data2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data2, align 4
  %tobool2.not.i4 = icmp eq ptr %33, null
  br i1 %tobool2.not.i4, label %lor.rhs.i5.do.end.i6_crit_edge, label %land.lhs.true.i, !prof !259

lor.rhs.i5.do.end.i6_crit_edge:                   ; preds = %lor.rhs.i5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i6

do.end.i6:                                        ; preds = %lor.rhs.i5.do.end.i6_crit_edge, %mmc_test_prepare_broken_mrq.exit.do.end.i6_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 727, i32 noundef 9, ptr noundef null) #8
  br label %mmc_test_check_broken_result.exit

land.lhs.true.i:                                  ; preds = %lor.rhs.i5
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %31, i32 0, i32 5
  %34 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool28.not.i7 = icmp eq i32 %35, 0
  br i1 %tobool28.not.i7, label %land.lhs.true34.i, label %land.lhs.true.i.if.end58.i_crit_edge

land.lhs.true.i.if.end58.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

land.lhs.true34.i:                                ; preds = %land.lhs.true.i
  %error36.i = getelementptr inbounds %struct.mmc_data, ptr %33, i32 0, i32 5
  %36 = ptrtoint ptr %error36.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %error36.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %37, label %land.lhs.true34.i.if.end58.i_crit_edge [
    i32 0, label %land.lhs.true34.i.mmc_test_check_broken_result.exit_crit_edge
    i32 -110, label %land.lhs.true49.i
  ]

land.lhs.true34.i.mmc_test_check_broken_result.exit_crit_edge: ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_check_broken_result.exit

land.lhs.true34.i.if.end58.i_crit_edge:           ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

land.lhs.true49.i:                                ; preds = %land.lhs.true34.i
  %39 = ptrtoint ptr %stop3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stop3, align 4
  %tobool50.not.i = icmp eq ptr %40, null
  br i1 %tobool50.not.i, label %if.end58.thread.i, label %land.lhs.true51.i

land.lhs.true51.i:                                ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #10
  %error53.i = getelementptr inbounds %struct.mmc_command, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %error53.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %error53.i, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %land.lhs.true51.i, %land.lhs.true34.i.if.end58.i_crit_edge, %land.lhs.true.i.if.end58.i_crit_edge
  %ret.3.i = phi i32 [ %42, %land.lhs.true51.i ], [ %35, %land.lhs.true.i.if.end58.i_crit_edge ], [ %37, %land.lhs.true34.i.if.end58.i_crit_edge ]
  %blocks.i10 = getelementptr inbounds %struct.mmc_data, ptr %33, i32 0, i32 3
  %43 = ptrtoint ptr %blocks.i10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %blocks.i10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp60.i = icmp ugt i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i)
  %tobool62.not.i = icmp eq i32 %ret.3.i, 0
  br i1 %cmp60.i, label %if.then61.i, label %if.else.i11

if.end58.thread.i:                                ; preds = %land.lhs.true49.i
  %blocks16.i = getelementptr inbounds %struct.mmc_data, ptr %33, i32 0, i32 3
  %45 = ptrtoint ptr %blocks16.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %blocks16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp6017.i = icmp ugt i32 %46, 1
  br i1 %cmp6017.i, label %if.end58.thread.i.land.lhs.true63.i_crit_edge, label %if.end58.thread.i.land.lhs.true70.i_crit_edge

if.end58.thread.i.land.lhs.true70.i_crit_edge:    ; preds = %if.end58.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true70.i

if.end58.thread.i.land.lhs.true63.i_crit_edge:    ; preds = %if.end58.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true63.i

if.then61.i:                                      ; preds = %if.end58.i
  br i1 %tobool62.not.i, label %if.then61.i.land.lhs.true63.i_crit_edge, label %if.then61.i.if.end76.i_crit_edge

if.then61.i.if.end76.i_crit_edge:                 ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76.i

if.then61.i.land.lhs.true63.i_crit_edge:          ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true63.i

land.lhs.true63.i:                                ; preds = %if.then61.i.land.lhs.true63.i_crit_edge, %if.end58.thread.i.land.lhs.true63.i_crit_edge
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %33, i32 0, i32 7
  %47 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bytes_xfered.i, align 4
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %33, i32 0, i32 2
  %49 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %blksz.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp66.i = icmp ugt i32 %48, %50
  %spec.select4.i = zext i1 %cmp66.i to i32
  br label %mmc_test_check_broken_result.exit

if.else.i11:                                      ; preds = %if.end58.i
  br i1 %tobool62.not.i, label %if.else.i11.land.lhs.true70.i_crit_edge, label %if.else.i11.if.end76.i_crit_edge

if.else.i11.if.end76.i_crit_edge:                 ; preds = %if.else.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76.i

if.else.i11.land.lhs.true70.i_crit_edge:          ; preds = %if.else.i11
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true70.i

land.lhs.true70.i:                                ; preds = %if.else.i11.land.lhs.true70.i_crit_edge, %if.end58.thread.i.land.lhs.true70.i_crit_edge
  %bytes_xfered72.i = getelementptr inbounds %struct.mmc_data, ptr %33, i32 0, i32 7
  %51 = ptrtoint ptr %bytes_xfered72.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bytes_xfered72.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp73.not.i = icmp ne i32 %52, 0
  %spec.select5.i = zext i1 %cmp73.not.i to i32
  br label %mmc_test_check_broken_result.exit

if.end76.i:                                       ; preds = %if.else.i11.if.end76.i_crit_edge, %if.then61.i.if.end76.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %ret.3.i)
  %cmp77.i = icmp eq i32 %ret.3.i, -22
  %spec.select.i = select i1 %cmp77.i, i32 2, i32 %ret.3.i
  br label %mmc_test_check_broken_result.exit

mmc_test_check_broken_result.exit:                ; preds = %if.end76.i, %land.lhs.true70.i, %land.lhs.true63.i, %land.lhs.true34.i.mmc_test_check_broken_result.exit_crit_edge, %do.end.i6
  %retval.0.i = phi i32 [ -22, %do.end.i6 ], [ %spec.select5.i, %land.lhs.true70.i ], [ %spec.select4.i, %land.lhs.true63.i ], [ 1, %land.lhs.true34.i.mmc_test_check_broken_result.exit_crit_edge ], [ %spec.select.i, %if.end76.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %data) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %stop) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %cmd) #8
  call void @llvm.lifetime.end.p0(i64 156, ptr nonnull %mrq) #8
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_area_init(ptr noundef %test, i32 noundef %erase, i32 noundef %fill) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %area = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %call.i = tail call i32 @mmc_set_blocklen(ptr noundef %1, i32 noundef 512) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %test, align 4
  %pref_erase = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %pref_erase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pref_erase, align 4
  %shl = shl i32 %5, 9
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end
  %storemerge = phi i32 [ %shl, %if.end ], [ %add, %while.cond.while.cond_crit_edge ]
  %cmp = icmp ult i32 %storemerge, 4194304
  %add = add i32 %storemerge, %shl
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.cond3.preheader

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.cond3.preheader:                            ; preds = %while.cond
  %6 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %storemerge, ptr %area, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %storemerge)
  %cmp5230 = icmp ugt i32 %storemerge, 134217728
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge, i32 %shl)
  %cmp7231 = icmp ugt i32 %storemerge, %shl
  %or.cond232 = select i1 %cmp5230, i1 %cmp7231, i1 false
  br i1 %or.cond232, label %while.cond3.preheader.while.body8_crit_edge, label %while.cond3.preheader.while.end10_crit_edge

while.cond3.preheader.while.end10_crit_edge:      ; preds = %while.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end10

while.cond3.preheader.while.body8_crit_edge:      ; preds = %while.cond3.preheader
  br label %while.body8

while.body8:                                      ; preds = %while.body8.while.body8_crit_edge, %while.cond3.preheader.while.body8_crit_edge
  %sub229233 = phi i32 [ %sub, %while.body8.while.body8_crit_edge ], [ %storemerge, %while.cond3.preheader.while.body8_crit_edge ]
  %sub = sub i32 %sub229233, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %sub)
  %cmp5 = icmp ugt i32 %sub, 134217728
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %shl)
  %cmp7 = icmp ugt i32 %sub, %shl
  %or.cond = and i1 %cmp5, %cmp7
  br i1 %or.cond, label %while.body8.while.body8_crit_edge, label %while.cond3.while.end10_crit_edge

while.body8.while.body8_crit_edge:                ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body8

while.cond3.while.end10_crit_edge:                ; preds = %while.body8
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %area, align 4
  br label %while.end10

while.end10:                                      ; preds = %while.cond3.while.end10_crit_edge, %while.cond3.preheader.while.end10_crit_edge
  %.lcssa = phi i32 [ %sub, %while.cond3.while.end10_crit_edge ], [ %storemerge, %while.cond3.preheader.while.end10_crit_edge ]
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 21
  %10 = ptrtoint ptr %max_segs to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %max_segs, align 4
  %conv = zext i16 %11 to i32
  %max_segs12 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %max_segs12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %max_segs12, align 4
  %13 = load ptr, ptr %3, align 8
  %max_seg_size = getelementptr inbounds %struct.mmc_host, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %max_seg_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_seg_size, align 16
  %max_seg_sz = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 4
  %sub17 = and i32 %15, -512
  %16 = ptrtoint ptr %max_seg_sz to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub17, ptr %max_seg_sz, align 4
  %max_tfr = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %max_tfr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.lcssa, ptr %max_tfr, align 4
  %shr = lshr i32 %.lcssa, 9
  %18 = load ptr, ptr %3, align 8
  %max_blk_count = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 25
  %19 = ptrtoint ptr %max_blk_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_blk_count, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %20)
  %cmp22 = icmp ugt i32 %shr, %20
  br i1 %cmp22, label %if.then24, label %while.end10.if.end30_crit_edge

while.end10.if.end30_crit_edge:                   ; preds = %while.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then24:                                        ; preds = %while.end10
  call void @__sanitizer_cov_trace_pc() #10
  %shl28 = shl i32 %20, 9
  %21 = ptrtoint ptr %max_tfr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl28, ptr %max_tfr, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %while.end10.if.end30_crit_edge
  %22 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_tfr, align 4
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 8
  %max_req_size = getelementptr inbounds %struct.mmc_host, ptr %25, i32 0, i32 23
  %26 = ptrtoint ptr %max_req_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_req_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %27)
  %cmp34 = icmp ugt i32 %23, %27
  br i1 %cmp34, label %if.then36, label %if.end30.if.end41_crit_edge

if.end30.if.end41_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %max_tfr to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %max_tfr, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %if.end30.if.end41_crit_edge
  %29 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_tfr, align 4
  %div = udiv i32 %30, %sub17
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %conv)
  %cmp45 = icmp ugt i32 %div, %conv
  br i1 %cmp45, label %if.then47, label %if.end41.if.end51_crit_edge

if.end41.if.end51_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul i32 %sub17, %conv
  %31 = ptrtoint ptr %max_tfr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul, ptr %max_tfr, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.end41.if.end51_crit_edge
  %32 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_tfr, align 4
  %sub.i = add i32 %33, 4095
  %div1.i = lshr i32 %sub.i, 12
  %sub5.i = add i32 %sub17, 4095
  %div62.i = lshr i32 %sub5.i, 12
  %call.i159 = tail call i32 @nr_free_buffer_pages() #8
  %shr.i = lshr i32 %call.i159, 4
  %34 = tail call i32 @llvm.umin.i32(i32 %div1.i, i32 %shr.i) #8
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 16) #8
  %36 = tail call i32 @llvm.umin.i32(i32 %div62.i, i32 %34) #8
  %37 = tail call i32 @llvm.umin.i32(i32 %34, i32 %conv) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 8) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end51.mmc_test_alloc_mem.exit.thread_crit_edge, label %if.end7.i.i.i

if.end51.mmc_test_alloc_mem.exit.thread_crit_edge: ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_alloc_mem.exit.thread

if.end7.i.i.i:                                    ; preds = %if.end51
  %39 = shl nuw nsw i32 %37, 3
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #13
  %40 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call8.i.i.i, ptr %call7.i.i.i, align 8
  %tobool21.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool21.not.i, label %if.end7.i.i.i.while.cond.preheader.i.i_crit_edge, label %while.cond.preheader.i

if.end7.i.i.i.while.cond.preheader.i.i_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader.i.i

while.cond.preheader.i:                           ; preds = %if.end7.i.i.i
  %shl.i = shl nuw i32 %36, 12
  %dec.i.i = add i32 %shl.i, -1
  %shr.i.i = lshr i32 %dec.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i, 4095
  %41 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #8, !range !263
  %sub.i.i.i = sub nuw nsw i32 32, %41
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %cnt.i = getelementptr inbounds %struct.mmc_test_mem, ptr %call7.i.i.i, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end51.i.while.cond.i_crit_edge, %while.cond.preheader.i
  %max_page_cnt.1.i = phi i32 [ %sub53.i, %if.end51.i.while.cond.i_crit_edge ], [ %34, %while.cond.preheader.i ]
  %page_cnt.0.i = phi i32 [ %add55.i, %if.end51.i.while.cond.i_crit_edge ], [ 0, %while.cond.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_page_cnt.1.i)
  %tobool24.not.i = icmp eq i32 %max_page_cnt.1.i, 0
  br i1 %tobool24.not.i, label %while.cond.i.mmc_test_alloc_mem.exit_crit_edge, label %while.cond.i.while.cond26.i_crit_edge

while.cond.i.while.cond26.i_crit_edge:            ; preds = %while.cond.i
  br label %while.cond26.i

while.cond.i.mmc_test_alloc_mem.exit_crit_edge:   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_alloc_mem.exit

while.cond26.i:                                   ; preds = %while.cond26.i.while.cond26.i_crit_edge, %while.cond.i.while.cond26.i_crit_edge
  %order.0.i = phi i32 [ %sub33.i, %while.cond26.i.while.cond26.i_crit_edge ], [ %cond.i.i.i, %while.cond.i.while.cond26.i_crit_edge ]
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 76993, i32 noundef %order.0.i, i32 noundef 0, ptr noundef null) #8
  %tobool29.not.i = icmp eq ptr %call38.i.i.i.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %order.0.i)
  %tobool30.not.i = icmp ne i32 %order.0.i, 0
  %42 = and i1 %tobool30.not.i, %tobool29.not.i
  %sub33.i = add i32 %order.0.i, -1
  br i1 %42, label %while.cond26.i.while.cond26.i_crit_edge, label %while.end.i

while.cond26.i.while.cond26.i_crit_edge:          ; preds = %while.cond26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond26.i

while.end.i:                                      ; preds = %while.cond26.i
  br i1 %tobool29.not.i, label %if.then35.i, label %if.end39.i

if.then35.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %page_cnt.0.i, i32 %35)
  %cmp36.i = icmp ult i32 %page_cnt.0.i, %35
  br i1 %cmp36.i, label %if.then35.i.while.cond.preheader.i.i_crit_edge, label %if.then35.i.mmc_test_alloc_mem.exit_crit_edge

if.then35.i.mmc_test_alloc_mem.exit_crit_edge:    ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_alloc_mem.exit

if.then35.i.while.cond.preheader.i.i_crit_edge:   ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader.i.i

if.end39.i:                                       ; preds = %while.end.i
  %43 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call7.i.i.i, align 8
  %45 = ptrtoint ptr %cnt.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cnt.i, align 4
  %arrayidx.i = getelementptr %struct.mmc_test_pages, ptr %44, i32 %46
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call38.i.i.i.i, ptr %arrayidx.i, align 4
  %48 = load ptr, ptr %call7.i.i.i, align 8
  %49 = load i32, ptr %cnt.i, align 4
  %order45.i = getelementptr %struct.mmc_test_pages, ptr %48, i32 %49, i32 1
  %50 = ptrtoint ptr %order45.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %order.0.i, ptr %order45.i, align 4
  %51 = load i32, ptr %cnt.i, align 4
  %add47.i = add i32 %51, 1
  store i32 %add47.i, ptr %cnt.i, align 4
  %shl48.i = shl nuw i32 1, %order.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %max_page_cnt.1.i, i32 %shl48.i)
  %cmp49.not.i = icmp ugt i32 %max_page_cnt.1.i, %shl48.i
  br i1 %cmp49.not.i, label %if.end51.i, label %if.end39.i.mmc_test_alloc_mem.exit_crit_edge

if.end39.i.mmc_test_alloc_mem.exit_crit_edge:     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_alloc_mem.exit

if.end51.i:                                       ; preds = %if.end39.i
  %sub53.i = sub i32 %max_page_cnt.1.i, %shl48.i
  %add55.i = add i32 %shl48.i, %page_cnt.0.i
  %cmp57.not.i = icmp ult i32 %add47.i, %37
  br i1 %cmp57.not.i, label %if.end51.i.while.cond.i_crit_edge, label %if.then58.i

if.end51.i.while.cond.i_crit_edge:                ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

if.then58.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add55.i, i32 %35)
  %cmp59.i = icmp ult i32 %add55.i, %35
  br i1 %cmp59.i, label %if.then58.i.while.cond.preheader.i.i_crit_edge, label %if.then58.i.mmc_test_alloc_mem.exit_crit_edge

if.then58.i.mmc_test_alloc_mem.exit_crit_edge:    ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_alloc_mem.exit

if.then58.i.while.cond.preheader.i.i_crit_edge:   ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader.i.i

while.cond.preheader.i.i:                         ; preds = %if.then58.i.while.cond.preheader.i.i_crit_edge, %if.then35.i.while.cond.preheader.i.i_crit_edge, %if.end7.i.i.i.while.cond.preheader.i.i_crit_edge
  %cnt.i.i = getelementptr inbounds %struct.mmc_test_mem, ptr %call7.i.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cnt.i.i, align 4
  %dec14.i.i = add i32 %53, -1
  store i32 %dec14.i.i, ptr %cnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool1.not15.i.i = icmp eq i32 %53, 0
  br i1 %tobool1.not15.i.i, label %while.cond.preheader.i.i.mmc_test_free_mem.exit.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.mmc_test_free_mem.exit.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_free_mem.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %dec16.i.i = phi i32 [ %dec.i5.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %dec14.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %54 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call7.i.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.mmc_test_pages, ptr %55, i32 %dec16.i.i
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i, align 4
  %order.i.i = getelementptr %struct.mmc_test_pages, ptr %55, i32 %dec16.i.i, i32 1
  %58 = ptrtoint ptr %order.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %order.i.i, align 4
  tail call void @__free_pages(ptr noundef %57, i32 noundef %59) #8
  %60 = ptrtoint ptr %cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cnt.i.i, align 4
  %dec.i5.i = add i32 %61, -1
  store i32 %dec.i5.i, ptr %cnt.i.i, align 4
  %tobool1.not.i.i = icmp eq i32 %61, 0
  br i1 %tobool1.not.i.i, label %while.body.i.i.mmc_test_free_mem.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

while.body.i.i.mmc_test_free_mem.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_free_mem.exit.i

mmc_test_free_mem.exit.i:                         ; preds = %while.body.i.i.mmc_test_free_mem.exit.i_crit_edge, %while.cond.preheader.i.i.mmc_test_free_mem.exit.i_crit_edge
  %62 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call7.i.i.i, align 8
  tail call void @kfree(ptr noundef %63) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %mmc_test_alloc_mem.exit.thread

mmc_test_alloc_mem.exit.thread:                   ; preds = %mmc_test_free_mem.exit.i, %if.end51.mmc_test_alloc_mem.exit.thread_crit_edge
  %mem209 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 7
  %64 = ptrtoint ptr %mem209 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %mem209, align 4
  br label %cleanup

mmc_test_alloc_mem.exit:                          ; preds = %if.then58.i.mmc_test_alloc_mem.exit_crit_edge, %if.end39.i.mmc_test_alloc_mem.exit_crit_edge, %if.then35.i.mmc_test_alloc_mem.exit_crit_edge, %while.cond.i.mmc_test_alloc_mem.exit_crit_edge
  %mem = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 7
  %65 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i.i.i, ptr %mem, align 4
  %66 = ptrtoint ptr %max_segs12 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_segs12, align 4
  %68 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %67, i32 20) #8
  %69 = extractvalue { i32, i1 } %68, 1
  br i1 %69, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !259

kmalloc_array.exit.thread:                        ; preds = %mmc_test_alloc_mem.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sg212 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 8
  br label %out_free.sink.split

if.end7.i:                                        ; preds = %mmc_test_alloc_mem.exit
  %70 = extractvalue { i32, i1 } %68, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %70, i32 noundef 3264) #13
  %sg = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 8
  %71 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call8.i, ptr %sg, align 4
  %tobool63.not = icmp eq ptr %call8.i, null
  br i1 %tobool63.not, label %if.end7.i.out_free_crit_edge, label %if.end65

if.end7.i.out_free_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end65:                                         ; preds = %if.end7.i
  %72 = ptrtoint ptr %max_segs12 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %max_segs12, align 4
  %74 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %73, i32 20) #8
  %75 = extractvalue { i32, i1 } %74, 1
  br i1 %75, label %kmalloc_array.exit197.thread, label %if.end7.i195, !prof !259

kmalloc_array.exit197.thread:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %sg_areq219 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 9
  br label %out_free.sink.split

if.end7.i195:                                     ; preds = %if.end65
  %76 = extractvalue { i32, i1 } %74, 0
  %call8.i194 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %76, i32 noundef 3264) #13
  %sg_areq = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 9
  %77 = ptrtoint ptr %sg_areq to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call8.i194, ptr %sg_areq, align 4
  %tobool69.not = icmp eq ptr %call8.i194, null
  br i1 %tobool69.not, label %if.end7.i195.out_free_crit_edge, label %if.end71

if.end7.i195.out_free_crit_edge:                  ; preds = %if.end7.i195
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end71:                                         ; preds = %if.end7.i195
  %78 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %test, align 4
  %type.i = getelementptr inbounds %struct.mmc_card, ptr %79, i32 0, i32 4
  %80 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp.i = icmp eq i32 %81, 1
  br i1 %cmp.i, label %if.end71.if.else.i_crit_edge, label %land.lhs.true.i199

if.end71.if.else.i_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i199:                               ; preds = %if.end71
  %state.i = getelementptr inbounds %struct.mmc_card, ptr %79, i32 0, i32 5
  %82 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %state.i, align 4
  %and.i = and i32 %83, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i198 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i198, label %land.lhs.true.i199.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i199.if.else.i_crit_edge:           ; preds = %land.lhs.true.i199
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i199
  call void @__sanitizer_cov_trace_pc() #10
  %sectors.i = getelementptr inbounds %struct.mmc_card, ptr %79, i32 0, i32 21, i32 19
  %84 = ptrtoint ptr %sectors.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sectors.i, align 8
  br label %mmc_test_capacity.exit

if.else.i:                                        ; preds = %land.lhs.true.i199.if.else.i_crit_edge, %if.end71.if.else.i_crit_edge
  %capacity.i = getelementptr inbounds %struct.mmc_card, ptr %79, i32 0, i32 20, i32 11
  %86 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %capacity.i, align 4
  %read_blkbits.i = getelementptr inbounds %struct.mmc_card, ptr %79, i32 0, i32 20, i32 9
  %88 = ptrtoint ptr %read_blkbits.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %read_blkbits.i, align 4
  %sub.i200 = add i32 %89, -9
  %shl.i201 = shl i32 %87, %sub.i200
  br label %mmc_test_capacity.exit

mmc_test_capacity.exit:                           ; preds = %if.else.i, %if.then.i
  %retval.0.i202 = phi i32 [ %shl.i201, %if.else.i ], [ %85, %if.then.i ]
  %div74158 = lshr i32 %retval.0.i202, 1
  %dev_addr = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  %90 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %area, align 4
  %shr77 = lshr i32 %91, 9
  %rem78 = urem i32 %div74158, %shr77
  %sub80 = sub nsw i32 %div74158, %rem78
  %92 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %sub80, ptr %dev_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %erase)
  %tobool81.not = icmp eq i32 %erase, 0
  br i1 %tobool81.not, label %mmc_test_capacity.exit.if.end87_crit_edge, label %if.then82

mmc_test_capacity.exit.if.end87_crit_edge:        ; preds = %mmc_test_capacity.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.then82:                                        ; preds = %mmc_test_capacity.exit
  %call.i203 = tail call i32 @mmc_can_erase(ptr noundef %79) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i203)
  %tobool.not.i204 = icmp eq i32 %call.i203, 0
  br i1 %tobool.not.i204, label %if.then82.if.end87_crit_edge, label %mmc_test_area_erase.exit

if.then82.if.end87_crit_edge:                     ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

mmc_test_area_erase.exit:                         ; preds = %if.then82
  %93 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %test, align 4
  %95 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dev_addr, align 4
  %97 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %area, align 4
  %shr.i205 = lshr i32 %98, 9
  %call2.i = tail call i32 @mmc_erase(ptr noundef %94, i32 noundef %96, i32 noundef %shr.i205, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool84.not = icmp eq i32 %call2.i, 0
  br i1 %tobool84.not, label %mmc_test_area_erase.exit.if.end87_crit_edge, label %mmc_test_area_erase.exit.out_free_crit_edge

mmc_test_area_erase.exit.out_free_crit_edge:      ; preds = %mmc_test_area_erase.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

mmc_test_area_erase.exit.if.end87_crit_edge:      ; preds = %mmc_test_area_erase.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end87

if.end87:                                         ; preds = %mmc_test_area_erase.exit.if.end87_crit_edge, %if.then82.if.end87_crit_edge, %mmc_test_capacity.exit.if.end87_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fill)
  %tobool88.not = icmp eq i32 %fill, 0
  br i1 %tobool88.not, label %if.end87.cleanup_crit_edge, label %if.then89

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then89:                                        ; preds = %if.end87
  %call90 = tail call fastcc i32 @mmc_test_area_fill(ptr noundef %test)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then89.cleanup_crit_edge, label %if.then89.out_free_crit_edge

if.then89.out_free_crit_edge:                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then89.cleanup_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out_free.sink.split:                              ; preds = %kmalloc_array.exit197.thread, %kmalloc_array.exit.thread
  %sg_areq219.sink = phi ptr [ %sg_areq219, %kmalloc_array.exit197.thread ], [ %sg212, %kmalloc_array.exit.thread ]
  %99 = ptrtoint ptr %sg_areq219.sink to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %sg_areq219.sink, align 4
  br label %out_free

out_free:                                         ; preds = %out_free.sink.split, %if.then89.out_free_crit_edge, %mmc_test_area_erase.exit.out_free_crit_edge, %if.end7.i195.out_free_crit_edge, %if.end7.i.out_free_crit_edge
  %ret.0 = phi i32 [ %call2.i, %mmc_test_area_erase.exit.out_free_crit_edge ], [ %call90, %if.then89.out_free_crit_edge ], [ -12, %if.end7.i.out_free_crit_edge ], [ -12, %if.end7.i195.out_free_crit_edge ], [ -12, %out_free.sink.split ]
  %call95 = tail call i32 @mmc_test_area_cleanup(ptr noundef %test)
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then89.cleanup_crit_edge, %if.end87.cleanup_crit_edge, %mmc_test_alloc_mem.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_free ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.then89.cleanup_crit_edge ], [ 0, %if.end87.cleanup_crit_edge ], [ -12, %mmc_test_alloc_mem.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_area_fill(ptr nocapture noundef %test) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_tfr = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_tfr, align 4
  %dev_addr = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_addr, align 4
  %shr.i4 = lshr i32 %1, 9
  %blocks.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 5
  %4 = ptrtoint ptr %blocks.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr.i4, ptr %blocks.i, align 4
  %mem2.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 7
  %5 = ptrtoint ptr %mem2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mem2.i, align 4
  %sg3.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %sg3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sg3.i, align 4
  %max_segs4.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 3
  %9 = ptrtoint ptr %max_segs4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_segs4.i, align 4
  %max_seg_sz5.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 4
  %11 = ptrtoint ptr %max_seg_sz5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_seg_sz5.i, align 4
  %sg_len6.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 6
  %call7.i = tail call fastcc i32 @mmc_test_map_sg(ptr noundef %6, i32 noundef %1, ptr noundef %8, i32 noundef %10, i32 noundef %12, ptr noundef %sg_len6.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool30.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool30.not.i, label %if.end12.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  %13 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %test, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %16, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.mmc_test_area_map.exit_crit_edge

do.end.i.mmc_test_area_map.exit_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_area_map.exit

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %class_dev.i, align 4
  br label %mmc_test_area_map.exit

mmc_test_area_map.exit:                           ; preds = %if.end.i.i, %do.end.i.mmc_test_area_map.exit_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %18, %do.end.i.mmc_test_area_map.exit_crit_edge ]
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %retval.0.i.i) #12
  br label %mmc_test_area_io_seq.exit

if.end12.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %sg3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sg3.i, align 4
  %23 = ptrtoint ptr %sg_len6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sg_len6.i, align 4
  %25 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %blocks.i, align 4
  %call.i.i = tail call fastcc i32 @mmc_test_simple_transfer(ptr noundef %test, ptr noundef %22, i32 noundef %24, i32 noundef %3, i32 noundef %26, i32 noundef 512, i32 noundef 1) #8
  br label %mmc_test_area_io_seq.exit

mmc_test_area_io_seq.exit:                        ; preds = %if.end12.i, %mmc_test_area_map.exit
  %retval.0.i = phi i32 [ %call7.i, %mmc_test_area_map.exit ], [ %call.i.i, %if.end12.i ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_free_buffer_pages() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_erase(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_erase(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_area_io_seq(ptr noundef %test, i32 noundef %sz, i32 noundef %dev_addr, i32 noundef %write, i32 noundef %max_scatter, i32 noundef %timed, i32 noundef %count, i1 noundef zeroext %nonblock, i32 noundef %min_sg_len) unnamed_addr #1 align 64 {
entry:
  %ts1 = alloca %struct.timespec64, align 8
  %ts2 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts1) #8
  %0 = call ptr @memset(ptr %ts1, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts2) #8
  %1 = call ptr @memset(ptr %ts2, i32 255, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_scatter)
  %tobool.not = icmp eq i32 %max_scatter, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %max_seg_sz = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %max_seg_sz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_seg_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %3)
  %cmp = icmp ugt i32 %3, 4095
  %max_segs = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %max_segs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_segs, align 4
  %mul = shl i32 %5, 12
  %mul4 = mul i32 %5, %3
  %max_tfr.0 = select i1 %cmp, i32 %mul, i32 %mul4
  %6 = tail call i32 @llvm.umin.i32(i32 %max_tfr.0, i32 %sz)
  br label %if.end8

if.end8:                                          ; preds = %if.then, %entry.if.end8_crit_edge
  %sz.addr.1 = phi i32 [ %6, %if.then ], [ %sz, %entry.if.end8_crit_edge ]
  %call = tail call fastcc i32 @mmc_test_area_map(ptr noundef %test, i32 noundef %sz.addr.1, i32 noundef %max_scatter, i32 noundef %min_sg_len, i1 noundef zeroext %nonblock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timed)
  %tobool13.not = icmp eq i32 %timed, 0
  br i1 %tobool13.not, label %if.end12.if.end15_crit_edge, label %if.then14

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void @ktime_get_ts64(ptr noundef nonnull %ts1) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12.if.end15_crit_edge
  br i1 %nonblock, label %if.then17, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp2065 = icmp sgt i32 %count, 0
  br i1 %cmp2065, label %for.body.lr.ph, label %for.cond.preheader.if.end23_crit_edge

for.cond.preheader.if.end23_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sg.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 8
  %sg_len.i61 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 6
  %blocks.i62 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 5
  %shr = lshr i32 %sz.addr.1, 9
  br label %for.body

if.then17:                                        ; preds = %if.end15
  %sg1.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %sg1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sg1.i, align 4
  %sg_areq2.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 9
  %9 = ptrtoint ptr %sg_areq2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sg_areq2.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 404) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then17.mmc_test_req_alloc.exit.i_crit_edge, label %if.then.i.i

if.then17.mmc_test_req_alloc.exit.i_crit_edge:    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_req_alloc.exit.i

if.then.i.i:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %12 = call ptr @memset(ptr %call7.i.i.i, i32 0, i32 404)
  %cmd.i.i.i = getelementptr inbounds %struct.mmc_test_req, ptr %call7.i.i.i, i32 0, i32 2
  %cmd1.i.i.i = getelementptr inbounds %struct.mmc_request, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %cmd1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cmd.i.i.i, ptr %cmd1.i.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.mmc_test_req, ptr %call7.i.i.i, i32 0, i32 5
  %data3.i.i.i = getelementptr inbounds %struct.mmc_request, ptr %call7.i.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %data3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %data.i.i.i, ptr %data3.i.i.i, align 8
  %stop.i.i.i = getelementptr inbounds %struct.mmc_test_req, ptr %call7.i.i.i, i32 0, i32 3
  %stop5.i.i.i = getelementptr inbounds %struct.mmc_request, ptr %call7.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %stop5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %stop.i.i.i, ptr %stop5.i.i.i, align 4
  br label %mmc_test_req_alloc.exit.i

mmc_test_req_alloc.exit.i:                        ; preds = %if.then.i.i, %if.then17.mmc_test_req_alloc.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i41.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 404) #11
  %tobool.not.i42.i = icmp eq ptr %call7.i.i41.i, null
  br i1 %tobool.not.i42.i, label %mmc_test_req_alloc.exit.i.mmc_test_nonblock_transfer.exit_crit_edge, label %mmc_test_req_alloc.exit50.i

mmc_test_req_alloc.exit.i.mmc_test_nonblock_transfer.exit_crit_edge: ; preds = %mmc_test_req_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_nonblock_transfer.exit

mmc_test_req_alloc.exit50.i:                      ; preds = %mmc_test_req_alloc.exit.i
  %17 = call ptr @memset(ptr %call7.i.i41.i, i32 0, i32 404)
  %cmd.i.i43.i = getelementptr inbounds %struct.mmc_test_req, ptr %call7.i.i41.i, i32 0, i32 2
  %cmd1.i.i44.i = getelementptr inbounds %struct.mmc_request, ptr %call7.i.i41.i, i32 0, i32 1
  %18 = ptrtoint ptr %cmd1.i.i44.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cmd.i.i43.i, ptr %cmd1.i.i44.i, align 4
  %data.i.i45.i = getelementptr inbounds %struct.mmc_test_req, ptr %call7.i.i41.i, i32 0, i32 5
  %data3.i.i46.i = getelementptr inbounds %struct.mmc_request, ptr %call7.i.i41.i, i32 0, i32 2
  %19 = ptrtoint ptr %data3.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %data.i.i45.i, ptr %data3.i.i46.i, align 8
  %stop.i.i47.i = getelementptr inbounds %struct.mmc_test_req, ptr %call7.i.i41.i, i32 0, i32 3
  %stop5.i.i48.i = getelementptr inbounds %struct.mmc_request, ptr %call7.i.i41.i, i32 0, i32 3
  %20 = ptrtoint ptr %stop5.i.i48.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %stop.i.i47.i, ptr %stop5.i.i48.i, align 4
  br i1 %tobool.not.i.i, label %mmc_test_req_alloc.exit50.i.mmc_test_nonblock_transfer.exit_crit_edge, label %for.cond.preheader.i

mmc_test_req_alloc.exit50.i.mmc_test_nonblock_transfer.exit_crit_edge: ; preds = %mmc_test_req_alloc.exit50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_nonblock_transfer.exit

for.cond.preheader.i:                             ; preds = %mmc_test_req_alloc.exit50.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp53.i = icmp sgt i32 %count, 0
  br i1 %cmp53.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sg_len.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 6
  %blocks.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %dev_addr.addr.059.i = phi i32 [ %dev_addr, %for.body.lr.ph.i ], [ %add.i, %if.end9.i.for.body.i_crit_edge ]
  %mrq.058.i = phi ptr [ %call7.i.i.i, %for.body.lr.ph.i ], [ %spec.select.i, %if.end9.i.for.body.i_crit_edge ]
  %sg_areq.057.i = phi ptr [ %10, %for.body.lr.ph.i ], [ %sg.056.i, %if.end9.i.for.body.i_crit_edge ]
  %sg.056.i = phi ptr [ %8, %for.body.lr.ph.i ], [ %sg_areq.057.i, %if.end9.i.for.body.i_crit_edge ]
  %i.055.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end9.i.for.body.i_crit_edge ]
  %prev_mrq.054.i = phi ptr [ null, %for.body.lr.ph.i ], [ %mrq.058.i, %if.end9.i.for.body.i_crit_edge ]
  %21 = call ptr @memset(ptr %mrq.058.i, i32 0, i32 404)
  %cmd.i.i = getelementptr inbounds %struct.mmc_test_req, ptr %mrq.058.i, i32 0, i32 2
  %cmd1.i.i = getelementptr inbounds %struct.mmc_request, ptr %mrq.058.i, i32 0, i32 1
  %22 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %cmd.i.i, ptr %cmd1.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.mmc_test_req, ptr %mrq.058.i, i32 0, i32 5
  %data3.i.i = getelementptr inbounds %struct.mmc_request, ptr %mrq.058.i, i32 0, i32 2
  %23 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %data.i.i, ptr %data3.i.i, align 4
  %stop.i.i = getelementptr inbounds %struct.mmc_test_req, ptr %mrq.058.i, i32 0, i32 3
  %stop5.i.i = getelementptr inbounds %struct.mmc_request, ptr %mrq.058.i, i32 0, i32 3
  %24 = ptrtoint ptr %stop5.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %stop.i.i, ptr %stop5.i.i, align 4
  %25 = ptrtoint ptr %sg_len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sg_len.i, align 4
  %27 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %blocks.i, align 4
  call fastcc void @mmc_test_prepare_mrq(ptr noundef %test, ptr noundef %mrq.058.i, ptr noundef %sg.056.i, i32 noundef %26, i32 noundef %dev_addr.addr.059.i, i32 noundef %28, i32 noundef 512, i32 noundef %write) #8
  %call6.i = call fastcc i32 @mmc_test_start_areq(ptr noundef %test, ptr noundef %mrq.058.i, ptr noundef %prev_mrq.054.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %for.body.i.mmc_test_nonblock_transfer.exit_crit_edge

for.body.i.mmc_test_nonblock_transfer.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_nonblock_transfer.exit

if.end9.i:                                        ; preds = %for.body.i
  %tobool10.not.i = icmp eq ptr %prev_mrq.054.i, null
  %spec.select.i = select i1 %tobool10.not.i, ptr %call7.i.i41.i, ptr %prev_mrq.054.i
  %29 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blocks.i, align 4
  %add.i = add i32 %30, %dev_addr.addr.059.i
  %inc.i = add nuw nsw i32 %i.055.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %count
  br i1 %exitcond.not.i, label %if.end9.i.for.end.i_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end9.i.for.end.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.end9.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %prev_mrq.0.lcssa.i = phi ptr [ null, %for.cond.preheader.i.for.end.i_crit_edge ], [ %mrq.058.i, %if.end9.i.for.end.i_crit_edge ]
  %call19.i = call fastcc i32 @mmc_test_start_areq(ptr noundef %test, ptr noundef null, ptr noundef %prev_mrq.0.lcssa.i) #8
  br label %mmc_test_nonblock_transfer.exit

mmc_test_nonblock_transfer.exit:                  ; preds = %for.end.i, %for.body.i.mmc_test_nonblock_transfer.exit_crit_edge, %mmc_test_req_alloc.exit50.i.mmc_test_nonblock_transfer.exit_crit_edge, %mmc_test_req_alloc.exit.i.mmc_test_nonblock_transfer.exit_crit_edge
  %ret.0.i = phi i32 [ %call19.i, %for.end.i ], [ 1, %mmc_test_req_alloc.exit50.i.mmc_test_nonblock_transfer.exit_crit_edge ], [ 1, %mmc_test_req_alloc.exit.i.mmc_test_nonblock_transfer.exit_crit_edge ], [ %call6.i, %for.body.i.mmc_test_nonblock_transfer.exit_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i.i) #8
  call void @kfree(ptr noundef %call7.i.i41.i) #8
  br label %if.end23

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.067 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %dev_addr.addr.066 = phi i32 [ %dev_addr, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %31 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sg.i, align 4
  %33 = ptrtoint ptr %sg_len.i61 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sg_len.i61, align 4
  %35 = ptrtoint ptr %blocks.i62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blocks.i62, align 4
  %call.i = call fastcc i32 @mmc_test_simple_transfer(ptr noundef %test, ptr noundef %32, i32 noundef %34, i32 noundef %dev_addr.addr.066, i32 noundef %36, i32 noundef 512, i32 noundef %write) #8
  %add = add i32 %dev_addr.addr.066, %shr
  %inc = add nuw nsw i32 %i.067, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %count)
  %cmp20 = icmp slt i32 %inc, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp21 = icmp eq i32 %call.i, 0
  %or.cond = select i1 %cmp20, i1 %cmp21, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.body.if.end23_crit_edge

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end23:                                         ; preds = %for.body.if.end23_crit_edge, %mmc_test_nonblock_transfer.exit, %for.cond.preheader.if.end23_crit_edge
  %ret.1 = phi i32 [ %ret.0.i, %mmc_test_nonblock_transfer.exit ], [ 0, %for.cond.preheader.if.end23_crit_edge ], [ %call.i, %for.body.if.end23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool24.not = icmp ne i32 %ret.1, 0
  %brmerge = or i1 %tobool13.not, %tobool24.not
  br i1 %brmerge, label %if.end23.cleanup_crit_edge, label %if.then28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  call void @ktime_get_ts64(ptr noundef nonnull %ts2) #8
  %conv = zext i32 %sz.addr.1 to i64
  call fastcc void @mmc_test_print_avg_rate(ptr noundef %test, i64 noundef %conv, i32 noundef %count, ptr noundef nonnull %ts1, ptr noundef nonnull %ts2)
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end23.cleanup_crit_edge, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end8.cleanup_crit_edge ], [ %ret.1, %if.end23.cleanup_crit_edge ], [ 0, %if.then28 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts1) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_area_map(ptr noundef %test, i32 noundef %sz, i32 noundef %max_scatter, i32 noundef %min_sg_len, i1 noundef zeroext %nonblock) unnamed_addr #1 align 64 {
entry:
  %sg_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg_len) #8
  %0 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sg_len, align 4
  %shr = lshr i32 %sz, 9
  %blocks = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 5
  %1 = ptrtoint ptr %blocks to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shr, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_scatter)
  %tobool.not = icmp eq i32 %max_scatter, 0
  %mem2 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %mem2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mem2, align 4
  %sg3 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %sg3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sg3, align 4
  %max_segs4 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %max_segs4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_segs4, align 4
  %max_seg_sz5 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 4
  %8 = ptrtoint ptr %max_seg_sz5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_seg_sz5, align 4
  %sg_len6 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 6
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %call7 = tail call fastcc i32 @mmc_test_map_sg(ptr noundef %3, i32 noundef %sz, ptr noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef %sg_len6, i32 noundef %min_sg_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %10 = and i1 %tobool8.not, %nonblock
  br i1 %10, label %if.else18, label %if.end.err29_crit_edge

if.end.err29_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err29

if.end.thread:                                    ; preds = %entry
  %call = tail call fastcc i32 @mmc_test_map_sg_max_scatter(ptr noundef %3, i32 noundef %sz, ptr noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef %sg_len6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not65 = icmp eq i32 %call, 0
  %11 = and i1 %tobool8.not65, %nonblock
  br i1 %11, label %if.then13, label %if.end.thread.err29_crit_edge

if.end.thread.err29_crit_edge:                    ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %err29

if.then13:                                        ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %mem2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mem2, align 4
  %sg_areq = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 9
  %14 = ptrtoint ptr %sg_areq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sg_areq, align 4
  %16 = ptrtoint ptr %max_segs4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_segs4, align 4
  %18 = ptrtoint ptr %max_seg_sz5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_seg_sz5, align 4
  %call17 = call fastcc i32 @mmc_test_map_sg_max_scatter(ptr noundef %13, i32 noundef %sz, ptr noundef %15, i32 noundef %17, i32 noundef %19, ptr noundef nonnull %sg_len)
  br label %if.end24

if.else18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %mem2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mem2, align 4
  %sg_areq20 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 9
  %22 = ptrtoint ptr %sg_areq20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sg_areq20, align 4
  %24 = ptrtoint ptr %max_segs4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_segs4, align 4
  %26 = ptrtoint ptr %max_seg_sz5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_seg_sz5, align 4
  %call23 = call fastcc i32 @mmc_test_map_sg(ptr noundef %21, i32 noundef %sz, ptr noundef %23, i32 noundef %25, i32 noundef %27, ptr noundef nonnull %sg_len, i32 noundef %min_sg_len)
  br label %if.end24

if.end24:                                         ; preds = %if.else18, %if.then13
  %err.1 = phi i32 [ %call17, %if.then13 ], [ %call23, %if.else18 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool25.not = icmp eq i32 %err.1, 0
  br i1 %tobool25.not, label %land.lhs.true, label %if.end24.do.end_crit_edge

if.end24.do.end_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %if.end24
  %28 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sg_len, align 4
  %sg_len26 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 6
  %30 = ptrtoint ptr %sg_len26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sg_len26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.not = icmp eq i32 %29, %31
  br i1 %cmp.not, label %land.lhs.true.if.end34_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

err29:                                            ; preds = %if.end.thread.err29_crit_edge, %if.end.err29_crit_edge
  %err.2 = phi i32 [ %call7, %if.end.err29_crit_edge ], [ %call, %if.end.thread.err29_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool30.not = icmp eq i32 %err.2, 0
  br i1 %tobool30.not, label %err29.if.end34_crit_edge, label %err29.do.end_crit_edge

err29.do.end_crit_edge:                           ; preds = %err29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

err29.if.end34_crit_edge:                         ; preds = %err29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

do.end:                                           ; preds = %err29.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end24.do.end_crit_edge
  %err.272 = phi i32 [ %err.2, %err29.do.end_crit_edge ], [ -22, %land.lhs.true.do.end_crit_edge ], [ %err.1, %if.end24.do.end_crit_edge ]
  %32 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %test, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %35, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %39, %if.end.i ], [ %37, %do.end.dev_name.exit_crit_edge ]
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %retval.0.i) #12
  br label %if.end34

if.end34:                                         ; preds = %dev_name.exit, %err29.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge
  %err.273 = phi i32 [ %err.272, %dev_name.exit ], [ 0, %err29.if.end34_crit_edge ], [ 0, %land.lhs.true.if.end34_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg_len) #8
  ret i32 %err.273
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_test_print_avg_rate(ptr nocapture noundef readonly %test, i64 noundef %bytes, i32 noundef %count, ptr nocapture noundef readonly %ts1, ptr nocapture noundef readonly %ts2) unnamed_addr #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i64 %bytes, 9
  %conv = trunc i64 %shr to i32
  %conv1 = zext i32 %count to i64
  %mul = mul i64 %conv1, %bytes
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #8
  %0 = ptrtoint ptr %ts2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %.unpack = load i64, ptr %ts2, align 8
  %.elt25 = getelementptr inbounds [2 x i64], ptr %ts2, i32 0, i32 1
  %1 = ptrtoint ptr %.elt25 to i32
  call void @__asan_load8_noabort(i32 %1)
  %.unpack26 = load i64, ptr %.elt25, align 8
  %2 = ptrtoint ptr %ts1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %.unpack27 = load i64, ptr %ts1, align 8
  %.elt28 = getelementptr inbounds [2 x i64], ptr %ts1, i32 0, i32 1
  %3 = ptrtoint ptr %.elt28 to i32
  call void @__asan_load8_noabort(i32 %3)
  %.unpack29 = load i64, ptr %.elt28, align 8
  %lhs.sroa.2.8.extract.shift.i = lshr i64 %.unpack26, 32
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %lhs.sroa.2.8.extract.shift.i to i32
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %.unpack29, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %4 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %sub.i = sub i64 %.unpack, %.unpack27
  %sub3.i = sub i32 %lhs.sroa.2.8.extract.trunc.i, %rhs.sroa.2.8.extract.trunc.i
  %conv.i = sext i32 %sub3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp, i64 noundef %sub.i, i64 noundef %conv.i) #8
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %5)
  %ts.sroa.0.0.copyload189 = load i64, ptr %tmp, align 8
  %ts.sroa.8.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %6 = ptrtoint ptr %ts.sroa.8.0.tmp.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %6)
  %ts.sroa.8.0.copyload190 = load i64, ptr %ts.sroa.8.0.tmp.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %ts.sroa.0.0.copyload189)
  %cmp.i.i = icmp sgt i64 %ts.sroa.0.0.copyload189, 9223372035
  br i1 %cmp.i.i, label %entry.timespec64_to_ns.exit.thread.i_crit_edge, label %if.end.i.i

entry.timespec64_to_ns.exit.thread.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %timespec64_to_ns.exit.thread.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %ts.sroa.0.0.copyload189)
  %cmp2.i.i = icmp slt i64 %ts.sroa.0.0.copyload189, -9223372035
  br i1 %cmp2.i.i, label %if.end.i.i.timespec64_to_ns.exit.thread.i_crit_edge, label %timespec64_to_ns.exit.i

if.end.i.i.timespec64_to_ns.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %timespec64_to_ns.exit.thread.i

timespec64_to_ns.exit.thread.i:                   ; preds = %if.end.i.i.timespec64_to_ns.exit.thread.i_crit_edge, %entry.timespec64_to_ns.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i64 [ -9223372036854775808, %if.end.i.i.timespec64_to_ns.exit.thread.i_crit_edge ], [ 9223372036854775807, %entry.timespec64_to_ns.exit.thread.i_crit_edge ]
  %mul309.i = mul i64 %mul, 1000000000
  br label %while.body.i.preheader

timespec64_to_ns.exit.i:                          ; preds = %if.end.i.i
  %mul.i.i = mul nsw i64 %ts.sroa.0.0.copyload189, 1000000000
  %conv.i.i = ashr i64 %ts.sroa.8.0.copyload190, 32
  %add.i.i = add i64 %conv.i.i, %mul.i.i
  %mul.i = mul i64 %mul, 1000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add.i.i)
  %cmp304.i = icmp ugt i64 %add.i.i, 4294967295
  br i1 %cmp304.i, label %timespec64_to_ns.exit.i.while.body.i.preheader_crit_edge, label %timespec64_to_ns.exit.i.while.end.i_crit_edge

timespec64_to_ns.exit.i.while.end.i_crit_edge:    ; preds = %timespec64_to_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

timespec64_to_ns.exit.i.while.body.i.preheader_crit_edge: ; preds = %timespec64_to_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %timespec64_to_ns.exit.i.while.body.i.preheader_crit_edge, %timespec64_to_ns.exit.thread.i
  %ns.0306.i.ph = phi i64 [ %add.i.i, %timespec64_to_ns.exit.i.while.body.i.preheader_crit_edge ], [ %retval.0.i.ph.i, %timespec64_to_ns.exit.thread.i ]
  %bytes.addr.0305.i.ph = phi i64 [ %mul.i, %timespec64_to_ns.exit.i.while.body.i.preheader_crit_edge ], [ %mul309.i, %timespec64_to_ns.exit.thread.i ]
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %ns.0306.i = phi i64 [ %shr1.i, %while.body.i.while.body.i_crit_edge ], [ %ns.0306.i.ph, %while.body.i.preheader ]
  %bytes.addr.0305.i = phi i64 [ %shr.i, %while.body.i.while.body.i_crit_edge ], [ %bytes.addr.0305.i.ph, %while.body.i.preheader ]
  %shr.i = lshr i64 %bytes.addr.0305.i, 1
  %shr1.i = lshr i64 %ns.0306.i, 1
  %cmp.i = icmp ugt i64 %ns.0306.i, 8589934591
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %timespec64_to_ns.exit.i.while.end.i_crit_edge
  %bytes.addr.0.lcssa.i = phi i64 [ %mul.i, %timespec64_to_ns.exit.i.while.end.i_crit_edge ], [ %shr.i, %while.body.i.while.end.i_crit_edge ]
  %ns.0.lcssa.i = phi i64 [ %add.i.i, %timespec64_to_ns.exit.i.while.end.i_crit_edge ], [ %shr1.i, %while.body.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ns.0.lcssa.i)
  %tobool.not.i = icmp eq i64 %ns.0.lcssa.i, 0
  br i1 %tobool.not.i, label %while.end.i.mmc_test_rate.exit_crit_edge, label %if.end.i

while.end.i.mmc_test_rate.exit_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rate.exit

if.end.i:                                         ; preds = %while.end.i
  %conv.i31 = trunc i64 %ns.0.lcssa.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %bytes.addr.0.lcssa.i)
  %cmp174.i = icmp ult i64 %bytes.addr.0.lcssa.i, 4294967296
  br i1 %cmp174.i, label %if.then178.i, label %if.else184.i, !prof !256

if.then178.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv179.i = trunc i64 %bytes.addr.0.lcssa.i to i32
  %div182.i = udiv i32 %conv179.i, %conv.i31
  br label %mmc_test_rate.exit

if.else184.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i31, i64 %bytes.addr.0.lcssa.i) #14, !srcloc !264
  %asmresult1.i.i = extractvalue { i64, i64 } %7, 1
  %extract.t303.i = trunc i64 %asmresult1.i.i to i32
  br label %mmc_test_rate.exit

mmc_test_rate.exit:                               ; preds = %if.else184.i, %if.then178.i, %while.end.i.mmc_test_rate.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %while.end.i.mmc_test_rate.exit_crit_edge ], [ %div182.i, %if.then178.i ], [ %extract.t303.i, %if.else184.i ]
  %mul2 = mul i32 %count, 100
  %conv3 = zext i32 %mul2 to i64
  br i1 %cmp.i.i, label %mmc_test_rate.exit.timespec64_to_ns.exit.thread.i37_crit_edge, label %if.end.i.i34

mmc_test_rate.exit.timespec64_to_ns.exit.thread.i37_crit_edge: ; preds = %mmc_test_rate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %timespec64_to_ns.exit.thread.i37

if.end.i.i34:                                     ; preds = %mmc_test_rate.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %ts.sroa.0.0.copyload189)
  %cmp2.i.i33 = icmp slt i64 %ts.sroa.0.0.copyload189, -9223372035
  br i1 %cmp2.i.i33, label %if.end.i.i34.timespec64_to_ns.exit.thread.i37_crit_edge, label %timespec64_to_ns.exit.i44

if.end.i.i34.timespec64_to_ns.exit.thread.i37_crit_edge: ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %timespec64_to_ns.exit.thread.i37

timespec64_to_ns.exit.thread.i37:                 ; preds = %if.end.i.i34.timespec64_to_ns.exit.thread.i37_crit_edge, %mmc_test_rate.exit.timespec64_to_ns.exit.thread.i37_crit_edge
  %retval.0.i.ph.i35 = phi i64 [ -9223372036854775808, %if.end.i.i34.timespec64_to_ns.exit.thread.i37_crit_edge ], [ 9223372036854775807, %mmc_test_rate.exit.timespec64_to_ns.exit.thread.i37_crit_edge ]
  %mul309.i36 = mul nuw nsw i64 %conv3, 1000000000
  br label %while.body.i53.preheader

timespec64_to_ns.exit.i44:                        ; preds = %if.end.i.i34
  %mul.i.i38 = mul nsw i64 %ts.sroa.0.0.copyload189, 1000000000
  %conv.i.i40 = ashr i64 %ts.sroa.8.0.copyload190, 32
  %add.i.i41 = add i64 %conv.i.i40, %mul.i.i38
  %mul.i42 = mul nuw nsw i64 %conv3, 1000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add.i.i41)
  %cmp304.i43 = icmp ugt i64 %add.i.i41, 4294967295
  br i1 %cmp304.i43, label %timespec64_to_ns.exit.i44.while.body.i53.preheader_crit_edge, label %timespec64_to_ns.exit.i44.while.end.i57_crit_edge

timespec64_to_ns.exit.i44.while.end.i57_crit_edge: ; preds = %timespec64_to_ns.exit.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i57

timespec64_to_ns.exit.i44.while.body.i53.preheader_crit_edge: ; preds = %timespec64_to_ns.exit.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i53.preheader

while.body.i53.preheader:                         ; preds = %timespec64_to_ns.exit.i44.while.body.i53.preheader_crit_edge, %timespec64_to_ns.exit.thread.i37
  %ns.0306.i48.ph = phi i64 [ %add.i.i41, %timespec64_to_ns.exit.i44.while.body.i53.preheader_crit_edge ], [ %retval.0.i.ph.i35, %timespec64_to_ns.exit.thread.i37 ]
  %bytes.addr.0305.i49.ph = phi i64 [ %mul.i42, %timespec64_to_ns.exit.i44.while.body.i53.preheader_crit_edge ], [ %mul309.i36, %timespec64_to_ns.exit.thread.i37 ]
  br label %while.body.i53

while.body.i53:                                   ; preds = %while.body.i53.while.body.i53_crit_edge, %while.body.i53.preheader
  %ns.0306.i48 = phi i64 [ %shr1.i51, %while.body.i53.while.body.i53_crit_edge ], [ %ns.0306.i48.ph, %while.body.i53.preheader ]
  %bytes.addr.0305.i49 = phi i64 [ %shr.i50, %while.body.i53.while.body.i53_crit_edge ], [ %bytes.addr.0305.i49.ph, %while.body.i53.preheader ]
  %shr.i50 = lshr i64 %bytes.addr.0305.i49, 1
  %shr1.i51 = lshr i64 %ns.0306.i48, 1
  %cmp.i52 = icmp ugt i64 %ns.0306.i48, 8589934591
  br i1 %cmp.i52, label %while.body.i53.while.body.i53_crit_edge, label %while.body.i53.while.end.i57_crit_edge

while.body.i53.while.end.i57_crit_edge:           ; preds = %while.body.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i57

while.body.i53.while.body.i53_crit_edge:          ; preds = %while.body.i53
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i53

while.end.i57:                                    ; preds = %while.body.i53.while.end.i57_crit_edge, %timespec64_to_ns.exit.i44.while.end.i57_crit_edge
  %bytes.addr.0.lcssa.i54 = phi i64 [ %mul.i42, %timespec64_to_ns.exit.i44.while.end.i57_crit_edge ], [ %shr.i50, %while.body.i53.while.end.i57_crit_edge ]
  %ns.0.lcssa.i55 = phi i64 [ %add.i.i41, %timespec64_to_ns.exit.i44.while.end.i57_crit_edge ], [ %shr1.i51, %while.body.i53.while.end.i57_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ns.0.lcssa.i55)
  %tobool.not.i56 = icmp eq i64 %ns.0.lcssa.i55, 0
  br i1 %tobool.not.i56, label %while.end.i57.mmc_test_rate.exit181_crit_edge, label %if.end.i59

while.end.i57.mmc_test_rate.exit181_crit_edge:    ; preds = %while.end.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rate.exit181

if.end.i59:                                       ; preds = %while.end.i57
  %conv.i58 = trunc i64 %ns.0.lcssa.i55 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %bytes.addr.0.lcssa.i54)
  %cmp174.i172 = icmp ult i64 %bytes.addr.0.lcssa.i54, 4294967296
  br i1 %cmp174.i172, label %if.then178.i176, label %if.else184.i179, !prof !256

if.then178.i176:                                  ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #10
  %conv179.i174 = trunc i64 %bytes.addr.0.lcssa.i54 to i32
  %div182.i175 = udiv i32 %conv179.i174, %conv.i58
  br label %mmc_test_rate.exit181

if.else184.i179:                                  ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i58, i64 %bytes.addr.0.lcssa.i54) #14, !srcloc !264
  %asmresult1.i.i177 = extractvalue { i64, i64 } %8, 1
  %extract.t303.i178 = trunc i64 %asmresult1.i.i177 to i32
  br label %mmc_test_rate.exit181

mmc_test_rate.exit181:                            ; preds = %if.else184.i179, %if.then178.i176, %while.end.i57.mmc_test_rate.exit181_crit_edge
  %retval.0.i180 = phi i32 [ 0, %while.end.i57.mmc_test_rate.exit181_crit_edge ], [ %div182.i175, %if.then178.i176 ], [ %extract.t303.i178, %if.else184.i179 ]
  %9 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %test, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i182 = icmp eq ptr %14, null
  br i1 %tobool.not.i182, label %if.end.i183, label %mmc_test_rate.exit181.dev_name.exit_crit_edge

mmc_test_rate.exit181.dev_name.exit_crit_edge:    ; preds = %mmc_test_rate.exit181
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i183:                                      ; preds = %mmc_test_rate.exit181
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i183, %mmc_test_rate.exit181.dev_name.exit_crit_edge
  %retval.0.i184 = phi ptr [ %16, %if.end.i183 ], [ %14, %mmc_test_rate.exit181.dev_name.exit_crit_edge ]
  %shr7 = lshr i32 %conv, 1
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.99, ptr @.str.98
  %ts.sroa.8.8.extract.shift = lshr i64 %ts.sroa.8.0.copyload190, 32
  %ts.sroa.8.8.extract.trunc = trunc i64 %ts.sroa.8.8.extract.shift to i32
  %div = udiv i32 %retval.0.i, 1000
  %div830 = lshr i32 %retval.0.i, 10
  %retval.0.i180.frozen = freeze i32 %retval.0.i180
  %div9 = udiv i32 %retval.0.i180.frozen, 100
  %17 = mul i32 %div9, 100
  %rem.decomposed = sub i32 %retval.0.i180.frozen, %17
  %sg_len = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 6
  %18 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sg_len, align 4
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %retval.0.i184, i32 noundef %count, i32 noundef %conv, i32 noundef %count, i32 noundef %shr7, ptr noundef nonnull %cond, i64 noundef %ts.sroa.0.0.copyload189, i32 noundef %ts.sroa.8.8.extract.trunc, i32 noundef %div, i32 noundef %div830, i32 noundef %div9, i32 noundef %rem.decomposed, i32 noundef %19) #12
  %gr.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 5
  %20 = ptrtoint ptr %gr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gr.i, align 4
  %tobool.not.i185 = icmp eq ptr %21, null
  br i1 %tobool.not.i185, label %dev_name.exit.mmc_test_save_transfer_result.exit_crit_edge, label %if.end.i186

dev_name.exit.mmc_test_save_transfer_result.exit_crit_edge: ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_save_transfer_result.exit

if.end.i186:                                      ; preds = %dev_name.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 40) #11
  %tobool1.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not.i, label %if.end.i186.mmc_test_save_transfer_result.exit_crit_edge, label %if.end3.i

if.end.i186.mmc_test_save_transfer_result.exit_crit_edge: ; preds = %if.end.i186
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_save_transfer_result.exit

if.end3.i:                                        ; preds = %if.end.i186
  %count4.i = getelementptr inbounds %struct.mmc_test_transfer_result, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %count4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %count, ptr %count4.i, align 8
  %sectors5.i = getelementptr inbounds %struct.mmc_test_transfer_result, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %sectors5.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %sectors5.i, align 4
  %ts6.i = getelementptr inbounds %struct.mmc_test_transfer_result, ptr %call7.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %ts6.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %ts.sroa.0.0.copyload189, ptr %ts6.i, align 8
  %ts.sroa.2.0.ts6.sroa_idx.i = getelementptr inbounds %struct.mmc_test_transfer_result, ptr %call7.i.i, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %ts.sroa.2.0.ts6.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %ts.sroa.8.0.copyload190, ptr %ts.sroa.2.0.ts6.sroa_idx.i, align 8
  %rate7.i = getelementptr inbounds %struct.mmc_test_transfer_result, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %rate7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i, ptr %rate7.i, align 8
  %iops8.i = getelementptr inbounds %struct.mmc_test_transfer_result, ptr %call7.i.i, i32 0, i32 5
  %28 = ptrtoint ptr %iops8.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i180, ptr %iops8.i, align 4
  %29 = ptrtoint ptr %gr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gr.i, align 4
  %tr_lst.i = getelementptr inbounds %struct.mmc_test_general_result, ptr %30, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.mmc_test_general_result, ptr %30, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %32, ptr noundef %tr_lst.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.mmc_test_save_transfer_result.exit_crit_edge

if.end3.i.mmc_test_save_transfer_result.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_save_transfer_result.exit

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tr_lst.i, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %call7.i.i, ptr %32, align 4
  br label %mmc_test_save_transfer_result.exit

mmc_test_save_transfer_result.exit:               ; preds = %if.end.i.i.i, %if.end3.i.mmc_test_save_transfer_result.exit_crit_edge, %if.end.i186.mmc_test_save_transfer_result.exit_crit_edge, %dev_name.exit.mmc_test_save_transfer_result.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_map_sg_max_scatter(ptr nocapture noundef readonly %mem, i32 noundef %sz, ptr noundef %sglist, i32 noundef %max_segs, i32 noundef %max_seg_sz, ptr nocapture noundef %sg_len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cnt = getelementptr inbounds %struct.mmc_test_mem, ptr %mem, i32 0, i32 1
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cnt, align 4
  tail call void @sg_init_table(ptr noundef %sglist, i32 noundef %max_segs) #8
  %2 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz)
  %tobool.not79 = icmp eq i32 %sz, 0
  br i1 %tobool.not79, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %if.end31.while.body_crit_edge, %entry.while.body_crit_edge
  %last_addr.083 = phi ptr [ %last_addr.1.ph130, %if.end31.while.body_crit_edge ], [ null, %entry.while.body_crit_edge ]
  %i.082 = phi i32 [ %i.1, %if.end31.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %sg.081 = phi ptr [ %sg.1.ph135, %if.end31.while.body_crit_edge ], [ null, %entry.while.body_crit_edge ]
  %sz.addr.080 = phi i32 [ %sz.addr.1.ph.fr125, %if.end31.while.body_crit_edge ], [ %sz, %entry.while.body_crit_edge ]
  %3 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mem, align 4
  %dec = add i32 %i.082, -1
  %arrayidx = getelementptr %struct.mmc_test_pages, ptr %4, i32 %dec
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call = tail call ptr @page_address(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sz.addr.080)
  %tobool5.not137 = icmp eq i32 %sz.addr.080, 0
  br i1 %tobool5.not137, label %while.body.while.end.split_crit_edge, label %while.cond4.preheader.lr.ph

while.body.while.end.split_crit_edge:             ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.split

while.cond4.preheader.lr.ph:                      ; preds = %while.body
  %7 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem, align 4
  %order = getelementptr %struct.mmc_test_pages, ptr %8, i32 %dec, i32 1
  %9 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %order, align 4
  %shl = shl nuw i32 1, %10
  br label %while.cond4.preheader

while.cond4.preheader:                            ; preds = %sg_set_page.exit.while.cond4.preheader_crit_edge, %while.cond4.preheader.lr.ph
  %sz.addr.1.ph.fr143 = phi i32 [ %sz.addr.080, %while.cond4.preheader.lr.ph ], [ %sz.addr.1.ph.fr, %sg_set_page.exit.while.cond4.preheader_crit_edge ]
  %last_addr.1.ph142 = phi ptr [ %last_addr.083, %while.cond4.preheader.lr.ph ], [ %add.ptr, %sg_set_page.exit.while.cond4.preheader_crit_edge ]
  %cnt1.0.ph141 = phi i32 [ %shl, %while.cond4.preheader.lr.ph ], [ %dec8, %sg_set_page.exit.while.cond4.preheader_crit_edge ]
  %sg.1.ph140 = phi ptr [ %sg.081, %while.cond4.preheader.lr.ph ], [ %sg.2, %sg_set_page.exit.while.cond4.preheader_crit_edge ]
  %tobool9.not144 = icmp ne ptr %last_addr.1.ph142, null
  %add.ptr10145 = getelementptr i8, ptr %last_addr.1.ph142, i32 4096
  br label %while.cond4

while.cond4:                                      ; preds = %while.body7.while.cond4_crit_edge, %while.cond4.preheader
  %cnt1.0 = phi i32 [ %dec8, %while.body7.while.cond4_crit_edge ], [ %cnt1.0.ph141, %while.cond4.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt1.0)
  %tobool6.not = icmp eq i32 %cnt1.0, 0
  br i1 %tobool6.not, label %while.cond4.while.end.split_crit_edge, label %while.body7

while.cond4.while.end.split_crit_edge:            ; preds = %while.cond4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.split

while.body7:                                      ; preds = %while.cond4
  %dec8 = add i32 %cnt1.0, -1
  %mul = shl i32 %dec8, 12
  %add.ptr = getelementptr i8, ptr %call, i32 %mul
  %cmp = icmp eq ptr %add.ptr10145, %add.ptr
  %or.cond66 = select i1 %tobool9.not144, i1 %cmp, i1 false
  br i1 %or.cond66, label %while.body7.while.cond4_crit_edge, label %if.end

while.body7.while.cond4_crit_edge:                ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond4

if.end:                                           ; preds = %while.body7
  %11 = tail call i32 @llvm.umin.i32(i32 %max_seg_sz, i32 %sz.addr.1.ph.fr143)
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 4096)
  %tobool17.not = icmp eq ptr %sg.1.ph140, null
  br i1 %tobool17.not, label %if.end.if.end20_crit_edge, label %if.then18

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call ptr @sg_next(ptr noundef nonnull %sg.1.ph140) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end.if.end20_crit_edge
  %sg.2 = phi ptr [ %call19, %if.then18 ], [ %sglist, %if.end.if.end20_crit_edge ]
  %tobool21.not = icmp eq ptr %sg.2, null
  br i1 %tobool21.not, label %if.end20.cleanup_crit_edge, label %if.end23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %add.ptr to i32
  %sub = add i32 %14, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr25 = getelementptr %struct.page, ptr %13, i32 %shr
  %15 = ptrtoint ptr %sg.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sg.2, align 4
  %17 = ptrtoint ptr %add.ptr25 to i32
  %and2.i.i = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !256

do.body5.i.i:                                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !257
  unreachable

do.body11.i.i:                                    ; preds = %if.end23
  %and.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !256

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !258
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %16, 3
  %or.i.i = or i32 %and.i.i, %17
  %18 = ptrtoint ptr %sg.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i.i, ptr %sg.2, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg.2, i32 0, i32 1
  %19 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.2, i32 0, i32 2
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %12, ptr %length.i, align 4
  %sub26 = sub i32 %sz.addr.1.ph.fr143, %12
  %21 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sg_len, align 4
  %add27 = add i32 %22, 1
  store i32 %add27, ptr %sg_len, align 4
  %sz.addr.1.ph.fr = freeze i32 %sub26
  %tobool5.not = icmp eq i32 %sz.addr.1.ph.fr, 0
  br i1 %tobool5.not, label %while.end.split.loopexit148, label %sg_set_page.exit.while.cond4.preheader_crit_edge

sg_set_page.exit.while.cond4.preheader_crit_edge: ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond4.preheader

while.end.split.loopexit148:                      ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sz.addr.1.ph.fr.le = freeze i32 %sub26
  br label %while.end.split

while.end.split:                                  ; preds = %while.end.split.loopexit148, %while.cond4.while.end.split_crit_edge, %while.body.while.end.split_crit_edge
  %sg.1.ph135 = phi ptr [ %sg.081, %while.body.while.end.split_crit_edge ], [ %sg.2, %while.end.split.loopexit148 ], [ %sg.1.ph140, %while.cond4.while.end.split_crit_edge ]
  %last_addr.1.ph130 = phi ptr [ %last_addr.083, %while.body.while.end.split_crit_edge ], [ %add.ptr, %while.end.split.loopexit148 ], [ %last_addr.1.ph142, %while.cond4.while.end.split_crit_edge ]
  %sz.addr.1.ph.fr125 = phi i32 [ %sz.addr.080, %while.body.while.end.split_crit_edge ], [ %sz.addr.1.ph.fr.le, %while.end.split.loopexit148 ], [ %sz.addr.1.ph.fr143, %while.cond4.while.end.split_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp28 = icmp eq i32 %dec, 0
  br i1 %cmp28, label %if.then29, label %while.end.split.if.end31_crit_edge

while.end.split.if.end31_crit_edge:               ; preds = %while.end.split
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then29:                                        ; preds = %while.end.split
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cnt, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %while.end.split.if.end31_crit_edge
  %i.1 = phi i32 [ %24, %if.then29 ], [ %dec, %while.end.split.if.end31_crit_edge ]
  %tobool.not = icmp eq i32 %sz.addr.1.ph.fr125, 0
  br i1 %tobool.not, label %while.end32, label %if.end31.while.body_crit_edge

if.end31.while.body_crit_edge:                    ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end32:                                      ; preds = %if.end31
  %tobool33.not = icmp eq ptr %sg.1.ph135, null
  br i1 %tobool33.not, label %while.end32.cleanup_crit_edge, label %if.then34

while.end32.cleanup_crit_edge:                    ; preds = %while.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then34:                                        ; preds = %while.end32
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %sg.1.ph135 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sg.1.ph135, align 4
  %or.i = and i32 %26, -4
  %and.i = or i32 %or.i, 2
  store i32 %and.i, ptr %sg.1.ph135, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %while.end32.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then34 ], [ 0, %while.end32.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_map_sg(ptr nocapture noundef readonly %mem, i32 noundef %size, ptr noundef %sglist, i32 noundef %max_segs, i32 noundef %max_seg_sz, ptr nocapture noundef %sg_len, i32 noundef %min_sg_len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sg_init_table(ptr noundef %sglist, i32 noundef %max_segs) #8
  %0 = tail call i32 @llvm.umin.i32(i32 %min_sg_len, i32 %max_segs)
  %1 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %sg_len, align 4
  %cnt = getelementptr inbounds %struct.mmc_test_mem, ptr %mem, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %sg.0 = phi ptr [ null, %entry ], [ %sg.1.lcssa, %do.cond.do.body_crit_edge ]
  %sz.0 = phi i32 [ %size, %entry ], [ %sz.1.lcssa, %do.cond.do.body_crit_edge ]
  %2 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp126.not = icmp eq i32 %3, 0
  br i1 %cmp126.not, label %do.body.do.cond_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

for.cond:                                         ; preds = %sg_set_page.exit
  %inc = add nuw i32 %i.028, 1
  %4 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cnt, align 4
  %cmp1 = icmp ult i32 %inc, %5
  br i1 %cmp1, label %for.cond.for.body_crit_edge, label %for.cond.do.cond_crit_edge

for.cond.do.cond_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %do.body.for.body_crit_edge
  %sz.129 = phi i32 [ %sub, %for.cond.for.body_crit_edge ], [ %sz.0, %do.body.for.body_crit_edge ]
  %i.028 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %sg.127 = phi ptr [ %sg.2, %for.cond.for.body_crit_edge ], [ %sg.0, %do.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem, align 4
  %order = getelementptr %struct.mmc_test_pages, ptr %7, i32 %i.028, i32 1
  %8 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %order, align 4
  %shl = shl i32 4096, %9
  br i1 %tobool.not, label %for.body.if.end5_crit_edge, label %land.lhs.true

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true:                                    ; preds = %for.body
  %div = udiv i32 %size, %0
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %shl)
  %cmp2 = icmp ult i32 %div, %shl
  br i1 %cmp2, label %if.then3, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %add = add i32 %div, 511
  %and = and i32 %add, -512
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %land.lhs.true.if.end5_crit_edge, %for.body.if.end5_crit_edge
  %len.0 = phi i32 [ %and, %if.then3 ], [ %shl, %land.lhs.true.if.end5_crit_edge ], [ %shl, %for.body.if.end5_crit_edge ]
  %10 = tail call i32 @llvm.umin.i32(i32 %len.0, i32 %sz.129)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 %max_seg_sz)
  %tobool12.not = icmp eq ptr %sg.127, null
  br i1 %tobool12.not, label %if.end5.if.end14_crit_edge, label %if.then13

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then13:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @sg_next(ptr noundef nonnull %sg.127) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end5.if.end14_crit_edge
  %sg.2 = phi ptr [ %call, %if.then13 ], [ %sglist, %if.end5.if.end14_crit_edge ]
  %tobool15.not = icmp eq ptr %sg.2, null
  br i1 %tobool15.not, label %if.end14.cleanup32_crit_edge, label %if.end17

if.end14.cleanup32_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup32

if.end17:                                         ; preds = %if.end14
  %12 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mem, align 4
  %arrayidx19 = getelementptr %struct.mmc_test_pages, ptr %13, i32 %i.028
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx19, align 4
  %16 = ptrtoint ptr %sg.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sg.2, align 4
  %18 = ptrtoint ptr %15 to i32
  %and2.i.i = and i32 %18, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !256

do.body5.i.i:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !257
  unreachable

do.body11.i.i:                                    ; preds = %if.end17
  %and.i.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !256

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !258
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %17, 3
  %or.i.i = or i32 %and.i.i, %18
  %19 = ptrtoint ptr %sg.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i.i, ptr %sg.2, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %sg.2, i32 0, i32 1
  %20 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.2, i32 0, i32 2
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %11, ptr %length.i, align 4
  %sub = sub i32 %sz.129, %11
  %22 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sg_len, align 4
  %add20 = add i32 %23, 1
  store i32 %add20, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool21.not = icmp eq i32 %sub, 0
  br i1 %tobool21.not, label %sg_set_page.exit.if.then30_crit_edge, label %for.cond

sg_set_page.exit.if.then30_crit_edge:             ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

do.cond:                                          ; preds = %for.cond.do.cond_crit_edge, %do.body.do.cond_crit_edge
  %sg.1.lcssa = phi ptr [ %sg.0, %do.body.do.cond_crit_edge ], [ %sg.2, %for.cond.do.cond_crit_edge ]
  %sz.1.lcssa = phi i32 [ %sz.0, %do.body.do.cond_crit_edge ], [ %sub, %for.cond.do.cond_crit_edge ]
  %tobool24.not = icmp eq i32 %sz.1.lcssa, 0
  br i1 %tobool24.not, label %if.end28, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end28:                                         ; preds = %do.cond
  %tobool29.not = icmp eq ptr %sg.1.lcssa, null
  br i1 %tobool29.not, label %if.end28.cleanup32_crit_edge, label %if.end28.if.then30_crit_edge

if.end28.if.then30_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.end28.cleanup32_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup32

if.then30:                                        ; preds = %if.end28.if.then30_crit_edge, %sg_set_page.exit.if.then30_crit_edge
  %sg.31114 = phi ptr [ %sg.1.lcssa, %if.end28.if.then30_crit_edge ], [ %sg.2, %sg_set_page.exit.if.then30_crit_edge ]
  %24 = ptrtoint ptr %sg.31114 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sg.31114, align 4
  %or.i = and i32 %25, -4
  %and.i = or i32 %or.i, 2
  store i32 %and.i, ptr %sg.31114, align 4
  br label %cleanup32

cleanup32:                                        ; preds = %if.then30, %if.end28.cleanup32_crit_edge, %if.end14.cleanup32_crit_edge
  %retval.4 = phi i32 [ 0, %if.then30 ], [ 0, %if.end28.cleanup32_crit_edge ], [ -22, %if.end14.cleanup32_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_start_areq(ptr nocapture noundef readonly %test, ptr noundef %mrq, ptr noundef %prev_mrq) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool.not = icmp eq ptr %mrq, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %completion = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 4
  %4 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.95, ptr noundef nonnull @init_completion.__key) #8
  %done = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 6
  %5 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mmc_test_wait_done, ptr %done, align 4
  %ops.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %pre_req.i = getelementptr inbounds %struct.mmc_host_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pre_req.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pre_req.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %9(ptr noundef %3, ptr noundef nonnull %mrq) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %prev_mrq, null
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %if.then3

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then3:                                         ; preds = %if.end
  %completion4 = getelementptr inbounds %struct.mmc_request, ptr %prev_mrq, i32 0, i32 4
  tail call void @wait_for_completion(ptr noundef %completion4) #8
  %call = tail call fastcc i32 @mmc_test_wait_busy(ptr noundef %test)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %lor.lhs.false.i, label %if.then3.if.then19_crit_edge

if.then3.if.then19_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

lor.lhs.false.i:                                  ; preds = %if.then3
  %cmd.i = getelementptr inbounds %struct.mmc_request, ptr %prev_mrq, i32 0, i32 1
  %10 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cmd.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.rhs.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %data.i = getelementptr inbounds %struct.mmc_request, ptr %prev_mrq, i32 0, i32 2
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %tobool2.not.i = icmp eq ptr %13, null
  br i1 %tobool2.not.i, label %lor.rhs.i.do.end.i_crit_edge, label %if.end25.i, !prof !259

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 696, i32 noundef 9, ptr noundef null) #8
  br label %if.then19

if.end25.i:                                       ; preds = %lor.rhs.i
  %14 = ptrtoint ptr %prev_mrq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev_mrq, align 4
  %tobool26.not.i = icmp eq ptr %15, null
  br i1 %tobool26.not.i, label %if.end25.i.if.end41.i_crit_edge, label %if.end32.i

if.end25.i.if.end41.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.end32.i:                                       ; preds = %if.end25.i
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool33.not.i = icmp eq i32 %17, 0
  br i1 %tobool33.not.i, label %if.end32.i.if.end41.i_crit_edge, label %if.end32.i.if.end68.i_crit_edge

if.end32.i.if.end68.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.end32.i.if.end41.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end32.i.if.end41.i_crit_edge, %if.end25.i.if.end41.i_crit_edge
  %error36.i = getelementptr inbounds %struct.mmc_command, ptr %11, i32 0, i32 5
  %18 = ptrtoint ptr %error36.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool42.not.i = icmp eq i32 %19, 0
  br i1 %tobool42.not.i, label %if.end50.i, label %if.end41.i.if.end68.i_crit_edge

if.end41.i.if.end68.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.end50.i:                                       ; preds = %if.end41.i
  %error45.i = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 5
  %20 = ptrtoint ptr %error45.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %error45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool51.not.i = icmp eq i32 %21, 0
  br i1 %tobool51.not.i, label %land.lhs.true52.i, label %if.end50.i.if.end68.i_crit_edge

if.end50.i.if.end68.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

land.lhs.true52.i:                                ; preds = %if.end50.i
  %stop.i = getelementptr inbounds %struct.mmc_request, ptr %prev_mrq, i32 0, i32 3
  %22 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stop.i, align 4
  %tobool53.not.i = icmp eq ptr %23, null
  br i1 %tobool53.not.i, label %land.lhs.true52.i.land.lhs.true63.i_crit_edge, label %if.end61.i

land.lhs.true52.i.land.lhs.true63.i_crit_edge:    ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true63.i

if.end61.i:                                       ; preds = %land.lhs.true52.i
  %error56.i = getelementptr inbounds %struct.mmc_command, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %error56.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %error56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool62.not.i = icmp eq i32 %25, 0
  br i1 %tobool62.not.i, label %if.end61.i.land.lhs.true63.i_crit_edge, label %if.end61.i.if.end68.i_crit_edge

if.end61.i.if.end68.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.end61.i.land.lhs.true63.i_crit_edge:           ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true63.i

land.lhs.true63.i:                                ; preds = %if.end61.i.land.lhs.true63.i_crit_edge, %land.lhs.true52.i.land.lhs.true63.i_crit_edge
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 7
  %26 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bytes_xfered.i, align 4
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 3
  %28 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %blocks.i, align 4
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %13, i32 0, i32 2
  %30 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blksz.i, align 4
  %mul.i = mul i32 %31, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %mul.i)
  %cmp.not.i = icmp ne i32 %27, %mul.i
  %spec.select4.i = zext i1 %cmp.not.i to i32
  br label %if.end68.i

if.end68.i:                                       ; preds = %land.lhs.true63.i, %if.end61.i.if.end68.i_crit_edge, %if.end50.i.if.end68.i_crit_edge, %if.end41.i.if.end68.i_crit_edge, %if.end32.i.if.end68.i_crit_edge
  %ret.4.i = phi i32 [ %25, %if.end61.i.if.end68.i_crit_edge ], [ %spec.select4.i, %land.lhs.true63.i ], [ %21, %if.end50.i.if.end68.i_crit_edge ], [ %19, %if.end41.i.if.end68.i_crit_edge ], [ %17, %if.end32.i.if.end68.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %ret.4.i)
  %cmp69.i = icmp eq i32 %ret.4.i, -22
  %spec.store.select.i = select i1 %cmp69.i, i32 2, i32 %ret.4.i
  br label %if.end9

if.end9:                                          ; preds = %if.end68.i, %if.end.if.end9_crit_edge
  %err.0 = phi i32 [ 0, %if.end.if.end9_crit_edge ], [ %spec.store.select.i, %if.end68.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool10.not = icmp ne i32 %err.0, 0
  %brmerge = or i1 %tobool.not, %tobool10.not
  br i1 %brmerge, label %if.end9.if.end17_crit_edge, label %if.then12

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then12:                                        ; preds = %if.end9
  %call13 = tail call i32 @mmc_start_request(ptr noundef %3, ptr noundef nonnull %mrq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then12.if.end17_crit_edge, label %if.then15

if.then12.if.end17_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mmc_retune_release(ptr noundef %3) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then12.if.end17_crit_edge, %if.end9.if.end17_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end9.if.end17_crit_edge ], [ %call13, %if.then15 ], [ 0, %if.then12.if.end17_crit_edge ]
  br i1 %tobool2.not, label %if.end17.if.end20_crit_edge, label %if.end17.if.then19_crit_edge

if.end17.if.then19_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then19:                                        ; preds = %if.end17.if.then19_crit_edge, %do.end.i, %if.then3.if.then19_crit_edge
  %err.163 = phi i32 [ %err.1, %if.end17.if.then19_crit_edge ], [ -22, %do.end.i ], [ %call, %if.then3.if.then19_crit_edge ]
  %ops.i50 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 3
  %32 = ptrtoint ptr %ops.i50 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i50, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool.not.i51 = icmp eq ptr %35, null
  br i1 %tobool.not.i51, label %if.then19.if.end20_crit_edge, label %if.then.i52

if.then19.if.end20_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then.i52:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %35(ptr noundef %3, ptr noundef nonnull %prev_mrq, i32 noundef 0) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then.i52, %if.then19.if.end20_crit_edge, %if.end17.if.end20_crit_edge
  %err.164 = phi i32 [ %err.1, %if.end17.if.end20_crit_edge ], [ %err.163, %if.then19.if.end20_crit_edge ], [ %err.163, %if.then.i52 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.164)
  %tobool21.not = icmp eq i32 %err.164, 0
  %brmerge48 = or i1 %tobool.not, %tobool21.not
  br i1 %brmerge48, label %if.end20.if.end25_crit_edge, label %if.then24

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then24:                                        ; preds = %if.end20
  %ops.i53 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 3
  %36 = ptrtoint ptr %ops.i53 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i53, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %tobool.not.i54 = icmp eq ptr %39, null
  br i1 %tobool.not.i54, label %if.then24.if.end25_crit_edge, label %if.then.i55

if.then24.if.end25_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then.i55:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %39(ptr noundef %3, ptr noundef nonnull %mrq, i32 noundef %err.164) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then.i55, %if.then24.if.end25_crit_edge, %if.end20.if.end25_crit_edge
  ret i32 %err.164
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_test_wait_done(ptr noundef %mrq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %completion = getelementptr inbounds %struct.mmc_request, ptr %mrq, i32 0, i32 4
  tail call void @complete(ptr noundef %completion) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_start_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_retune_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_normalized_timespec64(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_trim(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmc_test_print_rate(ptr nocapture noundef readonly %test, i64 noundef %bytes, ptr nocapture noundef readonly %ts1, ptr nocapture noundef readonly %ts2) unnamed_addr #1 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i64 %bytes, 9
  %conv = trunc i64 %shr to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #8
  %0 = ptrtoint ptr %ts2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %.unpack = load i64, ptr %ts2, align 8
  %.elt17 = getelementptr inbounds [2 x i64], ptr %ts2, i32 0, i32 1
  %1 = ptrtoint ptr %.elt17 to i32
  call void @__asan_load8_noabort(i32 %1)
  %.unpack18 = load i64, ptr %.elt17, align 8
  %2 = ptrtoint ptr %ts1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %.unpack19 = load i64, ptr %ts1, align 8
  %.elt20 = getelementptr inbounds [2 x i64], ptr %ts1, i32 0, i32 1
  %3 = ptrtoint ptr %.elt20 to i32
  call void @__asan_load8_noabort(i32 %3)
  %.unpack21 = load i64, ptr %.elt20, align 8
  %lhs.sroa.2.8.extract.shift.i = lshr i64 %.unpack18, 32
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %lhs.sroa.2.8.extract.shift.i to i32
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %.unpack21, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %4 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %sub.i = sub i64 %.unpack, %.unpack19
  %sub3.i = sub i32 %lhs.sroa.2.8.extract.trunc.i, %rhs.sroa.2.8.extract.trunc.i
  %conv.i = sext i32 %sub3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp, i64 noundef %sub.i, i64 noundef %conv.i) #8
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %5)
  %ts.sroa.0.0.copyload179 = load i64, ptr %tmp, align 8
  %ts.sroa.8.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %6 = ptrtoint ptr %ts.sroa.8.0.tmp.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %6)
  %ts.sroa.8.0.copyload180 = load i64, ptr %ts.sroa.8.0.tmp.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9223372035, i64 %ts.sroa.0.0.copyload179)
  %cmp.i.i = icmp sgt i64 %ts.sroa.0.0.copyload179, 9223372035
  br i1 %cmp.i.i, label %entry.timespec64_to_ns.exit.thread.i_crit_edge, label %if.end.i.i

entry.timespec64_to_ns.exit.thread.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %timespec64_to_ns.exit.thread.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %ts.sroa.0.0.copyload179)
  %cmp2.i.i = icmp slt i64 %ts.sroa.0.0.copyload179, -9223372035
  br i1 %cmp2.i.i, label %if.end.i.i.timespec64_to_ns.exit.thread.i_crit_edge, label %timespec64_to_ns.exit.i

if.end.i.i.timespec64_to_ns.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %timespec64_to_ns.exit.thread.i

timespec64_to_ns.exit.thread.i:                   ; preds = %if.end.i.i.timespec64_to_ns.exit.thread.i_crit_edge, %entry.timespec64_to_ns.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i64 [ -9223372036854775808, %if.end.i.i.timespec64_to_ns.exit.thread.i_crit_edge ], [ 9223372036854775807, %entry.timespec64_to_ns.exit.thread.i_crit_edge ]
  %mul309.i = mul i64 %bytes, 1000000000
  br label %while.body.i.preheader

timespec64_to_ns.exit.i:                          ; preds = %if.end.i.i
  %mul.i.i = mul nsw i64 %ts.sroa.0.0.copyload179, 1000000000
  %conv.i.i = ashr i64 %ts.sroa.8.0.copyload180, 32
  %add.i.i = add i64 %conv.i.i, %mul.i.i
  %mul.i = mul i64 %bytes, 1000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add.i.i)
  %cmp304.i = icmp ugt i64 %add.i.i, 4294967295
  br i1 %cmp304.i, label %timespec64_to_ns.exit.i.while.body.i.preheader_crit_edge, label %timespec64_to_ns.exit.i.while.end.i_crit_edge

timespec64_to_ns.exit.i.while.end.i_crit_edge:    ; preds = %timespec64_to_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

timespec64_to_ns.exit.i.while.body.i.preheader_crit_edge: ; preds = %timespec64_to_ns.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %timespec64_to_ns.exit.i.while.body.i.preheader_crit_edge, %timespec64_to_ns.exit.thread.i
  %ns.0306.i.ph = phi i64 [ %add.i.i, %timespec64_to_ns.exit.i.while.body.i.preheader_crit_edge ], [ %retval.0.i.ph.i, %timespec64_to_ns.exit.thread.i ]
  %bytes.addr.0305.i.ph = phi i64 [ %mul.i, %timespec64_to_ns.exit.i.while.body.i.preheader_crit_edge ], [ %mul309.i, %timespec64_to_ns.exit.thread.i ]
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %ns.0306.i = phi i64 [ %shr1.i, %while.body.i.while.body.i_crit_edge ], [ %ns.0306.i.ph, %while.body.i.preheader ]
  %bytes.addr.0305.i = phi i64 [ %shr.i, %while.body.i.while.body.i_crit_edge ], [ %bytes.addr.0305.i.ph, %while.body.i.preheader ]
  %shr.i = lshr i64 %bytes.addr.0305.i, 1
  %shr1.i = lshr i64 %ns.0306.i, 1
  %cmp.i = icmp ugt i64 %ns.0306.i, 8589934591
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %timespec64_to_ns.exit.i.while.end.i_crit_edge
  %bytes.addr.0.lcssa.i = phi i64 [ %mul.i, %timespec64_to_ns.exit.i.while.end.i_crit_edge ], [ %shr.i, %while.body.i.while.end.i_crit_edge ]
  %ns.0.lcssa.i = phi i64 [ %add.i.i, %timespec64_to_ns.exit.i.while.end.i_crit_edge ], [ %shr1.i, %while.body.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ns.0.lcssa.i)
  %tobool.not.i = icmp eq i64 %ns.0.lcssa.i, 0
  br i1 %tobool.not.i, label %while.end.i.mmc_test_rate.exit_crit_edge, label %if.end.i

while.end.i.mmc_test_rate.exit_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rate.exit

if.end.i:                                         ; preds = %while.end.i
  %conv.i23 = trunc i64 %ns.0.lcssa.i to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %bytes.addr.0.lcssa.i)
  %cmp174.i = icmp ult i64 %bytes.addr.0.lcssa.i, 4294967296
  br i1 %cmp174.i, label %if.then178.i, label %if.else184.i, !prof !256

if.then178.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv179.i = trunc i64 %bytes.addr.0.lcssa.i to i32
  %div182.i = udiv i32 %conv179.i, %conv.i23
  br label %mmc_test_rate.exit

if.else184.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i23, i64 %bytes.addr.0.lcssa.i) #14, !srcloc !264
  %asmresult1.i.i = extractvalue { i64, i64 } %7, 1
  %extract.t303.i = trunc i64 %asmresult1.i.i to i32
  br label %mmc_test_rate.exit

mmc_test_rate.exit:                               ; preds = %if.else184.i, %if.then178.i, %while.end.i.mmc_test_rate.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %while.end.i.mmc_test_rate.exit_crit_edge ], [ %div182.i, %if.then178.i ], [ %extract.t303.i, %if.else184.i ]
  br i1 %cmp.i.i, label %mmc_test_rate.exit.while.body.i43.preheader_crit_edge, label %if.end.i.i26

mmc_test_rate.exit.while.body.i43.preheader_crit_edge: ; preds = %mmc_test_rate.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i43.preheader

if.end.i.i26:                                     ; preds = %mmc_test_rate.exit
  call void @__sanitizer_cov_trace_const_cmp8(i64 -9223372035, i64 %ts.sroa.0.0.copyload179)
  %cmp2.i.i25 = icmp slt i64 %ts.sroa.0.0.copyload179, -9223372035
  br i1 %cmp2.i.i25, label %if.end.i.i26.while.body.i43.preheader_crit_edge, label %timespec64_to_ns.exit.i34

if.end.i.i26.while.body.i43.preheader_crit_edge:  ; preds = %if.end.i.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i43.preheader

timespec64_to_ns.exit.i34:                        ; preds = %if.end.i.i26
  %mul.i.i29 = mul nsw i64 %ts.sroa.0.0.copyload179, 1000000000
  %conv.i.i31 = ashr i64 %ts.sroa.8.0.copyload180, 32
  %add.i.i32 = add i64 %conv.i.i31, %mul.i.i29
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add.i.i32)
  %cmp304.i33 = icmp ugt i64 %add.i.i32, 4294967295
  br i1 %cmp304.i33, label %timespec64_to_ns.exit.i34.while.body.i43.preheader_crit_edge, label %timespec64_to_ns.exit.i34.while.end.i47_crit_edge

timespec64_to_ns.exit.i34.while.end.i47_crit_edge: ; preds = %timespec64_to_ns.exit.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i47

timespec64_to_ns.exit.i34.while.body.i43.preheader_crit_edge: ; preds = %timespec64_to_ns.exit.i34
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i43.preheader

while.body.i43.preheader:                         ; preds = %timespec64_to_ns.exit.i34.while.body.i43.preheader_crit_edge, %if.end.i.i26.while.body.i43.preheader_crit_edge, %mmc_test_rate.exit.while.body.i43.preheader_crit_edge
  %ns.0306.i38.ph = phi i64 [ 9223372036854775807, %mmc_test_rate.exit.while.body.i43.preheader_crit_edge ], [ -9223372036854775808, %if.end.i.i26.while.body.i43.preheader_crit_edge ], [ %add.i.i32, %timespec64_to_ns.exit.i34.while.body.i43.preheader_crit_edge ]
  br label %while.body.i43

while.body.i43:                                   ; preds = %while.body.i43.while.body.i43_crit_edge, %while.body.i43.preheader
  %ns.0306.i38 = phi i64 [ %shr1.i41, %while.body.i43.while.body.i43_crit_edge ], [ %ns.0306.i38.ph, %while.body.i43.preheader ]
  %bytes.addr.0305.i39 = phi i64 [ %shr.i40, %while.body.i43.while.body.i43_crit_edge ], [ 100000000000, %while.body.i43.preheader ]
  %shr.i40 = lshr i64 %bytes.addr.0305.i39, 1
  %shr1.i41 = lshr i64 %ns.0306.i38, 1
  %cmp.i42 = icmp ugt i64 %ns.0306.i38, 8589934591
  br i1 %cmp.i42, label %while.body.i43.while.body.i43_crit_edge, label %while.body.i43.while.end.i47_crit_edge

while.body.i43.while.end.i47_crit_edge:           ; preds = %while.body.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i47

while.body.i43.while.body.i43_crit_edge:          ; preds = %while.body.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i43

while.end.i47:                                    ; preds = %while.body.i43.while.end.i47_crit_edge, %timespec64_to_ns.exit.i34.while.end.i47_crit_edge
  %bytes.addr.0.lcssa.i44 = phi i64 [ 100000000000, %timespec64_to_ns.exit.i34.while.end.i47_crit_edge ], [ %shr.i40, %while.body.i43.while.end.i47_crit_edge ]
  %ns.0.lcssa.i45 = phi i64 [ %add.i.i32, %timespec64_to_ns.exit.i34.while.end.i47_crit_edge ], [ %shr1.i41, %while.body.i43.while.end.i47_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %ns.0.lcssa.i45)
  %tobool.not.i46 = icmp eq i64 %ns.0.lcssa.i45, 0
  br i1 %tobool.not.i46, label %while.end.i47.mmc_test_rate.exit171_crit_edge, label %if.end.i49

while.end.i47.mmc_test_rate.exit171_crit_edge:    ; preds = %while.end.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_rate.exit171

if.end.i49:                                       ; preds = %while.end.i47
  %conv.i48 = trunc i64 %ns.0.lcssa.i45 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %bytes.addr.0.lcssa.i44)
  %cmp174.i162 = icmp ult i64 %bytes.addr.0.lcssa.i44, 4294967296
  br i1 %cmp174.i162, label %if.then178.i166, label %if.else184.i169, !prof !256

if.then178.i166:                                  ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #10
  %conv179.i164 = trunc i64 %bytes.addr.0.lcssa.i44 to i32
  %div182.i165 = udiv i32 %conv179.i164, %conv.i48
  br label %mmc_test_rate.exit171

if.else184.i169:                                  ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #10
  %8 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv.i48, i64 %bytes.addr.0.lcssa.i44) #14, !srcloc !264
  %asmresult1.i.i167 = extractvalue { i64, i64 } %8, 1
  %extract.t303.i168 = trunc i64 %asmresult1.i.i167 to i32
  br label %mmc_test_rate.exit171

mmc_test_rate.exit171:                            ; preds = %if.else184.i169, %if.then178.i166, %while.end.i47.mmc_test_rate.exit171_crit_edge
  %retval.0.i170 = phi i32 [ 0, %while.end.i47.mmc_test_rate.exit171_crit_edge ], [ %div182.i165, %if.then178.i166 ], [ %extract.t303.i168, %if.else184.i169 ]
  %9 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %test, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i172 = icmp eq ptr %14, null
  br i1 %tobool.not.i172, label %if.end.i173, label %mmc_test_rate.exit171.dev_name.exit_crit_edge

mmc_test_rate.exit171.dev_name.exit_crit_edge:    ; preds = %mmc_test_rate.exit171
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i173:                                      ; preds = %mmc_test_rate.exit171
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i173, %mmc_test_rate.exit171.dev_name.exit_crit_edge
  %retval.0.i174 = phi ptr [ %16, %if.end.i173 ], [ %14, %mmc_test_rate.exit171.dev_name.exit_crit_edge ]
  %shr4 = lshr i32 %conv, 1
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.99, ptr @.str.98
  %ts.sroa.8.8.extract.shift = lshr i64 %ts.sroa.8.0.copyload180, 32
  %ts.sroa.8.8.extract.trunc = trunc i64 %ts.sroa.8.8.extract.shift to i32
  %div = udiv i32 %retval.0.i, 1000
  %div522 = lshr i32 %retval.0.i, 10
  %retval.0.i170.frozen = freeze i32 %retval.0.i170
  %div6 = udiv i32 %retval.0.i170.frozen, 100
  %17 = mul i32 %div6, 100
  %rem.decomposed = sub i32 %retval.0.i170.frozen, %17
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %retval.0.i174, i32 noundef %conv, i32 noundef %shr4, ptr noundef nonnull %cond, i64 noundef %ts.sroa.0.0.copyload179, i32 noundef %ts.sroa.8.8.extract.trunc, i32 noundef %div, i32 noundef %div522, i32 noundef %div6, i32 noundef %rem.decomposed) #12
  %gr.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 5
  %18 = ptrtoint ptr %gr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gr.i, align 4
  %tobool.not.i175 = icmp eq ptr %19, null
  br i1 %tobool.not.i175, label %dev_name.exit.mmc_test_save_transfer_result.exit_crit_edge, label %if.end.i176

dev_name.exit.mmc_test_save_transfer_result.exit_crit_edge: ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_save_transfer_result.exit

if.end.i176:                                      ; preds = %dev_name.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 40) #11
  %tobool1.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not.i, label %if.end.i176.mmc_test_save_transfer_result.exit_crit_edge, label %if.end3.i

if.end.i176.mmc_test_save_transfer_result.exit_crit_edge: ; preds = %if.end.i176
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_save_transfer_result.exit

if.end3.i:                                        ; preds = %if.end.i176
  %count4.i = getelementptr inbounds %struct.mmc_test_transfer_result, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %count4.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %count4.i, align 8
  %sectors5.i = getelementptr inbounds %struct.mmc_test_transfer_result, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %sectors5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv, ptr %sectors5.i, align 4
  %ts6.i = getelementptr inbounds %struct.mmc_test_transfer_result, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %ts6.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %ts.sroa.0.0.copyload179, ptr %ts6.i, align 8
  %ts.sroa.2.0.ts6.sroa_idx.i = getelementptr inbounds %struct.mmc_test_transfer_result, ptr %call7.i.i, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %ts.sroa.2.0.ts6.sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %ts.sroa.8.0.copyload180, ptr %ts.sroa.2.0.ts6.sroa_idx.i, align 8
  %rate7.i = getelementptr inbounds %struct.mmc_test_transfer_result, ptr %call7.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %rate7.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i, ptr %rate7.i, align 8
  %iops8.i = getelementptr inbounds %struct.mmc_test_transfer_result, ptr %call7.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %iops8.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %retval.0.i170, ptr %iops8.i, align 4
  %27 = ptrtoint ptr %gr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gr.i, align 4
  %tr_lst.i = getelementptr inbounds %struct.mmc_test_general_result, ptr %28, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.mmc_test_general_result, ptr %28, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %30, ptr noundef %tr_lst.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.i.mmc_test_save_transfer_result.exit_crit_edge

if.end3.i.mmc_test_save_transfer_result.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_save_transfer_result.exit

if.end.i.i.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %prev.i.i, align 4
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %tr_lst.i, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %call7.i.i, ptr %30, align 4
  br label %mmc_test_save_transfer_result.exit

mmc_test_save_transfer_result.exit:               ; preds = %if.end.i.i.i, %if.end3.i.mmc_test_save_transfer_result.exit_crit_edge, %if.end.i176.mmc_test_save_transfer_result.exit_crit_edge, %dev_name.exit.mmc_test_save_transfer_result.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_seq_read_perf(ptr nocapture noundef %test, i32 noundef %sz) unnamed_addr #1 align 64 {
entry:
  %ts1 = alloca %struct.timespec64, align 8
  %ts2 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %area = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts1) #8
  %0 = call ptr @memset(ptr %ts1, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts2) #8
  %1 = call ptr @memset(ptr %ts2, i32 255, i32 16)
  %2 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %area, align 4
  %div = udiv i32 %3, %sz
  %dev_addr1 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %dev_addr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_addr1, align 4
  call void @ktime_get_ts64(ptr noundef nonnull %ts1) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sz)
  %cmp25.not = icmp ult i32 %3, %sz
  br i1 %cmp25.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shr.i19 = lshr i32 %sz, 9
  %blocks.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 5
  %mem2.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 7
  %sg3.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 8
  %max_segs4.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 3
  %max_seg_sz5.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 4
  %sg_len6.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 6
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %dev_addr.026 = phi i32 [ %5, %for.body.lr.ph ], [ %add, %if.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %blocks.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr.i19, ptr %blocks.i, align 4
  %7 = ptrtoint ptr %mem2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mem2.i, align 4
  %9 = ptrtoint ptr %sg3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sg3.i, align 4
  %11 = ptrtoint ptr %max_segs4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_segs4.i, align 4
  %13 = ptrtoint ptr %max_seg_sz5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_seg_sz5.i, align 4
  %call7.i = call fastcc i32 @mmc_test_map_sg(ptr noundef %8, i32 noundef %sz, ptr noundef %10, i32 noundef %12, i32 noundef %14, ptr noundef %sg_len6.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool30.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool30.not.i, label %mmc_test_area_io_seq.exit, label %do.end.i

do.end.i:                                         ; preds = %for.body
  %15 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %test, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.mmc_test_area_io_seq.exit.thread_crit_edge

do.end.i.mmc_test_area_io_seq.exit.thread_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_area_io_seq.exit.thread

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %class_dev.i, align 4
  br label %mmc_test_area_io_seq.exit.thread

mmc_test_area_io_seq.exit.thread:                 ; preds = %if.end.i.i, %do.end.i.mmc_test_area_io_seq.exit.thread_crit_edge
  %retval.0.i.i = phi ptr [ %22, %if.end.i.i ], [ %20, %do.end.i.mmc_test_area_io_seq.exit.thread_crit_edge ]
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %retval.0.i.i) #12
  br label %cleanup

mmc_test_area_io_seq.exit:                        ; preds = %for.body
  %23 = ptrtoint ptr %sg3.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sg3.i, align 4
  %25 = ptrtoint ptr %sg_len6.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sg_len6.i, align 4
  %27 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %blocks.i, align 4
  %call.i.i = call fastcc i32 @mmc_test_simple_transfer(ptr noundef %test, ptr noundef %24, i32 noundef %26, i32 noundef %dev_addr.026, i32 noundef %28, i32 noundef 512, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %mmc_test_area_io_seq.exit.cleanup_crit_edge

mmc_test_area_io_seq.exit.cleanup_crit_edge:      ; preds = %mmc_test_area_io_seq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %mmc_test_area_io_seq.exit
  %add = add i32 %dev_addr.026, %shr.i19
  %inc = add nuw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  call void @ktime_get_ts64(ptr noundef nonnull %ts2) #8
  %conv = zext i32 %sz to i64
  call fastcc void @mmc_test_print_avg_rate(ptr noundef %test, i64 noundef %conv, i32 noundef %div, ptr noundef nonnull %ts1, ptr noundef nonnull %ts2)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %mmc_test_area_io_seq.exit.cleanup_crit_edge, %mmc_test_area_io_seq.exit.thread
  %retval.0 = phi i32 [ 0, %for.end ], [ %call7.i, %mmc_test_area_io_seq.exit.thread ], [ %call.i.i, %mmc_test_area_io_seq.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts1) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_seq_write_perf(ptr nocapture noundef %test, i32 noundef %sz) unnamed_addr #1 align 64 {
entry:
  %ts1 = alloca %struct.timespec64, align 8
  %ts2 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts1) #8
  %0 = call ptr @memset(ptr %ts1, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts2) #8
  %1 = call ptr @memset(ptr %ts2, i32 255, i32 16)
  %2 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %test, align 4
  %call.i = tail call i32 @mmc_can_erase(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %mmc_test_area_erase.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

mmc_test_area_erase.exit:                         ; preds = %entry
  %area.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4
  %4 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %test, align 4
  %dev_addr.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dev_addr.i, align 4
  %8 = ptrtoint ptr %area.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %area.i, align 4
  %shr.i = lshr i32 %9, 9
  %call2.i = tail call i32 @mmc_erase(ptr noundef %5, i32 noundef %7, i32 noundef %shr.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %mmc_test_area_erase.exit.if.end_crit_edge, label %mmc_test_area_erase.exit.cleanup_crit_edge

mmc_test_area_erase.exit.cleanup_crit_edge:       ; preds = %mmc_test_area_erase.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mmc_test_area_erase.exit.if.end_crit_edge:        ; preds = %mmc_test_area_erase.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %mmc_test_area_erase.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %area = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4
  %10 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %area, align 4
  %div = udiv i32 %11, %sz
  %dev_addr1 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %dev_addr1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_addr1, align 4
  call void @ktime_get_ts64(ptr noundef nonnull %ts1) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %sz)
  %cmp38.not = icmp ult i32 %11, %sz
  br i1 %cmp38.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %shr.i29 = lshr i32 %sz, 9
  %blocks.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 5
  %mem2.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 7
  %sg3.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 8
  %max_segs4.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 3
  %max_seg_sz5.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 4
  %sg_len6.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 6
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end5.for.body_crit_edge ]
  %dev_addr.039 = phi i32 [ %13, %for.body.lr.ph ], [ %add, %if.end5.for.body_crit_edge ]
  %14 = ptrtoint ptr %blocks.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr.i29, ptr %blocks.i, align 4
  %15 = ptrtoint ptr %mem2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mem2.i, align 4
  %17 = ptrtoint ptr %sg3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sg3.i, align 4
  %19 = ptrtoint ptr %max_segs4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_segs4.i, align 4
  %21 = ptrtoint ptr %max_seg_sz5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_seg_sz5.i, align 4
  %call7.i = call fastcc i32 @mmc_test_map_sg(ptr noundef %16, i32 noundef %sz, ptr noundef %18, i32 noundef %20, i32 noundef %22, ptr noundef %sg_len6.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool30.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool30.not.i, label %mmc_test_area_io_seq.exit, label %do.end.i

do.end.i:                                         ; preds = %for.body
  %23 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %test, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.mmc_test_area_io_seq.exit.thread_crit_edge

do.end.i.mmc_test_area_io_seq.exit.thread_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_area_io_seq.exit.thread

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %class_dev.i, align 4
  br label %mmc_test_area_io_seq.exit.thread

mmc_test_area_io_seq.exit.thread:                 ; preds = %if.end.i.i, %do.end.i.mmc_test_area_io_seq.exit.thread_crit_edge
  %retval.0.i.i = phi ptr [ %30, %if.end.i.i ], [ %28, %do.end.i.mmc_test_area_io_seq.exit.thread_crit_edge ]
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %retval.0.i.i) #12
  br label %cleanup

mmc_test_area_io_seq.exit:                        ; preds = %for.body
  %31 = ptrtoint ptr %sg3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sg3.i, align 4
  %33 = ptrtoint ptr %sg_len6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sg_len6.i, align 4
  %35 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %blocks.i, align 4
  %call.i.i = call fastcc i32 @mmc_test_simple_transfer(ptr noundef %test, ptr noundef %32, i32 noundef %34, i32 noundef %dev_addr.039, i32 noundef %36, i32 noundef 512, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %if.end5, label %mmc_test_area_io_seq.exit.cleanup_crit_edge

mmc_test_area_io_seq.exit.cleanup_crit_edge:      ; preds = %mmc_test_area_io_seq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %mmc_test_area_io_seq.exit
  %add = add i32 %dev_addr.039, %shr.i29
  %inc = add nuw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end5.for.end_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end5.for.end_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end5.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @ktime_get_ts64(ptr noundef nonnull %ts2) #8
  %conv = zext i32 %sz to i64
  call fastcc void @mmc_test_print_avg_rate(ptr noundef %test, i64 noundef %conv, i32 noundef %div, ptr noundef nonnull %ts1, ptr noundef nonnull %ts2)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %mmc_test_area_io_seq.exit.cleanup_crit_edge, %mmc_test_area_io_seq.exit.thread, %mmc_test_area_erase.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call2.i, %mmc_test_area_erase.exit.cleanup_crit_edge ], [ %call7.i, %mmc_test_area_io_seq.exit.thread ], [ %call.i.i, %mmc_test_area_io_seq.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts1) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_random_perf(ptr nocapture noundef %test, i32 noundef %write) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_tfr = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_tfr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp42 = icmp ugt i32 %1, 512
  br i1 %cmp42, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  br label %for.body

for.cond:                                         ; preds = %if.end3
  %shl = shl i32 %sz.043, 1
  %2 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_tfr, align 4
  %cmp = icmp ult i32 %shl, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %sz.043 = phi i32 [ 512, %for.body.lr.ph ], [ %shl, %for.cond.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.if.end3_crit_edge, label %if.then

for.body.if.end3_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr @rnd_next, align 4
  %call = tail call fastcc i32 @mmc_test_rnd_perf(ptr noundef %test, i32 noundef 1, i32 noundef 0, i32 noundef %sz.043)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  store i32 %4, ptr @rnd_next, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.end, %for.body.if.end3_crit_edge
  %call4 = tail call fastcc i32 @mmc_test_rnd_perf(ptr noundef %test, i32 noundef %write, i32 noundef 1, i32 noundef %sz.043)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.cond, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ %1, %entry.for.end_crit_edge ], [ %3, %for.cond.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool9.not = icmp eq i32 %write, 0
  br i1 %tobool9.not, label %for.end.if.end15_crit_edge, label %if.then10

for.end.if.end15_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then10:                                        ; preds = %for.end
  %5 = load i32, ptr @rnd_next, align 4
  %call11 = tail call fastcc i32 @mmc_test_rnd_perf(ptr noundef %test, i32 noundef 1, i32 noundef 0, i32 noundef %.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  store i32 %5, ptr @rnd_next, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %for.end.if.end15_crit_edge
  %call16 = tail call fastcc i32 @mmc_test_rnd_perf(ptr noundef %test, i32 noundef %write, i32 noundef 1, i32 noundef %.lcssa)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then10.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ %call11, %if.then10.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_rnd_perf(ptr nocapture noundef %test, i32 noundef %write, i32 noundef %print, i32 noundef %sz) unnamed_addr #1 align 64 {
entry:
  %ts1 = alloca %struct.timespec64, align 8
  %ts2 = alloca %struct.timespec64, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts1) #8
  %0 = call ptr @memset(ptr %ts1, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts2) #8
  %1 = call ptr @memset(ptr %ts2, i32 255, i32 16)
  %shr = lshr i32 %sz, 9
  %2 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %test, align 4
  %type.i = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp eq i32 %5, 1
  br i1 %cmp.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %state.i = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 4
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %sectors.i = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 21, i32 19
  %8 = ptrtoint ptr %sectors.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sectors.i, align 8
  br label %mmc_test_capacity.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %capacity.i = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 20, i32 11
  %10 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %capacity.i, align 4
  %read_blkbits.i = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 20, i32 9
  %12 = ptrtoint ptr %read_blkbits.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %read_blkbits.i, align 4
  %sub.i = add i32 %13, -9
  %shl.i = shl i32 %11, %sub.i
  br label %mmc_test_capacity.exit

mmc_test_capacity.exit:                           ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %shl.i, %if.else.i ], [ %9, %if.then.i ]
  %div53 = lshr i32 %retval.0.i, 2
  %pref_erase = getelementptr inbounds %struct.mmc_card, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %pref_erase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pref_erase, align 4
  %div2 = udiv i32 %div53, %15
  %div3 = udiv i32 %div2, %shr
  call void @ktime_get_ts64(ptr noundef nonnull %ts1) #8
  %.fca.1.gep = getelementptr inbounds [2 x i64], ptr %ts2, i32 0, i32 1
  %.fca.1.gep36 = getelementptr inbounds [2 x i64], ptr %ts1, i32 0, i32 1
  %conv1.i = zext i32 %div2 to i64
  %blocks.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 5
  %mem2.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 7
  %sg3.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 8
  %max_segs4.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 3
  %max_seg_sz5.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 4
  %sg_len6.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 6
  %conv1.i62 = zext i32 %div3 to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %mmc_test_capacity.exit
  %last_ea.079 = phi i32 [ 0, %mmc_test_capacity.exit ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %cnt.078 = phi i32 [ 0, %mmc_test_capacity.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @ktime_get_ts64(ptr noundef nonnull %ts2) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #8
  %16 = ptrtoint ptr %ts2 to i32
  call void @__asan_load8_noabort(i32 %16)
  %.fca.0.load = load i64, ptr %ts2, align 8
  %17 = ptrtoint ptr %.fca.1.gep to i32
  call void @__asan_load8_noabort(i32 %17)
  %.fca.1.load = load i64, ptr %.fca.1.gep, align 8
  %18 = ptrtoint ptr %ts1 to i32
  call void @__asan_load8_noabort(i32 %18)
  %.fca.0.load34 = load i64, ptr %ts1, align 8
  %19 = ptrtoint ptr %.fca.1.gep36 to i32
  call void @__asan_load8_noabort(i32 %19)
  %.fca.1.load37 = load i64, ptr %.fca.1.gep36, align 8
  %lhs.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load, 32
  %lhs.sroa.2.8.extract.trunc.i = trunc i64 %lhs.sroa.2.8.extract.shift.i to i32
  %rhs.sroa.2.8.extract.shift.i = lshr i64 %.fca.1.load37, 32
  %rhs.sroa.2.8.extract.trunc.i = trunc i64 %rhs.sroa.2.8.extract.shift.i to i32
  %20 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %sub.i54 = sub i64 %.fca.0.load, %.fca.0.load34
  %sub3.i = sub i32 %lhs.sroa.2.8.extract.trunc.i, %rhs.sroa.2.8.extract.trunc.i
  %conv.i = sext i32 %sub3.i to i64
  call void @set_normalized_timespec64(ptr noundef nonnull %tmp, i64 noundef %sub.i54, i64 noundef %conv.i) #8
  %21 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %21)
  %ts.sroa.0.0.copyload32 = load i64, ptr %tmp, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 9, i64 %ts.sroa.0.0.copyload32)
  %cmp4 = icmp sgt i64 %ts.sroa.0.0.copyload32, 9
  br i1 %cmp4, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end:                                           ; preds = %for.body
  %22 = load i32, ptr @rnd_next, align 4
  %mul.i = mul i32 %22, 1103515245
  %add.i = add i32 %mul.i, 12345
  %shr.i = lshr i32 %add.i, 16
  %and.i55 = and i32 %shr.i, 32767
  %conv.i56 = zext i32 %and.i55 to i64
  %mul2.i = mul nuw nsw i64 %conv.i56, %conv1.i
  %shr3.i = lshr i64 %mul2.i, 15
  %conv4.i = trunc i64 %shr3.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %last_ea.079, i32 %conv4.i)
  %cmp6 = icmp eq i32 %last_ea.079, %conv4.i
  %sub = sext i1 %cmp6 to i32
  %spec.select = add nsw i32 %sub, %conv4.i
  %23 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %test, align 4
  %pref_erase10 = getelementptr inbounds %struct.mmc_card, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %pref_erase10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pref_erase10, align 4
  %mul.i57 = mul i32 %add.i, 1103515245
  %add.i58 = add i32 %mul.i57, 12345
  store i32 %add.i58, ptr @rnd_next, align 4
  %27 = ptrtoint ptr %blocks.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr, ptr %blocks.i, align 4
  %28 = ptrtoint ptr %mem2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mem2.i, align 4
  %30 = ptrtoint ptr %sg3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sg3.i, align 4
  %32 = ptrtoint ptr %max_segs4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_segs4.i, align 4
  %34 = ptrtoint ptr %max_seg_sz5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_seg_sz5.i, align 4
  %call7.i = call fastcc i32 @mmc_test_map_sg(ptr noundef %29, i32 noundef %sz, ptr noundef %31, i32 noundef %33, i32 noundef %35, ptr noundef %sg_len6.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool30.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool30.not.i, label %mmc_test_area_io_seq.exit, label %do.end.i

do.end.i:                                         ; preds = %if.end
  %36 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %test, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %39, i32 0, i32 1, i32 3
  %40 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.mmc_test_area_io_seq.exit.thread_crit_edge

do.end.i.mmc_test_area_io_seq.exit.thread_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_area_io_seq.exit.thread

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %class_dev.i, align 4
  br label %mmc_test_area_io_seq.exit.thread

mmc_test_area_io_seq.exit.thread:                 ; preds = %if.end.i.i, %do.end.i.mmc_test_area_io_seq.exit.thread_crit_edge
  %retval.0.i.i = phi ptr [ %43, %if.end.i.i ], [ %41, %do.end.i.mmc_test_area_io_seq.exit.thread_crit_edge ]
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %retval.0.i.i) #12
  br label %cleanup

mmc_test_area_io_seq.exit:                        ; preds = %if.end
  %mul = mul i32 %spec.select, %26
  %shr.i59 = lshr i32 %add.i58, 16
  %and.i60 = and i32 %shr.i59, 32767
  %conv.i61 = zext i32 %and.i60 to i64
  %mul2.i63 = mul nuw nsw i64 %conv.i61, %conv1.i62
  %shr3.i64 = lshr i64 %mul2.i63, 15
  %conv4.i65 = trunc i64 %shr3.i64 to i32
  %mul12 = mul i32 %shr, %conv4.i65
  %add = add i32 %mul12, %div53
  %add13 = add i32 %add, %mul
  %44 = ptrtoint ptr %sg3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sg3.i, align 4
  %46 = ptrtoint ptr %sg_len6.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sg_len6.i, align 4
  %48 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %blocks.i, align 4
  %call.i.i = call fastcc i32 @mmc_test_simple_transfer(ptr noundef %test, ptr noundef %45, i32 noundef %47, i32 noundef %add13, i32 noundef %49, i32 noundef 512, i32 noundef %write) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %for.inc, label %mmc_test_area_io_seq.exit.cleanup_crit_edge

mmc_test_area_io_seq.exit.cleanup_crit_edge:      ; preds = %mmc_test_area_io_seq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %mmc_test_area_io_seq.exit
  %inc = add nuw i32 %cnt.078, 1
  %cmp.not = icmp eq i32 %inc, -1
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %cnt.0.lcssa = phi i32 [ %cnt.078, %for.body.for.end_crit_edge ], [ -1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool17.not = icmp eq i32 %print, 0
  br i1 %tobool17.not, label %for.end.cleanup_crit_edge, label %if.then18

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i32 %sz to i64
  call fastcc void @mmc_test_print_avg_rate(ptr noundef %test, i64 noundef %conv, i32 noundef %cnt.0.lcssa, ptr noundef nonnull %ts1, ptr noundef nonnull %ts2)
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %for.end.cleanup_crit_edge, %mmc_test_area_io_seq.exit.cleanup_crit_edge, %mmc_test_area_io_seq.exit.thread
  %retval.0 = phi i32 [ 0, %if.then18 ], [ 0, %for.end.cleanup_crit_edge ], [ %call7.i, %mmc_test_area_io_seq.exit.thread ], [ %call.i.i, %mmc_test_area_io_seq.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts1) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_large_seq_perf(ptr nocapture noundef %test, i32 noundef %write) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mmc_test_seq_perf(ptr noundef %test, i32 noundef %write, i32 noundef 10485760)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %entry
  %call.1 = tail call fastcc i32 @mmc_test_seq_perf(ptr noundef %test, i32 noundef %write, i32 noundef 10485760)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %for.cond.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %call.2 = tail call fastcc i32 @mmc_test_seq_perf(ptr noundef %test, i32 noundef %write, i32 noundef 10485760)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %for.cond.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %call.3 = tail call fastcc i32 @mmc_test_seq_perf(ptr noundef %test, i32 noundef %write, i32 noundef 10485760)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool.not.3, label %for.cond.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %call.4 = tail call fastcc i32 @mmc_test_seq_perf(ptr noundef %test, i32 noundef %write, i32 noundef 10485760)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool.not.4, label %for.cond.4, label %for.cond.3.cleanup_crit_edge

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  %call.5 = tail call fastcc i32 @mmc_test_seq_perf(ptr noundef %test, i32 noundef %write, i32 noundef 10485760)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool.not.5, label %for.cond.5, label %for.cond.4.cleanup_crit_edge

for.cond.4.cleanup_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.5:                                       ; preds = %for.cond.4
  %call.6 = tail call fastcc i32 @mmc_test_seq_perf(ptr noundef %test, i32 noundef %write, i32 noundef 10485760)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool.not.6, label %for.cond.6, label %for.cond.5.cleanup_crit_edge

for.cond.5.cleanup_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.6:                                       ; preds = %for.cond.5
  %call.7 = tail call fastcc i32 @mmc_test_seq_perf(ptr noundef %test, i32 noundef %write, i32 noundef 10485760)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool.not.7, label %for.cond.7, label %for.cond.6.cleanup_crit_edge

for.cond.6.cleanup_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.7:                                       ; preds = %for.cond.6
  %call.8 = tail call fastcc i32 @mmc_test_seq_perf(ptr noundef %test, i32 noundef %write, i32 noundef 10485760)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %tobool.not.8 = icmp eq i32 %call.8, 0
  br i1 %tobool.not.8, label %for.cond.8, label %for.cond.7.cleanup_crit_edge

for.cond.7.cleanup_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.8:                                       ; preds = %for.cond.7
  %call.9 = tail call fastcc i32 @mmc_test_seq_perf(ptr noundef %test, i32 noundef %write, i32 noundef 10485760)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.9)
  %tobool.not.9 = icmp eq i32 %call.9, 0
  br i1 %tobool.not.9, label %for.cond.9, label %for.cond.8.cleanup_crit_edge

for.cond.8.cleanup_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.9:                                       ; preds = %for.cond.8
  %call4 = tail call fastcc i32 @mmc_test_seq_perf(ptr noundef %test, i32 noundef %write, i32 noundef 104857600)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %for.cond1, label %for.cond.9.cleanup_crit_edge

for.cond.9.cleanup_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond1:                                        ; preds = %for.cond.9
  %call4.1 = tail call fastcc i32 @mmc_test_seq_perf(ptr noundef %test, i32 noundef %write, i32 noundef 104857600)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %tobool5.not.1 = icmp eq i32 %call4.1, 0
  br i1 %tobool5.not.1, label %for.cond1.1, label %for.cond1.cleanup_crit_edge

for.cond1.cleanup_crit_edge:                      ; preds = %for.cond1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond1.1:                                      ; preds = %for.cond1
  %call4.2 = tail call fastcc i32 @mmc_test_seq_perf(ptr noundef %test, i32 noundef %write, i32 noundef 104857600)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %tobool5.not.2 = icmp eq i32 %call4.2, 0
  br i1 %tobool5.not.2, label %for.cond1.2, label %for.cond1.1.cleanup_crit_edge

for.cond1.1.cleanup_crit_edge:                    ; preds = %for.cond1.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond1.2:                                      ; preds = %for.cond1.1
  %call4.3 = tail call fastcc i32 @mmc_test_seq_perf(ptr noundef %test, i32 noundef %write, i32 noundef 104857600)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.3)
  %tobool5.not.3 = icmp eq i32 %call4.3, 0
  br i1 %tobool5.not.3, label %for.cond1.3, label %for.cond1.2.cleanup_crit_edge

for.cond1.2.cleanup_crit_edge:                    ; preds = %for.cond1.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond1.3:                                      ; preds = %for.cond1.2
  %call4.4 = tail call fastcc i32 @mmc_test_seq_perf(ptr noundef %test, i32 noundef %write, i32 noundef 104857600)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.4)
  %tobool5.not.4 = icmp eq i32 %call4.4, 0
  br i1 %tobool5.not.4, label %for.cond1.4, label %for.cond1.3.cleanup_crit_edge

for.cond1.3.cleanup_crit_edge:                    ; preds = %for.cond1.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond1.4:                                      ; preds = %for.cond1.3
  %call14 = tail call fastcc i32 @mmc_test_seq_perf(ptr noundef %test, i32 noundef %write, i32 noundef 1048576000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.cond11, label %for.cond1.4.cleanup_crit_edge

for.cond1.4.cleanup_crit_edge:                    ; preds = %for.cond1.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond11:                                       ; preds = %for.cond1.4
  %call14.1 = tail call fastcc i32 @mmc_test_seq_perf(ptr noundef %test, i32 noundef %write, i32 noundef 1048576000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.1)
  %tobool15.not.1 = icmp eq i32 %call14.1, 0
  br i1 %tobool15.not.1, label %for.cond11.1, label %for.cond11.cleanup_crit_edge

for.cond11.cleanup_crit_edge:                     ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond11.1:                                     ; preds = %for.cond11
  call void @__sanitizer_cov_trace_pc() #10
  %call14.2 = tail call fastcc i32 @mmc_test_seq_perf(ptr noundef %test, i32 noundef %write, i32 noundef 1048576000)
  br label %cleanup

cleanup:                                          ; preds = %for.cond11.1, %for.cond11.cleanup_crit_edge, %for.cond1.4.cleanup_crit_edge, %for.cond1.3.cleanup_crit_edge, %for.cond1.2.cleanup_crit_edge, %for.cond1.1.cleanup_crit_edge, %for.cond1.cleanup_crit_edge, %for.cond.9.cleanup_crit_edge, %for.cond.8.cleanup_crit_edge, %for.cond.7.cleanup_crit_edge, %for.cond.6.cleanup_crit_edge, %for.cond.5.cleanup_crit_edge, %for.cond.4.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %for.cond1.4.cleanup_crit_edge ], [ %call14.1, %for.cond11.cleanup_crit_edge ], [ %call4, %for.cond.9.cleanup_crit_edge ], [ %call4.1, %for.cond1.cleanup_crit_edge ], [ %call4.2, %for.cond1.1.cleanup_crit_edge ], [ %call4.3, %for.cond1.2.cleanup_crit_edge ], [ %call4.4, %for.cond1.3.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %call.1, %for.cond.cleanup_crit_edge ], [ %call.2, %for.cond.1.cleanup_crit_edge ], [ %call.3, %for.cond.2.cleanup_crit_edge ], [ %call.4, %for.cond.3.cleanup_crit_edge ], [ %call.5, %for.cond.4.cleanup_crit_edge ], [ %call.6, %for.cond.5.cleanup_crit_edge ], [ %call.7, %for.cond.6.cleanup_crit_edge ], [ %call.8, %for.cond.7.cleanup_crit_edge ], [ %call.9, %for.cond.8.cleanup_crit_edge ], [ %call14.2, %for.cond11.1 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_seq_perf(ptr nocapture noundef %test, i32 noundef %write, i32 noundef %tot_sz) unnamed_addr #1 align 64 {
entry:
  %ts1 = alloca %struct.timespec64, align 8
  %ts2 = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts1) #8
  %0 = call ptr @memset(ptr %ts1, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts2) #8
  %1 = call ptr @memset(ptr %ts2, i32 255, i32 16)
  %max_tfr = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_tfr, align 4
  %max_seg_sz = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %max_seg_sz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_seg_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %5)
  %cmp = icmp ugt i32 %5, 4095
  %max_segs = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %max_segs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_segs, align 4
  %mul = shl i32 %7, 12
  %mul5 = mul i32 %7, %5
  %max_tfr1.0 = select i1 %cmp, i32 %mul, i32 %mul5
  %8 = tail call i32 @llvm.umin.i32(i32 %3, i32 %max_tfr1.0)
  %shr = lshr i32 %8, 9
  %9 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %test, align 4
  %type.i = getelementptr inbounds %struct.mmc_card, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp eq i32 %12, 1
  br i1 %cmp.i, label %entry.if.else.i_crit_edge, label %land.lhs.true.i

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %entry
  %state.i = getelementptr inbounds %struct.mmc_card, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.i, align 4
  %and.i = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %sectors.i = getelementptr inbounds %struct.mmc_card, ptr %10, i32 0, i32 21, i32 19
  %15 = ptrtoint ptr %sectors.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sectors.i, align 8
  br label %mmc_test_capacity.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %capacity.i = getelementptr inbounds %struct.mmc_card, ptr %10, i32 0, i32 20, i32 11
  %17 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %capacity.i, align 4
  %read_blkbits.i = getelementptr inbounds %struct.mmc_card, ptr %10, i32 0, i32 20, i32 9
  %19 = ptrtoint ptr %read_blkbits.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %read_blkbits.i, align 4
  %sub.i = add i32 %20, -9
  %shl.i = shl i32 %18, %sub.i
  br label %mmc_test_capacity.exit

mmc_test_capacity.exit:                           ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %shl.i, %if.else.i ], [ %16, %if.then.i ]
  %div1 = lshr i32 %retval.0.i, 2
  %shl = shl i32 %div1, 9
  %21 = tail call i32 @llvm.umin.i32(i32 %shl, i32 %tot_sz)
  %div14 = udiv i32 %21, %8
  call void @ktime_get_ts64(ptr noundef nonnull %ts1) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %21)
  %cmp1512.not = icmp ugt i32 %8, %21
  br i1 %cmp1512.not, label %mmc_test_capacity.exit.for.end_crit_edge, label %for.body.lr.ph

mmc_test_capacity.exit.for.end_crit_edge:         ; preds = %mmc_test_capacity.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %mmc_test_capacity.exit
  %and = and i32 %div1, 1073676288
  %max_segs.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 3
  %blocks.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 5
  %mem2.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 7
  %sg3.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 8
  %sg_len6.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 6
  %umax = call i32 @llvm.umax.i32(i32 %div14, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end19.for.body_crit_edge ]
  %dev_addr.013 = phi i32 [ %and, %for.body.lr.ph ], [ %add, %if.end19.for.body_crit_edge ]
  %22 = ptrtoint ptr %max_seg_sz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_seg_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %23)
  %cmp.i2 = icmp ugt i32 %23, 4095
  %24 = ptrtoint ptr %max_segs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_segs.i, align 4
  %mul.i = shl i32 %25, 12
  %mul4.i = mul i32 %25, %23
  %max_tfr.0.i = select i1 %cmp.i2, i32 %mul.i, i32 %mul4.i
  %26 = call i32 @llvm.umin.i32(i32 %max_tfr.0.i, i32 %8) #8
  %shr.i6 = lshr i32 %26, 9
  %27 = ptrtoint ptr %blocks.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shr.i6, ptr %blocks.i, align 4
  %28 = ptrtoint ptr %mem2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mem2.i, align 4
  %30 = ptrtoint ptr %sg3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sg3.i, align 4
  %call.i = call fastcc i32 @mmc_test_map_sg_max_scatter(ptr noundef %29, i32 noundef %26, ptr noundef %31, i32 noundef %25, i32 noundef %23, ptr noundef %sg_len6.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool30.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool30.not.i, label %mmc_test_area_io_seq.exit, label %do.end.i

do.end.i:                                         ; preds = %for.body
  %32 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %test, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 8
  %init_name.i.i = getelementptr inbounds %struct.mmc_host, ptr %35, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.mmc_test_area_io_seq.exit.thread_crit_edge

do.end.i.mmc_test_area_io_seq.exit.thread_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_area_io_seq.exit.thread

if.end.i.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev.i = getelementptr inbounds %struct.mmc_host, ptr %35, i32 0, i32 1
  %38 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %class_dev.i, align 4
  br label %mmc_test_area_io_seq.exit.thread

mmc_test_area_io_seq.exit.thread:                 ; preds = %if.end.i.i, %do.end.i.mmc_test_area_io_seq.exit.thread_crit_edge
  %retval.0.i.i = phi ptr [ %39, %if.end.i.i ], [ %37, %do.end.i.mmc_test_area_io_seq.exit.thread_crit_edge ]
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %retval.0.i.i) #12
  br label %cleanup

mmc_test_area_io_seq.exit:                        ; preds = %for.body
  %40 = ptrtoint ptr %sg3.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sg3.i, align 4
  %42 = ptrtoint ptr %sg_len6.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sg_len6.i, align 4
  %44 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %blocks.i, align 4
  %call.i.i = call fastcc i32 @mmc_test_simple_transfer(ptr noundef %test, ptr noundef %41, i32 noundef %43, i32 noundef %dev_addr.013, i32 noundef %45, i32 noundef 512, i32 noundef %write) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool17.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool17.not, label %if.end19, label %mmc_test_area_io_seq.exit.cleanup_crit_edge

mmc_test_area_io_seq.exit.cleanup_crit_edge:      ; preds = %mmc_test_area_io_seq.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %mmc_test_area_io_seq.exit
  %add = add i32 %dev_addr.013, %shr
  %inc = add nuw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end19.for.end_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end19.for.end_crit_edge, %mmc_test_capacity.exit.for.end_crit_edge
  call void @ktime_get_ts64(ptr noundef nonnull %ts2) #8
  %conv = zext i32 %8 to i64
  call fastcc void @mmc_test_print_avg_rate(ptr noundef %test, i64 noundef %conv, i32 noundef %div14, ptr noundef nonnull %ts1, ptr noundef nonnull %ts2)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %mmc_test_area_io_seq.exit.cleanup_crit_edge, %mmc_test_area_io_seq.exit.thread
  %retval.0 = phi i32 [ 0, %for.end ], [ %call.i, %mmc_test_area_io_seq.exit.thread ], [ %call.i.i, %mmc_test_area_io_seq.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts1) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_rw_multiple(ptr noundef %test, ptr nocapture noundef readonly %tdata, i32 noundef %reqsize, i32 noundef %size, i32 noundef %min_sg_len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %test, align 4
  %type.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %mmc_test_capacity.exit, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %entry
  %state.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 4
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %mmc_test_capacity.exit.thread129, label %mmc_test_capacity.exit.thread

mmc_test_capacity.exit:                           ; preds = %entry
  %capacity.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 20, i32 11
  %6 = ptrtoint ptr %capacity.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %capacity.i, align 4
  %read_blkbits.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 20, i32 9
  %8 = ptrtoint ptr %read_blkbits.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %read_blkbits.i, align 4
  %sub.i = add i32 %9, -9
  %shl.i = shl i32 %7, %sub.i
  %10 = shl i32 %shl.i, 8
  %mul = and i32 %10, -512
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %size)
  %cmp = icmp ult i32 %mul, %size
  br i1 %cmp, label %mmc_test_capacity.exit.if.end_crit_edge, label %if.end.thread142

mmc_test_capacity.exit.if.end_crit_edge:          ; preds = %mmc_test_capacity.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.thread142:                                 ; preds = %mmc_test_capacity.exit
  call void @__sanitizer_cov_trace_pc() #10
  %max_tfr144 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %max_tfr144 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_tfr144, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %reqsize)
  br label %if.else.i111

mmc_test_capacity.exit.thread129:                 ; preds = %land.lhs.true.i
  %capacity.i130 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 20, i32 11
  %14 = ptrtoint ptr %capacity.i130 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %capacity.i130, align 4
  %read_blkbits.i131 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 20, i32 9
  %16 = ptrtoint ptr %read_blkbits.i131 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %read_blkbits.i131, align 4
  %sub.i132 = add i32 %17, -9
  %shl.i133 = shl i32 %15, %sub.i132
  %18 = shl i32 %shl.i133, 8
  %mul134 = and i32 %18, -512
  call void @__sanitizer_cov_trace_cmp4(i32 %mul134, i32 %size)
  %cmp135 = icmp ult i32 %mul134, %size
  br i1 %cmp135, label %mmc_test_capacity.exit.thread129.land.lhs.true.i89_crit_edge, label %mmc_test_capacity.exit.thread129.land.lhs.true.i104.sink.split_crit_edge

mmc_test_capacity.exit.thread129.land.lhs.true.i104.sink.split_crit_edge: ; preds = %mmc_test_capacity.exit.thread129
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i104.sink.split

mmc_test_capacity.exit.thread129.land.lhs.true.i89_crit_edge: ; preds = %mmc_test_capacity.exit.thread129
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i89

mmc_test_capacity.exit.thread:                    ; preds = %land.lhs.true.i
  %sectors.i = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 19
  %19 = ptrtoint ptr %sectors.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sectors.i, align 8
  %21 = shl i32 %20, 8
  %mul115 = and i32 %21, -512
  call void @__sanitizer_cov_trace_cmp4(i32 %mul115, i32 %size)
  %cmp116 = icmp ult i32 %mul115, %size
  br i1 %cmp116, label %mmc_test_capacity.exit.thread.land.lhs.true.i89_crit_edge, label %mmc_test_capacity.exit.thread.land.lhs.true.i104.sink.split_crit_edge

mmc_test_capacity.exit.thread.land.lhs.true.i104.sink.split_crit_edge: ; preds = %mmc_test_capacity.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i104.sink.split

mmc_test_capacity.exit.thread.land.lhs.true.i89_crit_edge: ; preds = %mmc_test_capacity.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i89

land.lhs.true.i89:                                ; preds = %mmc_test_capacity.exit.thread.land.lhs.true.i89_crit_edge, %mmc_test_capacity.exit.thread129.land.lhs.true.i89_crit_edge
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state.i, align 4
  %and.i87 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i87)
  %tobool.not.i88 = icmp eq i32 %and.i87, 0
  br i1 %tobool.not.i88, label %land.lhs.true.i89.if.end_crit_edge, label %if.end.thread145

land.lhs.true.i89.if.end_crit_edge:               ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.thread145:                                 ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #10
  %sectors.i90 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 19
  %24 = ptrtoint ptr %sectors.i90 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sectors.i90, align 8
  %26 = shl i32 %25, 8
  %mul4147 = and i32 %26, -512
  br label %land.lhs.true.i104.sink.split

if.end:                                           ; preds = %land.lhs.true.i89.if.end_crit_edge, %mmc_test_capacity.exit.if.end_crit_edge
  %capacity.i92 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 20, i32 11
  %27 = ptrtoint ptr %capacity.i92 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %capacity.i92, align 4
  %read_blkbits.i93 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 20, i32 9
  %29 = ptrtoint ptr %read_blkbits.i93 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %read_blkbits.i93, align 4
  %sub.i94 = add i32 %30, -9
  %shl.i95 = shl i32 %28, %sub.i94
  %31 = shl i32 %shl.i95, 8
  %mul4 = and i32 %31, -512
  %max_tfr = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 2
  %32 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_tfr, align 4
  %34 = tail call i32 @llvm.umin.i32(i32 %33, i32 %reqsize)
  br i1 %cmp.i, label %if.end.if.else.i111_crit_edge, label %if.end.land.lhs.true.i104_crit_edge

if.end.land.lhs.true.i104_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i104

if.end.if.else.i111_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i111

land.lhs.true.i104.sink.split:                    ; preds = %if.end.thread145, %mmc_test_capacity.exit.thread.land.lhs.true.i104.sink.split_crit_edge, %mmc_test_capacity.exit.thread129.land.lhs.true.i104.sink.split_crit_edge
  %size.addr.0123.ph = phi i32 [ %mul4147, %if.end.thread145 ], [ %size, %mmc_test_capacity.exit.thread129.land.lhs.true.i104.sink.split_crit_edge ], [ %size, %mmc_test_capacity.exit.thread.land.lhs.true.i104.sink.split_crit_edge ]
  %max_tfr148 = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 2
  %35 = ptrtoint ptr %max_tfr148 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %max_tfr148, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 %reqsize)
  br label %land.lhs.true.i104

land.lhs.true.i104:                               ; preds = %land.lhs.true.i104.sink.split, %if.end.land.lhs.true.i104_crit_edge
  %spec.select126 = phi i32 [ %34, %if.end.land.lhs.true.i104_crit_edge ], [ %37, %land.lhs.true.i104.sink.split ]
  %size.addr.0123 = phi i32 [ %mul4, %if.end.land.lhs.true.i104_crit_edge ], [ %size.addr.0123.ph, %land.lhs.true.i104.sink.split ]
  %state.i101 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %state.i101 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state.i101, align 4
  %and.i102 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i102)
  %tobool.not.i103 = icmp eq i32 %and.i102, 0
  br i1 %tobool.not.i103, label %land.lhs.true.i104.if.else.i111_crit_edge, label %if.then.i106

land.lhs.true.i104.if.else.i111_crit_edge:        ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i111

if.then.i106:                                     ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #10
  %sectors.i105 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 21, i32 19
  %40 = ptrtoint ptr %sectors.i105 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sectors.i105, align 8
  br label %mmc_test_capacity.exit113

if.else.i111:                                     ; preds = %land.lhs.true.i104.if.else.i111_crit_edge, %if.end.if.else.i111_crit_edge, %if.end.thread142
  %spec.select125 = phi i32 [ %spec.select126, %land.lhs.true.i104.if.else.i111_crit_edge ], [ %34, %if.end.if.else.i111_crit_edge ], [ %13, %if.end.thread142 ]
  %size.addr.0122 = phi i32 [ %size.addr.0123, %land.lhs.true.i104.if.else.i111_crit_edge ], [ %mul4, %if.end.if.else.i111_crit_edge ], [ %size, %if.end.thread142 ]
  %capacity.i107 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 20, i32 11
  %42 = ptrtoint ptr %capacity.i107 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %capacity.i107, align 4
  %read_blkbits.i108 = getelementptr inbounds %struct.mmc_card, ptr %1, i32 0, i32 20, i32 9
  %44 = ptrtoint ptr %read_blkbits.i108 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %read_blkbits.i108, align 4
  %sub.i109 = add i32 %45, -9
  %shl.i110 = shl i32 %43, %sub.i109
  br label %mmc_test_capacity.exit113

mmc_test_capacity.exit113:                        ; preds = %if.else.i111, %if.then.i106
  %spec.select124 = phi i32 [ %spec.select125, %if.else.i111 ], [ %spec.select126, %if.then.i106 ]
  %size.addr.0121 = phi i32 [ %size.addr.0122, %if.else.i111 ], [ %size.addr.0123, %if.then.i106 ]
  %retval.0.i112 = phi i32 [ %shl.i110, %if.else.i111 ], [ %41, %if.then.i106 ]
  %div1181 = lshr i32 %retval.0.i112, 2
  %and = and i32 %div1181, 1073676288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and14 = and i32 %div1181, 1073739776
  %dev_addr.0 = select i1 %tobool.not, i32 %and14, i32 %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev_addr.0)
  %tobool16.not = icmp eq i32 %dev_addr.0, 0
  br i1 %tobool16.not, label %mmc_test_capacity.exit113.do.end_crit_edge, label %if.end18

mmc_test_capacity.exit113.do.end_crit_edge:       ; preds = %mmc_test_capacity.exit113
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end18:                                         ; preds = %mmc_test_capacity.exit113
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select124, i32 %size.addr.0121)
  %cmp19 = icmp ugt i32 %spec.select124, %size.addr.0121
  br i1 %cmp19, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %call23 = tail call i32 @mmc_can_erase(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end21.if.end41_crit_edge, label %land.lhs.true

if.end21.if.end41_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end21
  %prepare = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %tdata, i32 0, i32 6
  %46 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %prepare, align 4
  %and25 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %land.lhs.true.if.end41_crit_edge, label %if.then27

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then27:                                        ; preds = %land.lhs.true
  %48 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %test, align 4
  %div2982 = lshr i32 %size.addr.0121, 9
  %erase_arg = getelementptr inbounds %struct.mmc_card, ptr %49, i32 0, i32 13
  %50 = ptrtoint ptr %erase_arg to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %erase_arg, align 4
  %call31 = tail call i32 @mmc_erase(ptr noundef %49, i32 noundef %dev_addr.0, i32 noundef %div2982, i32 noundef %51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then27.if.end41_crit_edge, label %if.end37

if.then27.if.end41_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.end37:                                         ; preds = %if.then27
  %52 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %test, align 4
  %call36 = tail call i32 @mmc_erase(ptr noundef %53, i32 noundef %dev_addr.0, i32 noundef %div2982, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool38.not = icmp eq i32 %call36, 0
  br i1 %tobool38.not, label %if.end37.if.end41_crit_edge, label %if.end37.do.end_crit_edge

if.end37.do.end_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.end41:                                         ; preds = %if.end37.if.end41_crit_edge, %if.then27.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end21.if.end41_crit_edge
  %do_write = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %tdata, i32 0, i32 4
  %54 = ptrtoint ptr %do_write to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %do_write, align 4, !range !254
  %56 = zext i8 %55 to i32
  %div43 = udiv i32 %size.addr.0121, %spec.select124
  %do_nonblock_req = getelementptr inbounds %struct.mmc_test_multiple_rw, ptr %tdata, i32 0, i32 5
  %57 = ptrtoint ptr %do_nonblock_req to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %do_nonblock_req, align 1, !range !254
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool44 = icmp ne i8 %58, 0
  %call45 = tail call fastcc i32 @mmc_test_area_io_seq(ptr noundef %test, i32 noundef %spec.select124, i32 noundef %dev_addr.0, i32 noundef %56, i32 noundef 0, i32 noundef 1, i32 noundef %div43, i1 noundef zeroext %tobool44, i32 noundef %min_sg_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end41.cleanup_crit_edge, label %if.end41.do.end_crit_edge

if.end41.do.end_crit_edge:                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end41.do.end_crit_edge, %if.end37.do.end_crit_edge, %mmc_test_capacity.exit113.do.end_crit_edge
  %ret.1 = phi i32 [ %call36, %if.end37.do.end_crit_edge ], [ %call45, %if.end41.do.end_crit_edge ], [ 0, %mmc_test_capacity.exit113.do.end_crit_edge ]
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.105) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end41.cleanup_crit_edge, %if.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %do.end ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_hw_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_cmds_during_tfr(ptr noundef %test, i32 noundef %use_sbc, i32 noundef %write, i32 noundef %use_areq) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_areq)
  %tobool1.i = icmp ne i32 %use_areq, 0
  %dev_addr.i = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 1
  %max_tfr = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_tfr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %1)
  %cmp.not9 = icmp ult i32 %1, 512
  br i1 %cmp.not9, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %__mmc_test_cmds_during_tfr.exit
  %add = add i32 %sz.010, 512
  %2 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_tfr, align 4
  %cmp.not = icmp ugt i32 %add, %3
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %sz.010 = phi i32 [ %add, %for.cond.for.body_crit_edge ], [ 512, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %test, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %caps.i, align 32
  %and.i = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.cleanup_crit_edge, label %if.end.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %for.body
  %call.i = tail call fastcc i32 @mmc_test_area_map(ptr noundef %test, i32 noundef %sz.010, i32 noundef 0, i32 noundef 0, i1 noundef zeroext %tobool1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_addr.i, align 4
  %call5.i = tail call fastcc i32 @mmc_test_ongoing_transfer(ptr noundef %test, i32 noundef %11, i32 noundef %use_sbc, i32 noundef 0, i32 noundef %write, i32 noundef %use_areq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %__mmc_test_cmds_during_tfr.exit, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

__mmc_test_cmds_during_tfr.exit:                  ; preds = %if.end4.i
  %12 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_addr.i, align 4
  %call10.i = tail call fastcc i32 @mmc_test_ongoing_transfer(ptr noundef %test, i32 noundef %13, i32 noundef %use_sbc, i32 noundef 1, i32 noundef %write, i32 noundef %use_areq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool.not = icmp eq i32 %call10.i, 0
  br i1 %tobool.not, label %for.cond, label %__mmc_test_cmds_during_tfr.exit.cleanup_crit_edge

__mmc_test_cmds_during_tfr.exit.cleanup_crit_edge: ; preds = %__mmc_test_cmds_during_tfr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %__mmc_test_cmds_during_tfr.exit.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call5.i, %if.end4.i.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ 2, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call10.i, %__mmc_test_cmds_during_tfr.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmc_test_ongoing_transfer(ptr nocapture noundef readonly %test, i32 noundef %dev_addr, i32 noundef %use_sbc, i32 noundef %repeat_cmd, i32 noundef %write, i32 noundef %use_areq) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 404) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memset(ptr %call7.i.i, i32 0, i32 404)
  %cmd.i.i = getelementptr inbounds %struct.mmc_test_req, ptr %call7.i.i, i32 0, i32 2
  %cmd1.i.i = getelementptr inbounds %struct.mmc_request, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cmd.i.i, ptr %cmd1.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.mmc_test_req, ptr %call7.i.i, i32 0, i32 5
  %data3.i.i = getelementptr inbounds %struct.mmc_request, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data.i.i, ptr %data3.i.i, align 8
  %stop.i.i = getelementptr inbounds %struct.mmc_test_req, ptr %call7.i.i, i32 0, i32 3
  %stop5.i.i = getelementptr inbounds %struct.mmc_request, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %stop5.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %stop.i.i, ptr %stop5.i.i, align 4
  %5 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %test, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_sbc)
  %tobool3.not = icmp eq i32 %use_sbc, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sbc = getelementptr inbounds %struct.mmc_test_req, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sbc, ptr %call7.i.i, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %cap_cmd_during_tfr = getelementptr inbounds %struct.mmc_request, ptr %call7.i.i, i32 0, i32 9
  %10 = ptrtoint ptr %cap_cmd_during_tfr to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %cap_cmd_during_tfr, align 4
  %sg = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sg, align 4
  %sg_len = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 6
  %13 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sg_len, align 4
  %blocks = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 5
  %15 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blocks, align 4
  tail call fastcc void @mmc_test_prepare_mrq(ptr noundef %test, ptr noundef nonnull %call7.i.i, ptr noundef %12, i32 noundef %14, i32 noundef %dev_addr, i32 noundef %16, i32 noundef 512, i32 noundef %write)
  br i1 %tobool3.not, label %if.end6.if.end15_crit_edge, label %land.lhs.true

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end6
  %17 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp = icmp ugt i32 %18, 1
  br i1 %cmp, label %land.lhs.true9, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true9:                                   ; preds = %land.lhs.true
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call7.i.i, align 8
  %tobool11.not = icmp eq ptr %20, null
  br i1 %tobool11.not, label %if.then12, label %land.lhs.true9.if.end15_crit_edge

land.lhs.true9.if.end15_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then12:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  %caps.i = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 16
  %21 = ptrtoint ptr %caps.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %caps.i, align 32
  %and.i = and i32 %22, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not = icmp eq i32 %and.i, 0
  %cond = select i1 %tobool14.not, i32 2, i32 3
  br label %out_free

if.end15:                                         ; preds = %land.lhs.true9.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %use_areq)
  %tobool16.not = icmp eq i32 %use_areq, 0
  br i1 %tobool16.not, label %if.else, label %if.then.i183

if.then.i183:                                     ; preds = %if.end15
  %23 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %test, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %completion.i = getelementptr inbounds %struct.mmc_request, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %completion.i, align 8
  %wait.i.i = getelementptr inbounds %struct.mmc_request, ptr %call7.i.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.95, ptr noundef nonnull @init_completion.__key) #8
  %done.i = getelementptr inbounds %struct.mmc_request, ptr %call7.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @mmc_test_wait_done, ptr %done.i, align 8
  %ops.i.i = getelementptr inbounds %struct.mmc_host, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i.i, align 4
  %pre_req.i.i = getelementptr inbounds %struct.mmc_host_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %pre_req.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pre_req.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.then.i183.if.then12.i_crit_edge, label %if.then.i.i

if.then.i183.if.then12.i_crit_edge:               ; preds = %if.then.i183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

if.then.i.i:                                      ; preds = %if.then.i183
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %32(ptr noundef %26, ptr noundef nonnull %call7.i.i) #8
  br label %if.then12.i

if.then12.i:                                      ; preds = %if.then.i.i, %if.then.i183.if.then12.i_crit_edge
  %call13.i = tail call i32 @mmc_start_request(ptr noundef %26, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then12.i.if.end22_crit_edge, label %if.then24.i

if.then12.i.if.end22_crit_edge:                   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then24.i:                                      ; preds = %if.then12.i
  tail call void @mmc_retune_release(ptr noundef %26) #8
  %33 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool.not.i54.i = icmp eq ptr %36, null
  br i1 %tobool.not.i54.i, label %if.then24.i.out_free_crit_edge, label %if.then.i55.i

if.then24.i.out_free_crit_edge:                   ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then.i55.i:                                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %36(ptr noundef %26, ptr noundef nonnull %call7.i.i, i32 noundef %call13.i) #8
  br label %out_free

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mmc_wait_for_req(ptr noundef %8, ptr noundef nonnull %call7.i.i) #8
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then12.i.if.end22_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %37, 300
  %status25 = getelementptr inbounds %struct.mmc_test_req, ptr %call7.i.i, i32 0, i32 4
  %38 = getelementptr inbounds %struct.mmc_test_req, ptr %call7.i.i, i32 0, i32 4, i32 1
  %flags.i = getelementptr inbounds %struct.mmc_test_req, ptr %call7.i.i, i32 0, i32 4, i32 3
  %resp = getelementptr inbounds %struct.mmc_test_req, ptr %call7.i.i, i32 0, i32 4, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %repeat_cmd)
  %tobool45.not = icmp eq i32 %repeat_cmd, 0
  br label %do.body

do.body:                                          ; preds = %do.cond44.do.body_crit_edge, %if.end22
  %status.0 = phi i32 [ 0, %if.end22 ], [ %54, %do.cond44.do.body_crit_edge ]
  %count.0 = phi i32 [ 0, %if.end22 ], [ %add24, %do.cond44.do.body_crit_edge ]
  %add24 = add i32 %count.0, 1
  %39 = call ptr @memset(ptr %38, i32 0, i32 44)
  %40 = ptrtoint ptr %status25 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 13, ptr %status25, align 4
  %41 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %test, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %caps.i184 = getelementptr inbounds %struct.mmc_host, ptr %44, i32 0, i32 16
  %45 = ptrtoint ptr %caps.i184 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %caps.i184, align 32
  %and.i185 = and i32 %46, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i185)
  %tobool.not.i186 = icmp eq i32 %and.i185, 0
  br i1 %tobool.not.i186, label %if.then.i187, label %do.body.mmc_test_send_status.exit_crit_edge

do.body.mmc_test_send_status.exit_crit_edge:      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_send_status.exit

if.then.i187:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %rca.i = getelementptr inbounds %struct.mmc_card, ptr %42, i32 0, i32 3
  %47 = ptrtoint ptr %rca.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rca.i, align 4
  %shl.i = shl i32 %48, 16
  %49 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shl.i, ptr %38, align 8
  br label %mmc_test_send_status.exit

mmc_test_send_status.exit:                        ; preds = %if.then.i187, %do.body.mmc_test_send_status.exit_crit_edge
  %50 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 405, ptr %flags.i, align 4
  %51 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %42, align 8
  %call.i = tail call i32 @mmc_wait_for_cmd(ptr noundef %52, ptr noundef %status25, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %if.end29, label %mmc_test_send_status.exit.do.end48_crit_edge

mmc_test_send_status.exit.do.end48_crit_edge:     ; preds = %mmc_test_send_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

if.end29:                                         ; preds = %mmc_test_send_status.exit
  %53 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %resp, align 4
  %and = and i32 %54, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.do.end48_crit_edge

if.end29.do.end48_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

if.end33:                                         ; preds = %if.end29
  %call34 = tail call zeroext i1 @mmc_is_req_done(ptr noundef %8, ptr noundef nonnull %call7.i.i) #8
  br i1 %call34, label %if.end33.do.end48_crit_edge, label %if.end36

if.end33.do.end48_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

if.end36:                                         ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp37 = icmp slt i32 %sub, 0
  br i1 %cmp37, label %do.end, label %do.cond44

do.end:                                           ; preds = %if.end36
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i189 = icmp eq ptr %57, null
  br i1 %tobool.not.i189, label %if.end.i190, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i190:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %8, i32 0, i32 1
  %58 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i190, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %59, %if.end.i190 ], [ %57, %do.end.dev_name.exit_crit_edge ]
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %retval.0.i, i32 noundef %54) #12
  br label %do.end48

do.cond44:                                        ; preds = %if.end36
  %60 = and i32 %54, 7680
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %60)
  %cmp47.not = icmp eq i32 %60, 2048
  %or.cond = select i1 %tobool45.not, i1 true, i1 %cmp47.not
  br i1 %or.cond, label %do.cond44.do.end48_crit_edge, label %do.cond44.do.body_crit_edge

do.cond44.do.body_crit_edge:                      ; preds = %do.cond44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.cond44.do.end48_crit_edge:                     ; preds = %do.cond44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

do.end48:                                         ; preds = %do.cond44.do.end48_crit_edge, %dev_name.exit, %if.end33.do.end48_crit_edge, %if.end29.do.end48_crit_edge, %mmc_test_send_status.exit.do.end48_crit_edge
  %cmd_ret.0 = phi i32 [ -110, %dev_name.exit ], [ -5, %if.end29.do.end48_crit_edge ], [ 0, %do.cond44.do.end48_crit_edge ], [ 0, %if.end33.do.end48_crit_edge ], [ %call.i, %mmc_test_send_status.exit.do.end48_crit_edge ]
  %status.1 = phi i32 [ %54, %dev_name.exit ], [ %54, %if.end29.do.end48_crit_edge ], [ %54, %do.cond44.do.end48_crit_edge ], [ %54, %if.end33.do.end48_crit_edge ], [ %status.0, %mmc_test_send_status.exit.do.end48_crit_edge ]
  br i1 %tobool16.not, label %if.else52, label %if.then50

if.then50:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  %call51 = tail call fastcc i32 @mmc_test_start_areq(ptr noundef %test, ptr noundef null, ptr noundef nonnull %call7.i.i)
  br label %if.end55

if.else52:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %test, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 8
  tail call void @mmc_wait_for_req_done(ptr noundef %64, ptr noundef nonnull %call7.i.i) #8
  br label %if.end55

if.end55:                                         ; preds = %if.else52, %if.then50
  %ret.1 = phi i32 [ %call51, %if.then50 ], [ 0, %if.else52 ]
  %65 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data3.i.i, align 8
  %stop = getelementptr inbounds %struct.mmc_data, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %stop, align 4
  %tobool56.not = icmp eq ptr %68, null
  br i1 %tobool56.not, label %if.end55.if.end73_crit_edge, label %land.lhs.true57

if.end55.if.end73_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

land.lhs.true57:                                  ; preds = %if.end55
  %error = getelementptr inbounds %struct.mmc_data, ptr %66, i32 0, i32 5
  %69 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool59.not = icmp eq i32 %70, 0
  br i1 %tobool59.not, label %lor.lhs.false, label %land.lhs.true57.if.then62_crit_edge

land.lhs.true57.if.then62_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

lor.lhs.false:                                    ; preds = %land.lhs.true57
  %71 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call7.i.i, align 8
  %tobool61.not = icmp eq ptr %72, null
  br i1 %tobool61.not, label %lor.lhs.false.if.then62_crit_edge, label %lor.lhs.false.if.end73_crit_edge

lor.lhs.false.if.end73_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

lor.lhs.false.if.then62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then62

if.then62:                                        ; preds = %lor.lhs.false.if.then62_crit_edge, %land.lhs.true57.if.then62_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool63.not = icmp eq i32 %ret.1, 0
  %call71 = tail call i32 @mmc_wait_for_cmd(ptr noundef %8, ptr noundef nonnull %68, i32 noundef 0) #8
  br i1 %tobool63.not, label %if.then62.if.end73_crit_edge, label %if.then62.out_free_crit_edge

if.then62.out_free_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.then62.if.end73_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.end73:                                         ; preds = %if.then62.if.end73_crit_edge, %lor.lhs.false.if.end73_crit_edge, %if.end55.if.end73_crit_edge
  %ret.2 = phi i32 [ %ret.1, %lor.lhs.false.if.end73_crit_edge ], [ %ret.1, %if.end55.if.end73_crit_edge ], [ %call71, %if.then62.if.end73_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool74.not = icmp eq i32 %ret.2, 0
  br i1 %tobool74.not, label %if.end76, label %if.end73.out_free_crit_edge

if.end73.out_free_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end76:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd_ret.0)
  %tobool77.not = icmp eq i32 %cmd_ret.0, 0
  br i1 %tobool77.not, label %if.end76.lor.lhs.false.i_crit_edge, label %do.end81

if.end76.lor.lhs.false.i_crit_edge:               ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

do.end81:                                         ; preds = %if.end76
  %73 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %test, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 8
  %init_name.i191 = getelementptr inbounds %struct.mmc_host, ptr %76, i32 0, i32 1, i32 3
  %77 = ptrtoint ptr %init_name.i191 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %init_name.i191, align 8
  %tobool.not.i192 = icmp eq ptr %78, null
  br i1 %tobool.not.i192, label %if.end.i193, label %do.end81.dev_name.exit195_crit_edge

do.end81.dev_name.exit195_crit_edge:              ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit195

if.end.i193:                                      ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev85 = getelementptr inbounds %struct.mmc_host, ptr %76, i32 0, i32 1
  %79 = ptrtoint ptr %class_dev85 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %class_dev85, align 4
  br label %dev_name.exit195

dev_name.exit195:                                 ; preds = %if.end.i193, %do.end81.dev_name.exit195_crit_edge
  %retval.0.i194 = phi ptr [ %80, %if.end.i193 ], [ %78, %do.end81.dev_name.exit195_crit_edge ]
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef %retval.0.i194, i32 noundef %status.1, i32 noundef %cmd_ret.0) #12
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %dev_name.exit195, %if.end76.lor.lhs.false.i_crit_edge
  %81 = ptrtoint ptr %cmd1.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %cmd1.i.i, align 4
  %tobool1.not.i = icmp eq ptr %82, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.rhs.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %83 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data3.i.i, align 8
  %tobool2.not.i = icmp eq ptr %84, null
  br i1 %tobool2.not.i, label %lor.rhs.i.do.end.i_crit_edge, label %if.end25.i, !prof !259

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 696, i32 noundef 9, ptr noundef null) #8
  br label %out_free

if.end25.i:                                       ; preds = %lor.rhs.i
  %85 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call7.i.i, align 8
  %tobool26.not.i = icmp eq ptr %86, null
  br i1 %tobool26.not.i, label %if.end25.i.if.end41.i_crit_edge, label %if.end32.i

if.end25.i.if.end41.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.end32.i:                                       ; preds = %if.end25.i
  %error.i = getelementptr inbounds %struct.mmc_command, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %error.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool33.not.i = icmp eq i32 %88, 0
  br i1 %tobool33.not.i, label %if.end32.i.if.end41.i_crit_edge, label %if.end32.i.if.end68.i_crit_edge

if.end32.i.if.end68.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.end32.i.if.end41.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end32.i.if.end41.i_crit_edge, %if.end25.i.if.end41.i_crit_edge
  %error36.i = getelementptr inbounds %struct.mmc_command, ptr %82, i32 0, i32 5
  %89 = ptrtoint ptr %error36.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %error36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool42.not.i = icmp eq i32 %90, 0
  br i1 %tobool42.not.i, label %if.end50.i, label %if.end41.i.if.end68.i_crit_edge

if.end41.i.if.end68.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.end50.i:                                       ; preds = %if.end41.i
  %error45.i = getelementptr inbounds %struct.mmc_data, ptr %84, i32 0, i32 5
  %91 = ptrtoint ptr %error45.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %error45.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool51.not.i = icmp eq i32 %92, 0
  br i1 %tobool51.not.i, label %land.lhs.true52.i, label %if.end50.i.if.end68.i_crit_edge

if.end50.i.if.end68.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

land.lhs.true52.i:                                ; preds = %if.end50.i
  %93 = ptrtoint ptr %stop5.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %stop5.i.i, align 4
  %tobool53.not.i = icmp eq ptr %94, null
  br i1 %tobool53.not.i, label %land.lhs.true52.i.mmc_test_check_result.exit_crit_edge, label %if.end61.i

land.lhs.true52.i.mmc_test_check_result.exit_crit_edge: ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_check_result.exit

if.end61.i:                                       ; preds = %land.lhs.true52.i
  %error56.i = getelementptr inbounds %struct.mmc_command, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %error56.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %error56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool62.not.i = icmp eq i32 %96, 0
  br i1 %tobool62.not.i, label %if.end61.i.mmc_test_check_result.exit_crit_edge, label %if.end61.i.if.end68.i_crit_edge

if.end61.i.if.end68.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.end61.i.mmc_test_check_result.exit_crit_edge:  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mmc_test_check_result.exit

if.end68.i:                                       ; preds = %if.end61.i.if.end68.i_crit_edge, %if.end50.i.if.end68.i_crit_edge, %if.end41.i.if.end68.i_crit_edge, %if.end32.i.if.end68.i_crit_edge
  %ret.4.i = phi i32 [ %96, %if.end61.i.if.end68.i_crit_edge ], [ %92, %if.end50.i.if.end68.i_crit_edge ], [ %90, %if.end41.i.if.end68.i_crit_edge ], [ %88, %if.end32.i.if.end68.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %ret.4.i)
  %cmp69.i = icmp eq i32 %ret.4.i, -22
  %spec.select = select i1 %cmp69.i, i32 2, i32 %ret.4.i
  br label %out_free

mmc_test_check_result.exit:                       ; preds = %if.end61.i.mmc_test_check_result.exit_crit_edge, %land.lhs.true52.i.mmc_test_check_result.exit_crit_edge
  %bytes_xfered.i = getelementptr inbounds %struct.mmc_data, ptr %84, i32 0, i32 7
  %97 = ptrtoint ptr %bytes_xfered.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %bytes_xfered.i, align 4
  %blocks.i = getelementptr inbounds %struct.mmc_data, ptr %84, i32 0, i32 3
  %99 = ptrtoint ptr %blocks.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %blocks.i, align 4
  %blksz.i = getelementptr inbounds %struct.mmc_data, ptr %84, i32 0, i32 2
  %101 = ptrtoint ptr %blksz.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %blksz.i, align 4
  %mul.i = mul i32 %102, %100
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %mul.i)
  %cmp.not.i.not = icmp eq i32 %98, %mul.i
  br i1 %cmp.not.i.not, label %if.end92, label %mmc_test_check_result.exit.out_free_crit_edge

mmc_test_check_result.exit.out_free_crit_edge:    ; preds = %mmc_test_check_result.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end92:                                         ; preds = %mmc_test_check_result.exit
  %call93 = tail call fastcc i32 @mmc_test_wait_busy(ptr noundef %test)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp ne i32 %call93, 0
  %brmerge = or i1 %tobool94.not, %tobool45.not
  %call93.mux = select i1 %tobool94.not, i32 %call93, i32 %cmd_ret.0
  br i1 %brmerge, label %if.end92.out_free_crit_edge, label %land.lhs.true98

if.end92.out_free_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

land.lhs.true98:                                  ; preds = %if.end92
  %103 = ptrtoint ptr %blocks to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %blocks, align 4
  %add100 = shl i32 %104, 9
  %shl = add i32 %add100, 512
  %max_tfr = getelementptr inbounds %struct.mmc_test_card, ptr %test, i32 0, i32 4, i32 2
  %105 = ptrtoint ptr %max_tfr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %max_tfr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %106)
  %cmp101 = icmp ugt i32 %shl, %106
  br i1 %cmp101, label %do.end105, label %land.lhs.true98.out_free_crit_edge

land.lhs.true98.out_free_crit_edge:               ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

do.end105:                                        ; preds = %land.lhs.true98
  %107 = ptrtoint ptr %test to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %test, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 8
  %init_name.i198 = getelementptr inbounds %struct.mmc_host, ptr %110, i32 0, i32 1, i32 3
  %111 = ptrtoint ptr %init_name.i198 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %init_name.i198, align 8
  %tobool.not.i199 = icmp eq ptr %112, null
  br i1 %tobool.not.i199, label %if.end.i200, label %do.end105.dev_name.exit202_crit_edge

do.end105.dev_name.exit202_crit_edge:             ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit202

if.end.i200:                                      ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev109 = getelementptr inbounds %struct.mmc_host, ptr %110, i32 0, i32 1
  %113 = ptrtoint ptr %class_dev109 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %class_dev109, align 4
  br label %dev_name.exit202

dev_name.exit202:                                 ; preds = %if.end.i200, %do.end105.dev_name.exit202_crit_edge
  %retval.0.i201 = phi ptr [ %114, %if.end.i200 ], [ %112, %do.end105.dev_name.exit202_crit_edge ]
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef %retval.0.i201, i32 noundef %add24, i32 noundef %104) #12
  br label %out_free

out_free:                                         ; preds = %dev_name.exit202, %land.lhs.true98.out_free_crit_edge, %if.end92.out_free_crit_edge, %mmc_test_check_result.exit.out_free_crit_edge, %if.end68.i, %do.end.i, %if.end73.out_free_crit_edge, %if.then62.out_free_crit_edge, %if.then.i55.i, %if.then24.i.out_free_crit_edge, %if.then12
  %ret.3 = phi i32 [ %ret.2, %if.end73.out_free_crit_edge ], [ 1, %mmc_test_check_result.exit.out_free_crit_edge ], [ %call93.mux, %if.end92.out_free_crit_edge ], [ %cond, %if.then12 ], [ %cmd_ret.0, %dev_name.exit202 ], [ %cmd_ret.0, %land.lhs.true98.out_free_crit_edge ], [ %call13.i, %if.then24.i.out_free_crit_edge ], [ %call13.i, %if.then.i55.i ], [ -22, %do.end.i ], [ %spec.select, %if.end68.i ], [ %ret.1, %if.then62.out_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %out_free ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mmc_is_req_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_wait_for_req_done(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtf_test_show(ptr noundef %sf, ptr nocapture noundef readnone %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @mmc_test_lock, i32 noundef 0) #8
  %gr.047 = load ptr, ptr @mmc_test_result, align 4
  %cmp.not48 = icmp eq ptr %gr.047, @mmc_test_result
  br i1 %cmp.not48, label %entry.for.end25_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %gr.049 = phi ptr [ %gr.0, %cleanup.for.body_crit_edge ], [ %gr.047, %entry.for.body_crit_edge ]
  %card1 = getelementptr inbounds %struct.mmc_test_general_result, ptr %gr.049, i32 0, i32 1
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %cmp2.not = icmp eq ptr %3, %1
  br i1 %cmp2.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  %testcase = getelementptr inbounds %struct.mmc_test_general_result, ptr %gr.049, i32 0, i32 2
  %4 = ptrtoint ptr %testcase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %testcase, align 4
  %add = add i32 %5, 1
  %result = getelementptr inbounds %struct.mmc_test_general_result, ptr %gr.049, i32 0, i32 3
  %6 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %result, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.114, i32 noundef %add, i32 noundef %7) #8
  %tr_lst = getelementptr inbounds %struct.mmc_test_general_result, ptr %gr.049, i32 0, i32 4
  %8 = ptrtoint ptr %tr_lst to i32
  call void @__asan_load4_noabort(i32 %8)
  %tr.044 = load ptr, ptr %tr_lst, align 4
  %cmp9.not45 = icmp eq ptr %tr.044, %tr_lst
  br i1 %cmp9.not45, label %if.end.cleanup_crit_edge, label %if.end.for.body11_crit_edge

if.end.for.body11_crit_edge:                      ; preds = %if.end
  br label %for.body11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body11:                                       ; preds = %for.body11.for.body11_crit_edge, %if.end.for.body11_crit_edge
  %tr.046 = phi ptr [ %tr.0, %for.body11.for.body11_crit_edge ], [ %tr.044, %if.end.for.body11_crit_edge ]
  %count = getelementptr inbounds %struct.mmc_test_transfer_result, ptr %tr.046, i32 0, i32 1
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 8
  %sectors = getelementptr inbounds %struct.mmc_test_transfer_result, ptr %tr.046, i32 0, i32 2
  %11 = ptrtoint ptr %sectors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sectors, align 4
  %ts = getelementptr inbounds %struct.mmc_test_transfer_result, ptr %tr.046, i32 0, i32 3
  %13 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ts, align 8
  %tv_nsec = getelementptr inbounds %struct.mmc_test_transfer_result, ptr %tr.046, i32 0, i32 3, i32 1
  %15 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tv_nsec, align 8
  %rate = getelementptr inbounds %struct.mmc_test_transfer_result, ptr %tr.046, i32 0, i32 4
  %17 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rate, align 8
  %iops = getelementptr inbounds %struct.mmc_test_transfer_result, ptr %tr.046, i32 0, i32 5
  %19 = ptrtoint ptr %iops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iops, align 4
  %.frozen = freeze i32 %20
  %div = udiv i32 %.frozen, 100
  %21 = mul i32 %div, 100
  %rem.decomposed = sub i32 %.frozen, %21
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.115, i32 noundef %10, i32 noundef %12, i64 noundef %14, i32 noundef %16, i32 noundef %18, i32 noundef %div, i32 noundef %rem.decomposed) #8
  %22 = ptrtoint ptr %tr.046 to i32
  call void @__asan_load4_noabort(i32 %22)
  %tr.0 = load ptr, ptr %tr.046, align 4
  %cmp9.not = icmp eq ptr %tr.0, %tr_lst
  br i1 %cmp9.not, label %for.body11.cleanup_crit_edge, label %for.body11.for.body11_crit_edge

for.body11.for.body11_crit_edge:                  ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11

for.body11.cleanup_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %23 = ptrtoint ptr %gr.049 to i32
  call void @__asan_load4_noabort(i32 %23)
  %gr.0 = load ptr, ptr %gr.049, align 4
  %cmp.not = icmp eq ptr %gr.0, @mmc_test_result
  br i1 %cmp.not, label %cleanup.for.end25_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end25_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end25

for.end25:                                        ; preds = %cleanup.for.end25_crit_edge, %entry.for.end25_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mmc_test_lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtf_testlist_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mtf_testlist_show, ptr noundef %1) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtf_testlist_show(ptr noundef %sf, ptr nocapture noundef readnone %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mmc_test_lock, i32 noundef 0) #8
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.116) #8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.05, 1
  %arrayidx = getelementptr [51 x %struct.mmc_test_case], ptr @mmc_test_cases, i32 0, i32 %i.05
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %sf, ptr noundef nonnull @.str.117, i32 noundef %add, ptr noundef %1) #8
  %exitcond.not = icmp eq i32 %add, 51
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef nonnull @mmc_test_lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_claim_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_cmdq_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !187, !188, !189, !191, !192, !193, !194, !196, !197, !199, !200, !201, !202, !203, !204, !206, !207, !208, !209, !211, !213, !214, !215, !216, !218, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !238, !240, !242}
!llvm.named.register.sp = !{!244}
!llvm.module.flags = !{!245, !246, !247, !248, !249, !250, !251, !252}
!llvm.ident = !{!253}

!0 = !{ptr @__initcall__kmod_mmc_test__303_3277_mmc_test_init6, !1, !"__initcall__kmod_mmc_test__303_3277_mmc_test_init6", i1 false, i1 false}
!1 = !{!"../drivers/mmc/core/mmc_test.c", i32 3277, i32 1}
!2 = !{ptr @__exitcall_mmc_test_exit, !3, !"__exitcall_mmc_test_exit", i1 false, i1 false}
!3 = !{!"../drivers/mmc/core/mmc_test.c", i32 3278, i32 1}
!4 = !{ptr @__UNIQUE_ID_file304, !5, !"__UNIQUE_ID_file304", i1 false, i1 false}
!5 = !{!"../drivers/mmc/core/mmc_test.c", i32 3280, i32 1}
!6 = !{ptr @__UNIQUE_ID_license305, !5, !"__UNIQUE_ID_license305", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description306, !8, !"__UNIQUE_ID_description306", i1 false, i1 false}
!8 = !{!"../drivers/mmc/core/mmc_test.c", i32 3281, i32 1}
!9 = !{ptr @__UNIQUE_ID_author307, !10, !"__UNIQUE_ID_author307", i1 false, i1 false}
!10 = !{!"../drivers/mmc/core/mmc_test.c", i32 3282, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mmc/core/mmc_test.c", i32 2932, i32 8}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mmc_test_lock, !12, !"mmc_test_lock", i1 false, i1 false}
!15 = !{ptr @mmc_test_result, !16, !"mmc_test_result", i1 false, i1 false}
!16 = !{!"../drivers/mmc/core/mmc_test.c", i32 2934, i32 8}
!17 = !{ptr @mmc_test_file_test, !18, !"mmc_test_file_test", i1 false, i1 false}
!18 = !{!"../drivers/mmc/core/mmc_test.c", i32 3050, i32 8}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mmc/core/mmc_test.c", i32 3257, i32 11}
!21 = !{ptr @mmc_driver, !22, !"mmc_driver", i1 false, i1 false}
!22 = !{!"../drivers/mmc/core/mmc_test.c", i32 3255, i32 26}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mmc/core/mmc_test.c", i32 3239, i32 2}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mmc_test_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @mmc_test_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mmc/core/mmc_test.c", i32 3204, i32 45}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mmc/core/mmc_test.c", i32 3209, i32 45}
!35 = !{ptr @mmc_test_fops_test, !36, !"mmc_test_fops_test", i1 false, i1 false}
!36 = !{!"../drivers/mmc/core/mmc_test.c", i32 3134, i32 37}
!37 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mmc/core/mmc_test.c", i32 2940, i32 2}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mmc_test_run._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mmc_test_run._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mmc/core/mmc_test.c", i32 2951, i32 3}
!46 = !{ptr @mmc_test_run._entry.13, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mmc_test_run._entry_ptr.15, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/core/mmc_test.c", i32 2958, i32 5}
!50 = !{ptr @mmc_test_run._entry.16, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mmc_test_run._entry_ptr.18, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/core/mmc_test.c", i32 2986, i32 4}
!54 = !{ptr @mmc_test_run._entry.19, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mmc_test_run._entry_ptr.21, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mmc/core/mmc_test.c", i32 2990, i32 4}
!58 = !{ptr @mmc_test_run._entry.22, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mmc_test_run._entry_ptr.24, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/core/mmc_test.c", i32 2994, i32 4}
!62 = !{ptr @mmc_test_run._entry.25, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mmc_test_run._entry_ptr.27, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/core/mmc_test.c", i32 2998, i32 4}
!66 = !{ptr @mmc_test_run._entry.28, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mmc_test_run._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mmc/core/mmc_test.c", i32 3002, i32 4}
!70 = !{ptr @mmc_test_run._entry.31, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mmc_test_run._entry_ptr.33, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mmc/core/mmc_test.c", i32 3013, i32 5}
!74 = !{ptr @mmc_test_run._entry.34, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @mmc_test_run._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mmc/core/mmc_test.c", i32 3022, i32 2}
!78 = !{ptr @mmc_test_run._entry.37, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @mmc_test_run._entry_ptr.39, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mmc/core/mmc_test.c", i32 2563, i32 11}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mmc/core/mmc_test.c", i32 2568, i32 11}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mmc/core/mmc_test.c", i32 2573, i32 11}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mmc/core/mmc_test.c", i32 2580, i32 11}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mmc/core/mmc_test.c", i32 2587, i32 11}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mmc/core/mmc_test.c", i32 2594, i32 11}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mmc/core/mmc_test.c", i32 2601, i32 11}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mmc/core/mmc_test.c", i32 2608, i32 11}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mmc/core/mmc_test.c", i32 2615, i32 11}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mmc/core/mmc_test.c", i32 2622, i32 11}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mmc/core/mmc_test.c", i32 2629, i32 11}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mmc/core/mmc_test.c", i32 2636, i32 11}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mmc/core/mmc_test.c", i32 2643, i32 11}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mmc/core/mmc_test.c", i32 2650, i32 11}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mmc/core/mmc_test.c", i32 2657, i32 11}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mmc/core/mmc_test.c", i32 2662, i32 11}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mmc/core/mmc_test.c", i32 2667, i32 11}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mmc/core/mmc_test.c", i32 2672, i32 11}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mmc/core/mmc_test.c", i32 2679, i32 11}
!118 = !{ptr @.str.59, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mmc/core/mmc_test.c", i32 2686, i32 11}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mmc/core/mmc_test.c", i32 2693, i32 11}
!122 = !{ptr @.str.61, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mmc/core/mmc_test.c", i32 2700, i32 11}
!124 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mmc/core/mmc_test.c", i32 2731, i32 11}
!126 = !{ptr @.str.63, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mmc/core/mmc_test.c", i32 2738, i32 11}
!128 = !{ptr @.str.64, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mmc/core/mmc_test.c", i32 2745, i32 11}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mmc/core/mmc_test.c", i32 2752, i32 11}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mmc/core/mmc_test.c", i32 2759, i32 11}
!134 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/mmc/core/mmc_test.c", i32 2766, i32 11}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mmc/core/mmc_test.c", i32 2773, i32 11}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mmc/core/mmc_test.c", i32 2780, i32 11}
!140 = !{ptr @.str.70, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/mmc/core/mmc_test.c", i32 2787, i32 11}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/mmc/core/mmc_test.c", i32 2794, i32 11}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/mmc/core/mmc_test.c", i32 2801, i32 11}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/mmc/core/mmc_test.c", i32 2808, i32 11}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/mmc/core/mmc_test.c", i32 2815, i32 11}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/mmc/core/mmc_test.c", i32 2822, i32 11}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mmc/core/mmc_test.c", i32 2829, i32 11}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/mmc/core/mmc_test.c", i32 2836, i32 11}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/mmc/core/mmc_test.c", i32 2843, i32 11}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/mmc/core/mmc_test.c", i32 2850, i32 11}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/mmc/core/mmc_test.c", i32 2857, i32 11}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mmc/core/mmc_test.c", i32 2864, i32 11}
!164 = !{ptr @.str.82, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/mmc/core/mmc_test.c", i32 2871, i32 11}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/mmc/core/mmc_test.c", i32 2878, i32 11}
!168 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/mmc/core/mmc_test.c", i32 2885, i32 11}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mmc/core/mmc_test.c", i32 2890, i32 11}
!172 = !{ptr @.str.86, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/mmc/core/mmc_test.c", i32 2897, i32 11}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mmc/core/mmc_test.c", i32 2904, i32 11}
!176 = !{ptr @.str.88, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/mmc/core/mmc_test.c", i32 2911, i32 11}
!178 = !{ptr @.str.89, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/mmc/core/mmc_test.c", i32 2918, i32 11}
!180 = !{ptr @.str.90, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/mmc/core/mmc_test.c", i32 2925, i32 11}
!182 = !{ptr @mmc_test_cases, !183, !"mmc_test_cases", i1 false, i1 false}
!183 = !{!"../drivers/mmc/core/mmc_test.c", i32 2561, i32 35}
!184 = !{ptr @.str.91, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/mmc/core/mmc_test.c", i32 278, i32 5}
!186 = !{ptr @.str.92, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @mmc_test_wait_busy._entry, !185, !"_entry", i1 false, i1 false}
!188 = !{ptr @mmc_test_wait_busy._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!189 = !{ptr @.str.93, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/mmc/core/mmc_test.c", i32 1422, i32 3}
!191 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @mmc_test_area_map._entry, !190, !"_entry", i1 false, i1 false}
!193 = !{ptr @mmc_test_area_map._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @init_completion.__key, !195, !"__key", i1 false, i1 false}
!195 = !{!"../include/linux/completion.h", i32 87, i32 2}
!196 = !{ptr @.str.95, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.96, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/mmc/core/mmc_test.c", i32 595, i32 2}
!199 = !{ptr @.str.97, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @mmc_test_print_avg_rate._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @mmc_test_print_avg_rate._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.99, !198, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.100, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/mmc/core/mmc_test.c", i32 569, i32 2}
!206 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @mmc_test_print_rate._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @mmc_test_print_rate._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @rnd_next, !210, !"rnd_next", i1 false, i1 false}
!210 = !{!"../drivers/mmc/core/mmc_test.c", i32 1900, i32 21}
!211 = !{ptr @.str.102, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/mmc/core/mmc_test.c", i32 2143, i32 3}
!213 = !{ptr @.str.103, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @mmc_test_rw_multiple_size._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @mmc_test_rw_multiple_size._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.104, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/mmc/core/mmc_test.c", i32 2129, i32 2}
!218 = !{ptr @.str.105, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @mmc_test_rw_multiple._entry, !217, !"_entry", i1 false, i1 false}
!220 = !{ptr @mmc_test_rw_multiple._entry_ptr, !217, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.106, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/mmc/core/mmc_test.c", i32 2421, i32 4}
!223 = !{ptr @.str.107, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @mmc_test_ongoing_transfer._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @mmc_test_ongoing_transfer._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.109, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/mmc/core/mmc_test.c", i32 2450, i32 3}
!228 = !{ptr @mmc_test_ongoing_transfer._entry.108, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @mmc_test_ongoing_transfer._entry_ptr.110, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.112, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/mmc/core/mmc_test.c", i32 2463, i32 3}
!232 = !{ptr @mmc_test_ongoing_transfer._entry.111, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @mmc_test_ongoing_transfer._entry_ptr.113, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.114, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/mmc/core/mmc_test.c", i32 3065, i32 18}
!236 = !{ptr @.str.115, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/mmc/core/mmc_test.c", i32 3068, i32 19}
!238 = !{ptr @mtf_testlist_fops, !239, !"mtf_testlist_fops", i1 false, i1 false}
!239 = !{!"../drivers/mmc/core/mmc_test.c", i32 3157, i32 1}
!240 = !{ptr @.str.116, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/mmc/core/mmc_test.c", i32 3148, i32 15}
!242 = !{ptr @.str.117, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/mmc/core/mmc_test.c", i32 3150, i32 18}
!244 = !{!"sp"}
!245 = !{i32 1, !"wchar_size", i32 2}
!246 = !{i32 1, !"min_enum_size", i32 4}
!247 = !{i32 8, !"branch-target-enforcement", i32 0}
!248 = !{i32 8, !"sign-return-address", i32 0}
!249 = !{i32 8, !"sign-return-address-all", i32 0}
!250 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!251 = !{i32 7, !"uwtable", i32 1}
!252 = !{i32 7, !"frame-pointer", i32 2}
!253 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!254 = !{i8 0, i8 2}
!255 = !{!"auto-init"}
!256 = !{!"branch_weights", i32 2000, i32 1}
!257 = !{i64 2154475081, i64 2154475573, i64 2154475118, i64 2154475174, i64 2154475208, i64 2154475232, i64 2154475273, i64 2154475294, i64 2154475322, i64 2154475356}
!258 = !{i64 2154480752, i64 2154481244, i64 2154480789, i64 2154480845, i64 2154480879, i64 2154480903, i64 2154480944, i64 2154480965, i64 2154480993, i64 2154481027}
!259 = !{!"branch_weights", i32 1, i32 2000}
!260 = !{i64 974778, i64 974839}
!261 = !{i64 977510}
!262 = !{i64 977795}
!263 = !{i32 12, i32 33}
!264 = !{i64 2148419883, i64 2148420163, i64 2148420497, i64 2148420831}
