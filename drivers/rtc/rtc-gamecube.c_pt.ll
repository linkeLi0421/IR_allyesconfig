; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-gamecube.c_pt.bc'
source_filename = "../drivers/rtc/rtc-gamecube.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.priv = type { ptr, ptr, i32 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_rtc_gamecube__228_373_gamecube_rtc_driver_init6 = internal global ptr @gamecube_rtc_driver_init, section ".initcall6.init", align 4
@gamecube_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gamecube_rtc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gamecube_rtc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gamecube_rtc_driver_exit = internal global ptr @gamecube_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [65 x i8] c"rtc_gamecube.author=Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [69 x i8] c"rtc_gamecube.description=Nintendo GameCube, Wii and Wii U RTC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [43 x i8] c"rtc_gamecube.file=drivers/rtc/rtc-gamecube\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [25 x i8] c"rtc_gamecube.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtc-gamecube\00", [19 x i8] zeroinitializer }, align 32
@gamecube_rtc_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nintendo,latte-exi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nintendo,hollywood-exi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nintendo,flipper-exi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@gamecube_rtc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@exi_bus = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 1, ptr null, ptr null, ptr null, ptr @exi_write, ptr null, ptr null, ptr @exi_read, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@gamecube_rtc_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.6, i32 24, i32 0, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 2162701, ptr @rtc_wr_regs, ptr @rtc_rd_regs, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"rtc_gamecube:330:(&gamecube_rtc_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@gamecube_rtc_probe.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 84, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rtc_gamecube\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gamecube_rtc_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/rtc/rtc-gamecube.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SRAM bias: 0x%x\00", [16 x i8] zeroinitializer }, align 32
@gamecube_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr @gamecube_rtc_ioctl, ptr @gamecube_rtc_read_time, ptr @gamecube_rtc_set_time, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gamecube-rtc\00", [19 x i8] zeroinitializer }, align 32
@rtc_wr_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @rtc_wr_ranges, i32 4, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@rtc_rd_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @rtc_rd_ranges, i32 5, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@rtc_wr_ranges = internal constant { [4 x %struct.regmap_range], [32 x i8] } { [4 x %struct.regmap_range] [%struct.regmap_range { i32 2097152, i32 2097168 }, %struct.regmap_range { i32 2113536, i32 2113536 }, %struct.regmap_range { i32 2162688, i32 2162689 }, %struct.regmap_range { i32 2162701, i32 2162701 }], [32 x i8] zeroinitializer }, align 32
@rtc_rd_ranges = internal constant { [5 x %struct.regmap_range], [56 x i8] } { [5 x %struct.regmap_range] [%struct.regmap_range { i32 2097152, i32 2097168 }, %struct.regmap_range { i32 2113536, i32 2113536 }, %struct.regmap_range { i32 2162688, i32 2162689 }, %struct.regmap_range { i32 2162692, i32 2162695 }, %struct.regmap_range { i32 2162700, i32 2162701 }], [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nintendo,latte-srnprot\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nintendo,hollywood-srnprot\00", [37 x i8] zeroinitializer }, align 32
@gamecube_rtc_read_offset_from_sram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016HW_SRNPROT not found, assuming a GameCube\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"gamecube_rtc_read_offset_from_sram\00", [61 x i8] zeroinitializer }, align 32
@gamecube_rtc_read_offset_from_sram._entry_ptr = internal global ptr @gamecube_rtc_read_offset_from_sram._entry, section ".printk_index", align 4
@gamecube_rtc_read_offset_from_sram._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.4, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013no io memory range found\0A\00", [36 x i8] zeroinitializer }, align 32
@gamecube_rtc_read_offset_from_sram._entry_ptr.13 = internal global ptr @gamecube_rtc_read_offset_from_sram._entry.11, section ".printk_index", align 4
@gamecube_rtc_read_offset_from_sram._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.4, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013failed to get the RTC bias\0A\00", [34 x i8] zeroinitializer }, align 32
@gamecube_rtc_read_offset_from_sram._entry_ptr.16 = internal global ptr @gamecube_rtc_read_offset_from_sram._entry.14, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"gamecube_rtc_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 366, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 369, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"gamecube_rtc_of_match\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 358, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [8 x i8] c"exi_bus\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 154, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant [27 x i8] c"gamecube_rtc_regmap_config\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 305, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 329, i32 14 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 337, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"gamecube_rtc_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 214, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 311, i32 10 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"rtc_wr_regs\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 300, i32 41 }
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"rtc_rd_regs\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 288, i32 41 }
@___asan_gen_.62 = private unnamed_addr constant [14 x i8] c"rtc_wr_ranges\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 293, i32 34 }
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"rtc_rd_ranges\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 280, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 228, i32 43 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 231, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 233, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 239, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [30 x i8] c"../drivers/rtc/rtc-gamecube.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 268, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_gamecube_rtc_driver_exit, ptr @__initcall__kmod_rtc_gamecube__228_373_gamecube_rtc_driver_init6, ptr @gamecube_rtc_driver_exit, ptr @gamecube_rtc_read_offset_from_sram._entry, ptr @gamecube_rtc_read_offset_from_sram._entry.11, ptr @gamecube_rtc_read_offset_from_sram._entry.14, ptr @gamecube_rtc_read_offset_from_sram._entry_ptr, ptr @gamecube_rtc_read_offset_from_sram._entry_ptr.13, ptr @gamecube_rtc_read_offset_from_sram._entry_ptr.16, ptr @gamecube_rtc_driver, ptr @.str, ptr @gamecube_rtc_of_match, ptr @gamecube_rtc_probe._key, ptr @exi_bus, ptr @gamecube_rtc_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gamecube_rtc_ops, ptr @.str.6, ptr @rtc_wr_regs, ptr @rtc_rd_regs, ptr @rtc_wr_ranges, ptr @rtc_rd_ranges, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamecube_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamecube_rtc_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamecube_rtc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exi_bus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamecube_rtc_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamecube_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_wr_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_rd_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_wr_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_rd_ranges to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamecube_rtc_read_offset_from_sram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamecube_rtc_read_offset_from_sram._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gamecube_rtc_read_offset_from_sram._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gamecube_rtc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gamecube_rtc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gamecube_rtc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @gamecube_rtc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gamecube_rtc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %iob = getelementptr inbounds %struct.priv, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %iob to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %iob, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @__devm_regmap_init(ptr noundef %dev1, ptr noundef nonnull @exi_bus, ptr noundef nonnull %call.i, ptr noundef nonnull @gamecube_rtc_regmap_config, ptr noundef nonnull @gamecube_rtc_probe._key, ptr noundef nonnull @.str.1) #6
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %call.i, align 4
  %cmp.i58 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #6
  %4 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %5 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %call.i59 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7) #6
  %tobool.not.i = icmp eq ptr %call.i59, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end15.if.end6.i_crit_edge

if.end15.if.end6.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.end.i:                                         ; preds = %if.end15
  %call1.i = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.8) #6
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %gamecube_rtc_read_offset_from_sram.exit, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i.if.end6.i_crit_edge, %if.end15.if.end6.i_crit_edge
  %np.059.i = phi ptr [ %call1.i, %if.end.i.if.end6.i_crit_edge ], [ %call.i59, %if.end15.if.end6.i_crit_edge ]
  %call7.i = call i32 @of_address_to_resource(ptr noundef nonnull %np.059.i, i32 noundef 0, ptr noundef nonnull %res.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end15.i, label %if.end6.i.gamecube_rtc_read_offset_from_sram.exit.thread_crit_edge

if.end6.i.gamecube_rtc_read_offset_from_sram.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gamecube_rtc_read_offset_from_sram.exit.thread

if.end15.i:                                       ; preds = %if.end6.i
  %6 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %res.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %4, align 4
  %sub.i.i = sub i32 1, %7
  %add.i.i = add i32 %sub.i.i, %9
  %call17.i = call ptr @ioremap(i32 noundef %7, i32 noundef %add.i.i) #6
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call17.i) #6, !srcloc !68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 1983, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 1983
  br i1 %cmp.not.i, label %if.end24.i, label %if.end24.thread.i

if.end24.i:                                       ; preds = %if.end15.i
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  %rtc_bias26.i = getelementptr inbounds %struct.priv, ptr %call.i, i32 0, i32 2
  %call27.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 2097156, ptr noundef %rtc_bias26.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end24.i.gamecube_rtc_read_offset_from_sram.exit.thread64_crit_edge, label %if.end24.i.gamecube_rtc_read_offset_from_sram.exit.thread_crit_edge

if.end24.i.gamecube_rtc_read_offset_from_sram.exit.thread_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gamecube_rtc_read_offset_from_sram.exit.thread

if.end24.i.gamecube_rtc_read_offset_from_sram.exit.thread64_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gamecube_rtc_read_offset_from_sram.exit.thread64

if.end24.thread.i:                                ; preds = %if.end15.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call17.i, i32 1983) #6, !srcloc !71
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %rtc_bias2660.i = getelementptr inbounds %struct.priv, ptr %call.i, i32 0, i32 2
  %call2761.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 2097156, ptr noundef %rtc_bias2660.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2761.i)
  %tobool28.not62.i = icmp eq i32 %call2761.i, 0
  br i1 %tobool28.not62.i, label %do.body38.i, label %if.end24.thread.i.gamecube_rtc_read_offset_from_sram.exit.thread_crit_edge

if.end24.thread.i.gamecube_rtc_read_offset_from_sram.exit.thread_crit_edge: ; preds = %if.end24.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %gamecube_rtc_read_offset_from_sram.exit.thread

do.body38.i:                                      ; preds = %if.end24.thread.i
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call17.i, i32 %10) #6, !srcloc !71
  br label %gamecube_rtc_read_offset_from_sram.exit.thread64

gamecube_rtc_read_offset_from_sram.exit.thread64: ; preds = %do.body38.i, %if.end24.i.gamecube_rtc_read_offset_from_sram.exit.thread64_crit_edge
  call void @iounmap(ptr noundef %call17.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #6
  br label %do.body

gamecube_rtc_read_offset_from_sram.exit.thread:   ; preds = %if.end24.thread.i.gamecube_rtc_read_offset_from_sram.exit.thread_crit_edge, %if.end24.i.gamecube_rtc_read_offset_from_sram.exit.thread_crit_edge, %if.end6.i.gamecube_rtc_read_offset_from_sram.exit.thread_crit_edge
  %.str.12.sink = phi ptr [ @.str.12, %if.end6.i.gamecube_rtc_read_offset_from_sram.exit.thread_crit_edge ], [ @.str.15, %if.end24.thread.i.gamecube_rtc_read_offset_from_sram.exit.thread_crit_edge ], [ @.str.15, %if.end24.i.gamecube_rtc_read_offset_from_sram.exit.thread_crit_edge ]
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.12.sink) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #6
  br label %cleanup

gamecube_rtc_read_offset_from_sram.exit:          ; preds = %if.end.i
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %rtc_bias.i = getelementptr inbounds %struct.priv, ptr %call.i, i32 0, i32 2
  %call5.i = tail call i32 @regmap_read(ptr noundef %16, i32 noundef 2097156, ptr noundef %rtc_bias.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool17.not = icmp eq i32 %call5.i, 0
  br i1 %tobool17.not, label %gamecube_rtc_read_offset_from_sram.exit.do.body_crit_edge, label %gamecube_rtc_read_offset_from_sram.exit.cleanup_crit_edge

gamecube_rtc_read_offset_from_sram.exit.cleanup_crit_edge: ; preds = %gamecube_rtc_read_offset_from_sram.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

gamecube_rtc_read_offset_from_sram.exit.do.body_crit_edge: ; preds = %gamecube_rtc_read_offset_from_sram.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %gamecube_rtc_read_offset_from_sram.exit.do.body_crit_edge, %gamecube_rtc_read_offset_from_sram.exit.thread64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gamecube_rtc_probe.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gamecube_rtc_probe, %do.end)) #6
          to label %if.then26 [label %do.end], !srcloc !73

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %rtc_bias = getelementptr inbounds %struct.priv, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %rtc_bias to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rtc_bias, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gamecube_rtc_probe.__UNIQUE_ID_ddebug227, ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %18) #6
  br label %do.end

do.end:                                           ; preds = %if.then26, %do.body
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call28 = call ptr @devm_rtc_allocate_device(ptr noundef %dev1) #6
  %cmp.i61 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i61, label %if.then30, label %if.end32

if.then30:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call28 to i32
  br label %cleanup

if.end32:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %call28, i32 0, i32 22
  %21 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 0, ptr %range_min, align 8
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %call28, i32 0, i32 23
  %22 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 4294967295, ptr %range_max, align 8
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call28, i32 0, i32 3
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @gamecube_rtc_ops, ptr %ops, align 8
  %call33 = call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %call28) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then30, %gamecube_rtc_read_offset_from_sram.exit.cleanup_crit_edge, %gamecube_rtc_read_offset_from_sram.exit.thread, %if.then12, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %3, %if.then12 ], [ %20, %if.then30 ], [ 0, %if.end32 ], [ -12, %entry.cleanup_crit_edge ], [ %call5.i, %gamecube_rtc_read_offset_from_sram.exit.cleanup_crit_edge ], [ -1, %gamecube_rtc_read_offset_from_sram.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exi_write(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iob1 = getelementptr inbounds %struct.priv, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %iob1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iob1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 312) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %shl = shl i32 %reg, 8
  %or = or i32 %shl, -2147483648
  %add.ptr5 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %or) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %add.ptr9 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 53) #6, !srcloc !71
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %and63 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool.not64 = icmp eq i32 %and63, 0
  br i1 %tobool.not64, label %entry.do.end15_crit_edge, label %entry.do.body20_crit_edge

entry.do.body20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

entry.do.end15_crit_edge:                         ; preds = %entry
  br label %do.end15

do.end15:                                         ; preds = %do.end15.do.end15_crit_edge, %entry.do.end15_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !79
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %and = and i32 %3, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end15.do.end15_crit_edge, label %do.end15.do.body20_crit_edge

do.end15.do.body20_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

do.end15.do.end15_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.body20:                                        ; preds = %do.end15.do.body20_crit_edge, %entry.do.body20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 312) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %data) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 53) #6, !srcloc !71
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %and3765 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3765)
  %tobool38.not66 = icmp eq i32 %and3765, 0
  br i1 %tobool38.not66, label %do.body20.do.end45_crit_edge, label %do.body20.do.body51_crit_edge

do.body20.do.body51_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body51

do.body20.do.end45_crit_edge:                     ; preds = %do.body20
  br label %do.end45

do.end45:                                         ; preds = %do.end45.do.end45_crit_edge, %do.body20.do.end45_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !85
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  %and37 = and i32 %5, 8
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.end45.do.end45_crit_edge, label %do.end45.do.body51_crit_edge

do.end45.do.body51_crit_edge:                     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body51

do.end45.do.end45_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

do.body51:                                        ; preds = %do.end45.do.body51_crit_edge, %do.body20.do.body51_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #6, !srcloc !71
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @exi_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iob1 = getelementptr inbounds %struct.priv, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %iob1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iob1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 312) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %shl = shl i32 %reg, 8
  %add.ptr5 = getelementptr i8, ptr %1, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %shl) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %add.ptr9 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 53) #6, !srcloc !71
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %and63 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool.not64 = icmp eq i32 %and63, 0
  br i1 %tobool.not64, label %entry.do.end15_crit_edge, label %entry.do.body20_crit_edge

entry.do.body20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

entry.do.end15_crit_edge:                         ; preds = %entry
  br label %do.end15

do.end15:                                         ; preds = %do.end15.do.end15_crit_edge, %entry.do.end15_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !92
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %and = and i32 %3, 8
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end15.do.end15_crit_edge, label %do.end15.do.body20_crit_edge

do.end15.do.body20_crit_edge:                     ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body20

do.end15.do.end15_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.body20:                                        ; preds = %do.end15.do.body20_crit_edge, %entry.do.body20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 312) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 49) #6, !srcloc !71
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %and3365 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3365)
  %tobool34.not66 = icmp eq i32 %and3365, 0
  br i1 %tobool34.not66, label %do.body20.do.end41_crit_edge, label %do.body20.while.end46_crit_edge

do.body20.while.end46_crit_edge:                  ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end46

do.body20.do.end41_crit_edge:                     ; preds = %do.body20
  br label %do.end41

do.end41:                                         ; preds = %do.end41.do.end41_crit_edge, %do.body20.do.end41_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !97
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %and33 = and i32 %5, 8
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %do.end41.do.end41_crit_edge, label %do.end41.while.end46_crit_edge

do.end41.while.end46_crit_edge:                   ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end46

do.end41.do.end41_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end41

while.end46:                                      ; preds = %do.end41.while.end46_crit_edge, %do.body20.while.end46_crit_edge
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #6, !srcloc !71
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gamecube_rtc_ioctl(ptr nocapture noundef readonly %dev, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %control0 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control0) #6
  %2 = ptrtoint ptr %control0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %control0, align 4, !annotation !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147192813, i32 %cmd)
  %cond = icmp eq i32 %cmd, -2147192813
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 2162700, ptr noundef nonnull %control0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %control0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %control0, align 4
  %and = lshr i32 %6, 11
  %and.lobit = and i32 %and, 1
  %and5 = lshr i32 %6, 8
  %7 = and i32 %and5, 2
  %8 = or i32 %7, %and.lobit
  %9 = inttoptr i32 %arg to ptr
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 207) #6
  %10 = call i32 @llvm.read_register.i32(metadata !58) #6
  %and.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !101
  %and.i = and i32 %12, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !102
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %13 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %9, i32 %8, i32 -1226833921) #6, !srcloc !104
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #6, !srcloc !102
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.end ], [ %call1, %sw.bb.cleanup_crit_edge ], [ -515, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control0) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gamecube_rtc_read_time(ptr nocapture noundef readonly %dev, ptr noundef %t) #2 align 64 {
entry:
  %counter = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %counter) #6
  %2 = ptrtoint ptr %counter to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %counter, align 4, !annotation !100
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 2097152, ptr noundef nonnull %counter) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rtc_bias = getelementptr inbounds %struct.priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %rtc_bias to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rtc_bias, align 4
  %conv = zext i32 %6 to i64
  %7 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %counter, align 4
  %conv2 = zext i32 %8 to i64
  %add = add nuw nsw i64 %conv2, %conv
  call void @rtc_time64_to_tm(i64 noundef %add, ptr noundef %t) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %counter) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gamecube_rtc_set_time(ptr nocapture noundef readonly %dev, ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i64 @rtc_tm_to_time64(ptr noundef %t) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %rtc_bias = getelementptr inbounds %struct.priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %rtc_bias to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rtc_bias, align 4
  %6 = trunc i64 %call1 to i32
  %conv2 = sub i32 %6, %5
  %call3 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2097152, i32 noundef %conv2) #6
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_rtc_gamecube__228_373_gamecube_rtc_driver_init6, !1, !"__initcall__kmod_rtc_gamecube__228_373_gamecube_rtc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-gamecube.c", i32 373, i32 1}
!2 = !{ptr @__exitcall_gamecube_rtc_driver_exit, !1, !"__exitcall_gamecube_rtc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author229, !4, !"__UNIQUE_ID_author229", i1 false, i1 false}
!4 = !{!"../drivers/rtc/rtc-gamecube.c", i32 375, i32 1}
!5 = !{ptr @__UNIQUE_ID_description230, !6, !"__UNIQUE_ID_description230", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-gamecube.c", i32 376, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-gamecube.c", i32 377, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-gamecube.c", i32 369, i32 11}
!12 = !{ptr @gamecube_rtc_driver, !13, !"gamecube_rtc_driver", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-gamecube.c", i32 366, i32 31}
!14 = !{ptr @gamecube_rtc_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-gamecube.c", i32 329, i32 14}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/rtc/rtc-gamecube.c", i32 337, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gamecube_rtc_probe.__UNIQUE_ID_ddebug227, !18, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!23 = !{ptr @exi_bus, !24, !"exi_bus", i1 false, i1 false}
!24 = !{!"../drivers/rtc/rtc-gamecube.c", i32 154, i32 32}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/rtc/rtc-gamecube.c", i32 311, i32 10}
!27 = !{ptr @gamecube_rtc_regmap_config, !28, !"gamecube_rtc_regmap_config", i1 false, i1 false}
!28 = !{!"../drivers/rtc/rtc-gamecube.c", i32 305, i32 35}
!29 = !{ptr @rtc_wr_regs, !30, !"rtc_wr_regs", i1 false, i1 false}
!30 = !{!"../drivers/rtc/rtc-gamecube.c", i32 300, i32 41}
!31 = !{ptr @rtc_wr_ranges, !32, !"rtc_wr_ranges", i1 false, i1 false}
!32 = !{!"../drivers/rtc/rtc-gamecube.c", i32 293, i32 34}
!33 = !{ptr @rtc_rd_regs, !34, !"rtc_rd_regs", i1 false, i1 false}
!34 = !{!"../drivers/rtc/rtc-gamecube.c", i32 288, i32 41}
!35 = !{ptr @rtc_rd_ranges, !36, !"rtc_rd_ranges", i1 false, i1 false}
!36 = !{!"../drivers/rtc/rtc-gamecube.c", i32 280, i32 34}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/rtc/rtc-gamecube.c", i32 228, i32 43}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rtc/rtc-gamecube.c", i32 231, i32 11}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/rtc/rtc-gamecube.c", i32 233, i32 3}
!43 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @gamecube_rtc_read_offset_from_sram._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @gamecube_rtc_read_offset_from_sram._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/rtc/rtc-gamecube.c", i32 239, i32 3}
!48 = !{ptr @gamecube_rtc_read_offset_from_sram._entry.11, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @gamecube_rtc_read_offset_from_sram._entry_ptr.13, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/rtc/rtc-gamecube.c", i32 268, i32 3}
!52 = !{ptr @gamecube_rtc_read_offset_from_sram._entry.14, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @gamecube_rtc_read_offset_from_sram._entry_ptr.16, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @gamecube_rtc_ops, !55, !"gamecube_rtc_ops", i1 false, i1 false}
!55 = !{!"../drivers/rtc/rtc-gamecube.c", i32 214, i32 35}
!56 = !{ptr @gamecube_rtc_of_match, !57, !"gamecube_rtc_of_match", i1 false, i1 false}
!57 = !{!"../drivers/rtc/rtc-gamecube.c", i32 358, i32 34}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 4182642}
!69 = !{i64 2154012691}
!70 = !{i64 2154012927}
!71 = !{i64 4182224}
!72 = !{i64 2154014777}
!73 = !{i64 2148961893, i64 2148961898, i64 2148961911, i64 2148961955, i64 2148961989, i64 2148962010}
!74 = !{i64 2153995823}
!75 = !{i64 2153996171}
!76 = !{i64 2153996608}
!77 = !{i64 2153996980}
!78 = !{i64 2153997261}
!79 = !{i64 2153997103}
!80 = !{i64 2153997582}
!81 = !{i64 2153997900}
!82 = !{i64 2153998318}
!83 = !{i64 2153998690}
!84 = !{i64 2153998971}
!85 = !{i64 2153998813}
!86 = !{i64 2153999202}
!87 = !{i64 2153992118}
!88 = !{i64 2153992440}
!89 = !{i64 2153992862}
!90 = !{i64 2153993234}
!91 = !{i64 2153993515}
!92 = !{i64 2153993357}
!93 = !{i64 2153993836}
!94 = !{i64 2153994275}
!95 = !{i64 2153994647}
!96 = !{i64 2153994928}
!97 = !{i64 2153994770}
!98 = !{i64 2153995213}
!99 = !{i64 2153995444}
!100 = !{!"auto-init"}
!101 = !{i64 6134541}
!102 = !{i64 6134738}
!103 = !{i64 2153619971}
!104 = !{i64 2154006240, i64 2154006520, i64 2154006854, i64 2154007188}
