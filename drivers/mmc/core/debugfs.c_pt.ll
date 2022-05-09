; ModuleID = '/llk/IR_all_yes/drivers/mmc/core/debugfs.c_pt.bc'
source_filename = "../drivers/mmc/core/debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.71, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.72, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.73, ptr, %struct.address_space, %struct.list_head, %union.anon.74, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.71 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.72 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.73 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.74 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__param_str_fail_request = internal constant [22 x i8] c"mmc_core.fail_request\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@fail_request = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_fail_request = internal constant %struct.kernel_param { ptr @__param_str_fail_request, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.69 { ptr @fail_request } }, section "__param", align 4
@__UNIQUE_ID_fail_requesttype267 = internal constant [37 x i8] c"mmc_core.parmtype=fail_request:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_fail_request268 = internal constant [62 x i8] c"mmc_core.parm=fail_request:default fault injection attributes\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ios\00", [28 x i8] zeroinitializer }, align 32
@mmc_ios_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mmc_ios_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"caps\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"caps2\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clock\00", [26 x i8] zeroinitializer }, align 32
@mmc_clock_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @debugfs_attr_read, ptr @debugfs_attr_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @mmc_clock_fops_open, ptr null, ptr @simple_attr_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@fail_default_attr = internal global { %struct.fault_attr, [40 x i8] } { %struct.fault_attr { i32 0, i32 1, %struct.atomic_t { i32 1 }, %struct.atomic_t zeroinitializer, i32 2, i8 0, i32 32, i32 0, i32 -1, i32 0, i32 0, i32 0, %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.65, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 0, i32 10, i32 0, i32 0, i32 0, i32 0 }, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fail_mmc_request\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@mmc_ios_show.vdd_str = internal constant { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.1\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.2\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.3\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.4\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.5\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.6\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.7\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.8\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.9\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.0\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.1\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.2\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.3\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.4\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.5\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3.6\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clock:\09\09%u Hz\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"actual clock:\09%u Hz\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdd:\09\09%u \00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(1.65 - 1.95 V)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"(%s ~ %s V)\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(invalid)\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"open drain\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"push-pull\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bus mode:\09%u (%s)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"don't care\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"active high\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"active low\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"chip select:\09%u (%s)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"power mode:\09%u (%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bus width:\09%u (%u bits)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"legacy\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mmc high-speed\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sd high-speed\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sd uhs SDR12\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sd uhs SDR25\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sd uhs SDR50\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sd uhs SDR104\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sd uhs DDR50\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmc DDR52\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmc HS200\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mmc HS400 enhanced strobe\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmc HS400\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"timing spec:\09%u (%s)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3.30 V\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.80 V\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.20 V\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"signal voltage:\09%u (%s)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"driver type A\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"driver type B\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"driver type C\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"driver type D\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"driver type:\09%u (%s)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ratelimit_state.lock\00", [43 x i8] zeroinitializer }, align 32
@switch.table.mmc_ios_show = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35], [20 x i8] zeroinitializer }, align 32
@switch.table.mmc_ios_show.66 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39], [20 x i8] zeroinitializer }, align 32
@switch.table.mmc_ios_show.67 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.57], [20 x i8] zeroinitializer }, align 32
@switch.table.mmc_ios_show.68 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.60, ptr @.str.59, ptr @.str.61, ptr @.str.62], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.69 = private unnamed_addr constant [13 x i8] c"fail_request\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 27, i32 14 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 233, i32 22 }
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"mmc_ios_fops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 197, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 234, i32 21 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 235, i32 21 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 236, i32 29 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"mmc_clock_fops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"fail_default_attr\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 243, i32 28 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 264, i32 21 }
@___asan_gen_.99 = private unnamed_addr constant [8 x i8] c"vdd_str\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 36, i32 21 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 37, i32 9 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 38, i32 9 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 39, i32 10 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 40, i32 10 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 41, i32 10 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 42, i32 10 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 43, i32 10 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 44, i32 10 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 45, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 46, i32 10 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 47, i32 10 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 48, i32 10 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 49, i32 10 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 50, i32 10 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 51, i32 10 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 52, i32 10 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 53, i32 10 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 59, i32 16 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 61, i32 17 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 62, i32 16 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 64, i32 17 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 67, i32 17 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 70, i32 17 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 74, i32 9 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 77, i32 9 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 80, i32 9 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 83, i32 16 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 87, i32 9 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 90, i32 9 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 93, i32 9 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 99, i32 16 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 103, i32 9 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 106, i32 9 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 109, i32 9 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 115, i32 16 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 116, i32 16 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 121, i32 9 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 124, i32 9 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 127, i32 9 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 130, i32 9 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 133, i32 9 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 136, i32 9 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 139, i32 9 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 142, i32 9 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 145, i32 9 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 148, i32 9 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 152, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 152, i32 34 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 158, i32 16 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 162, i32 9 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 165, i32 9 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 168, i32 9 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 174, i32 16 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 178, i32 9 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 181, i32 9 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 184, i32 9 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 187, i32 9 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 193, i32 16 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 223, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.280 = private constant [30 x i8] c"../drivers/mmc/core/debugfs.c\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 26, i32 8 }
@___asan_gen_.282 = private unnamed_addr constant [26 x i8] c"switch.table.mmc_ios_show\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [29 x i8] c"switch.table.mmc_ios_show.66\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [29 x i8] c"switch.table.mmc_ios_show.67\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [29 x i8] c"switch.table.mmc_ios_show.68\00", align 1
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_fail_request268, ptr @__UNIQUE_ID_fail_requesttype267, ptr @__param_fail_request, ptr @fail_request, ptr @.str, ptr @mmc_ios_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mmc_clock_fops, ptr @fail_default_attr, ptr @.str.4, ptr @.str.5, ptr @mmc_ios_show.vdd_str, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @switch.table.mmc_ios_show, ptr @switch.table.mmc_ios_show.66, ptr @switch.table.mmc_ios_show.67, ptr @switch.table.mmc_ios_show.68], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fail_request to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_ios_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_clock_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fail_default_attr to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_ios_show.vdd_str to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mmc_ios_show to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mmc_ios_show.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mmc_ios_show.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mmc_ios_show.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_add_host_debugfs(ptr noundef %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %class_dev = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 1
  %2 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %class_dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef null) #3
  %debugfs_root = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 55
  %4 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %debugfs_root, align 8
  %call2 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %host, ptr noundef nonnull @mmc_ios_fops) #3
  %caps = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 16
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.1, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %caps) #3
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 17
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef %call1, ptr noundef %caps2) #3
  %call3 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.3, i16 noundef zeroext 384, ptr noundef %call1, ptr noundef %host, ptr noundef nonnull @mmc_clock_fops) #3
  %5 = load ptr, ptr @fail_request, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %dev_name.exit.if.end_crit_edge, label %if.then

dev_name.exit.if.end_crit_edge:                   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call4 = tail call i32 @setup_fault_attr(ptr noundef nonnull @fail_default_attr, ptr noundef nonnull %5) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %dev_name.exit.if.end_crit_edge
  %fail_mmc_request = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 57
  %6 = call ptr @memcpy(ptr %fail_mmc_request, ptr @fail_default_attr, i32 120)
  %call6 = tail call ptr @fault_create_debugfs_attr(ptr noundef nonnull @.str.4, ptr noundef %call1, ptr noundef %fail_mmc_request) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setup_fault_attr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fault_create_debugfs_attr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_remove_host_debugfs(ptr nocapture noundef readonly %host) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_root = getelementptr inbounds %struct.mmc_host, ptr %host, i32 0, i32 55
  %0 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_root, align 8
  tail call void @debugfs_remove(ptr noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_add_card_debugfs(ptr noundef %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %debugfs_root = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %dev = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end.dev_name.exit_crit_edge ]
  %call3 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef nonnull %3) #3
  %debugfs_root4 = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 41
  %8 = ptrtoint ptr %debugfs_root4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3, ptr %debugfs_root4, align 4
  %state = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 5
  tail call void @debugfs_create_x32(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %call3, ptr noundef %state) #3
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_remove_card_debugfs(ptr nocapture noundef %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_root = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 41
  %0 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %1) #3
  %2 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debugfs_root, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_ios_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @mmc_ios_show, ptr noundef %1) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_ios_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %ios1 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %ios1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ios1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, i32 noundef %3) #3
  %actual_clock = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 58
  %4 = ptrtoint ptr %actual_clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual_clock, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, i32 noundef %5) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vdd = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 1
  %6 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vdd, align 4
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, i32 noundef %conv) #3
  %8 = ptrtoint ptr %vdd to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vdd, align 4
  %conv4 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %9)
  %tobool5.not.not = icmp eq i16 %9, 7
  br i1 %tobool5.not.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.26) #3
  br label %if.end27

if.else:                                          ; preds = %if.end
  %10 = add i16 %9, -24
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %10)
  %11 = icmp ult i16 %10, -16
  br i1 %11, label %if.else25, label %if.then17

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr [25 x ptr], ptr @mmc_ios_show.vdd_str, i32 0, i32 %conv4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %add = add nuw nsw i32 %conv4, 1
  %arrayidx15 = getelementptr [25 x ptr], ptr @mmc_ios_show.vdd_str, i32 0, i32 %add
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx15, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef %13, ptr noundef %15) #3
  br label %if.end27

if.else25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.28) #3
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then17, %if.then6
  %bus_mode = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 3
  %16 = ptrtoint ptr %bus_mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bus_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %switch.selectcmp = icmp eq i8 %17, 2
  %switch.select = select i1 %switch.selectcmp, ptr @.str.30, ptr @.str.31
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %switch.selectcmp130 = icmp eq i8 %17, 1
  %switch.select131 = select i1 %switch.selectcmp130, ptr @.str.29, ptr %switch.select
  %conv31 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.32, i32 noundef %conv31, ptr noundef nonnull %switch.select131) #3
  %chip_select = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 4
  %18 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %chip_select, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %20 = icmp ult i8 %19, 3
  br i1 %20, label %switch.lookup, label %if.end27.sw.epilog37_crit_edge

if.end27.sw.epilog37_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog37

switch.lookup:                                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  %21 = sext i8 %19 to i32
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.mmc_ios_show, i32 0, i32 %21
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog37

sw.epilog37:                                      ; preds = %switch.lookup, %if.end27.sw.epilog37_crit_edge
  %str.1 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.31, %if.end27.sw.epilog37_crit_edge ]
  %conv39 = zext i8 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.36, i32 noundef %conv39, ptr noundef nonnull %str.1) #3
  %power_mode = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 5
  %23 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %power_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %25 = icmp ult i8 %24, 3
  br i1 %25, label %switch.lookup132, label %sw.epilog37.sw.epilog45_crit_edge

sw.epilog37.sw.epilog45_crit_edge:                ; preds = %sw.epilog37
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog45

switch.lookup132:                                 ; preds = %sw.epilog37
  call void @__sanitizer_cov_trace_pc() #5
  %26 = sext i8 %24 to i32
  %switch.gep133 = getelementptr inbounds [3 x ptr], ptr @switch.table.mmc_ios_show.66, i32 0, i32 %26
  %27 = ptrtoint ptr %switch.gep133 to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load134 = load ptr, ptr %switch.gep133, align 4
  br label %sw.epilog45

sw.epilog45:                                      ; preds = %switch.lookup132, %sw.epilog37.sw.epilog45_crit_edge
  %str.2 = phi ptr [ %switch.load134, %switch.lookup132 ], [ @.str.31, %sw.epilog37.sw.epilog45_crit_edge ]
  %conv47 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.40, i32 noundef %conv47, ptr noundef nonnull %str.2) #3
  %bus_width = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 6
  %28 = ptrtoint ptr %bus_width to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bus_width, align 1
  %conv48 = zext i8 %29 to i32
  %shl51 = shl nuw i32 1, %conv48
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.41, i32 noundef %conv48, i32 noundef %shl51) #3
  %timing = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 7
  %30 = ptrtoint ptr %timing to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %timing, align 4
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i8 %31, label %sw.default65 [
    i8 0, label %sw.epilog45.sw.epilog66_crit_edge
    i8 1, label %sw.bb54
    i8 2, label %sw.bb55
    i8 3, label %sw.bb56
    i8 4, label %sw.bb57
    i8 5, label %sw.bb58
    i8 6, label %sw.bb59
    i8 7, label %sw.bb60
    i8 8, label %sw.bb61
    i8 9, label %sw.bb62
    i8 10, label %sw.bb63
  ]

sw.epilog45.sw.epilog66_crit_edge:                ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog66

sw.bb54:                                          ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog66

sw.bb55:                                          ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog66

sw.bb56:                                          ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog66

sw.bb57:                                          ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog66

sw.bb58:                                          ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog66

sw.bb59:                                          ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog66

sw.bb60:                                          ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog66

sw.bb61:                                          ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog66

sw.bb62:                                          ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog66

sw.bb63:                                          ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #5
  %card = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 37
  %33 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 8
  %enhanced_strobe.i = getelementptr inbounds %struct.mmc_host, ptr %36, i32 0, i32 28, i32 10
  %37 = ptrtoint ptr %enhanced_strobe.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %enhanced_strobe.i, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.i.not = icmp eq i8 %38, 0
  %cond = select i1 %tobool.i.not, ptr @.str.53, ptr @.str.52
  br label %sw.epilog66

sw.default65:                                     ; preds = %sw.epilog45
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog66

sw.epilog66:                                      ; preds = %sw.default65, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.epilog45.sw.epilog66_crit_edge
  %str.3 = phi ptr [ @.str.31, %sw.default65 ], [ %cond, %sw.bb63 ], [ @.str.51, %sw.bb62 ], [ @.str.50, %sw.bb61 ], [ @.str.49, %sw.bb60 ], [ @.str.48, %sw.bb59 ], [ @.str.47, %sw.bb58 ], [ @.str.46, %sw.bb57 ], [ @.str.45, %sw.bb56 ], [ @.str.44, %sw.bb55 ], [ @.str.43, %sw.bb54 ], [ @.str.42, %sw.epilog45.sw.epilog66_crit_edge ]
  %conv68 = zext i8 %31 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, i32 noundef %conv68, ptr noundef nonnull %str.3) #3
  %signal_voltage = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 8
  %39 = ptrtoint ptr %signal_voltage to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %signal_voltage, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %40)
  %41 = icmp ult i8 %40, 3
  br i1 %41, label %switch.lookup135, label %sw.epilog66.sw.epilog74_crit_edge

sw.epilog66.sw.epilog74_crit_edge:                ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog74

switch.lookup135:                                 ; preds = %sw.epilog66
  call void @__sanitizer_cov_trace_pc() #5
  %42 = sext i8 %40 to i32
  %switch.gep136 = getelementptr inbounds [3 x ptr], ptr @switch.table.mmc_ios_show.67, i32 0, i32 %42
  %43 = ptrtoint ptr %switch.gep136 to i32
  call void @__asan_load4_noabort(i32 %43)
  %switch.load137 = load ptr, ptr %switch.gep136, align 4
  br label %sw.epilog74

sw.epilog74:                                      ; preds = %switch.lookup135, %sw.epilog66.sw.epilog74_crit_edge
  %str.4 = phi ptr [ %switch.load137, %switch.lookup135 ], [ @.str.31, %sw.epilog66.sw.epilog74_crit_edge ]
  %conv76 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.58, i32 noundef %conv76, ptr noundef nonnull %str.4) #3
  %drv_type = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 28, i32 9
  %44 = ptrtoint ptr %drv_type to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %drv_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %45)
  %46 = icmp ult i8 %45, 4
  br i1 %46, label %switch.lookup138, label %sw.epilog74.sw.epilog83_crit_edge

sw.epilog74.sw.epilog83_crit_edge:                ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog83

switch.lookup138:                                 ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #5
  %47 = sext i8 %45 to i32
  %switch.gep139 = getelementptr inbounds [4 x ptr], ptr @switch.table.mmc_ios_show.68, i32 0, i32 %47
  %48 = ptrtoint ptr %switch.gep139 to i32
  call void @__asan_load4_noabort(i32 %48)
  %switch.load140 = load ptr, ptr %switch.gep139, align 4
  br label %sw.epilog83

sw.epilog83:                                      ; preds = %switch.lookup138, %sw.epilog74.sw.epilog83_crit_edge
  %str.5 = phi ptr [ %switch.load140, %switch.lookup138 ], [ @.str.31, %sw.epilog74.sw.epilog83_crit_edge ]
  %conv85 = zext i8 %45 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63, i32 noundef %conv85, ptr noundef nonnull %str.5) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debugfs_attr_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_clock_fops_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_attr_open(ptr noundef %inode, ptr noundef %file, ptr noundef nonnull @mmc_clock_opt_get, ptr noundef nonnull @mmc_clock_opt_set, ptr noundef nonnull @.str.64) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_attr_open(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mmc_clock_opt_get(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %ios = getelementptr inbounds %struct.mmc_host, ptr %data, i32 0, i32 28
  %0 = ptrtoint ptr %ios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ios, align 4
  %conv = zext i32 %1 to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_clock_opt_set(ptr noundef %data, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %cmp.not = icmp eq i64 %val, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %f_max = getelementptr inbounds %struct.mmc_host, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %f_max to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f_max, align 8
  %conv = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %val)
  %cmp1 = icmp ult i64 %conv, %val
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %f_min = getelementptr inbounds %struct.mmc_host, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %f_min to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f_min, align 4
  %conv3 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv3, i64 %val)
  %cmp4 = icmp ugt i64 %conv3, %val
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call i32 @__mmc_claim_host(ptr noundef %data, ptr noundef null, ptr noundef null) #3
  %conv6 = trunc i64 %val to i32
  tail call void @mmc_set_clock(ptr noundef %data, i32 noundef %conv6) #3
  tail call void @mmc_release_host(ptr noundef %data) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_set_clock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_release_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_claim_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !145}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @__param_fail_request, !1, !"__param_fail_request", i1 false, i1 false}
!1 = !{!"../drivers/mmc/core/debugfs.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_fail_requesttype267, !1, !"__UNIQUE_ID_fail_requesttype267", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_fail_request268, !4, !"__UNIQUE_ID_fail_request268", i1 false, i1 false}
!4 = !{!"../drivers/mmc/core/debugfs.c", i32 29, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/mmc/core/debugfs.c", i32 233, i32 22}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/mmc/core/debugfs.c", i32 234, i32 21}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/mmc/core/debugfs.c", i32 235, i32 21}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mmc/core/debugfs.c", i32 236, i32 29}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/mmc/core/debugfs.c", i32 243, i32 28}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mmc/core/debugfs.c", i32 264, i32 21}
!17 = !{ptr @fail_request, !18, !"fail_request", i1 false, i1 false}
!18 = !{!"../drivers/mmc/core/debugfs.c", i32 27, i32 14}
!19 = !{ptr @__param_str_fail_request, !1, !"__param_str_fail_request", i1 false, i1 false}
!20 = !{ptr @mmc_ios_fops, !21, !"mmc_ios_fops", i1 false, i1 false}
!21 = !{!"../drivers/mmc/core/debugfs.c", i32 197, i32 1}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mmc/core/debugfs.c", i32 37, i32 9}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mmc/core/debugfs.c", i32 38, i32 9}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mmc/core/debugfs.c", i32 39, i32 10}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mmc/core/debugfs.c", i32 40, i32 10}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mmc/core/debugfs.c", i32 41, i32 10}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mmc/core/debugfs.c", i32 42, i32 10}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mmc/core/debugfs.c", i32 43, i32 10}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mmc/core/debugfs.c", i32 44, i32 10}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/mmc/core/debugfs.c", i32 45, i32 10}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mmc/core/debugfs.c", i32 46, i32 10}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mmc/core/debugfs.c", i32 47, i32 10}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mmc/core/debugfs.c", i32 48, i32 10}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/mmc/core/debugfs.c", i32 49, i32 10}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/mmc/core/debugfs.c", i32 50, i32 10}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/mmc/core/debugfs.c", i32 51, i32 10}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mmc/core/debugfs.c", i32 52, i32 10}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/mmc/core/debugfs.c", i32 53, i32 10}
!56 = !{ptr @mmc_ios_show.vdd_str, !57, !"vdd_str", i1 false, i1 false}
!57 = !{!"../drivers/mmc/core/debugfs.c", i32 36, i32 21}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mmc/core/debugfs.c", i32 59, i32 16}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mmc/core/debugfs.c", i32 61, i32 17}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mmc/core/debugfs.c", i32 62, i32 16}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/mmc/core/debugfs.c", i32 64, i32 17}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mmc/core/debugfs.c", i32 67, i32 17}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mmc/core/debugfs.c", i32 70, i32 17}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mmc/core/debugfs.c", i32 74, i32 9}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mmc/core/debugfs.c", i32 77, i32 9}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mmc/core/debugfs.c", i32 80, i32 9}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mmc/core/debugfs.c", i32 83, i32 16}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mmc/core/debugfs.c", i32 87, i32 9}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mmc/core/debugfs.c", i32 90, i32 9}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mmc/core/debugfs.c", i32 93, i32 9}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/mmc/core/debugfs.c", i32 99, i32 16}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mmc/core/debugfs.c", i32 103, i32 9}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mmc/core/debugfs.c", i32 106, i32 9}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mmc/core/debugfs.c", i32 109, i32 9}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mmc/core/debugfs.c", i32 115, i32 16}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mmc/core/debugfs.c", i32 116, i32 16}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/mmc/core/debugfs.c", i32 121, i32 9}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mmc/core/debugfs.c", i32 124, i32 9}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/mmc/core/debugfs.c", i32 127, i32 9}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mmc/core/debugfs.c", i32 130, i32 9}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/mmc/core/debugfs.c", i32 133, i32 9}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/mmc/core/debugfs.c", i32 136, i32 9}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mmc/core/debugfs.c", i32 139, i32 9}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/mmc/core/debugfs.c", i32 142, i32 9}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/mmc/core/debugfs.c", i32 145, i32 9}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/mmc/core/debugfs.c", i32 148, i32 9}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/mmc/core/debugfs.c", i32 152, i32 4}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/mmc/core/debugfs.c", i32 152, i32 34}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/mmc/core/debugfs.c", i32 158, i32 16}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/mmc/core/debugfs.c", i32 162, i32 9}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/mmc/core/debugfs.c", i32 165, i32 9}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/mmc/core/debugfs.c", i32 168, i32 9}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/mmc/core/debugfs.c", i32 174, i32 16}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/mmc/core/debugfs.c", i32 178, i32 9}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/mmc/core/debugfs.c", i32 181, i32 9}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/mmc/core/debugfs.c", i32 184, i32 9}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/mmc/core/debugfs.c", i32 187, i32 9}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/mmc/core/debugfs.c", i32 193, i32 16}
!140 = !{ptr @mmc_clock_fops, !141, !"mmc_clock_fops", i1 false, i1 false}
!141 = !{!"../drivers/mmc/core/debugfs.c", i32 223, i32 1}
!142 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/mmc/core/debugfs.c", i32 26, i32 8}
!145 = !{ptr @fail_default_attr, !144, !"fail_default_attr", i1 false, i1 false}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{i8 0, i8 2}
