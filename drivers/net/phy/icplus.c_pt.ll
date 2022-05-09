; ModuleID = '/llk/IR_all_yes/drivers/net/phy/icplus.c_pt.bc'
source_filename = "../drivers/net/phy/icplus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.ip101a_g_phy_priv = type { i32, [2 x i64] }

@__UNIQUE_ID_description349 = internal constant [66 x i8] c"icplus.description=ICPlus IP175C/IP101A/IP101G/IC1001 PHY drivers\00", section ".modinfo", align 1
@__UNIQUE_ID_author350 = internal constant [32 x i8] c"icplus.author=Michael Barkowski\00", section ".modinfo", align 1
@__UNIQUE_ID_file351 = internal constant [35 x i8] c"icplus.file=drivers/net/phy/icplus\00", section ".modinfo", align 1
@__UNIQUE_ID_license352 = internal constant [19 x i8] c"icplus.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_icplus__353_625_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@icplus_driver = internal global { [4 x %struct.phy_driver], [240 x i8] } { [4 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 37948800, ptr @.str, i32 -16, ptr null, i32 0, ptr null, ptr null, ptr @ip175c_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @ip175c_config_aneg, ptr null, ptr @ip175c_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 37948816, ptr @.str.1, i32 -16, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @ip1001_config_init, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 0, ptr @.str.2, i32 0, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @ip101a_config_init, ptr @ip101a_g_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @ip101a_g_config_aneg, ptr null, ptr @ip101a_g_read_status, ptr @ip101a_g_config_intr, ptr @ip101a_g_handle_interrupt, ptr null, ptr @ip101a_match_phy_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip101a_read_page, ptr @ip101a_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 0, ptr @.str.3, i32 0, ptr null, i32 0, ptr null, ptr @genphy_soft_reset, ptr @ip101g_config_init, ptr @ip101a_g_probe, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr @ip101a_g_config_aneg, ptr null, ptr @ip101a_g_read_status, ptr @ip101a_g_config_intr, ptr @ip101a_g_handle_interrupt, ptr null, ptr @ip101g_match_phy_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip101g_read_page, ptr @ip101g_write_page, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ip101g_get_sset_count, ptr @ip101g_get_strings, ptr @ip101g_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null }], [240 x i8] zeroinitializer }, align 32
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ICPlus IP175C\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ICPlus IP1001\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ICPlus IP101A\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ICPlus IP101G\00", [18 x i8] zeroinitializer }, align 32
@ip175c_config_init.full_reset_performed = internal global { i1, [31 x i8] } zeroinitializer, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"icplus,select-rx-error\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"icplus,select-interrupt\00", [40 x i8] zeroinitializer }, align 32
@ip101a_g_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 219, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"RXER and INTR mode cannot be selected together\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip101a_g_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/net/phy/icplus.c\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ip101a_g_probe._entry_ptr = internal global ptr @ip101a_g_probe._entry, section ".printk_index", align 4
@ip101a_write_page.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wrong page selected\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"phy_crc_errors\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"phy_symbol_errors\00", [46 x i8] zeroinitializer }, align 32
@switch.table.ip101a_g_config_aneg = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 2048, i16 2048, i16 0], [26 x i8] zeroinitializer }, align 32
@switch.table.ip101a_g_config_aneg.14 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 0, i16 8, i16 0], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"icplus_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 574, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 577, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 586, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 593, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 607, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [40 x i8] c"ip175c_config_init.full_reset_performed\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 216, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 217, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 218, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 466, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 85, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [28 x i8] c"../drivers/net/phy/icplus.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 86, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [34 x i8] c"switch.table.ip101a_g_config_aneg\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [37 x i8] c"switch.table.ip101a_g_config_aneg.14\00", align 1
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author350, ptr @__UNIQUE_ID_description349, ptr @__UNIQUE_ID_file351, ptr @__UNIQUE_ID_license352, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_icplus__353_625_phy_module_init6, ptr @ip101a_g_probe._entry, ptr @ip101a_g_probe._entry_ptr, ptr @phy_module_exit, ptr @icplus_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ip175c_config_init.full_reset_performed, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @switch.table.ip101a_g_config_aneg, ptr @switch.table.ip101a_g_config_aneg.14], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icplus_driver to i32), i32 944, i32 1184, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip175c_config_init.full_reset_performed to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip101a_g_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ip101a_g_config_aneg to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ip101a_g_config_aneg.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_drivers_register(ptr noundef nonnull @icplus_driver, i32 noundef 4, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @phy_drivers_unregister(ptr noundef nonnull @icplus_driver, i32 noundef 4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip175c_config_init(ptr nocapture noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @ip175c_config_init.full_reset_performed, align 4
  br i1 %.b, label %entry.if.end34_crit_edge, label %if.then

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then:                                          ; preds = %entry
  %bus = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %call = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef 30, i32 noundef 0, i16 noundef zeroext 5980) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %call5 = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef 30, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 429496000) #6
  %5 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus, align 8
  %call8 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef 29, i32 noundef 31, i16 noundef zeroext 5980) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 8
  %call14 = tail call i32 @mdiobus_write(ptr noundef %8, i32 noundef 29, i32 noundef 22, i16 noundef zeroext 1056) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end11.cleanup_crit_edge, label %for.body.preheader

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %if.end11
  %9 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus, align 8
  %call21 = tail call i32 @mdiobus_write(ptr noundef %10, i32 noundef 0, i32 noundef 0, i16 noundef zeroext -32768) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %for.body.preheader.cleanup_crit_edge, label %for.cond

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %11 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus, align 8
  %call21.1 = tail call i32 @mdiobus_write(ptr noundef %12, i32 noundef 1, i32 noundef 0, i16 noundef zeroext -32768) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.1)
  %cmp22.1 = icmp slt i32 %call21.1, 0
  br i1 %cmp22.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %13 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus, align 8
  %call21.2 = tail call i32 @mdiobus_write(ptr noundef %14, i32 noundef 2, i32 noundef 0, i16 noundef zeroext -32768) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.2)
  %cmp22.2 = icmp slt i32 %call21.2, 0
  br i1 %cmp22.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %15 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bus, align 8
  %call21.3 = tail call i32 @mdiobus_write(ptr noundef %16, i32 noundef 3, i32 noundef 0, i16 noundef zeroext -32768) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.3)
  %cmp22.3 = icmp slt i32 %call21.3, 0
  br i1 %cmp22.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %17 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus, align 8
  %call21.4 = tail call i32 @mdiobus_write(ptr noundef %18, i32 noundef 4, i32 noundef 0, i16 noundef zeroext -32768) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.4)
  %cmp22.4 = icmp slt i32 %call21.4, 0
  br i1 %cmp22.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bus, align 8
  %call30 = tail call i32 @mdiobus_read(ptr noundef %20, i32 noundef 0, i32 noundef 0) #6
  %21 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bus, align 8
  %call30.1 = tail call i32 @mdiobus_read(ptr noundef %22, i32 noundef 1, i32 noundef 0) #6
  %23 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus, align 8
  %call30.2 = tail call i32 @mdiobus_read(ptr noundef %24, i32 noundef 2, i32 noundef 0) #6
  %25 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus, align 8
  %call30.3 = tail call i32 @mdiobus_read(ptr noundef %26, i32 noundef 3, i32 noundef 0) #6
  %27 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bus, align 8
  %call30.4 = tail call i32 @mdiobus_read(ptr noundef %28, i32 noundef 4, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 429496000) #6
  store i1 true, ptr @ip175c_config_init.full_reset_performed, align 4
  br label %if.end34

if.end34:                                         ; preds = %for.cond.4, %entry.if.end34_crit_edge
  %addr = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp36.not = icmp eq i32 %31, 4
  br i1 %cmp36.not, label %if.end34.cleanup_crit_edge, label %if.then37

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %state = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 5
  %32 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %state, align 4
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %33 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 100, ptr %speed, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %34 = ptrtoint ptr %duplex to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %duplex, align 4
  %link = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %35 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load = load i16, ptr %link, align 8
  %bf.set = or i16 %bf.load, 4
  store i16 %bf.set, ptr %link, align 8
  %attached_dev = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 36
  %36 = ptrtoint ptr %attached_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %attached_dev, align 8
  tail call void @netif_carrier_on(ptr noundef %37) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end34.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call8, %if.end.cleanup_crit_edge ], [ %call14, %if.end11.cleanup_crit_edge ], [ 0, %if.then37 ], [ 0, %if.end34.cleanup_crit_edge ], [ %call21, %for.body.preheader.cleanup_crit_edge ], [ %call21.1, %for.cond.cleanup_crit_edge ], [ %call21.2, %for.cond.1.cleanup_crit_edge ], [ %call21.3, %for.cond.2.cleanup_crit_edge ], [ %call21.4, %for.cond.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip175c_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip175c_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @genphy_read_status(ptr noundef %phydev) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 25
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -2, ptr %irq, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip1001_config_init(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = trunc i32 %call.i to i16
  %conv = or i16 %4, 11
  %5 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bus.i, align 8
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 8
  %call.i61 = tail call i32 @mdiobus_write(ptr noundef %6, i32 noundef %8, i32 noundef 20, i16 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp2 = icmp slt i32 %call.i61, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %9 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %interface.i, align 4
  %11 = add i32 %10, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %if.then7, label %if.end5.if.end37_crit_edge

if.end5.if.end37_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then7:                                         ; preds = %if.end5
  %13 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bus.i, align 8
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr.i, align 8
  %call.i64 = tail call i32 @mdiobus_read(ptr noundef %14, i32 noundef %16, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp9 = icmp slt i32 %call.i64, 0
  br i1 %cmp9, label %if.then7.cleanup_crit_edge, label %if.end12

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.then7
  %and = and i32 %call.i64, -4
  %17 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %interface.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %if.end12.if.end30_crit_edge [
    i32 10, label %if.then15
    i32 11, label %if.then20
    i32 12, label %if.then26
  ]

if.end12.if.end30_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %or16 = or i32 %call.i64, 3
  br label %if.end30

if.then20:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %or21 = or i32 %and, 1
  br label %if.end30

if.then26:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %or27 = or i32 %and, 2
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.then20, %if.then15, %if.end12.if.end30_crit_edge
  %c.0 = phi i32 [ %or16, %if.then15 ], [ %or21, %if.then20 ], [ %or27, %if.then26 ], [ %and, %if.end12.if.end30_crit_edge ]
  %conv31 = trunc i32 %c.0 to i16
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 8
  %call.i67 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 16, i16 noundef zeroext %conv31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp33 = icmp slt i32 %call.i67, 0
  br i1 %cmp33, label %if.end30.cleanup_crit_edge, label %if.end30.if.end37_crit_edge

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end30.if.end37_crit_edge, %if.end5.if.end37_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end30.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i61, %if.end.cleanup_crit_edge ], [ %call.i64, %if.then7.cleanup_crit_edge ], [ %call.i67, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip101a_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 8
  %call.i4 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %cmp.i = icmp slt i32 %call.i4, 0
  br i1 %cmp.i, label %if.end.ip101a_g_config_intr_pin.exit_crit_edge, label %if.end.i

if.end.ip101a_g_config_intr_pin.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ip101a_g_config_intr_pin.exit

if.end.i:                                         ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %3, label %if.end.i.ip101a_g_config_intr_pin.exit_crit_edge [
    i32 2, label %if.end.i.out.sink.split.i_crit_edge
    i32 1, label %sw.bb6.i
  ]

if.end.i.out.sink.split.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split.i

if.end.i.ip101a_g_config_intr_pin.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ip101a_g_config_intr_pin.exit

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %sw.bb6.i, %if.end.i.out.sink.split.i_crit_edge
  %.sink.i = phi i16 [ 4, %sw.bb6.i ], [ 0, %if.end.i.out.sink.split.i_crit_edge ]
  %call7.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 29, i16 noundef zeroext 4, i16 noundef zeroext %.sink.i) #6
  br label %ip101a_g_config_intr_pin.exit

ip101a_g_config_intr_pin.exit:                    ; preds = %out.sink.split.i, %if.end.i.ip101a_g_config_intr_pin.exit_crit_edge, %if.end.ip101a_g_config_intr_pin.exit_crit_edge
  %err.0.i = phi i32 [ 0, %if.end.ip101a_g_config_intr_pin.exit_crit_edge ], [ 0, %if.end.i.ip101a_g_config_intr_pin.exit_crit_edge ], [ %call7.i, %out.sink.split.i ]
  %call11.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i4, i32 noundef %err.0.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ip101a_g_config_intr_pin.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11.i, %ip101a_g_config_intr_pin.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip101a_g_probe(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %phydev, i32 noundef 24, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i27 = tail call zeroext i1 @device_property_present(ptr noundef %phydev, ptr noundef nonnull @.str.4) #6
  br i1 %call.i27, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %call.i28 = tail call zeroext i1 @device_property_present(ptr noundef %phydev, ptr noundef nonnull @.str.5) #6
  br i1 %call.i28, label %do.end, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phydev, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %call.i29 = tail call zeroext i1 @device_property_present(ptr noundef %phydev, ptr noundef nonnull @.str.4) #6
  br i1 %call.i29, label %if.end5.if.end14_crit_edge, label %if.else

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call.i30 = tail call zeroext i1 @device_property_present(ptr noundef %phydev, ptr noundef nonnull @.str.5) #6
  %. = zext i1 %call.i30 to i32
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end5.if.end14_crit_edge
  %.sink = phi i32 [ 2, %if.end5.if.end14_crit_edge ], [ %., %if.else ]
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %.sink, ptr %call.i, align 8
  %priv15 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %1 = ptrtoint ptr %priv15 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %priv15, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip101a_g_config_aneg(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdix_ctrl.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %0 = ptrtoint ptr %mdix_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mdix_ctrl.i, align 1
  %switch.tableidx = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %2 = icmp ult i8 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

switch.lookup:                                    ; preds = %entry
  %3 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i16], ptr @switch.table.ip101a_g_config_aneg, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %4)
  %switch.load = load i16, ptr %switch.gep, align 2
  %5 = sext i8 %switch.tableidx to i32
  %switch.gep7 = getelementptr inbounds [3 x i16], ptr @switch.table.ip101a_g_config_aneg.14, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep7 to i32
  call void @__asan_load2_noabort(i32 %6)
  %switch.load8 = load i16, ptr %switch.gep7, align 2
  %call.i = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %switch.lookup.ip101a_g_config_mdix.exit_crit_edge, label %if.end.i

switch.lookup.ip101a_g_config_mdix.exit_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %ip101a_g_config_mdix.exit

if.end.i:                                         ; preds = %switch.lookup
  %call3.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 2048, i16 noundef zeroext %switch.load) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end5.i, label %if.end.i.ip101a_g_config_mdix.exit_crit_edge

if.end.i.ip101a_g_config_mdix.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ip101a_g_config_mdix.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 30, i16 noundef zeroext 8, i16 noundef zeroext %switch.load8) #6
  br label %ip101a_g_config_mdix.exit

ip101a_g_config_mdix.exit:                        ; preds = %if.end5.i, %if.end.i.ip101a_g_config_mdix.exit_crit_edge, %switch.lookup.ip101a_g_config_mdix.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %switch.lookup.ip101a_g_config_mdix.exit_crit_edge ], [ %call3.i, %if.end.i.ip101a_g_config_mdix.exit_crit_edge ], [ %call6.i, %if.end5.i ]
  %call7.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i, i32 noundef %ret.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not = icmp eq i32 %call7.i, 0
  br i1 %tobool.not, label %ip101a_g_config_mdix.exit.if.end_crit_edge, label %ip101a_g_config_mdix.exit.cleanup_crit_edge

ip101a_g_config_mdix.exit.cleanup_crit_edge:      ; preds = %ip101a_g_config_mdix.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ip101a_g_config_mdix.exit.if.end_crit_edge:       ; preds = %ip101a_g_config_mdix.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %ip101a_g_config_mdix.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i4 = tail call i32 @__genphy_config_aneg(ptr noundef %phydev, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ip101a_g_config_mdix.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i4, %if.end ], [ %call7.i, %ip101a_g_config_mdix.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip101a_g_read_status(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genphy_read_status(ptr noundef %phydev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end3:                                          ; preds = %if.end
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @__mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %if.end3.out_crit_edge, label %if.end7

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end7:                                          ; preds = %if.end3
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i51 = tail call i32 @__mdiobus_read(ptr noundef %5, i32 noundef %7, i32 noundef 30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp9 = icmp slt i32 %call.i51, 0
  br i1 %cmp9, label %if.end7.out_crit_edge, label %if.end11

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end11:                                         ; preds = %if.end7
  %and = and i32 %call.i, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.else19, label %if.then13

if.then13:                                        ; preds = %if.end11
  %and14 = and i32 %call.i51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %mdix_ctrl17 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %mdix_ctrl17 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 2, ptr %mdix_ctrl17, align 1
  br label %if.end21

if.else:                                          ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %mdix_ctrl17 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %mdix_ctrl17, align 1
  br label %if.end21

if.else19:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %mdix_ctrl20 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 39
  %10 = ptrtoint ptr %mdix_ctrl20 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %mdix_ctrl20, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.else, %if.then16
  %and22 = and i32 %call.i51, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %mdix26 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 38
  %. = select i1 %tobool23.not, i8 1, i8 2
  %11 = ptrtoint ptr %mdix26 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %., ptr %mdix26, align 8
  br label %out

out:                                              ; preds = %if.end21, %if.end7.out_crit_edge, %if.end3.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ %call.i, %if.end3.out_crit_edge ], [ %call.i51, %if.end7.out_crit_edge ], [ 0, %if.end21 ]
  %call28 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call1, i32 noundef %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %out ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip101a_g_config_intr(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupts = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %0 = ptrtoint ptr %interrupts to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %interrupts, align 8
  %bf.clear = and i16 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear)
  %cmp.not = icmp eq i16 %bf.clear, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 16, i32 noundef 17) #6
  %1 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool.not = icmp sgt i32 %call.i, -1
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 16, i32 noundef 17, i16 noundef zeroext -32768) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 16, i32 noundef 17, i16 noundef zeroext 2048) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call.i19 = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 16, i32 noundef 17) #6
  %2 = tail call i32 @llvm.smin.i32(i32 %call.i19, i32 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.else.cleanup_crit_edge, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then.cleanup_crit_edge ], [ %call3, %if.else.cleanup_crit_edge ], [ %call2, %if.end ], [ %2, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip101a_g_handle_interrupt(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 16, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @phy_error(ptr noundef %phydev) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %call, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @phy_trigger_machine(ptr noundef %phydev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.end2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip101a_match_phy_device(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ip101a_g_match_phy_device(ptr noundef %phydev, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ip101a_read_page(ptr nocapture noundef readnone %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip101a_write_page(ptr nocapture noundef readnone %phydev, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %page)
  %cmp.not = icmp eq i32 %page, 16
  br i1 %cmp.not, label %entry.if.end27_crit_edge, label %land.rhs

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

land.rhs:                                         ; preds = %entry
  %.b37 = load i1, ptr @ip101a_write_page.__already_done, align 1
  br i1 %.b37, label %land.rhs.if.end27_crit_edge, label %if.then, !prof !52

land.rhs.if.end27_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ip101a_write_page.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 466, i32 noundef 9, ptr noundef nonnull @.str.11) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then, %land.rhs.if.end27_crit_edge, %entry.if.end27_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip101g_config_init(ptr noundef %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 1, i32 noundef 17, i16 noundef zeroext 8192, i16 noundef zeroext 8192) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 8, i32 noundef 17, i16 noundef zeroext -32768, i16 noundef zeroext -32768) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %priv1.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 8
  %call.i = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end4.ip101a_g_config_intr_pin.exit_crit_edge, label %if.end.i

if.end4.ip101a_g_config_intr_pin.exit_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %ip101a_g_config_intr_pin.exit

if.end.i:                                         ; preds = %if.end4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %3, label %if.end.i.ip101a_g_config_intr_pin.exit_crit_edge [
    i32 2, label %if.end.i.out.sink.split.i_crit_edge
    i32 1, label %sw.bb6.i
  ]

if.end.i.out.sink.split.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split.i

if.end.i.ip101a_g_config_intr_pin.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ip101a_g_config_intr_pin.exit

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split.i

out.sink.split.i:                                 ; preds = %sw.bb6.i, %if.end.i.out.sink.split.i_crit_edge
  %.sink.i = phi i16 [ 4, %sw.bb6.i ], [ 0, %if.end.i.out.sink.split.i_crit_edge ]
  %call7.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 29, i16 noundef zeroext 4, i16 noundef zeroext %.sink.i) #6
  br label %ip101a_g_config_intr_pin.exit

ip101a_g_config_intr_pin.exit:                    ; preds = %out.sink.split.i, %if.end.i.ip101a_g_config_intr_pin.exit_crit_edge, %if.end4.ip101a_g_config_intr_pin.exit_crit_edge
  %err.0.i = phi i32 [ 0, %if.end4.ip101a_g_config_intr_pin.exit_crit_edge ], [ 0, %if.end.i.ip101a_g_config_intr_pin.exit_crit_edge ], [ %call7.i, %out.sink.split.i ]
  %call11.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i, i32 noundef %err.0.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ip101a_g_config_intr_pin.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11.i, %ip101a_g_config_intr_pin.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip101g_match_phy_device(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ip101a_g_match_phy_device(ptr noundef %phydev, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip101g_read_page(ptr nocapture noundef readonly %phydev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @__mdiobus_read(ptr noundef %1, i32 noundef %3, i32 noundef 20) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip101g_write_page(ptr nocapture noundef readonly %phydev, i32 noundef %page) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %page to i16
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 20, i16 noundef zeroext %conv) #6
  ret i32 %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ip101g_get_sset_count(ptr nocapture noundef readnone %phydev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip101g_get_strings(ptr nocapture noundef readnone %phydev, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %data, ptr noundef nonnull @.str.12, i32 noundef 32) #6
  %add.ptr.1 = getelementptr i8, ptr %data, i32 32
  %call.1 = tail call i32 @strscpy(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.13, i32 noundef 32) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ip101g_get_stats(ptr noundef %phydev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1.i = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 26
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 8
  %call.i = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 1, i32 noundef 18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.ip101g_get_stat.exit_crit_edge, label %if.else.i

entry.ip101g_get_stat.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ip101g_get_stat.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv10.i = zext i32 %call.i to i64
  %arrayidx2.i = getelementptr %struct.ip101a_g_phy_priv, ptr %1, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx2.i, align 8
  %add.i = add i64 %3, %conv10.i
  store i64 %add.i, ptr %arrayidx2.i, align 8
  br label %ip101g_get_stat.exit

ip101g_get_stat.exit:                             ; preds = %if.else.i, %entry.ip101g_get_stat.exit_crit_edge
  %ret.0.i = phi i64 [ %add.i, %if.else.i ], [ -1, %entry.ip101g_get_stat.exit_crit_edge ]
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %ret.0.i, ptr %data, align 8
  %5 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv1.i, align 8
  %call.i.1 = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 11, i32 noundef 18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp.i.1, label %ip101g_get_stat.exit.ip101g_get_stat.exit.1_crit_edge, label %if.else.i.1

ip101g_get_stat.exit.ip101g_get_stat.exit.1_crit_edge: ; preds = %ip101g_get_stat.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ip101g_get_stat.exit.1

if.else.i.1:                                      ; preds = %ip101g_get_stat.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv10.i.1 = zext i32 %call.i.1 to i64
  %arrayidx2.i.1 = getelementptr %struct.ip101a_g_phy_priv, ptr %6, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx2.i.1, align 8
  %add.i.1 = add i64 %8, %conv10.i.1
  store i64 %add.i.1, ptr %arrayidx2.i.1, align 8
  br label %ip101g_get_stat.exit.1

ip101g_get_stat.exit.1:                           ; preds = %if.else.i.1, %ip101g_get_stat.exit.ip101g_get_stat.exit.1_crit_edge
  %ret.0.i.1 = phi i64 [ %add.i.1, %if.else.i.1 ], [ -1, %ip101g_get_stat.exit.ip101g_get_stat.exit.1_crit_edge ]
  %arrayidx.1 = getelementptr i64, ptr %data, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %ret.0.i.1, ptr %arrayidx.1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__genphy_config_aneg(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_select_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_restore_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_paged(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_trigger_machine(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip101a_g_match_phy_device(ptr nocapture noundef readonly %phydev, i1 noundef zeroext %ip101a) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 2
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 37948500, i32 %1)
  %cmp.not = icmp eq i32 %1, 37948500
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @mdiobus_read(ptr noundef %3, i32 noundef %5, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i28.i = tail call i32 @mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 20, i16 noundef zeroext -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %tobool.not.i = icmp eq i32 %call.i28.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.ip101a_g_has_page_register.exit_crit_edge

if.end.i.ip101a_g_has_page_register.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ip101a_g_has_page_register.exit

if.end3.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %12 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i.i, align 8
  %call.i31.i = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %cmp5.i = icmp slt i32 %call.i31.i, 0
  br i1 %cmp5.i, label %if.end3.i.cleanup_crit_edge, label %if.end7.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.i:                                        ; preds = %if.end3.i
  %conv.i = trunc i32 %call.i.i to i16
  %14 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i, align 8
  %16 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i.i, align 8
  %call.i34.i = tail call i32 @mdiobus_write(ptr noundef %15, i32 noundef %17, i32 noundef 20, i16 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34.i)
  %tobool9.not.i = icmp eq i32 %call.i34.i, 0
  br i1 %tobool9.not.i, label %ip101a_g_has_page_register.exit.thread12, label %if.end7.i.ip101a_g_has_page_register.exit_crit_edge

if.end7.i.ip101a_g_has_page_register.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ip101a_g_has_page_register.exit

ip101a_g_has_page_register.exit.thread12:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call.i31.i)
  %cmp12.i = icmp eq i32 %call.i31.i, 31
  %conv13.i = zext i1 %cmp12.i to i32
  br label %if.end3

ip101a_g_has_page_register.exit:                  ; preds = %if.end7.i.ip101a_g_has_page_register.exit_crit_edge, %if.end.i.ip101a_g_has_page_register.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i28.i, %if.end.i.ip101a_g_has_page_register.exit_crit_edge ], [ %call.i34.i, %if.end7.i.ip101a_g_has_page_register.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp1 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp1, label %ip101a_g_has_page_register.exit.cleanup_crit_edge, label %ip101a_g_has_page_register.exit.if.end3_crit_edge

ip101a_g_has_page_register.exit.if.end3_crit_edge: ; preds = %ip101a_g_has_page_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

ip101a_g_has_page_register.exit.cleanup_crit_edge: ; preds = %ip101a_g_has_page_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %ip101a_g_has_page_register.exit.if.end3_crit_edge, %ip101a_g_has_page_register.exit.thread12
  %retval.0.i15 = phi i32 [ %conv13.i, %ip101a_g_has_page_register.exit.thread12 ], [ %retval.0.i, %ip101a_g_has_page_register.exit.if.end3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i15)
  %tobool4.not = icmp ne i32 %retval.0.i15, 0
  %cmp5 = xor i1 %tobool4.not, %ip101a
  %conv6 = zext i1 %cmp5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %ip101a_g_has_page_register.exit.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv6, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i, %ip101a_g_has_page_register.exit.cleanup_crit_edge ], [ %call.i31.i, %if.end3.i.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__UNIQUE_ID_description349, !1, !"__UNIQUE_ID_description349", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/icplus.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_author350, !3, !"__UNIQUE_ID_author350", i1 false, i1 false}
!3 = !{!"../drivers/net/phy/icplus.c", i32 30, i32 1}
!4 = !{ptr @__UNIQUE_ID_file351, !5, !"__UNIQUE_ID_file351", i1 false, i1 false}
!5 = !{!"../drivers/net/phy/icplus.c", i32 31, i32 1}
!6 = !{ptr @__UNIQUE_ID_license352, !5, !"__UNIQUE_ID_license352", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_icplus__353_625_phy_module_init6, !8, !"__initcall__kmod_icplus__353_625_phy_module_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/phy/icplus.c", i32 625, i32 1}
!9 = !{ptr @__exitcall_phy_module_exit, !8, !"__exitcall_phy_module_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/phy/icplus.c", i32 577, i32 11}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/phy/icplus.c", i32 586, i32 11}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/phy/icplus.c", i32 593, i32 11}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/icplus.c", i32 607, i32 11}
!18 = !{ptr @icplus_driver, !19, !"icplus_driver", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/icplus.c", i32 574, i32 26}
!20 = distinct !{null, !21, !"full_reset_performed", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/icplus.c", i32 97, i32 13}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/icplus.c", i32 216, i32 37}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/phy/icplus.c", i32 217, i32 37}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/phy/icplus.c", i32 218, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ip101a_g_probe._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @ip101a_g_probe._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../drivers/net/phy/icplus.c", i32 466, i32 2}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/phy/icplus.c", i32 85, i32 4}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/phy/icplus.c", i32 86, i32 4}
!41 = distinct !{null, !42, !"ip101g_hw_stats", i1 false, i1 false}
!42 = !{!"../drivers/net/phy/icplus.c", i32 84, i32 30}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"branch_weights", i32 2000, i32 1}
