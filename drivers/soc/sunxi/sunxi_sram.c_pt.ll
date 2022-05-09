; ModuleID = '/llk/IR_all_yes/drivers/soc/sunxi/sunxi_sram.c_pt.bc'
source_filename = "../drivers/soc/sunxi/sunxi_sram.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sunxi_sram_claim\22, \22a\22\09"
module asm "\09.weak\09__crc_sunxi_sram_claim\09\09\09\09"
module asm "\09.long\09__crc_sunxi_sram_claim\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunxi_sram_claim:\09\09\09\09\09"
module asm "\09.asciz \09\22sunxi_sram_claim\22\09\09\09\09\09"
module asm "__kstrtabns_sunxi_sram_claim:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sunxi_sram_release\22, \22a\22\09"
module asm "\09.weak\09__crc_sunxi_sram_release\09\09\09\09"
module asm "\09.long\09__crc_sunxi_sram_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunxi_sram_release:\09\09\09\09\09"
module asm "\09.asciz \09\22sunxi_sram_release\22\09\09\09\09\09"
module asm "__kstrtabns_sunxi_sram_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sunxi_sram_desc = type { %struct.sunxi_sram_data, i8 }
%struct.sunxi_sram_data = type { ptr, i8, i8, i8, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.sunxi_sram_func = type { ptr, i8, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.sunxi_sramc_variant = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }

@base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sram_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_sunxi_sram_claim = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunxi_sram_claim = external dso_local constant [0 x i8], align 1
@__ksymtab_sunxi_sram_claim = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunxi_sram_claim to i32), ptr @__kstrtab_sunxi_sram_claim, ptr @__kstrtabns_sunxi_sram_claim }, section "___ksymtab+sunxi_sram_claim", align 4
@__kstrtab_sunxi_sram_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunxi_sram_release = external dso_local constant [0 x i8], align 1
@__ksymtab_sunxi_sram_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunxi_sram_release to i32), ptr @__kstrtab_sunxi_sram_release, ptr @__kstrtabns_sunxi_sram_release }, section "___ksymtab+sunxi_sram_release", align 4
@__initcall__kmod_sunxi_sram__210_414_sunxi_sram_driver_init6 = internal global ptr @sunxi_sram_driver_init, section ".initcall6.init", align 4
@sunxi_sram_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sunxi_sram_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.14, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sunxi_sram_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sunxi_sram_driver_exit = internal global ptr @sunxi_sram_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author211 = internal constant [67 x i8] c"sunxi_sram.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description212 = internal constant [62 x i8] c"sunxi_sram.description=Allwinner sunXi SRAM Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file213 = internal constant [45 x i8] c"sunxi_sram.file=drivers/soc/sunxi/sunxi_sram\00", section ".modinfo", align 1
@__UNIQUE_ID_license214 = internal constant [23 x i8] c"sunxi_sram.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"allwinner,sram\00", [17 x i8] zeroinitializer }, align 32
@sunxi_sram_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-sram-a3-a4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_sram_a3_a4 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-sram-c1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_sram_c1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-sram-d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_sram_d }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-sram-c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_sram_c }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@sun4i_a10_sram_a3_a4 = internal global { %struct.sunxi_sram_desc, [40 x i8] } { %struct.sunxi_sram_desc { %struct.sunxi_sram_data { ptr @.str.1, i8 4, i8 4, i8 2, ptr @.compoundliteral, %struct.list_head zeroinitializer }, i8 0 }, [40 x i8] zeroinitializer }, align 32
@sun4i_a10_sram_c1 = internal global { %struct.sunxi_sram_desc, [40 x i8] } { %struct.sunxi_sram_desc { %struct.sunxi_sram_data { ptr @.str.4, i8 0, i8 0, i8 31, ptr @.compoundliteral.6, %struct.list_head zeroinitializer }, i8 0 }, [40 x i8] zeroinitializer }, align 32
@sun4i_a10_sram_d = internal global { %struct.sunxi_sram_desc, [40 x i8] } { %struct.sunxi_sram_desc { %struct.sunxi_sram_data { ptr @.str.7, i8 4, i8 0, i8 1, ptr @.compoundliteral.9, %struct.list_head zeroinitializer }, i8 0 }, [40 x i8] zeroinitializer }, align 32
@sun50i_a64_sram_c = internal global { %struct.sunxi_sram_desc, [40 x i8] } { %struct.sunxi_sram_desc { %struct.sunxi_sram_data { ptr @.str.10, i8 4, i8 24, i8 1, ptr @.compoundliteral.12, %struct.list_head zeroinitializer }, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"A3-A4\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"emac\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [3 x %struct.sunxi_sram_func], [60 x i8] } { [3 x %struct.sunxi_sram_func] [%struct.sunxi_sram_func { ptr @.str.2, i8 0, i32 0 }, %struct.sunxi_sram_func { ptr @.str.3, i8 1, i32 1 }, %struct.sunxi_sram_func zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"C1\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ve\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { [3 x %struct.sunxi_sram_func], [60 x i8] } { [3 x %struct.sunxi_sram_func] [%struct.sunxi_sram_func { ptr @.str.2, i8 0, i32 0 }, %struct.sunxi_sram_func { ptr @.str.5, i8 1, i32 2147483647 }, %struct.sunxi_sram_func zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb-otg\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { [3 x %struct.sunxi_sram_func], [60 x i8] } { [3 x %struct.sunxi_sram_func] [%struct.sunxi_sram_func { ptr @.str.2, i8 0, i32 0 }, %struct.sunxi_sram_func { ptr @.str.8, i8 1, i32 1 }, %struct.sunxi_sram_func zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"de2\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { [3 x %struct.sunxi_sram_func], [60 x i8] } { [3 x %struct.sunxi_sram_func] [%struct.sunxi_sram_func { ptr @.str.2, i8 1, i32 0 }, %struct.sunxi_sram_func { ptr @.str.11, i8 0, i32 1 }, %struct.sunxi_sram_func zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sram_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sunxi-sram\00", [21 x i8] zeroinitializer }, align 32
@sunxi_sram_dt_match = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-sram-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_sramc_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-system-control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_sramc_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-system-control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_sramc_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-system-control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_sramc_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-system-control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_sramc_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-sram-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_sramc_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-system-control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_sramc_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h5-system-control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_sramc_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h616-system-control\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h616_sramc_variant }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@sram_dev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sram\00", [27 x i8] zeroinitializer }, align 32
@sunxi_sram_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @sunxi_sram_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sunxi_sram_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sunxi_sram_emac_clock_regmap = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @sunxi_sram_regmap_accessible_reg, ptr @sunxi_sram_regmap_accessible_reg, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 52, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"sunxi_sram:357:(&sunxi_sram_emac_clock_regmap)->lock\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Allwinner sunXi SRAM\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"--------------------\0A\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sram@%08x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\09section@%04x\09(%s)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09\09%s%c\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@sun4i_a10_sramc_variant = internal constant { %struct.sunxi_sramc_variant, [28 x i8] } zeroinitializer, align 32
@sun8i_h3_sramc_variant = internal constant { %struct.sunxi_sramc_variant, [28 x i8] } { %struct.sunxi_sramc_variant { i32 1 }, [28 x i8] zeroinitializer }, align 32
@sun50i_a64_sramc_variant = internal constant { %struct.sunxi_sramc_variant, [28 x i8] } { %struct.sunxi_sramc_variant { i32 1 }, [28 x i8] zeroinitializer }, align 32
@sun50i_h616_sramc_variant = internal constant { %struct.sunxi_sramc_variant, [28 x i8] } { %struct.sunxi_sramc_variant { i32 2 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 108, i32 22 }
@___asan_gen_.26 = private unnamed_addr constant [10 x i8] c"sram_lock\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [18 x i8] c"sunxi_sram_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 407, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 175, i32 47 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"sunxi_sram_dt_ids\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 85, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"sun4i_a10_sram_a3_a4\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 61, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"sun4i_a10_sram_c1\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 67, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"sun4i_a10_sram_d\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 73, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"sun50i_a64_sram_c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 79, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 62, i32 10 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 68, i32 10 }
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 74, i32 10 }
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 80, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 107, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 409, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c"sunxi_sram_dt_match\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 366, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant [9 x i8] c"sram_dev\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 105, i32 23 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 350, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"sunxi_sram_fops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 158, i32 1 }
@___asan_gen_.99 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [29 x i8] c"sunxi_sram_emac_clock_regmap\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 321, i32 29 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 356, i32 16 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 119, i32 14 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 120, i32 14 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 125, i32 17 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 137, i32 18 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 146, i32 19 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 152, i32 15 }
@___asan_gen_.126 = private unnamed_addr constant [24 x i8] c"sun4i_a10_sramc_variant\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 289, i32 41 }
@___asan_gen_.129 = private unnamed_addr constant [23 x i8] c"sun8i_h3_sramc_variant\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 293, i32 41 }
@___asan_gen_.132 = private unnamed_addr constant [25 x i8] c"sun50i_a64_sramc_variant\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 297, i32 41 }
@___asan_gen_.135 = private unnamed_addr constant [26 x i8] c"sun50i_h616_sramc_variant\00", align 1
@___asan_gen_.136 = private constant [34 x i8] c"../drivers/soc/sunxi/sunxi_sram.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 301, i32 41 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author211, ptr @__UNIQUE_ID_description212, ptr @__UNIQUE_ID_file213, ptr @__UNIQUE_ID_license214, ptr @__exitcall_sunxi_sram_driver_exit, ptr @__initcall__kmod_sunxi_sram__210_414_sunxi_sram_driver_init6, ptr @__ksymtab_sunxi_sram_claim, ptr @__ksymtab_sunxi_sram_release, ptr @sunxi_sram_driver_exit, ptr @base, ptr @sram_lock, ptr @sunxi_sram_driver, ptr @.str, ptr @sunxi_sram_dt_ids, ptr @sun4i_a10_sram_a3_a4, ptr @sun4i_a10_sram_c1, ptr @sun4i_a10_sram_d, ptr @sun50i_a64_sram_c, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.compoundliteral, ptr @.str.4, ptr @.str.5, ptr @.compoundliteral.6, ptr @.str.7, ptr @.str.8, ptr @.compoundliteral.9, ptr @.str.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.str.14, ptr @sunxi_sram_dt_match, ptr @sram_dev, ptr @.str.15, ptr @sunxi_sram_fops, ptr @sunxi_sram_probe._key, ptr @sunxi_sram_emac_clock_regmap, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @sun4i_a10_sramc_variant, ptr @sun8i_h3_sramc_variant, ptr @sun50i_a64_sramc_variant, ptr @sun50i_h616_sramc_variant], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_sram_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_sram_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_sram_a3_a4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_sram_c1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_sram_d to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_sram_c to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_sram_dt_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sram_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_sram_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_sram_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_sram_emac_clock_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_sramc_variant to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_sramc_variant to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_sramc_variant to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h616_sramc_variant to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sunxi_sram_claim(ptr noundef readonly %dev) #0 align 64 {
entry:
  %device = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device) #5
  %0 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %device, align 4, !annotation !90
  %1 = load ptr, ptr @base, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tobool4.not = icmp eq ptr %dev, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %lor.lhs.false

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %call9 = call fastcc ptr @sunxi_sram_of_parse(ptr noundef nonnull %4, ptr noundef nonnull %device)
  %cmp.i52 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @_raw_spin_lock(ptr noundef nonnull @sram_lock) #5
  %claimed = getelementptr inbounds %struct.sunxi_sram_desc, ptr %call9, i32 0, i32 1
  %6 = ptrtoint ptr %claimed to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %claimed, align 4, !range !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool15.not = icmp eq i8 %7, 0
  br i1 %tobool15.not, label %if.end17, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock(ptr noundef nonnull @sram_lock) #5
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %offset = getelementptr inbounds %struct.sunxi_sram_data, ptr %call9, i32 0, i32 2
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %offset, align 1
  %conv = zext i8 %9 to i32
  %shl.neg = shl nsw i32 -1, %conv
  %width = getelementptr inbounds %struct.sunxi_sram_data, ptr %call9, i32 0, i32 3
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %width, align 2
  %conv20 = zext i8 %11 to i32
  %12 = add nuw nsw i32 %conv, %conv20
  %sub23 = sub nsw i32 32, %12
  %shr = lshr i32 -1, %sub23
  %and = and i32 %shr, %shl.neg
  %13 = load ptr, ptr @base, align 4
  %reg = getelementptr inbounds %struct.sunxi_sram_data, ptr %call9, i32 0, i32 1
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg, align 4
  %conv25 = zext i8 %15 to i32
  %add.ptr = getelementptr i8, ptr %13, i32 %conv25
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !92
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  %neg = xor i32 %and, -1
  %and28 = and i32 %17, %neg
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %device, align 4
  %20 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %offset, align 1
  %conv30 = zext i8 %21 to i32
  %shl31 = shl i32 %19, %conv30
  %and32 = and i32 %shl31, %and
  %or = or i32 %and32, %and28
  %22 = call i32 @llvm.bswap.i32(i32 %or)
  %23 = load ptr, ptr @base, align 4
  %24 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg, align 4
  %conv34 = zext i8 %25 to i32
  %add.ptr35 = getelementptr i8, ptr %23, i32 %conv34
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %22) #5, !srcloc !95
  call void @_raw_spin_unlock(ptr noundef nonnull @sram_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.then16, %if.then11, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %5, %if.then11 ], [ -16, %if.then16 ], [ 0, %if.end17 ], [ -517, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sunxi_sram_of_parse(ptr noundef %node, ptr noundef writeonly %reg_value) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #5
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %node, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %args) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = inttoptr i32 %call.i to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %args, align 4
  %call2 = call zeroext i1 @of_device_is_available(ptr noundef %3) #5
  br i1 %call2, label %if.end4, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end4:                                          ; preds = %if.end
  %args5 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %args5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args5, align 4
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args, align 4
  %call7 = call ptr @of_match_node(ptr noundef nonnull @sunxi_sram_dt_ids, ptr noundef %7) #5
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end4.err_crit_edge, label %if.end10

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end10:                                         ; preds = %if.end4
  %data11 = getelementptr inbounds %struct.of_device_id, ptr %call7, i32 0, i32 3
  %8 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data11, align 4
  %tobool12.not = icmp eq ptr %9, null
  br i1 %tobool12.not, label %if.end10.err_crit_edge, label %if.end14

if.end10.err_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end14:                                         ; preds = %if.end10
  %func15 = getelementptr inbounds %struct.sunxi_sram_data, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %func15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %func15, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool17.not52 = icmp eq ptr %13, null
  br i1 %tobool17.not52, label %if.end14.err_crit_edge, label %for.body.lr.ph

if.end14.err_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.body.lr.ph:                                   ; preds = %if.end14
  %14 = trunc i32 %5 to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %func.053 = phi ptr [ %11, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %val19 = getelementptr inbounds %struct.sunxi_sram_func, ptr %func.053, i32 0, i32 1
  %15 = ptrtoint ptr %val19 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %val19, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %14)
  %cmp = icmp eq i8 %16, %14
  br i1 %cmp, label %if.then22, label %for.inc

if.then22:                                        ; preds = %for.body
  %tobool23.not = icmp eq ptr %reg_value, null
  br i1 %tobool23.not, label %if.then22.for.end_crit_edge, label %if.then24

if.then22.for.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then24:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %reg_val = getelementptr inbounds %struct.sunxi_sram_func, ptr %func.053, i32 0, i32 2
  %17 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reg_val, align 4
  %19 = ptrtoint ptr %reg_value to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %reg_value, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.sunxi_sram_func, ptr %func.053, i32 1
  %20 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %incdec.ptr, align 4
  %tobool17.not = icmp eq ptr %21, null
  br i1 %tobool17.not, label %for.inc.err_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.err_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

for.end:                                          ; preds = %if.then24, %if.then22.for.end_crit_edge
  %22 = ptrtoint ptr %func.053 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load ptr, ptr %func.053, align 4
  %tobool28.not = icmp eq ptr %.pr, null
  br i1 %tobool28.not, label %for.end.err_crit_edge, label %if.end30

for.end.err_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end30:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %24) #5
  %25 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data11, align 4
  br label %cleanup

err:                                              ; preds = %for.end.err_crit_edge, %for.inc.err_crit_edge, %if.end14.err_crit_edge, %if.end10.err_crit_edge, %if.end4.err_crit_edge, %if.end.err_crit_edge
  %ret.0 = phi ptr [ inttoptr (i32 -16 to ptr), %if.end.err_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end4.err_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end10.err_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.end.err_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end14.err_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.err_crit_edge ]
  %27 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %args, align 4
  call void @of_node_put(ptr noundef %28) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end30, %if.then
  %retval.0 = phi ptr [ %1, %if.then ], [ %26, %if.end30 ], [ %ret.0, %err ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #5
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sunxi_sram_release(ptr noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call fastcc ptr @sunxi_sram_of_parse(ptr noundef nonnull %1, ptr noundef null)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_lock(ptr noundef nonnull @sram_lock) #5
  %claimed = getelementptr inbounds %struct.sunxi_sram_desc, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %claimed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %claimed, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sram_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_sram_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sunxi_sram_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_sram_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @sunxi_sram_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_sram_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  store ptr %dev, ptr @sram_dev, align 4
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  store ptr %call2, ptr @base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call9 = tail call i32 @of_platform_populate(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef %dev) #5
  %call10 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 292, ptr noundef null, ptr noundef null, ptr noundef nonnull @sunxi_sram_fops) #5
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end6.cleanup_crit_edge, label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then14, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %5 = load ptr, ptr @base, align 4
  %call16 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %5, ptr noundef nonnull @sunxi_sram_emac_clock_regmap, ptr noundef nonnull @sunxi_sram_probe._key, ptr noundef nonnull @.str.16) #5
  %cmp.i31 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  %6 = ptrtoint ptr %call16 to i32
  %spec.select = select i1 %cmp.i31, i32 %6, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end13.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then4 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ %spec.select, %if.then14 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_sram_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @sunxi_sram_show, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_sram_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.17) #5
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.18) #5
  %0 = load ptr, ptr @sram_dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_next_child(ptr noundef %2, ptr noundef null) #5
  %cmp.not59 = icmp eq ptr %call, null
  br i1 %cmp.not59, label %entry.for.end30_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30

for.body:                                         ; preds = %for.end26.for.body_crit_edge, %entry.for.body_crit_edge
  %sram_node.060 = phi ptr [ %call29, %for.end26.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call.i = tail call ptr @__of_get_address(ptr noundef nonnull %sram_node.060, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #5
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.19, i32 noundef %4) #5
  %call2 = tail call ptr @of_get_next_child(ptr noundef nonnull %sram_node.060, ptr noundef null) #5
  %cmp4.not56 = icmp eq ptr %call2, null
  br i1 %cmp4.not56, label %for.body.for.end26_crit_edge, label %for.body.for.body5_crit_edge

for.body.for.body5_crit_edge:                     ; preds = %for.body
  br label %for.body5

for.body.for.end26_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end26

for.body5:                                        ; preds = %for.inc24.for.body5_crit_edge, %for.body.for.body5_crit_edge
  %section_node.057 = phi ptr [ %call25, %for.inc24.for.body5_crit_edge ], [ %call2, %for.body.for.body5_crit_edge ]
  %call6 = tail call ptr @of_match_node(ptr noundef nonnull @sunxi_sram_dt_ids, ptr noundef nonnull %section_node.057) #5
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %for.body5.for.inc24_crit_edge, label %if.end

for.body5.for.inc24_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24

if.end:                                           ; preds = %for.body5
  %data7 = getelementptr inbounds %struct.of_device_id, ptr %call6, i32 0, i32 3
  %5 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data7, align 4
  %call.i53 = tail call ptr @__of_get_address(ptr noundef nonnull %section_node.057, i32 noundef 0, i32 noundef -1, ptr noundef null, ptr noundef null) #5
  %7 = ptrtoint ptr %call.i53 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call.i53, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.20, i32 noundef %8, ptr noundef %10) #5
  %11 = load ptr, ptr @base, align 4
  %reg = getelementptr inbounds %struct.sunxi_sram_data, ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reg, align 4
  %conv = zext i8 %13 to i32
  %add.ptr = getelementptr i8, ptr %11, i32 %conv
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !92
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  %offset = getelementptr inbounds %struct.sunxi_sram_data, ptr %6, i32 0, i32 2
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %offset, align 1
  %conv11 = zext i8 %17 to i32
  %shr = lshr i32 %15, %conv11
  %width = getelementptr inbounds %struct.sunxi_sram_data, ptr %6, i32 0, i32 3
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %width, align 2
  %conv12 = zext i8 %19 to i32
  %sub13 = sub nsw i32 32, %conv12
  %shr14 = lshr i32 -1, %sub13
  %and15 = and i32 %shr14, %shr
  %func16 = getelementptr inbounds %struct.sunxi_sram_data, ptr %6, i32 0, i32 4
  %20 = ptrtoint ptr %func16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %func16, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %tobool19.not54 = icmp eq ptr %23, null
  br i1 %tobool19.not54, label %if.end.for.inc24_crit_edge, label %if.end.for.body20_crit_edge

if.end.for.body20_crit_edge:                      ; preds = %if.end
  br label %for.body20

if.end.for.inc24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %if.end.for.body20_crit_edge
  %24 = phi ptr [ %28, %for.body20.for.body20_crit_edge ], [ %23, %if.end.for.body20_crit_edge ]
  %func.055 = phi ptr [ %incdec.ptr, %for.body20.for.body20_crit_edge ], [ %21, %if.end.for.body20_crit_edge ]
  %reg_val = getelementptr inbounds %struct.sunxi_sram_func, ptr %func.055, i32 0, i32 2
  %25 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %reg_val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %and15)
  %cmp22 = icmp eq i32 %26, %and15
  %cond = select i1 %cmp22, i32 42, i32 32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.21, ptr noundef nonnull %24, i32 noundef %cond) #5
  %incdec.ptr = getelementptr %struct.sunxi_sram_func, ptr %func.055, i32 1
  %27 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %incdec.ptr, align 4
  %tobool19.not = icmp eq ptr %28, null
  br i1 %tobool19.not, label %for.body20.for.inc24_crit_edge, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body20

for.body20.for.inc24_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24

for.inc24:                                        ; preds = %for.body20.for.inc24_crit_edge, %if.end.for.inc24_crit_edge, %for.body5.for.inc24_crit_edge
  %call25 = tail call ptr @of_get_next_child(ptr noundef nonnull %sram_node.060, ptr noundef nonnull %section_node.057) #5
  %cmp4.not = icmp eq ptr %call25, null
  br i1 %cmp4.not, label %for.inc24.for.end26_crit_edge, label %for.inc24.for.body5_crit_edge

for.inc24.for.body5_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5

for.inc24.for.end26_crit_edge:                    ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end26

for.end26:                                        ; preds = %for.inc24.for.end26_crit_edge, %for.body.for.end26_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.22) #5
  %29 = load ptr, ptr @sram_dev, align 4
  %of_node28 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %of_node28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node28, align 8
  %call29 = tail call ptr @of_get_next_child(ptr noundef %31, ptr noundef nonnull %sram_node.060) #5
  %cmp.not = icmp eq ptr %call29, null
  br i1 %cmp.not, label %for.end26.for.end30_crit_edge, label %for.end26.for.body_crit_edge

for.end26.for.body_crit_edge:                     ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end26.for.end30_crit_edge:                    ; preds = %for.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end30

for.end30:                                        ; preds = %for.end26.for.end30_crit_edge, %entry.for.end30_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @sunxi_sram_regmap_accessible_reg(ptr noundef %dev, i32 noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %reg)
  %cmp = icmp ult i32 %reg, 48
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %mul = shl i32 %1, 2
  %add = add i32 %mul, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %reg)
  %cmp1 = icmp uge i32 %add, %reg
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %cmp1, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !22, !23, !24, !26, !28, !29, !31, !33, !34, !36, !38, !39, !41, !43, !44, !46, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__ksymtab_sunxi_sram_claim, !1, !"__ksymtab_sunxi_sram_claim", i1 false, i1 false}
!1 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 261, i32 1}
!2 = !{ptr @__ksymtab_sunxi_sram_release, !3, !"__ksymtab_sunxi_sram_release", i1 false, i1 false}
!3 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 283, i32 1}
!4 = !{ptr @__initcall__kmod_sunxi_sram__210_414_sunxi_sram_driver_init6, !5, !"__initcall__kmod_sunxi_sram__210_414_sunxi_sram_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 414, i32 1}
!6 = !{ptr @__exitcall_sunxi_sram_driver_exit, !5, !"__exitcall_sunxi_sram_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author211, !8, !"__UNIQUE_ID_author211", i1 false, i1 false}
!8 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 416, i32 1}
!9 = !{ptr @__UNIQUE_ID_description212, !10, !"__UNIQUE_ID_description212", i1 false, i1 false}
!10 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 417, i32 1}
!11 = !{ptr @__UNIQUE_ID_file213, !12, !"__UNIQUE_ID_file213", i1 false, i1 false}
!12 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 418, i32 1}
!13 = !{ptr @__UNIQUE_ID_license214, !12, !"__UNIQUE_ID_license214", i1 false, i1 false}
!14 = !{ptr @base, !15, !"base", i1 false, i1 false}
!15 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 108, i32 22}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 175, i32 47}
!18 = !{ptr @sunxi_sram_dt_ids, !19, !"sunxi_sram_dt_ids", i1 false, i1 false}
!19 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 85, i32 34}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 62, i32 10}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sun4i_a10_sram_a3_a4, !25, !"sun4i_a10_sram_a3_a4", i1 false, i1 false}
!25 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 61, i32 31}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 68, i32 10}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sun4i_a10_sram_c1, !30, !"sun4i_a10_sram_c1", i1 false, i1 false}
!30 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 67, i32 31}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 74, i32 10}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sun4i_a10_sram_d, !35, !"sun4i_a10_sram_d", i1 false, i1 false}
!35 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 73, i32 31}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 80, i32 10}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @sun50i_a64_sram_c, !40, !"sun50i_a64_sram_c", i1 false, i1 false}
!40 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 79, i32 31}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 107, i32 8}
!43 = !{ptr @sram_lock, !42, !"sram_lock", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 409, i32 12}
!46 = !{ptr @sunxi_sram_driver, !47, !"sunxi_sram_driver", i1 false, i1 false}
!47 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 407, i32 31}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 350, i32 26}
!50 = !{ptr @sunxi_sram_probe._key, !51, !"_key", i1 false, i1 false}
!51 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 356, i32 16}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sram_dev, !54, !"sram_dev", i1 false, i1 false}
!54 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 105, i32 23}
!55 = !{ptr @sunxi_sram_fops, !56, !"sunxi_sram_fops", i1 false, i1 false}
!56 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 158, i32 1}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 119, i32 14}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 120, i32 14}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 125, i32 17}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 137, i32 18}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 146, i32 19}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 152, i32 15}
!69 = !{ptr @sunxi_sram_emac_clock_regmap, !70, !"sunxi_sram_emac_clock_regmap", i1 false, i1 false}
!70 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 321, i32 29}
!71 = !{ptr @sunxi_sram_dt_match, !72, !"sunxi_sram_dt_match", i1 false, i1 false}
!72 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 366, i32 34}
!73 = !{ptr @sun4i_a10_sramc_variant, !74, !"sun4i_a10_sramc_variant", i1 false, i1 false}
!74 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 289, i32 41}
!75 = !{ptr @sun8i_h3_sramc_variant, !76, !"sun8i_h3_sramc_variant", i1 false, i1 false}
!76 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 293, i32 41}
!77 = !{ptr @sun50i_a64_sramc_variant, !78, !"sun50i_a64_sramc_variant", i1 false, i1 false}
!78 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 297, i32 41}
!79 = !{ptr @sun50i_h616_sramc_variant, !80, !"sun50i_h616_sramc_variant", i1 false, i1 false}
!80 = !{!"../drivers/soc/sunxi/sunxi_sram.c", i32 301, i32 41}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"auto-init"}
!91 = !{i8 0, i8 2}
!92 = !{i64 5105522}
!93 = !{i64 2153363057}
!94 = !{i64 2153363316}
!95 = !{i64 5105104}
!96 = !{i64 2153358739}
