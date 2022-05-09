; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/realtek/r8169_phy_config.c_pt.bc'
source_filename = "../drivers/net/ethernet/realtek/r8169_phy_config.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_reg = type { i16, i16 }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }

@r8169_hw_phy_config.phy_configs = internal constant { [53 x ptr], [44 x i8] } { [53 x ptr] [ptr @rtl8169s_hw_phy_config, ptr @rtl8169s_hw_phy_config, ptr @rtl8169sb_hw_phy_config, ptr @rtl8169scd_hw_phy_config, ptr @rtl8169sce_hw_phy_config, ptr @rtl8102e_hw_phy_config, ptr @rtl8102e_hw_phy_config, ptr @rtl8102e_hw_phy_config, ptr null, ptr @rtl8168bb_hw_phy_config, ptr @rtl8168bef_hw_phy_config, ptr null, ptr @rtl8401_hw_phy_config, ptr null, ptr @rtl8168bef_hw_phy_config, ptr @rtl8168cp_1_hw_phy_config, ptr @rtl8168c_1_hw_phy_config, ptr @rtl8168c_2_hw_phy_config, ptr @rtl8168c_3_hw_phy_config, ptr @rtl8168c_3_hw_phy_config, ptr @rtl8168cp_2_hw_phy_config, ptr @rtl8168cp_2_hw_phy_config, ptr @rtl8168d_1_hw_phy_config, ptr @rtl8168d_2_hw_phy_config, ptr @rtl8168d_4_hw_phy_config, ptr @rtl8105e_hw_phy_config, ptr @rtl8105e_hw_phy_config, ptr null, ptr @rtl8168e_1_hw_phy_config, ptr @rtl8168e_1_hw_phy_config, ptr @rtl8168e_2_hw_phy_config, ptr @rtl8168f_1_hw_phy_config, ptr @rtl8168f_2_hw_phy_config, ptr @rtl8402_hw_phy_config, ptr @rtl8411_hw_phy_config, ptr @rtl8106e_hw_phy_config, ptr @rtl8168g_1_hw_phy_config, ptr null, ptr @rtl8168g_2_hw_phy_config, ptr @rtl8168g_2_hw_phy_config, ptr @rtl8168g_2_hw_phy_config, ptr @rtl8168h_1_hw_phy_config, ptr @rtl8168h_2_hw_phy_config, ptr @rtl8168h_1_hw_phy_config, ptr @rtl8168h_2_hw_phy_config, ptr @rtl8168ep_1_hw_phy_config, ptr @rtl8168ep_2_hw_phy_config, ptr @rtl8168ep_2_hw_phy_config, ptr @rtl8117_hw_phy_config, ptr @rtl8117_hw_phy_config, ptr @rtl8125a_1_hw_phy_config, ptr @rtl8125a_2_hw_phy_config, ptr @rtl8125b_hw_phy_config], [44 x i8] zeroinitializer }, align 32
@rtl8169s_hw_phy_config.phy_reg_init = internal constant { [51 x %struct.phy_reg], [52 x i8] } { [51 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 6, i16 110 }, %struct.phy_reg { i16 8, i16 1800 }, %struct.phy_reg { i16 21, i16 16384 }, %struct.phy_reg { i16 24, i16 26055 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 3, i16 161 }, %struct.phy_reg { i16 2, i16 8 }, %struct.phy_reg { i16 1, i16 288 }, %struct.phy_reg { i16 0, i16 4096 }, %struct.phy_reg { i16 4, i16 2048 }, %struct.phy_reg { i16 4, i16 0 }, %struct.phy_reg { i16 3, i16 -191 }, %struct.phy_reg { i16 2, i16 -8352 }, %struct.phy_reg { i16 1, i16 320 }, %struct.phy_reg { i16 0, i16 119 }, %struct.phy_reg { i16 4, i16 30720 }, %struct.phy_reg { i16 4, i16 28672 }, %struct.phy_reg { i16 3, i16 -32721 }, %struct.phy_reg { i16 2, i16 20226 }, %struct.phy_reg { i16 1, i16 1033 }, %struct.phy_reg { i16 0, i16 -3847 }, %struct.phy_reg { i16 4, i16 -26624 }, %struct.phy_reg { i16 4, i16 -28672 }, %struct.phy_reg { i16 3, i16 -8447 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 -107 }, %struct.phy_reg { i16 0, i16 -17920 }, %struct.phy_reg { i16 4, i16 -22528 }, %struct.phy_reg { i16 4, i16 -24576 }, %struct.phy_reg { i16 3, i16 -191 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 320 }, %struct.phy_reg { i16 0, i16 187 }, %struct.phy_reg { i16 4, i16 -18432 }, %struct.phy_reg { i16 4, i16 -20480 }, %struct.phy_reg { i16 3, i16 -8383 }, %struct.phy_reg { i16 2, i16 -9120 }, %struct.phy_reg { i16 1, i16 25408 }, %struct.phy_reg { i16 0, i16 125 }, %struct.phy_reg { i16 4, i16 -10240 }, %struct.phy_reg { i16 4, i16 -12288 }, %struct.phy_reg { i16 3, i16 -8447 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 4106 }, %struct.phy_reg { i16 0, i16 -24321 }, %struct.phy_reg { i16 4, i16 -2048 }, %struct.phy_reg { i16 4, i16 -4096 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 11, i16 0 }, %struct.phy_reg { i16 0, i16 -28160 }], [52 x i8] zeroinitializer }, align 32
@rtl8169scd_hw_phy_config.phy_reg_init = internal constant { [35 x %struct.phy_reg], [52 x i8] } { [35 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 4, i16 0 }, %struct.phy_reg { i16 3, i16 161 }, %struct.phy_reg { i16 2, i16 8 }, %struct.phy_reg { i16 1, i16 288 }, %struct.phy_reg { i16 0, i16 4096 }, %struct.phy_reg { i16 4, i16 2048 }, %struct.phy_reg { i16 4, i16 -28672 }, %struct.phy_reg { i16 3, i16 -32721 }, %struct.phy_reg { i16 2, i16 20226 }, %struct.phy_reg { i16 1, i16 1033 }, %struct.phy_reg { i16 0, i16 -3943 }, %struct.phy_reg { i16 4, i16 -26624 }, %struct.phy_reg { i16 4, i16 -24576 }, %struct.phy_reg { i16 3, i16 -8447 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 -107 }, %struct.phy_reg { i16 0, i16 -17920 }, %struct.phy_reg { i16 4, i16 -22528 }, %struct.phy_reg { i16 4, i16 -4096 }, %struct.phy_reg { i16 3, i16 -8447 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 4122 }, %struct.phy_reg { i16 0, i16 -24321 }, %struct.phy_reg { i16 4, i16 -2048 }, %struct.phy_reg { i16 4, i16 0 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 16, i16 -3045 }, %struct.phy_reg { i16 20, i16 -1196 }, %struct.phy_reg { i16 24, i16 -2617 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 23, i16 3264 }, %struct.phy_reg { i16 31, i16 0 }], [52 x i8] zeroinitializer }, align 32
@rtl8169sce_hw_phy_config.phy_reg_init = internal constant { [42 x %struct.phy_reg], [56 x i8] } { [42 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 4, i16 0 }, %struct.phy_reg { i16 3, i16 161 }, %struct.phy_reg { i16 2, i16 8 }, %struct.phy_reg { i16 1, i16 288 }, %struct.phy_reg { i16 0, i16 4096 }, %struct.phy_reg { i16 4, i16 2048 }, %struct.phy_reg { i16 4, i16 -28672 }, %struct.phy_reg { i16 3, i16 -32721 }, %struct.phy_reg { i16 2, i16 20226 }, %struct.phy_reg { i16 1, i16 1033 }, %struct.phy_reg { i16 0, i16 -3943 }, %struct.phy_reg { i16 4, i16 -26624 }, %struct.phy_reg { i16 4, i16 -24576 }, %struct.phy_reg { i16 3, i16 -8447 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 -107 }, %struct.phy_reg { i16 0, i16 -17920 }, %struct.phy_reg { i16 4, i16 -22528 }, %struct.phy_reg { i16 4, i16 -4096 }, %struct.phy_reg { i16 3, i16 -8447 }, %struct.phy_reg { i16 2, i16 -8416 }, %struct.phy_reg { i16 1, i16 4122 }, %struct.phy_reg { i16 0, i16 -24321 }, %struct.phy_reg { i16 4, i16 -2048 }, %struct.phy_reg { i16 4, i16 0 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 11, i16 -31616 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 24, i16 26567 }, %struct.phy_reg { i16 4, i16 8192 }, %struct.phy_reg { i16 3, i16 47 }, %struct.phy_reg { i16 2, i16 17248 }, %struct.phy_reg { i16 1, i16 265 }, %struct.phy_reg { i16 0, i16 12322 }, %struct.phy_reg { i16 4, i16 10240 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 23, i16 3264 }, %struct.phy_reg { i16 31, i16 0 }], [56 x i8] zeroinitializer }, align 32
@rtl8168c_1_hw_phy_config.phy_reg_init = internal constant { [17 x %struct.phy_reg], [60 x i8] } { [17 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 18, i16 8960 }, %struct.phy_reg { i16 31, i16 2 }, %struct.phy_reg { i16 0, i16 -30508 }, %struct.phy_reg { i16 1, i16 -32079 }, %struct.phy_reg { i16 3, i16 28674 }, %struct.phy_reg { i16 8, i16 -25040 }, %struct.phy_reg { i16 9, i16 496 }, %struct.phy_reg { i16 10, i16 21760 }, %struct.phy_reg { i16 12, i16 200 }, %struct.phy_reg { i16 31, i16 3 }, %struct.phy_reg { i16 18, i16 -16234 }, %struct.phy_reg { i16 22, i16 10 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 9, i16 8192 }, %struct.phy_reg { i16 9, i16 0 }], [60 x i8] zeroinitializer }, align 32
@rtl8168c_2_hw_phy_config.phy_reg_init = internal constant { [15 x %struct.phy_reg], [36 x i8] } { [15 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 18, i16 8960 }, %struct.phy_reg { i16 3, i16 -32721 }, %struct.phy_reg { i16 2, i16 20226 }, %struct.phy_reg { i16 1, i16 1033 }, %struct.phy_reg { i16 0, i16 -3943 }, %struct.phy_reg { i16 4, i16 -26624 }, %struct.phy_reg { i16 4, i16 -28672 }, %struct.phy_reg { i16 29, i16 15768 }, %struct.phy_reg { i16 31, i16 2 }, %struct.phy_reg { i16 12, i16 32440 }, %struct.phy_reg { i16 6, i16 1889 }, %struct.phy_reg { i16 31, i16 3 }, %struct.phy_reg { i16 22, i16 3850 }, %struct.phy_reg { i16 31, i16 0 }], [36 x i8] zeroinitializer }, align 32
@rtl8168d_1_phy_reg_init_0 = internal constant { [26 x %struct.phy_reg], [56 x i8] } { [26 x %struct.phy_reg] [%struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 6, i16 16484 }, %struct.phy_reg { i16 7, i16 10339 }, %struct.phy_reg { i16 8, i16 1436 }, %struct.phy_reg { i16 9, i16 9908 }, %struct.phy_reg { i16 10, i16 27161 }, %struct.phy_reg { i16 11, i16 -9016 }, %struct.phy_reg { i16 16, i16 -3987 }, %struct.phy_reg { i16 20, i16 32616 }, %struct.phy_reg { i16 24, i16 32729 }, %struct.phy_reg { i16 28, i16 -3841 }, %struct.phy_reg { i16 29, i16 15772 }, %struct.phy_reg { i16 31, i16 3 }, %struct.phy_reg { i16 18, i16 -2913 }, %struct.phy_reg { i16 19, i16 1803 }, %struct.phy_reg { i16 26, i16 1453 }, %struct.phy_reg { i16 20, i16 -27456 }, %struct.phy_reg { i16 31, i16 2 }, %struct.phy_reg { i16 6, i16 21857 }, %struct.phy_reg { i16 31, i16 5 }, %struct.phy_reg { i16 5, i16 -31950 }, %struct.phy_reg { i16 6, i16 21857 }, %struct.phy_reg { i16 31, i16 1 }, %struct.phy_reg { i16 23, i16 3264 }, %struct.phy_reg { i16 31, i16 0 }, %struct.phy_reg { i16 13, i16 -1920 }], [56 x i8] zeroinitializer }, align 32
@rtl8168d_apply_firmware_cond._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 453, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"chipset not ready for firmware\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"rtl8168d_apply_firmware_cond\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/realtek/r8169_phy_config.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rtl8168d_apply_firmware_cond._entry_ptr = internal global ptr @rtl8168d_apply_firmware_cond._entry, section ".printk_index", align 4
@___asan_gen_.5 = private unnamed_addr constant [12 x i8] c"phy_configs\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 1250, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 111, i32 30 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 185, i32 30 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 231, i32 30 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 315, i32 30 }
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"phy_reg_init\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 344, i32 30 }
@___asan_gen_.23 = private unnamed_addr constant [26 x i8] c"rtl8168d_1_phy_reg_init_0\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 391, i32 29 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [51 x i8] c"../drivers/net/ethernet/realtek/r8169_phy_config.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 453, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @rtl8168d_apply_firmware_cond._entry, ptr @rtl8168d_apply_firmware_cond._entry_ptr, ptr @r8169_hw_phy_config.phy_configs, ptr @rtl8169s_hw_phy_config.phy_reg_init, ptr @rtl8169scd_hw_phy_config.phy_reg_init, ptr @rtl8169sce_hw_phy_config.phy_reg_init, ptr @rtl8168c_1_hw_phy_config.phy_reg_init, ptr @rtl8168c_2_hw_phy_config.phy_reg_init, ptr @rtl8168d_1_phy_reg_init_0, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r8169_hw_phy_config.phy_configs to i32), i32 212, i32 256, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8169s_hw_phy_config.phy_reg_init to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8169scd_hw_phy_config.phy_reg_init to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8169sce_hw_phy_config.phy_reg_init to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8168c_1_hw_phy_config.phy_reg_init to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8168c_2_hw_phy_config.phy_reg_init to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8168d_1_phy_reg_init_0 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtl8168d_apply_firmware_cond._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @r8169_hw_phy_config(ptr noundef %tp, ptr noundef %phydev, i32 noundef %ver) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [53 x ptr], ptr @r8169_hw_phy_config.phy_configs, i32 0, i32 %ver
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %1(ptr noundef %tp, ptr noundef %phydev) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8169s_hw_phy_config(ptr nocapture noundef readnone %tp, ptr nocapture noundef readonly %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 0) #3
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %len.addr.010.i = phi i32 [ 51, %entry ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %regs.addr.09.i = phi ptr [ @rtl8169s_hw_phy_config.phy_reg_init, %entry ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %len.addr.010.i, -1
  %2 = ptrtoint ptr %regs.addr.09.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %regs.addr.09.i, align 2
  %conv.i = zext i16 %3 to i32
  %val.i = getelementptr inbounds %struct.phy_reg, ptr %regs.addr.09.i, i32 0, i32 1
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %val.i, align 2
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef %conv.i, i16 noundef zeroext %5) #3
  %incdec.ptr.i = getelementptr %struct.phy_reg, ptr %regs.addr.09.i, i32 1
  %cmp.i = icmp ugt i32 %len.addr.010.i, 1
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %__rtl_writephy_batch.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

__rtl_writephy_batch.exit:                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i7.i = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i7.i) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8169sb_hw_phy_config(ptr nocapture noundef readnone %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 2, i32 noundef 1, i16 noundef zeroext -28464) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8169scd_hw_phy_config(ptr nocapture noundef readnone %tp, ptr nocapture noundef readonly %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 0) #3
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %len.addr.010.i = phi i32 [ 35, %entry ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %regs.addr.09.i = phi ptr [ @rtl8169scd_hw_phy_config.phy_reg_init, %entry ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %len.addr.010.i, -1
  %2 = ptrtoint ptr %regs.addr.09.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %regs.addr.09.i, align 2
  %conv.i = zext i16 %3 to i32
  %val.i = getelementptr inbounds %struct.phy_reg, ptr %regs.addr.09.i, i32 0, i32 1
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %val.i, align 2
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef %conv.i, i16 noundef zeroext %5) #3
  %incdec.ptr.i = getelementptr %struct.phy_reg, ptr %regs.addr.09.i, i32 1
  %cmp.i = icmp ugt i32 %len.addr.010.i, 1
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %__rtl_writephy_batch.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

__rtl_writephy_batch.exit:                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i7.i = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i7.i) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8169sce_hw_phy_config(ptr nocapture noundef readnone %tp, ptr nocapture noundef readonly %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 0) #3
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %len.addr.010.i = phi i32 [ 42, %entry ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %regs.addr.09.i = phi ptr [ @rtl8169sce_hw_phy_config.phy_reg_init, %entry ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %len.addr.010.i, -1
  %2 = ptrtoint ptr %regs.addr.09.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %regs.addr.09.i, align 2
  %conv.i = zext i16 %3 to i32
  %val.i = getelementptr inbounds %struct.phy_reg, ptr %regs.addr.09.i, i32 0, i32 1
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %val.i, align 2
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef %conv.i, i16 noundef zeroext %5) #3
  %incdec.ptr.i = getelementptr %struct.phy_reg, ptr %regs.addr.09.i, i32 1
  %cmp.i = icmp ugt i32 %len.addr.010.i, 1
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %__rtl_writephy_batch.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

__rtl_writephy_batch.exit:                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i7.i = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i7.i) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8102e_hw_phy_config(ptr nocapture noundef readnone %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 4096) #3
  %call.i6 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 25, i16 noundef zeroext 0, i16 noundef zeroext 8192) #3
  %call.i7 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext -32768) #3
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 0) #3
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 31, i16 noundef zeroext 3) #3
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i.i.1 = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 8, i16 noundef zeroext 17437) #3
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %12 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i.i, align 8
  %call.i.i.2 = tail call i32 @__mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 1, i16 noundef zeroext -28416) #3
  %14 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i, align 8
  %16 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i.i, align 8
  %call.i.i.3 = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %17, i32 noundef 31, i16 noundef zeroext 0) #3
  %18 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i7.i = getelementptr inbounds %struct.mii_bus, ptr %19, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i7.i) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168bb_hw_phy_config(ptr nocapture noundef readnone %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext 1) #3
  %call.i7 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 22, i16 noundef zeroext 0, i16 noundef zeroext 1) #3
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i10 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 16, i16 noundef zeroext -3045) #3
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i13 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 31, i16 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168bef_hw_phy_config(ptr nocapture noundef readnone %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 1, i32 noundef 16, i16 noundef zeroext -3045) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8401_hw_phy_config(ptr nocapture noundef readnone %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 4096) #3
  %call1 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2, i32 noundef 15, i16 noundef zeroext 0, i16 noundef zeroext 3) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168cp_1_hw_phy_config(ptr nocapture noundef readnone %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 29, i16 noundef zeroext 3840) #3
  %call1 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 2, i32 noundef 12, i16 noundef zeroext 7880) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168c_1_hw_phy_config(ptr nocapture noundef readnone %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 0) #3
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %len.addr.010.i = phi i32 [ 17, %entry ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %regs.addr.09.i = phi ptr [ @rtl8168c_1_hw_phy_config.phy_reg_init, %entry ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %len.addr.010.i, -1
  %2 = ptrtoint ptr %regs.addr.09.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %regs.addr.09.i, align 2
  %conv.i = zext i16 %3 to i32
  %val.i = getelementptr inbounds %struct.phy_reg, ptr %regs.addr.09.i, i32 0, i32 1
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %val.i, align 2
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef %conv.i, i16 noundef zeroext %5) #3
  %incdec.ptr.i = getelementptr %struct.phy_reg, ptr %regs.addr.09.i, i32 1
  %cmp.i = icmp ugt i32 %len.addr.010.i, 1
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %__rtl_writephy_batch.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

__rtl_writephy_batch.exit:                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i7.i = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i7.i) #3
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  %call.i4 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 13, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168c_2_hw_phy_config(ptr nocapture noundef readnone %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 0) #3
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %len.addr.010.i = phi i32 [ 15, %entry ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %regs.addr.09.i = phi ptr [ @rtl8168c_2_hw_phy_config.phy_reg_init, %entry ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %len.addr.010.i, -1
  %2 = ptrtoint ptr %regs.addr.09.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %regs.addr.09.i, align 2
  %conv.i = zext i16 %3 to i32
  %val.i = getelementptr inbounds %struct.phy_reg, ptr %regs.addr.09.i, i32 0, i32 1
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %val.i, align 2
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef %conv.i, i16 noundef zeroext %5) #3
  %incdec.ptr.i = getelementptr %struct.phy_reg, ptr %regs.addr.09.i, i32 1
  %cmp.i = icmp ugt i32 %len.addr.010.i, 1
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %__rtl_writephy_batch.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

__rtl_writephy_batch.exit:                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i7.i = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i7.i) #3
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 22, i16 noundef zeroext 0, i16 noundef zeroext 1) #3
  %call.i6 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  %call.i7 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 13, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168c_3_hw_phy_config(ptr nocapture noundef readnone %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 0) #3
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus.i.i, align 8
  %4 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 31, i16 noundef zeroext 1) #3
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i.i.1 = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 18, i16 noundef zeroext 8960) #3
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %12 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i.i, align 8
  %call.i.i.2 = tail call i32 @__mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 29, i16 noundef zeroext 15768) #3
  %14 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i, align 8
  %16 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i.i, align 8
  %call.i.i.3 = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %17, i32 noundef 31, i16 noundef zeroext 2) #3
  %18 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i, align 8
  %20 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i.i, align 8
  %call.i.i.4 = tail call i32 @__mdiobus_write(ptr noundef %19, i32 noundef %21, i32 noundef 12, i16 noundef zeroext 32440) #3
  %22 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i.i, align 8
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i.i, align 8
  %call.i.i.5 = tail call i32 @__mdiobus_write(ptr noundef %23, i32 noundef %25, i32 noundef 6, i16 noundef zeroext 21601) #3
  %26 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i.i, align 8
  %28 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.i.i, align 8
  %call.i.i.6 = tail call i32 @__mdiobus_write(ptr noundef %27, i32 noundef %29, i32 noundef 31, i16 noundef zeroext 3) #3
  %30 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus.i.i, align 8
  %32 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr.i.i, align 8
  %call.i.i.7 = tail call i32 @__mdiobus_write(ptr noundef %31, i32 noundef %33, i32 noundef 22, i16 noundef zeroext 3850) #3
  %34 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i.i, align 8
  %36 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr.i.i, align 8
  %call.i.i.8 = tail call i32 @__mdiobus_write(ptr noundef %35, i32 noundef %37, i32 noundef 31, i16 noundef zeroext 0) #3
  %38 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i7.i = getelementptr inbounds %struct.mii_bus, ptr %39, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i7.i) #3
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 22, i16 noundef zeroext 0, i16 noundef zeroext 1) #3
  %call.i6 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  %call.i7 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 13, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168cp_2_hw_phy_config(ptr nocapture noundef readnone %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  %call.i5 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 13, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  %call2 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 1, i32 noundef 29, i16 noundef zeroext 15768) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168d_1_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 0) #3
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %len.addr.010.i = phi i32 [ 26, %entry ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %regs.addr.09.i = phi ptr [ @rtl8168d_1_phy_reg_init_0, %entry ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %len.addr.010.i, -1
  %2 = ptrtoint ptr %regs.addr.09.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %regs.addr.09.i, align 2
  %conv.i = zext i16 %3 to i32
  %val.i = getelementptr inbounds %struct.phy_reg, ptr %regs.addr.09.i, i32 0, i32 1
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %val.i, align 2
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef %conv.i, i16 noundef zeroext %5) #3
  %incdec.ptr.i = getelementptr %struct.phy_reg, ptr %regs.addr.09.i, i32 1
  %cmp.i = icmp ugt i32 %len.addr.010.i, 1
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %__rtl_writephy_batch.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

__rtl_writephy_batch.exit:                        ; preds = %while.body.i
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i7.i = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i7.i) #3
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 31, i16 noundef zeroext 2) #3
  %call1 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 11, i16 noundef zeroext 239, i16 noundef zeroext 16) #3
  %call2 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 12, i16 noundef zeroext 23808, i16 noundef zeroext -24064) #3
  %call3 = tail call zeroext i8 @rtl8168d_efuse_read(ptr noundef %tp, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -79, i8 %call3)
  %cmp = icmp eq i8 %call3, -79
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %__rtl_writephy_batch.exit
  %16 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i.i47 = getelementptr inbounds %struct.mii_bus, ptr %17, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i47, i32 noundef 0) #3
  %18 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i, align 8
  %20 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i.i, align 8
  %call.i.i54 = tail call i32 @__mdiobus_write(ptr noundef %19, i32 noundef %21, i32 noundef 31, i16 noundef zeroext 2) #3
  %22 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i.i, align 8
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i.i, align 8
  %call.i.i54.1 = tail call i32 @__mdiobus_write(ptr noundef %23, i32 noundef %25, i32 noundef 5, i16 noundef zeroext 26266) #3
  %26 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i.i, align 8
  %28 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.i.i, align 8
  %call.i.i54.2 = tail call i32 @__mdiobus_write(ptr noundef %27, i32 noundef %29, i32 noundef 31, i16 noundef zeroext 5) #3
  %30 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus.i.i, align 8
  %32 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr.i.i, align 8
  %call.i.i54.3 = tail call i32 @__mdiobus_write(ptr noundef %31, i32 noundef %33, i32 noundef 5, i16 noundef zeroext -31952) #3
  %34 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i.i, align 8
  %36 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr.i.i, align 8
  %call.i.i54.4 = tail call i32 @__mdiobus_write(ptr noundef %35, i32 noundef %37, i32 noundef 6, i16 noundef zeroext 26266) #3
  %38 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus.i.i, align 8
  %40 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %addr.i.i, align 8
  %call.i.i54.5 = tail call i32 @__mdiobus_write(ptr noundef %39, i32 noundef %41, i32 noundef 31, i16 noundef zeroext 2) #3
  %42 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i7.i58 = getelementptr inbounds %struct.mii_bus, ptr %43, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i7.i58) #3
  %44 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i.i, align 8
  %46 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i.i, align 8
  %call.i62 = tail call i32 @mdiobus_read(ptr noundef %45, i32 noundef %47, i32 noundef 13) #3
  %and = and i32 %call.i62, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %and)
  %cmp6.not = icmp eq i32 %and, 108
  br i1 %cmp6.not, label %if.then.if.end16_crit_edge, label %if.then8

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end16

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %48 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i.i, align 8
  %50 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i.i, align 8
  %call.i65 = tail call i32 @mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 31, i16 noundef zeroext 2) #3
  %and10 = and i32 %call.i62, 65280
  %52 = trunc i32 %and10 to i16
  %conv13 = or i16 %52, 101
  %53 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %bus.i.i, align 8
  %55 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %addr.i.i, align 8
  %call.i68 = tail call i32 @mdiobus_write(ptr noundef %54, i32 noundef %56, i32 noundef 13, i16 noundef zeroext %conv13) #3
  %57 = trunc i32 %and10 to i16
  %conv13.1 = or i16 %57, 102
  %58 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bus.i.i, align 8
  %60 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %addr.i.i, align 8
  %call.i68.1 = tail call i32 @mdiobus_write(ptr noundef %59, i32 noundef %61, i32 noundef 13, i16 noundef zeroext %conv13.1) #3
  %62 = trunc i32 %and10 to i16
  %conv13.2 = or i16 %62, 103
  %63 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bus.i.i, align 8
  %65 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %addr.i.i, align 8
  %call.i68.2 = tail call i32 @mdiobus_write(ptr noundef %64, i32 noundef %66, i32 noundef 13, i16 noundef zeroext %conv13.2) #3
  %67 = trunc i32 %and10 to i16
  %conv13.3 = or i16 %67, 104
  %68 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus.i.i, align 8
  %70 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %addr.i.i, align 8
  %call.i68.3 = tail call i32 @mdiobus_write(ptr noundef %69, i32 noundef %71, i32 noundef 13, i16 noundef zeroext %conv13.3) #3
  %72 = trunc i32 %and10 to i16
  %conv13.4 = or i16 %72, 105
  %73 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bus.i.i, align 8
  %75 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %addr.i.i, align 8
  %call.i68.4 = tail call i32 @mdiobus_write(ptr noundef %74, i32 noundef %76, i32 noundef 13, i16 noundef zeroext %conv13.4) #3
  %77 = trunc i32 %and10 to i16
  %conv13.5 = or i16 %77, 106
  %78 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %bus.i.i, align 8
  %80 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %addr.i.i, align 8
  %call.i68.5 = tail call i32 @mdiobus_write(ptr noundef %79, i32 noundef %81, i32 noundef 13, i16 noundef zeroext %conv13.5) #3
  %82 = trunc i32 %and10 to i16
  %conv13.6 = or i16 %82, 107
  %83 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %bus.i.i, align 8
  %85 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %addr.i.i, align 8
  %call.i68.6 = tail call i32 @mdiobus_write(ptr noundef %84, i32 noundef %86, i32 noundef 13, i16 noundef zeroext %conv13.6) #3
  %87 = trunc i32 %and10 to i16
  %conv13.7 = or i16 %87, 108
  %88 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus.i.i, align 8
  %90 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %addr.i.i, align 8
  %call.i68.7 = tail call i32 @mdiobus_write(ptr noundef %89, i32 noundef %91, i32 noundef 13, i16 noundef zeroext %conv13.7) #3
  br label %if.end16

if.else:                                          ; preds = %__rtl_writephy_batch.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call15 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 2, i32 noundef 5, i16 noundef zeroext 26210) #3
  %call.i69 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %92 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bus.i.i, align 8
  %94 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %addr.i.i, align 8
  %call.i.i72 = tail call i32 @__mdiobus_write(ptr noundef %93, i32 noundef %95, i32 noundef 5, i16 noundef zeroext -31952) #3
  %call2.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 26210) #3
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i69, i32 noundef 0) #3
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then8, %if.then.if.end16_crit_edge
  %96 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bus.i.i, align 8
  %98 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %addr.i.i, align 8
  %call.i75 = tail call i32 @mdiobus_write(ptr noundef %97, i32 noundef %99, i32 noundef 31, i16 noundef zeroext 2) #3
  %call.i76 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 13, i16 noundef zeroext 0, i16 noundef zeroext 768) #3
  %call.i77 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 15, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  %100 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bus.i.i, align 8
  %102 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %addr.i.i, align 8
  %call.i80 = tail call i32 @mdiobus_write(ptr noundef %101, i32 noundef %103, i32 noundef 31, i16 noundef zeroext 2) #3
  %call21 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 1536, i16 noundef zeroext 256) #3
  %call.i81 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 3, i16 noundef zeroext -8192, i16 noundef zeroext 0) #3
  %104 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bus.i.i, align 8
  %106 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %addr.i.i, align 8
  %call.i84 = tail call i32 @mdiobus_write(ptr noundef %105, i32 noundef %107, i32 noundef 31, i16 noundef zeroext 0) #3
  tail call fastcc void @rtl8168d_apply_firmware_cond(ptr noundef %tp, ptr noundef %phydev, i16 noundef zeroext -16640)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168d_2_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 0) #3
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %len.addr.010.i = phi i32 [ 26, %entry ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %regs.addr.09.i = phi ptr [ @rtl8168d_1_phy_reg_init_0, %entry ], [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %len.addr.010.i, -1
  %2 = ptrtoint ptr %regs.addr.09.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %regs.addr.09.i, align 2
  %conv.i = zext i16 %3 to i32
  %val.i = getelementptr inbounds %struct.phy_reg, ptr %regs.addr.09.i, i32 0, i32 1
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %val.i, align 2
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef %conv.i, i16 noundef zeroext %5) #3
  %incdec.ptr.i = getelementptr %struct.phy_reg, ptr %regs.addr.09.i, i32 1
  %cmp.i = icmp ugt i32 %len.addr.010.i, 1
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %__rtl_writephy_batch.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.body.i

__rtl_writephy_batch.exit:                        ; preds = %while.body.i
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i7.i = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i7.i) #3
  %call = tail call zeroext i8 @rtl8168d_efuse_read(ptr noundef %tp, i32 noundef 1) #3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -79, i8 %call)
  %cmp = icmp eq i8 %call, -79
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %__rtl_writephy_batch.exit
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i.i37 = getelementptr inbounds %struct.mii_bus, ptr %13, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i37, i32 noundef 0) #3
  %14 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i, align 8
  %16 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i.i, align 8
  %call.i.i44 = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %17, i32 noundef 31, i16 noundef zeroext 2) #3
  %18 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i, align 8
  %20 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i.i, align 8
  %call.i.i44.1 = tail call i32 @__mdiobus_write(ptr noundef %19, i32 noundef %21, i32 noundef 5, i16 noundef zeroext 26266) #3
  %22 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i.i, align 8
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i.i, align 8
  %call.i.i44.2 = tail call i32 @__mdiobus_write(ptr noundef %23, i32 noundef %25, i32 noundef 31, i16 noundef zeroext 5) #3
  %26 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i.i, align 8
  %28 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.i.i, align 8
  %call.i.i44.3 = tail call i32 @__mdiobus_write(ptr noundef %27, i32 noundef %29, i32 noundef 5, i16 noundef zeroext -31952) #3
  %30 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus.i.i, align 8
  %32 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr.i.i, align 8
  %call.i.i44.4 = tail call i32 @__mdiobus_write(ptr noundef %31, i32 noundef %33, i32 noundef 6, i16 noundef zeroext 26266) #3
  %34 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i.i, align 8
  %36 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr.i.i, align 8
  %call.i.i44.5 = tail call i32 @__mdiobus_write(ptr noundef %35, i32 noundef %37, i32 noundef 31, i16 noundef zeroext 2) #3
  %38 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i7.i48 = getelementptr inbounds %struct.mii_bus, ptr %39, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i7.i48) #3
  %40 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i.i, align 8
  %42 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %41, i32 noundef %43, i32 noundef 13) #3
  %and = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %and)
  %cmp3.not = icmp eq i32 %and, 108
  br i1 %cmp3.not, label %if.then.if.end13_crit_edge, label %if.then5

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %44 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i.i, align 8
  %46 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i.i, align 8
  %call.i52 = tail call i32 @mdiobus_write(ptr noundef %45, i32 noundef %47, i32 noundef 31, i16 noundef zeroext 2) #3
  %and7 = and i32 %call.i, 65280
  %48 = trunc i32 %and7 to i16
  %conv10 = or i16 %48, 101
  %49 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bus.i.i, align 8
  %51 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %addr.i.i, align 8
  %call.i55 = tail call i32 @mdiobus_write(ptr noundef %50, i32 noundef %52, i32 noundef 13, i16 noundef zeroext %conv10) #3
  %53 = trunc i32 %and7 to i16
  %conv10.1 = or i16 %53, 102
  %54 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bus.i.i, align 8
  %56 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %addr.i.i, align 8
  %call.i55.1 = tail call i32 @mdiobus_write(ptr noundef %55, i32 noundef %57, i32 noundef 13, i16 noundef zeroext %conv10.1) #3
  %58 = trunc i32 %and7 to i16
  %conv10.2 = or i16 %58, 103
  %59 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %bus.i.i, align 8
  %61 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %addr.i.i, align 8
  %call.i55.2 = tail call i32 @mdiobus_write(ptr noundef %60, i32 noundef %62, i32 noundef 13, i16 noundef zeroext %conv10.2) #3
  %63 = trunc i32 %and7 to i16
  %conv10.3 = or i16 %63, 104
  %64 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus.i.i, align 8
  %66 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr.i.i, align 8
  %call.i55.3 = tail call i32 @mdiobus_write(ptr noundef %65, i32 noundef %67, i32 noundef 13, i16 noundef zeroext %conv10.3) #3
  %68 = trunc i32 %and7 to i16
  %conv10.4 = or i16 %68, 105
  %69 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %bus.i.i, align 8
  %71 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %addr.i.i, align 8
  %call.i55.4 = tail call i32 @mdiobus_write(ptr noundef %70, i32 noundef %72, i32 noundef 13, i16 noundef zeroext %conv10.4) #3
  %73 = trunc i32 %and7 to i16
  %conv10.5 = or i16 %73, 106
  %74 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %bus.i.i, align 8
  %76 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %addr.i.i, align 8
  %call.i55.5 = tail call i32 @mdiobus_write(ptr noundef %75, i32 noundef %77, i32 noundef 13, i16 noundef zeroext %conv10.5) #3
  %78 = trunc i32 %and7 to i16
  %conv10.6 = or i16 %78, 107
  %79 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bus.i.i, align 8
  %81 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %addr.i.i, align 8
  %call.i55.6 = tail call i32 @mdiobus_write(ptr noundef %80, i32 noundef %82, i32 noundef 13, i16 noundef zeroext %conv10.6) #3
  %83 = trunc i32 %and7 to i16
  %conv10.7 = or i16 %83, 108
  %84 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bus.i.i, align 8
  %86 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %addr.i.i, align 8
  %call.i55.7 = tail call i32 @mdiobus_write(ptr noundef %85, i32 noundef %87, i32 noundef 13, i16 noundef zeroext %conv10.7) #3
  br label %if.end13

if.else:                                          ; preds = %__rtl_writephy_batch.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call12 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 2, i32 noundef 5, i16 noundef zeroext 9794) #3
  %call.i56 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %88 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus.i.i, align 8
  %90 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %addr.i.i, align 8
  %call.i.i59 = tail call i32 @__mdiobus_write(ptr noundef %89, i32 noundef %91, i32 noundef 5, i16 noundef zeroext -31952) #3
  %call2.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 9794) #3
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i56, i32 noundef 0) #3
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then5, %if.then.if.end13_crit_edge
  %92 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bus.i.i, align 8
  %94 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %addr.i.i, align 8
  %call.i62 = tail call i32 @mdiobus_write(ptr noundef %93, i32 noundef %95, i32 noundef 31, i16 noundef zeroext 2) #3
  %call15 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 2, i16 noundef zeroext 1536, i16 noundef zeroext 256) #3
  %call.i63 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 3, i16 noundef zeroext -8192, i16 noundef zeroext 0) #3
  %96 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bus.i.i, align 8
  %98 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %addr.i.i, align 8
  %call.i66 = tail call i32 @mdiobus_write(ptr noundef %97, i32 noundef %99, i32 noundef 31, i16 noundef zeroext 0) #3
  %call18 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2, i32 noundef 15, i16 noundef zeroext 0, i16 noundef zeroext 23) #3
  tail call fastcc void @rtl8168d_apply_firmware_cond(ptr noundef %tp, ptr noundef %phydev, i16 noundef zeroext -19712)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168d_4_hw_phy_config(ptr nocapture noundef readnone %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 1, i32 noundef 23, i16 noundef zeroext 3264) #3
  %call.i = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 7) #3
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 30, i16 noundef zeroext 45) #3
  %call2.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 24, i16 noundef zeroext -1, i16 noundef zeroext 64) #3
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i, i32 noundef 0) #3
  %call.i4 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 13, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8105e_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 24, i16 noundef zeroext 784) #3
  tail call void @msleep(i32 noundef 100) #3
  tail call void @r8169_apply_firmware(ptr noundef %tp) #3
  %call1 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 5, i32 noundef 26, i16 noundef zeroext 0) #3
  %call2 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 4, i32 noundef 28, i16 noundef zeroext 0) #3
  %call3 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 1, i32 noundef 21, i16 noundef zeroext 30465) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168e_1_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8169_apply_firmware(ptr noundef %tp) #3
  %call.i = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 5, i16 noundef zeroext -29824) #3
  %call2.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext -14186) #3
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i, i32 noundef 0) #3
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 0) #3
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %8 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i.i, align 8
  %call.i.i18 = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 31, i16 noundef zeroext 1) #3
  %10 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i.i, align 8
  %12 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i.i, align 8
  %call.i.i18.1 = tail call i32 @__mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 11, i16 noundef zeroext 27680) #3
  %14 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i.i, align 8
  %16 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i.i, align 8
  %call.i.i18.2 = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %17, i32 noundef 7, i16 noundef zeroext 10354) #3
  %18 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i.i, align 8
  %20 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i.i, align 8
  %call.i.i18.3 = tail call i32 @__mdiobus_write(ptr noundef %19, i32 noundef %21, i32 noundef 28, i16 noundef zeroext -4097) #3
  %22 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i.i, align 8
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr.i.i, align 8
  %call.i.i18.4 = tail call i32 @__mdiobus_write(ptr noundef %23, i32 noundef %25, i32 noundef 31, i16 noundef zeroext 3) #3
  %26 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bus.i.i, align 8
  %28 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %addr.i.i, align 8
  %call.i.i18.5 = tail call i32 @__mdiobus_write(ptr noundef %27, i32 noundef %29, i32 noundef 20, i16 noundef zeroext 25632) #3
  %30 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bus.i.i, align 8
  %32 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr.i.i, align 8
  %call.i.i18.6 = tail call i32 @__mdiobus_write(ptr noundef %31, i32 noundef %33, i32 noundef 31, i16 noundef zeroext 0) #3
  %34 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus.i.i, align 8
  %mdio_lock.i7.i = getelementptr inbounds %struct.mii_bus, ptr %35, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i7.i) #3
  %call.i19 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 7) #3
  %36 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i.i, align 8
  %38 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i.i, align 8
  %call.i.i22 = tail call i32 @__mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 30, i16 noundef zeroext 47) #3
  %call2.i23 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 21, i16 noundef zeroext -1, i16 noundef zeroext 6425) #3
  %call3.i24 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i19, i32 noundef 0) #3
  %call.i25 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 7) #3
  %40 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i.i, align 8
  %42 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i.i, align 8
  %call.i.i28 = tail call i32 @__mdiobus_write(ptr noundef %41, i32 noundef %43, i32 noundef 30, i16 noundef zeroext 172) #3
  %call2.i29 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 24, i16 noundef zeroext -1, i16 noundef zeroext 6) #3
  %call3.i30 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i25, i32 noundef 0) #3
  %call.i31 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 7) #3
  %44 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i.i, align 8
  %46 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i.i, align 8
  %call.i.i34 = tail call i32 @__mdiobus_write(ptr noundef %45, i32 noundef %47, i32 noundef 30, i16 noundef zeroext 35) #3
  %call2.i35 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 23, i16 noundef zeroext 0, i16 noundef zeroext 6) #3
  %call3.i36 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i31, i32 noundef 0) #3
  %call = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2, i32 noundef 8, i16 noundef zeroext 32512, i16 noundef zeroext -32768) #3
  %call.i37 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 7) #3
  %48 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i.i, align 8
  %50 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i.i, align 8
  %call.i.i40 = tail call i32 @__mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 30, i16 noundef zeroext 45) #3
  %call2.i41 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 24, i16 noundef zeroext 0, i16 noundef zeroext 80) #3
  %call3.i42 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i37, i32 noundef 0) #3
  %call.i43 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext -32768) #3
  %call.i44 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %52 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i.i, align 8
  %54 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i.i, align 8
  %call.i.i47 = tail call i32 @__mdiobus_write(ptr noundef %53, i32 noundef %55, i32 noundef 5, i16 noundef zeroext -29818) #3
  %call2.i48 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext 1) #3
  %call3.i49 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i44, i32 noundef 0) #3
  %call.i50 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %56 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus.i.i, align 8
  %58 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr.i.i, align 8
  %call.i.i53 = tail call i32 @__mdiobus_write(ptr noundef %57, i32 noundef %59, i32 noundef 5, i16 noundef zeroext -29819) #3
  %call2.i54 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext 8192, i16 noundef zeroext 0) #3
  %call3.i55 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i50, i32 noundef 0) #3
  %call.i56 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 7) #3
  %60 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus.i.i, align 8
  %62 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %addr.i.i, align 8
  %call.i.i59 = tail call i32 @__mdiobus_write(ptr noundef %61, i32 noundef %63, i32 noundef 30, i16 noundef zeroext 32) #3
  %call2.i60 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 21, i16 noundef zeroext 4352, i16 noundef zeroext 0) #3
  %call3.i61 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i56, i32 noundef 0) #3
  %call2 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 6, i32 noundef 0, i16 noundef zeroext 23040) #3
  %call3 = tail call i32 @phy_write_mmd(ptr noundef %phydev, i32 noundef 7, i32 noundef 60, i16 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168e_2_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8169_apply_firmware(ptr noundef %tp) #3
  %call.i = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 7) #3
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 30, i16 noundef zeroext 172) #3
  %call2.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 24, i16 noundef zeroext -1, i16 noundef zeroext 6) #3
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i, i32 noundef 0) #3
  %call = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 3, i32 noundef 9, i16 noundef zeroext -24049) #3
  %call.i29 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i.i32 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 5, i16 noundef zeroext -29861) #3
  %call2.i33 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext -28126) #3
  %call3.i34 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i29, i32 noundef 0) #3
  %call.i35 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i.i38 = tail call i32 @__mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 5, i16 noundef zeroext -29843) #3
  %call2.i39 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext -32768) #3
  %call3.i40 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i35, i32 noundef 0) #3
  %call.i41 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i, align 8
  %call.i.i44 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 5, i16 noundef zeroext -29834) #3
  %call2.i45 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext -32768) #3
  %call3.i46 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i41, i32 noundef 0) #3
  %16 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i, align 8
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i.i, align 8
  %call.i47 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 31, i16 noundef zeroext 5) #3
  %20 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i.i, align 8
  %22 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i.i, align 8
  %call.i50 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 5, i16 noundef zeroext -29824) #3
  %call.i51 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 23, i16 noundef zeroext 0, i16 noundef zeroext 6) #3
  %24 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i.i, align 8
  %26 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i, align 8
  %call.i54 = tail call i32 @mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 31, i16 noundef zeroext 0) #3
  %call.i55 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 7) #3
  %28 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i.i, align 8
  %30 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i.i, align 8
  %call.i.i58 = tail call i32 @__mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 30, i16 noundef zeroext 45) #3
  %call2.i59 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 24, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  %call3.i60 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i55, i32 noundef 0) #3
  %call.i61 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext -32768) #3
  %call.i62 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %32 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i.i, align 8
  %34 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i.i, align 8
  %call.i.i65 = tail call i32 @__mdiobus_write(ptr noundef %33, i32 noundef %35, i32 noundef 5, i16 noundef zeroext -29818) #3
  %call2.i66 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext 1) #3
  %call3.i67 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i62, i32 noundef 0) #3
  %call.i68 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %36 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i.i, align 8
  %38 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i.i, align 8
  %call.i.i71 = tail call i32 @__mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 5, i16 noundef zeroext -29819) #3
  %call2.i72 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext 16384) #3
  %call3.i73 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i68, i32 noundef 0) #3
  tail call fastcc void @rtl8168f_config_eee_phy(ptr noundef %phydev)
  %40 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i.i, align 8
  %42 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i.i, align 8
  %call.i76 = tail call i32 @mdiobus_write(ptr noundef %41, i32 noundef %43, i32 noundef 31, i16 noundef zeroext 3) #3
  %call.i77 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 25, i16 noundef zeroext 0, i16 noundef zeroext 1) #3
  %call.i78 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 1024) #3
  %44 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i.i, align 8
  %46 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i.i, align 8
  %call.i81 = tail call i32 @mdiobus_write(ptr noundef %45, i32 noundef %47, i32 noundef 31, i16 noundef zeroext 0) #3
  %call10 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 5, i32 noundef 1, i16 noundef zeroext 0, i16 noundef zeroext 256) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168f_1_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8169_apply_firmware(ptr noundef %tp) #3
  %call = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 3, i32 noundef 9, i16 noundef zeroext -24049) #3
  %call.i = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 5, i16 noundef zeroext -29867) #3
  %call2.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i, i32 noundef 0) #3
  %call.i13 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i.i16 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 5, i16 noundef zeroext -29858) #3
  %call2.i17 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %call3.i18 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i13, i32 noundef 0) #3
  %call.i19 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i.i22 = tail call i32 @__mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 5, i16 noundef zeroext -29849) #3
  %call2.i23 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %call3.i24 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i19, i32 noundef 0) #3
  %call.i25 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i, align 8
  %call.i.i28 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 5, i16 noundef zeroext -29840) #3
  %call2.i29 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %call3.i30 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i25, i32 noundef 0) #3
  %call.i31 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 7) #3
  %16 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i, align 8
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i.i, align 8
  %call.i.i34 = tail call i32 @__mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 30, i16 noundef zeroext 120) #3
  %call2.i35 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 23, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %call3.i36 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i31, i32 noundef 0) #3
  %call.i37 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 7) #3
  %20 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i.i, align 8
  %22 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i.i, align 8
  %call.i.i40 = tail call i32 @__mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 30, i16 noundef zeroext 120) #3
  %call2.i41 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 25, i16 noundef zeroext -1, i16 noundef zeroext 251) #3
  %call3.i42 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i37, i32 noundef 0) #3
  %call.i43 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %24 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i.i, align 8
  %26 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i, align 8
  %call.i.i46 = tail call i32 @__mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 5, i16 noundef zeroext -29831) #3
  %call2.i47 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext -22016) #3
  %call3.i48 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i43, i32 noundef 0) #3
  %call1 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 3, i32 noundef 1, i16 noundef zeroext 12938) #3
  tail call fastcc void @rtl8168f_hw_phy_config(ptr noundef %phydev)
  %call.i49 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %28 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i.i, align 8
  %30 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i.i, align 8
  %call.i.i52 = tail call i32 @__mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 5, i16 noundef zeroext -29819) #3
  %call2.i53 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext 16384) #3
  %call3.i54 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i49, i32 noundef 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168f_2_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8169_apply_firmware(ptr noundef %tp) #3
  tail call fastcc void @rtl8168f_hw_phy_config(ptr noundef %phydev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8402_hw_phy_config(ptr noundef %tp, ptr nocapture noundef readonly %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 24, i16 noundef zeroext 784) #3
  tail call void @msleep(i32 noundef 20) #3
  tail call void @r8169_apply_firmware(ptr noundef %tp) #3
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i11 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 31, i16 noundef zeroext 4) #3
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i14 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 16, i16 noundef zeroext 16415) #3
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i17 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 25, i16 noundef zeroext 28720) #3
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 8
  %call.i20 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 31, i16 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8411_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8169_apply_firmware(ptr noundef %tp) #3
  tail call fastcc void @rtl8168f_hw_phy_config(ptr noundef %phydev)
  %call.i = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 5, i16 noundef zeroext -29819) #3
  %call2.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext 16384) #3
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i, i32 noundef 0) #3
  %call = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 3, i32 noundef 9, i16 noundef zeroext -24049) #3
  %call.i29 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i.i32 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 5, i16 noundef zeroext -29867) #3
  %call2.i33 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %call3.i34 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i29, i32 noundef 0) #3
  %call.i35 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i.i38 = tail call i32 @__mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 5, i16 noundef zeroext -29858) #3
  %call2.i39 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %call3.i40 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i35, i32 noundef 0) #3
  %call.i41 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i, align 8
  %call.i.i44 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 5, i16 noundef zeroext -29849) #3
  %call2.i45 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %call3.i46 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i41, i32 noundef 0) #3
  %call.i47 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %16 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i, align 8
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i.i, align 8
  %call.i.i50 = tail call i32 @__mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 5, i16 noundef zeroext -29840) #3
  %call2.i51 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %call3.i52 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i47, i32 noundef 0) #3
  %call.i53 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 7) #3
  %20 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i.i, align 8
  %22 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i.i, align 8
  %call.i.i56 = tail call i32 @__mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 30, i16 noundef zeroext 120) #3
  %call2.i57 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 23, i16 noundef zeroext -1, i16 noundef zeroext 0) #3
  %call3.i58 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i53, i32 noundef 0) #3
  %call.i59 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 7) #3
  %24 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i.i, align 8
  %26 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i, align 8
  %call.i.i62 = tail call i32 @__mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 30, i16 noundef zeroext 120) #3
  %call2.i63 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 25, i16 noundef zeroext -1, i16 noundef zeroext 170) #3
  %call3.i64 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i59, i32 noundef 0) #3
  %call.i65 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %28 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i.i, align 8
  %30 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i.i, align 8
  %call.i.i68 = tail call i32 @__mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 5, i16 noundef zeroext -29831) #3
  %call2.i69 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext -1, i16 noundef zeroext -22016) #3
  %call3.i70 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i65, i32 noundef 0) #3
  %call1 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 3, i32 noundef 1, i16 noundef zeroext 12938) #3
  %call.i71 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %32 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i.i, align 8
  %34 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i.i, align 8
  %call.i.i74 = tail call i32 @__mdiobus_write(ptr noundef %33, i32 noundef %35, i32 noundef 5, i16 noundef zeroext -29868) #3
  %call2.i75 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext 2048, i16 noundef zeroext 0) #3
  %call3.i76 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i71, i32 noundef 0) #3
  %call.i77 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %36 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i.i, align 8
  %38 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i.i, align 8
  %call.i.i80 = tail call i32 @__mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 5, i16 noundef zeroext -29859) #3
  %call2.i81 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext 2048, i16 noundef zeroext 0) #3
  %call3.i82 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i77, i32 noundef 0) #3
  %call.i83 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %40 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i.i, align 8
  %42 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i.i, align 8
  %call.i.i86 = tail call i32 @__mdiobus_write(ptr noundef %41, i32 noundef %43, i32 noundef 5, i16 noundef zeroext -30084) #3
  %call2.i87 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext 256, i16 noundef zeroext 0) #3
  %call3.i88 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i83, i32 noundef 0) #3
  %call.i89 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %44 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i.i, align 8
  %46 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i.i, align 8
  %call.i.i92 = tail call i32 @__mdiobus_write(ptr noundef %45, i32 noundef %47, i32 noundef 5, i16 noundef zeroext -30081) #3
  %call2.i93 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext 256) #3
  %call3.i94 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i89, i32 noundef 0) #3
  %call.i95 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %48 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i.i, align 8
  %50 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i.i, align 8
  %call.i.i98 = tail call i32 @__mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 5, i16 noundef zeroext -30078) #3
  %call2.i99 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext 256, i16 noundef zeroext 0) #3
  %call3.i100 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i95, i32 noundef 0) #3
  %call.i101 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %52 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i.i, align 8
  %54 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i.i, align 8
  %call.i.i104 = tail call i32 @__mdiobus_write(ptr noundef %53, i32 noundef %55, i32 noundef 5, i16 noundef zeroext -30075) #3
  %call2.i105 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext 256, i16 noundef zeroext 0) #3
  %call3.i106 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i101, i32 noundef 0) #3
  %call.i107 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %56 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus.i.i, align 8
  %58 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr.i.i, align 8
  %call.i.i110 = tail call i32 @__mdiobus_write(ptr noundef %57, i32 noundef %59, i32 noundef 5, i16 noundef zeroext -30072) #3
  %call2.i111 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext 256, i16 noundef zeroext 0) #3
  %call3.i112 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i107, i32 noundef 0) #3
  %call.i113 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %60 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus.i.i, align 8
  %62 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %addr.i.i, align 8
  %call.i.i116 = tail call i32 @__mdiobus_write(ptr noundef %61, i32 noundef %63, i32 noundef 5, i16 noundef zeroext -29819) #3
  %call2.i117 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext -32768) #3
  %call3.i118 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i113, i32 noundef 0) #3
  %64 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus.i.i, align 8
  %66 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr.i.i, align 8
  %call.i119 = tail call i32 @mdiobus_write(ptr noundef %65, i32 noundef %67, i32 noundef 31, i16 noundef zeroext 3) #3
  %call.i120 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 25, i16 noundef zeroext 1, i16 noundef zeroext 0) #3
  %call.i121 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 16, i16 noundef zeroext 1024, i16 noundef zeroext 0) #3
  %68 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus.i.i, align 8
  %70 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %addr.i.i, align 8
  %call.i124 = tail call i32 @mdiobus_write(ptr noundef %69, i32 noundef %71, i32 noundef 31, i16 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8106e_hw_phy_config(ptr noundef %tp, ptr nocapture noundef readonly %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 24, i16 noundef zeroext 784) #3
  tail call void @msleep(i32 noundef 100) #3
  tail call void @r8169_apply_firmware(ptr noundef %tp) #3
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i.i = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %mdio_lock.i.i, i32 noundef 0) #3
  %6 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i, align 8
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %addr.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %7, i32 noundef %9, i32 noundef 31, i16 noundef zeroext 4) #3
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i, align 8
  %call.i.i.1 = tail call i32 @__mdiobus_write(ptr noundef %11, i32 noundef %13, i32 noundef 16, i16 noundef zeroext -16257) #3
  %14 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bus.i, align 8
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.i, align 8
  %call.i.i.2 = tail call i32 @__mdiobus_write(ptr noundef %15, i32 noundef %17, i32 noundef 25, i16 noundef zeroext 28720) #3
  %18 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bus.i, align 8
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addr.i, align 8
  %call.i.i.3 = tail call i32 @__mdiobus_write(ptr noundef %19, i32 noundef %21, i32 noundef 31, i16 noundef zeroext 0) #3
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i, align 8
  %mdio_lock.i7.i = getelementptr inbounds %struct.mii_bus, ptr %23, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %mdio_lock.i7.i) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168g_1_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8169_apply_firmware(ptr noundef %tp) #3
  %call = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 2630, i32 noundef 16) #3
  %and = and i32 %call, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 3020, i32 noundef 18, i16 noundef zeroext -32768, i16 noundef zeroext 0) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 3020, i32 noundef 18, i16 noundef zeroext 0, i16 noundef zeroext -32768) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 2630, i32 noundef 19) #3
  %and4 = and i32 %call3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else8, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call7 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 3137, i32 noundef 21, i16 noundef zeroext 0, i16 noundef zeroext 2) #3
  br label %if.end10

if.else8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 3137, i32 noundef 21, i16 noundef zeroext 2, i16 noundef zeroext 0) #3
  br label %if.end10

if.end10:                                         ; preds = %if.else8, %if.then6
  %call11 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 12) #3
  %call.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 3020, i32 noundef 20, i16 noundef zeroext 256, i16 noundef zeroext 0) #3
  %call1.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 192) #3
  %call.i.i = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %bus.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 19, i16 noundef zeroext -32636) #3
  %call2.i.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 24576, i16 noundef zeroext 0) #3
  %call3.i.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i.i, i32 noundef 0) #3
  %call2.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 4099) #3
  %call12 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2635, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 4) #3
  %call.i47 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %4 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i48 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 19, i16 noundef zeroext -32750) #3
  %call2.i49 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext -32768) #3
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i47, i32 noundef 0) #3
  %call13 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 3138, i32 noundef 17, i16 noundef zeroext 8192, i16 noundef zeroext 16384) #3
  %8 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i.i, align 8
  %call.i50 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 31, i16 noundef zeroext 3021) #3
  %12 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i.i, align 8
  %call.i53 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 20, i16 noundef zeroext 20581) #3
  %16 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i.i, align 8
  %18 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i.i.i, align 8
  %call.i56 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 20, i16 noundef zeroext -12187) #3
  %20 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i.i.i, align 8
  %22 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i.i.i, align 8
  %call.i59 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 31, i16 noundef zeroext 3016) #3
  %24 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i.i.i, align 8
  %26 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i.i, align 8
  %call.i62 = tail call i32 @mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 17, i16 noundef zeroext 22101) #3
  %28 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i.i.i, align 8
  %30 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i.i.i, align 8
  %call.i65 = tail call i32 @mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 31, i16 noundef zeroext 3021) #3
  %32 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i.i.i, align 8
  %34 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i.i.i, align 8
  %call.i68 = tail call i32 @mdiobus_write(ptr noundef %33, i32 noundef %35, i32 noundef 20, i16 noundef zeroext 4197) #3
  %36 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i.i.i, align 8
  %38 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i.i.i, align 8
  %call.i71 = tail call i32 @mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 20, i16 noundef zeroext -28571) #3
  %40 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i.i.i, align 8
  %42 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i.i.i, align 8
  %call.i74 = tail call i32 @mdiobus_write(ptr noundef %41, i32 noundef %43, i32 noundef 20, i16 noundef zeroext 4197) #3
  %44 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i.i.i, align 8
  %46 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i.i.i, align 8
  %call.i77 = tail call i32 @mdiobus_write(ptr noundef %45, i32 noundef %47, i32 noundef 31, i16 noundef zeroext 0) #3
  %call.i78 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 4, i16 noundef zeroext 0) #3
  %call.i79 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168g_2_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8169_apply_firmware(ptr noundef %tp) #3
  %call.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168h_1_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8169_apply_firmware(ptr noundef %tp) #3
  %call.i = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 19, i16 noundef zeroext -32613) #3
  %call2.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -2048, i16 noundef zeroext -32768) #3
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i, i32 noundef 0) #3
  %call.i60 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i.i63 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 19, i16 noundef zeroext -32606) #3
  %call2.i64 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -32768) #3
  %call3.i65 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i60, i32 noundef 0) #3
  %call.i66 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i.i69 = tail call i32 @__mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 19, i16 noundef zeroext -32604) #3
  %call2.i70 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -31488) #3
  %call3.i71 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i66, i32 noundef 0) #3
  %call.i72 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i, align 8
  %call.i.i75 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 19, i16 noundef zeroext -32612) #3
  %call2.i76 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -17152) #3
  %call3.i77 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i72, i32 noundef 0) #3
  %call.i78 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %16 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i, align 8
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i.i, align 8
  %call.i.i81 = tail call i32 @__mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 19, i16 noundef zeroext -32595) #3
  %call2.i82 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -2048, i16 noundef zeroext 28672) #3
  %call3.i83 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i78, i32 noundef 0) #3
  %call.i84 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %20 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i.i, align 8
  %22 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i.i, align 8
  %call.i.i87 = tail call i32 @__mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 19, i16 noundef zeroext -32588) #3
  %call2.i88 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 20480) #3
  %call3.i89 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i84, i32 noundef 0) #3
  %call.i90 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %24 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i.i, align 8
  %26 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i, align 8
  %call.i.i93 = tail call i32 @__mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 19, i16 noundef zeroext -32596) #3
  %call2.i94 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 16384) #3
  %call3.i95 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i90, i32 noundef 0) #3
  %call.i96 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %28 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i.i, align 8
  %30 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i.i, align 8
  %call.i.i99 = tail call i32 @__mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 19, i16 noundef zeroext -32626) #3
  %call2.i100 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 4608) #3
  %call3.i101 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i96, i32 noundef 0) #3
  %call.i102 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %32 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i.i, align 8
  %34 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i.i, align 8
  %call.i.i105 = tail call i32 @__mdiobus_write(ptr noundef %33, i32 noundef %35, i32 noundef 19, i16 noundef zeroext -32624) #3
  %call2.i106 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -6912) #3
  %call3.i107 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i102, i32 noundef 0) #3
  %call.i108 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %36 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i.i, align 8
  %38 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i.i, align 8
  %call.i.i111 = tail call i32 @__mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 19, i16 noundef zeroext -32622) #3
  %call2.i112 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -24832) #3
  %call3.i113 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i108, i32 noundef 0) #3
  %call = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 2630, i32 noundef 19) #3
  %call2 = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 2630, i32 noundef 18) #3
  %40 = shl i32 %call, 14
  %41 = lshr i32 %call2, 2
  %42 = and i32 %41, 12288
  %conv11 = or i32 %42, %40
  %43 = trunc i32 %conv11 to i16
  %conv14 = xor i16 %43, 28672
  %call.i114 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %44 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i.i, align 8
  %46 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i.i, align 8
  %call.i.i117 = tail call i32 @__mdiobus_write(ptr noundef %45, i32 noundef %47, i32 noundef 19, i16 noundef zeroext -32134) #3
  %call2.i118 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -4096, i16 noundef zeroext %conv14) #3
  %call3.i119 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i114, i32 noundef 0) #3
  %call.i120 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %48 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i.i, align 8
  %50 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i.i, align 8
  %call.i.i123 = tail call i32 @__mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 19, i16 noundef zeroext -32133) #3
  %call2.i124 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -4096, i16 noundef zeroext %conv14) #3
  %call3.i125 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i120, i32 noundef 0) #3
  %call.i126 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %52 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i.i, align 8
  %54 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i.i, align 8
  %call.i.i129 = tail call i32 @__mdiobus_write(ptr noundef %53, i32 noundef %55, i32 noundef 19, i16 noundef zeroext -32132) #3
  %call2.i130 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -4096, i16 noundef zeroext %conv14) #3
  %call3.i131 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i126, i32 noundef 0) #3
  %call.i132 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %56 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus.i.i, align 8
  %58 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr.i.i, align 8
  %call.i.i135 = tail call i32 @__mdiobus_write(ptr noundef %57, i32 noundef %59, i32 noundef 19, i16 noundef zeroext -32131) #3
  %call2.i136 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -4096, i16 noundef zeroext %conv14) #3
  %call3.i137 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i132, i32 noundef 0) #3
  %call.i138 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %60 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus.i.i, align 8
  %62 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %addr.i.i, align 8
  %call.i.i141 = tail call i32 @__mdiobus_write(ptr noundef %61, i32 noundef %63, i32 noundef 19, i16 noundef zeroext 2065) #3
  %call2.i142 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 2048) #3
  %call3.i143 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i138, i32 noundef 0) #3
  %call15 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2626, i32 noundef 22, i16 noundef zeroext 0, i16 noundef zeroext 2) #3
  %call.i144 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 2048) #3
  %call16 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 3018, i32 noundef 23, i16 noundef zeroext 12288, i16 noundef zeroext 16384) #3
  %call.i145 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %64 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus.i.i, align 8
  %66 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr.i.i, align 8
  %call.i.i148 = tail call i32 @__mdiobus_write(ptr noundef %65, i32 noundef %67, i32 noundef 19, i16 noundef zeroext -32705) #3
  %call2.i149 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 12288, i16 noundef zeroext 0) #3
  %call3.i150 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i145, i32 noundef 0) #3
  %call.i151 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %68 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus.i.i, align 8
  %70 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %addr.i.i, align 8
  %call.i.i154 = tail call i32 @__mdiobus_write(ptr noundef %69, i32 noundef %71, i32 noundef 19, i16 noundef zeroext -32697) #3
  %call2.i155 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 12288, i16 noundef zeroext 0) #3
  %call3.i156 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i151, i32 noundef 0) #3
  %call.i157 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %72 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus.i.i, align 8
  %74 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %addr.i.i, align 8
  %call.i.i160 = tail call i32 @__mdiobus_write(ptr noundef %73, i32 noundef %75, i32 noundef 19, i16 noundef zeroext -32689) #3
  %call2.i161 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 12288, i16 noundef zeroext 0) #3
  %call3.i162 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i157, i32 noundef 0) #3
  %call.i163 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %76 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus.i.i, align 8
  %78 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %addr.i.i, align 8
  %call.i.i166 = tail call i32 @__mdiobus_write(ptr noundef %77, i32 noundef %79, i32 noundef 19, i16 noundef zeroext -32681) #3
  %call2.i167 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 12288, i16 noundef zeroext 0) #3
  %call3.i168 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i163, i32 noundef 0) #3
  %call.i169 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %80 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus.i.i, align 8
  %82 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %addr.i.i, align 8
  %call.i.i172 = tail call i32 @__mdiobus_write(ptr noundef %81, i32 noundef %83, i32 noundef 19, i16 noundef zeroext -32673) #3
  %call2.i173 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 12288, i16 noundef zeroext 0) #3
  %call3.i174 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i169, i32 noundef 0) #3
  %call.i175 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %84 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bus.i.i, align 8
  %86 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %addr.i.i, align 8
  %call.i.i178 = tail call i32 @__mdiobus_write(ptr noundef %85, i32 noundef %87, i32 noundef 19, i16 noundef zeroext -32665) #3
  %call2.i179 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 12288, i16 noundef zeroext 0) #3
  %call3.i180 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i175, i32 noundef 0) #3
  %call.i181 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %88 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus.i.i, align 8
  %90 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %addr.i.i, align 8
  %call.i.i184 = tail call i32 @__mdiobus_write(ptr noundef %89, i32 noundef %91, i32 noundef 19, i16 noundef zeroext -32657) #3
  %call2.i185 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 12288, i16 noundef zeroext 0) #3
  %call3.i186 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i181, i32 noundef 0) #3
  %call17 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 128, i16 noundef zeroext 0) #3
  %call.i187 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 4, i16 noundef zeroext 0) #3
  %call.i.i188 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  %call.i189 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2634, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 512) #3
  %call1.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 128) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168h_2_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8169_apply_firmware(ptr noundef %tp) #3
  %call.i = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 19, i16 noundef zeroext -32630) #3
  %call2.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 63, i16 noundef zeroext 10) #3
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i, i32 noundef 0) #3
  %call.i38 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i.i41 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 19, i16 noundef zeroext 2065) #3
  %call2.i42 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 2048) #3
  %call3.i43 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i38, i32 noundef 0) #3
  %call = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2626, i32 noundef 22, i16 noundef zeroext 0, i16 noundef zeroext 2) #3
  %call.i44 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 2048) #3
  %call1 = tail call zeroext i16 @rtl8168h_2_get_adc_bias_ioffset(ptr noundef %tp) #3
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call1)
  %cmp.not = icmp eq i16 %call1, -1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 3023, i32 noundef 22, i16 noundef zeroext %call1) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = tail call i32 @phy_read_paged(ptr noundef %phydev, i32 noundef 3021, i32 noundef 22) #3
  %and = and i32 %call4, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp5 = icmp ugt i32 %and, 3
  %sub = add nuw nsw i32 %and, 65533
  %phi.cast = and i32 %sub, 65535
  %rlen.0 = select i1 %cmp5, i32 %phi.cast, i32 0
  %shl = shl nuw nsw i32 %rlen.0, 4
  %or = or i32 %shl, %rlen.0
  %shl13 = shl nuw nsw i32 %rlen.0, 8
  %or14 = or i32 %or, %shl13
  %shl16 = shl nuw nsw i32 %rlen.0, 12
  %or17 = or i32 %or14, %shl16
  %conv18 = trunc i32 %or17 to i16
  %call19 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 3021, i32 noundef 23, i16 noundef zeroext %conv18) #3
  %call20 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 128, i16 noundef zeroext 0) #3
  %call.i45 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 4, i16 noundef zeroext 0) #3
  %call.i46 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168ep_1_hw_phy_config(ptr nocapture noundef readnone %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 12) #3
  %call.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 3020, i32 noundef 20, i16 noundef zeroext 256, i16 noundef zeroext 0) #3
  %call1.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 192) #3
  %call.i.i = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %bus.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 19, i16 noundef zeroext -32636) #3
  %call2.i.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 24576, i16 noundef zeroext 0) #3
  %call3.i.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i.i, i32 noundef 0) #3
  %call2.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 4099) #3
  %call1 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2635, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 4) #3
  %call.i9 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %4 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i10 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 19, i16 noundef zeroext -32750) #3
  %call2.i11 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext -32768) #3
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i9, i32 noundef 0) #3
  %call2 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 3138, i32 noundef 17, i16 noundef zeroext 8192, i16 noundef zeroext 16384) #3
  %call.i12 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 4, i16 noundef zeroext 0) #3
  %call.i13 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8168ep_2_hw_phy_config(ptr nocapture noundef readnone %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 3020, i32 noundef 20, i16 noundef zeroext 256, i16 noundef zeroext 0) #3
  %call1.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 192) #3
  %call.i.i = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %bus.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i.i, align 8
  %addr.i.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 19, i16 noundef zeroext -32636) #3
  %call2.i.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 24576, i16 noundef zeroext 0) #3
  %call3.i.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i.i, i32 noundef 0) #3
  %call2.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 0, i16 noundef zeroext 4099) #3
  %call.i46 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %4 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i47 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 19, i16 noundef zeroext -32750) #3
  %call2.i48 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext -32768) #3
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i46, i32 noundef 0) #3
  %call = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 3138, i32 noundef 17, i16 noundef zeroext 8192, i16 noundef zeroext 16384) #3
  %call.i49 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %8 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i52 = tail call i32 @__mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 19, i16 noundef zeroext -32525) #3
  %call2.i53 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -29952) #3
  %call3.i54 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i49, i32 noundef 0) #3
  %call.i55 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %12 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i58 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 19, i16 noundef zeroext -32528) #3
  %call2.i59 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 14848) #3
  %call3.i60 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i55, i32 noundef 0) #3
  %call.i61 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %16 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i.i, align 8
  %18 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i64 = tail call i32 @__mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 19, i16 noundef zeroext -32529) #3
  %call2.i65 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 1280) #3
  %call3.i66 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i61, i32 noundef 0) #3
  %call.i67 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %20 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i.i.i, align 8
  %22 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i70 = tail call i32 @__mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 19, i16 noundef zeroext -32522) #3
  %call2.i71 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 28160) #3
  %call3.i72 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i67, i32 noundef 0) #3
  %call.i73 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %24 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i.i.i, align 8
  %26 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i76 = tail call i32 @__mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 19, i16 noundef zeroext -32532) #3
  %call2.i77 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 26624) #3
  %call3.i78 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i73, i32 noundef 0) #3
  %call.i79 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %28 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i.i.i, align 8
  %30 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i82 = tail call i32 @__mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 19, i16 noundef zeroext -32531) #3
  %call2.i83 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 31744) #3
  %call3.i84 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i79, i32 noundef 0) #3
  %call.i85 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %32 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i.i.i, align 8
  %34 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i88 = tail call i32 @__mdiobus_write(ptr noundef %33, i32 noundef %35, i32 noundef 19, i16 noundef zeroext -32526) #3
  %call2.i89 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -3072) #3
  %call3.i90 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i85, i32 noundef 0) #3
  %call.i91 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %36 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i.i.i, align 8
  %38 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i94 = tail call i32 @__mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 19, i16 noundef zeroext -32524) #3
  %call2.i95 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -31488) #3
  %call3.i96 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i91, i32 noundef 0) #3
  %call.i97 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %40 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i.i.i, align 8
  %42 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i100 = tail call i32 @__mdiobus_write(ptr noundef %41, i32 noundef %43, i32 noundef 19, i16 noundef zeroext -32496) #3
  %call2.i101 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -22528) #3
  %call3.i102 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i97, i32 noundef 0) #3
  %call.i103 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %44 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i.i.i, align 8
  %46 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i106 = tail call i32 @__mdiobus_write(ptr noundef %45, i32 noundef %47, i32 noundef 19, i16 noundef zeroext -32497) #3
  %call2.i107 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 7424) #3
  %call3.i108 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i103, i32 noundef 0) #3
  %call.i109 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %48 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i.i.i, align 8
  %50 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i112 = tail call i32 @__mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 19, i16 noundef zeroext -32495) #3
  %call2.i113 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -2816) #3
  %call3.i114 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i109, i32 noundef 0) #3
  %call.i115 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %52 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i.i.i, align 8
  %54 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i118 = tail call i32 @__mdiobus_write(ptr noundef %53, i32 noundef %55, i32 noundef 19, i16 noundef zeroext -32493) #3
  %call2.i119 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 24832) #3
  %call3.i120 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i115, i32 noundef 0) #3
  %call.i121 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %56 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus.i.i.i, align 8
  %58 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i124 = tail call i32 @__mdiobus_write(ptr noundef %57, i32 noundef %59, i32 noundef 19, i16 noundef zeroext -32491) #3
  %call2.i125 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -28160) #3
  %call3.i126 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i121, i32 noundef 0) #3
  %call.i127 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %60 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus.i.i.i, align 8
  %62 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i130 = tail call i32 @__mdiobus_write(ptr noundef %61, i32 noundef %63, i32 noundef 19, i16 noundef zeroext -32498) #3
  %call2.i131 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 1024) #3
  %call3.i132 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i127, i32 noundef 0) #3
  %call.i133 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %64 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus.i.i.i, align 8
  %66 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i136 = tail call i32 @__mdiobus_write(ptr noundef %65, i32 noundef %67, i32 noundef 19, i16 noundef zeroext -32500) #3
  %call2.i137 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 31744) #3
  %call3.i138 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i133, i32 noundef 0) #3
  %call.i139 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %68 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus.i.i.i, align 8
  %70 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i142 = tail call i32 @__mdiobus_write(ptr noundef %69, i32 noundef %71, i32 noundef 19, i16 noundef zeroext -32501) #3
  %call2.i143 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 23040) #3
  %call3.i144 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i139, i32 noundef 0) #3
  %call.i145 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %72 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus.i.i.i, align 8
  %74 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i148 = tail call i32 @__mdiobus_write(ptr noundef %73, i32 noundef %75, i32 noundef 19, i16 noundef zeroext -32559) #3
  %call2.i149 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -256) #3
  %call3.i150 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i145, i32 noundef 0) #3
  %call.i151 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %76 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus.i.i.i, align 8
  %78 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i154 = tail call i32 @__mdiobus_write(ptr noundef %77, i32 noundef %79, i32 noundef 19, i16 noundef zeroext -32563) #3
  %call2.i155 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -25088) #3
  %call3.i156 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i151, i32 noundef 0) #3
  %call.i157 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %80 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus.i.i.i, align 8
  %82 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i160 = tail call i32 @__mdiobus_write(ptr noundef %81, i32 noundef %83, i32 noundef 19, i16 noundef zeroext -32557) #3
  %call2.i161 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 3584) #3
  %call3.i162 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i157, i32 noundef 0) #3
  %call.i163 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %84 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bus.i.i.i, align 8
  %86 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i166 = tail call i32 @__mdiobus_write(ptr noundef %85, i32 noundef %87, i32 noundef 19, i16 noundef zeroext -32555) #3
  %call2.i167 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -13824) #3
  %call3.i168 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i163, i32 noundef 0) #3
  %call.i169 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %88 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus.i.i.i, align 8
  %90 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %addr.i.i.i, align 8
  %call.i.i172 = tail call i32 @__mdiobus_write(ptr noundef %89, i32 noundef %91, i32 noundef 19, i16 noundef zeroext -32553) #3
  %call2.i173 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -31744) #3
  %call3.i174 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i169, i32 noundef 0) #3
  %92 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bus.i.i.i, align 8
  %94 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %addr.i.i.i, align 8
  %call.i175 = tail call i32 @mdiobus_write(ptr noundef %93, i32 noundef %95, i32 noundef 31, i16 noundef zeroext 3021) #3
  %96 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bus.i.i.i, align 8
  %98 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %addr.i.i.i, align 8
  %call.i178 = tail call i32 @mdiobus_write(ptr noundef %97, i32 noundef %99, i32 noundef 20, i16 noundef zeroext 20581) #3
  %100 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bus.i.i.i, align 8
  %102 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %addr.i.i.i, align 8
  %call.i181 = tail call i32 @mdiobus_write(ptr noundef %101, i32 noundef %103, i32 noundef 20, i16 noundef zeroext -12187) #3
  %104 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bus.i.i.i, align 8
  %106 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %addr.i.i.i, align 8
  %call.i184 = tail call i32 @mdiobus_write(ptr noundef %105, i32 noundef %107, i32 noundef 31, i16 noundef zeroext 3016) #3
  %108 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bus.i.i.i, align 8
  %110 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %addr.i.i.i, align 8
  %call.i187 = tail call i32 @mdiobus_write(ptr noundef %109, i32 noundef %111, i32 noundef 18, i16 noundef zeroext 237) #3
  %112 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %bus.i.i.i, align 8
  %114 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %addr.i.i.i, align 8
  %call.i190 = tail call i32 @mdiobus_write(ptr noundef %113, i32 noundef %115, i32 noundef 31, i16 noundef zeroext 3021) #3
  %116 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bus.i.i.i, align 8
  %118 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %addr.i.i.i, align 8
  %call.i193 = tail call i32 @mdiobus_write(ptr noundef %117, i32 noundef %119, i32 noundef 20, i16 noundef zeroext 4197) #3
  %120 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bus.i.i.i, align 8
  %122 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %addr.i.i.i, align 8
  %call.i196 = tail call i32 @mdiobus_write(ptr noundef %121, i32 noundef %123, i32 noundef 20, i16 noundef zeroext -28571) #3
  %124 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bus.i.i.i, align 8
  %126 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %addr.i.i.i, align 8
  %call.i199 = tail call i32 @mdiobus_write(ptr noundef %125, i32 noundef %127, i32 noundef 20, i16 noundef zeroext 4197) #3
  %128 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %bus.i.i.i, align 8
  %130 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %addr.i.i.i, align 8
  %call.i202 = tail call i32 @mdiobus_write(ptr noundef %129, i32 noundef %131, i32 noundef 31, i16 noundef zeroext 0) #3
  %call.i203 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 4, i16 noundef zeroext 0) #3
  %call.i204 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8117_hw_phy_config(ptr nocapture noundef readnone %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 19, i16 noundef zeroext -32626) #3
  %call2.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 18432) #3
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i, i32 noundef 0) #3
  %call.i26 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i.i29 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 19, i16 noundef zeroext -32624) #3
  %call2.i30 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -13312) #3
  %call3.i31 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i26, i32 noundef 0) #3
  %call.i32 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i.i35 = tail call i32 @__mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 19, i16 noundef zeroext -32622) #3
  %call2.i36 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -20480) #3
  %call3.i37 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i32, i32 noundef 0) #3
  %call.i38 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i, align 8
  %call.i.i41 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 19, i16 noundef zeroext -32632) #3
  %call2.i42 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 24576) #3
  %call3.i43 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i38, i32 noundef 0) #3
  %call.i44 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %16 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i, align 8
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i.i, align 8
  %call.i.i47 = tail call i32 @__mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 19, i16 noundef zeroext -32629) #3
  %call2.i48 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 16128, i16 noundef zeroext 2816) #3
  %call3.i49 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i44, i32 noundef 0) #3
  %call.i50 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %20 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i.i, align 8
  %22 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i.i, align 8
  %call.i.i53 = tail call i32 @__mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 19, i16 noundef zeroext -32627) #3
  %call2.i54 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 7936, i16 noundef zeroext 1536) #3
  %call3.i55 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i50, i32 noundef 0) #3
  %call.i56 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %24 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i.i, align 8
  %26 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i, align 8
  %call.i.i59 = tail call i32 @__mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 19, i16 noundef zeroext -32628) #3
  %call2.i60 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -20480) #3
  %call3.i61 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i56, i32 noundef 0) #3
  %call.i62 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %28 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i.i, align 8
  %30 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i.i, align 8
  %call.i.i65 = tail call i32 @__mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 19, i16 noundef zeroext -32608) #3
  %call2.i66 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 10240) #3
  %call3.i67 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i62, i32 noundef 0) #3
  %call.i68 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %32 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i.i, align 8
  %34 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i.i, align 8
  %call.i.i71 = tail call i32 @__mdiobus_write(ptr noundef %33, i32 noundef %35, i32 noundef 19, i16 noundef zeroext -32606) #3
  %call2.i72 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 20480) #3
  %call3.i73 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i68, i32 noundef 0) #3
  %call.i74 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %36 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i.i, align 8
  %38 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i.i, align 8
  %call.i.i77 = tail call i32 @__mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 19, i16 noundef zeroext -32613) #3
  %call2.i78 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -2048, i16 noundef zeroext -20480) #3
  %call3.i79 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i74, i32 noundef 0) #3
  %call.i80 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %40 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i.i, align 8
  %42 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i.i, align 8
  %call.i.i83 = tail call i32 @__mdiobus_write(ptr noundef %41, i32 noundef %43, i32 noundef 19, i16 noundef zeroext -32614) #3
  %call2.i84 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 19200) #3
  %call3.i85 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i80, i32 noundef 0) #3
  %call.i86 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %44 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i.i, align 8
  %46 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i.i, align 8
  %call.i.i89 = tail call i32 @__mdiobus_write(ptr noundef %45, i32 noundef %47, i32 noundef 19, i16 noundef zeroext -32611) #3
  %call2.i90 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 16128, i16 noundef zeroext 2048) #3
  %call3.i91 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i86, i32 noundef 0) #3
  %call.i92 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %48 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i.i, align 8
  %50 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i.i, align 8
  %call.i.i95 = tail call i32 @__mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 19, i16 noundef zeroext -32607) #3
  %call2.i96 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 28672) #3
  %call3.i97 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i92, i32 noundef 0) #3
  %call.i98 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %52 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i.i, align 8
  %54 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i.i, align 8
  %call.i.i101 = tail call i32 @__mdiobus_write(ptr noundef %53, i32 noundef %55, i32 noundef 19, i16 noundef zeroext -32609) #3
  %call2.i102 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 7936, i16 noundef zeroext 768) #3
  %call3.i103 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i98, i32 noundef 0) #3
  %call.i104 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %56 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus.i.i, align 8
  %58 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr.i.i, align 8
  %call.i.i107 = tail call i32 @__mdiobus_write(ptr noundef %57, i32 noundef %59, i32 noundef 19, i16 noundef zeroext -32610) #3
  %call2.i108 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -30720) #3
  %call3.i109 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i104, i32 noundef 0) #3
  %call.i110 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %60 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus.i.i, align 8
  %62 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %addr.i.i, align 8
  %call.i.i113 = tail call i32 @__mdiobus_write(ptr noundef %61, i32 noundef %63, i32 noundef 19, i16 noundef zeroext -32590) #3
  %call2.i114 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 8704) #3
  %call3.i115 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i110, i32 noundef 0) #3
  %call.i116 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %64 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus.i.i, align 8
  %66 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr.i.i, align 8
  %call.i.i119 = tail call i32 @__mdiobus_write(ptr noundef %65, i32 noundef %67, i32 noundef 19, i16 noundef zeroext -32595) #3
  %call2.i120 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -2048, i16 noundef zeroext -26624) #3
  %call3.i121 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i116, i32 noundef 0) #3
  %call.i122 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %68 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus.i.i, align 8
  %70 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %addr.i.i, align 8
  %call.i.i125 = tail call i32 @__mdiobus_write(ptr noundef %69, i32 noundef %71, i32 noundef 19, i16 noundef zeroext -32593) #3
  %call2.i126 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 16128, i16 noundef zeroext 2048) #3
  %call3.i127 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i122, i32 noundef 0) #3
  %call.i128 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %72 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus.i.i, align 8
  %74 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %addr.i.i, align 8
  %call.i.i131 = tail call i32 @__mdiobus_write(ptr noundef %73, i32 noundef %75, i32 noundef 19, i16 noundef zeroext -32589) #3
  %call2.i132 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 28416) #3
  %call3.i133 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i128, i32 noundef 0) #3
  %call.i134 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %76 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus.i.i, align 8
  %78 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %addr.i.i, align 8
  %call.i.i137 = tail call i32 @__mdiobus_write(ptr noundef %77, i32 noundef %79, i32 noundef 19, i16 noundef zeroext -32591) #3
  %call2.i138 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 7936, i16 noundef zeroext 768) #3
  %call3.i139 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i134, i32 noundef 0) #3
  %call.i140 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %80 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus.i.i, align 8
  %82 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %addr.i.i, align 8
  %call.i.i143 = tail call i32 @__mdiobus_write(ptr noundef %81, i32 noundef %83, i32 noundef 19, i16 noundef zeroext -32592) #3
  %call2.i144 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -27904) #3
  %call3.i145 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i140, i32 noundef 0) #3
  %call.i146 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %84 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bus.i.i, align 8
  %86 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %addr.i.i, align 8
  %call.i.i149 = tail call i32 @__mdiobus_write(ptr noundef %85, i32 noundef %87, i32 noundef 19, i16 noundef zeroext -32751) #3
  %call2.i150 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 2048) #3
  %call3.i151 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i146, i32 noundef 0) #3
  %call.i152 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 2048) #3
  %call.i153 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %88 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus.i.i, align 8
  %90 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %addr.i.i, align 8
  %call.i.i156 = tail call i32 @__mdiobus_write(ptr noundef %89, i32 noundef %91, i32 noundef 19, i16 noundef zeroext -32746) #3
  %call2.i157 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 1024) #3
  %call3.i158 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i153, i32 noundef 0) #3
  %call.i159 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 16, i16 noundef zeroext 4, i16 noundef zeroext 0) #3
  %call.i.i160 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  %call.i161 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2634, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 512) #3
  %call1.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 128) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8125a_1_hw_phy_config(ptr nocapture noundef readnone %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2772, i32 noundef 16, i16 noundef zeroext 1023, i16 noundef zeroext 132) #3
  %call1 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2772, i32 noundef 23, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  %call2 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2769, i32 noundef 19, i16 noundef zeroext 1023, i16 noundef zeroext 6) #3
  %call3 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2771, i32 noundef 17, i16 noundef zeroext 63, i16 noundef zeroext 6) #3
  %call4 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2752, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 4352) #3
  %call5 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2760, i32 noundef 21, i16 noundef zeroext -4096, i16 noundef zeroext 28672) #3
  %call6 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2769, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 1024) #3
  %call7 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2769, i32 noundef 21, i16 noundef zeroext 0, i16 noundef zeroext 1023) #3
  %call8 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2769, i32 noundef 22, i16 noundef zeroext 0, i16 noundef zeroext 1023) #3
  %call.i = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 19, i16 noundef zeroext -32534) #3
  %call2.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -15360) #3
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i, i32 noundef 0) #3
  %call.i41 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i.i44 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 19, i16 noundef zeroext -32533) #3
  %call2.i45 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 1792, i16 noundef zeroext 768) #3
  %call3.i46 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i41, i32 noundef 0) #3
  %call.i47 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i.i50 = tail call i32 @__mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 19, i16 noundef zeroext -32520) #3
  %call2.i51 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 7168) #3
  %call3.i52 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i47, i32 noundef 0) #3
  %call.i53 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %12 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i.i, align 8
  %14 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i.i, align 8
  %call.i.i56 = tail call i32 @__mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 19, i16 noundef zeroext -32527) #3
  %call2.i57 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 12288) #3
  %call3.i58 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i53, i32 noundef 0) #3
  %call.i59 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %16 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i.i, align 8
  %18 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i.i, align 8
  %call.i.i62 = tail call i32 @__mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 19, i16 noundef zeroext -32514) #3
  %call2.i63 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -23296) #3
  %call3.i64 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i59, i32 noundef 0) #3
  %call.i65 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %20 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i.i, align 8
  %22 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i.i, align 8
  %call.i.i68 = tail call i32 @__mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 19, i16 noundef zeroext -32510) #3
  %call2.i69 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 20480) #3
  %call3.i70 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i65, i32 noundef 0) #3
  %call.i71 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %24 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i.i, align 8
  %26 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i.i, align 8
  %call.i.i74 = tail call i32 @__mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 19, i16 noundef zeroext -32507) #3
  %call2.i75 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 13056) #3
  %call3.i76 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i71, i32 noundef 0) #3
  %call.i77 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %28 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i.i, align 8
  %30 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i.i, align 8
  %call.i.i80 = tail call i32 @__mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 19, i16 noundef zeroext -32512) #3
  %call2.i81 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 28672) #3
  %call3.i82 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i77, i32 noundef 0) #3
  %call.i83 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %32 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i.i, align 8
  %34 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i.i, align 8
  %call.i.i86 = tail call i32 @__mdiobus_write(ptr noundef %33, i32 noundef %35, i32 noundef 19, i16 noundef zeroext -32508) #3
  %call2.i87 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -4096) #3
  %call3.i88 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i83, i32 noundef 0) #3
  %call.i89 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %36 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i.i, align 8
  %38 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i.i, align 8
  %call.i.i92 = tail call i32 @__mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 19, i16 noundef zeroext -32506) #3
  %call2.i93 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext 25856) #3
  %call3.i94 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i89, i32 noundef 0) #3
  %call.i95 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %40 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i.i, align 8
  %42 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i.i, align 8
  %call.i.i98 = tail call i32 @__mdiobus_write(ptr noundef %41, i32 noundef %43, i32 noundef 19, i16 noundef zeroext -32548) #3
  %call2.i99 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -256, i16 noundef zeroext -4864) #3
  %call3.i100 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i95, i32 noundef 0) #3
  %call.i101 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %44 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i.i, align 8
  %46 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i.i, align 8
  %call.i.i104 = tail call i32 @__mdiobus_write(ptr noundef %45, i32 noundef %47, i32 noundef 19, i16 noundef zeroext -32545) #3
  %call2.i105 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 256) #3
  %call3.i106 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i101, i32 noundef 0) #3
  %call.i107 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %48 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i.i, align 8
  %50 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i.i, align 8
  %call.i.i110 = tail call i32 @__mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 19, i16 noundef zeroext -32543) #3
  %call2.i111 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 256, i16 noundef zeroext 0) #3
  %call3.i112 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i107, i32 noundef 0) #3
  %call9 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 3056, i32 noundef 19, i16 noundef zeroext 63, i16 noundef zeroext 56) #3
  %call.i113 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %52 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i.i, align 8
  %54 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i.i, align 8
  %call.i.i116 = tail call i32 @__mdiobus_write(ptr noundef %53, i32 noundef %55, i32 noundef 19, i16 noundef zeroext -32353) #3
  %call2.i117 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext -12106) #3
  %call3.i118 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i113, i32 noundef 0) #3
  %call10 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 3011, i32 noundef 18, i16 noundef zeroext 21845) #3
  %call11 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 3056, i32 noundef 21, i16 noundef zeroext 3584, i16 noundef zeroext 2560) #3
  %call12 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2652, i32 noundef 16, i16 noundef zeroext 1024, i16 noundef zeroext 0) #3
  %call.i119 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 2048) #3
  %call.i.i.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  %call.i.i120 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2634, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 512) #3
  %call1.i.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 128) #3
  %call.i121 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2669, i32 noundef 18, i16 noundef zeroext 1, i16 noundef zeroext 0) #3
  %call1.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2669, i32 noundef 20, i16 noundef zeroext 16, i16 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8125a_2_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2772, i32 noundef 23, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  %call1 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2769, i32 noundef 19, i16 noundef zeroext 1023, i16 noundef zeroext 1023) #3
  %call2 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2771, i32 noundef 17, i16 noundef zeroext 63, i16 noundef zeroext 6) #3
  %call3 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2752, i32 noundef 20, i16 noundef zeroext 4352, i16 noundef zeroext 0) #3
  %call4 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2764, i32 noundef 16, i16 noundef zeroext 3, i16 noundef zeroext 2) #3
  %call5 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2772, i32 noundef 16, i16 noundef zeroext 231, i16 noundef zeroext 68) #3
  %call6 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2753, i32 noundef 18, i16 noundef zeroext 128, i16 noundef zeroext 0) #3
  %call7 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2760, i32 noundef 16, i16 noundef zeroext 768, i16 noundef zeroext 0) #3
  %call8 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2757, i32 noundef 23, i16 noundef zeroext 7, i16 noundef zeroext 2) #3
  %call9 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 2772, i32 noundef 22, i16 noundef zeroext 168) #3
  %call10 = tail call i32 @phy_write_paged(ptr noundef %phydev, i32 noundef 2757, i32 noundef 22, i16 noundef zeroext 511) #3
  %call11 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2760, i32 noundef 21, i16 noundef zeroext 240, i16 noundef zeroext 48) #3
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext 2951) #3
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i93 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 22, i16 noundef zeroext -32606) #3
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i96 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 23, i16 noundef zeroext 339) #3
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i99 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 22, i16 noundef zeroext -32612) #3
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 8
  %call.i102 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 23, i16 noundef zeroext 339) #3
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 8
  %call.i105 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 31, i16 noundef zeroext 0) #3
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 8
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i, align 8
  %call.i108 = tail call i32 @mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 31, i16 noundef zeroext 2627) #3
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 8
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i, align 8
  %call.i111 = tail call i32 @mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 19, i16 noundef zeroext -32333) #3
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i, align 8
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i, align 8
  %call.i114 = tail call i32 @mdiobus_write(ptr noundef %33, i32 noundef %35, i32 noundef 20, i16 noundef zeroext 67) #3
  %36 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i, align 8
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i, align 8
  %call.i117 = tail call i32 @mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 20, i16 noundef zeroext 167) #3
  %40 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i, align 8
  %42 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i, align 8
  %call.i120 = tail call i32 @mdiobus_write(ptr noundef %41, i32 noundef %43, i32 noundef 20, i16 noundef zeroext 214) #3
  %44 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i, align 8
  %46 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i, align 8
  %call.i123 = tail call i32 @mdiobus_write(ptr noundef %45, i32 noundef %47, i32 noundef 20, i16 noundef zeroext 236) #3
  %48 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i, align 8
  %50 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i, align 8
  %call.i126 = tail call i32 @mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 20, i16 noundef zeroext 246) #3
  %52 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i, align 8
  %54 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i, align 8
  %call.i129 = tail call i32 @mdiobus_write(ptr noundef %53, i32 noundef %55, i32 noundef 20, i16 noundef zeroext 251) #3
  %56 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus.i, align 8
  %58 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr.i, align 8
  %call.i132 = tail call i32 @mdiobus_write(ptr noundef %57, i32 noundef %59, i32 noundef 20, i16 noundef zeroext 253) #3
  %60 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus.i, align 8
  %62 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %addr.i, align 8
  %call.i135 = tail call i32 @mdiobus_write(ptr noundef %61, i32 noundef %63, i32 noundef 20, i16 noundef zeroext 255) #3
  %64 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus.i, align 8
  %66 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr.i, align 8
  %call.i138 = tail call i32 @mdiobus_write(ptr noundef %65, i32 noundef %67, i32 noundef 20, i16 noundef zeroext 187) #3
  %68 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bus.i, align 8
  %70 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %addr.i, align 8
  %call.i141 = tail call i32 @mdiobus_write(ptr noundef %69, i32 noundef %71, i32 noundef 20, i16 noundef zeroext 88) #3
  %72 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus.i, align 8
  %74 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %addr.i, align 8
  %call.i144 = tail call i32 @mdiobus_write(ptr noundef %73, i32 noundef %75, i32 noundef 20, i16 noundef zeroext 41) #3
  %76 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bus.i, align 8
  %78 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %addr.i, align 8
  %call.i147 = tail call i32 @mdiobus_write(ptr noundef %77, i32 noundef %79, i32 noundef 20, i16 noundef zeroext 19) #3
  %80 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %bus.i, align 8
  %82 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %addr.i, align 8
  %call.i150 = tail call i32 @mdiobus_write(ptr noundef %81, i32 noundef %83, i32 noundef 20, i16 noundef zeroext 9) #3
  %84 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bus.i, align 8
  %86 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %addr.i, align 8
  %call.i153 = tail call i32 @mdiobus_write(ptr noundef %85, i32 noundef %87, i32 noundef 20, i16 noundef zeroext 4) #3
  %88 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bus.i, align 8
  %90 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %addr.i, align 8
  %call.i156 = tail call i32 @mdiobus_write(ptr noundef %89, i32 noundef %91, i32 noundef 20, i16 noundef zeroext 2) #3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0179 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %92 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %bus.i, align 8
  %94 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %addr.i, align 8
  %call.i159 = tail call i32 @mdiobus_write(ptr noundef %93, i32 noundef %95, i32 noundef 20, i16 noundef zeroext 0) #3
  %inc = add nuw nsw i32 %i.0179, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %96 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %bus.i, align 8
  %98 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %addr.i, align 8
  %call.i162 = tail call i32 @mdiobus_write(ptr noundef %97, i32 noundef %99, i32 noundef 31, i16 noundef zeroext 0) #3
  %call.i163 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %100 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %bus.i, align 8
  %102 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %addr.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %101, i32 noundef %103, i32 noundef 19, i16 noundef zeroext -32169) #3
  %call2.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 527) #3
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i163, i32 noundef 0) #3
  %call.i164 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %104 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bus.i, align 8
  %106 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %addr.i, align 8
  %call.i.i167 = tail call i32 @__mdiobus_write(ptr noundef %105, i32 noundef %107, i32 noundef 19, i16 noundef zeroext -32534) #3
  %call2.i168 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 30787) #3
  %call3.i169 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i164, i32 noundef 0) #3
  tail call void @r8169_apply_firmware(ptr noundef %tp) #3
  %call37 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 3334, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 8192) #3
  %call.i170 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %108 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %bus.i, align 8
  %110 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %addr.i, align 8
  %call.i.i173 = tail call i32 @__mdiobus_write(ptr noundef %109, i32 noundef %111, i32 noundef 19, i16 noundef zeroext -32350) #3
  %call2.i174 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 256) #3
  %call3.i175 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i170, i32 noundef 0) #3
  %call38 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2900, i32 noundef 22, i16 noundef zeroext -256, i16 noundef zeroext -9472) #3
  %call39 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2629, i32 noundef 18, i16 noundef zeroext 1, i16 noundef zeroext 0) #3
  %call40 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2653, i32 noundef 18, i16 noundef zeroext 0, i16 noundef zeroext 32) #3
  %call41 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2772, i32 noundef 23, i16 noundef zeroext 16, i16 noundef zeroext 0) #3
  %call42 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2694, i32 noundef 21, i16 noundef zeroext 1, i16 noundef zeroext 0) #3
  %call.i176 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 2048) #3
  %call.i.i.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2627, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  %call.i.i177 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2634, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 512) #3
  %call1.i.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext 128) #3
  %call.i178 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2669, i32 noundef 18, i16 noundef zeroext 1, i16 noundef zeroext 0) #3
  %call1.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2669, i32 noundef 20, i16 noundef zeroext 16, i16 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtl8125b_hw_phy_config(ptr noundef %tp, ptr noundef %phydev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @r8169_apply_firmware(ptr noundef %tp) #3
  %call = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2628, i32 noundef 17, i16 noundef zeroext 0, i16 noundef zeroext 2048) #3
  %call1 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2756, i32 noundef 19, i16 noundef zeroext 240, i16 noundef zeroext 144) #3
  %call2 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2771, i32 noundef 16, i16 noundef zeroext 3, i16 noundef zeroext 1) #3
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext 2951) #3
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i43 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 22, i16 noundef zeroext -32523) #3
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i46 = tail call i32 @mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 23, i16 noundef zeroext 30222) #3
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i49 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 22, i16 noundef zeroext -32505) #3
  %16 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus.i, align 8
  %18 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr.i, align 8
  %call.i52 = tail call i32 @mdiobus_write(ptr noundef %17, i32 noundef %19, i32 noundef 23, i16 noundef zeroext 13838) #3
  %20 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus.i, align 8
  %22 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %addr.i, align 8
  %call.i55 = tail call i32 @mdiobus_write(ptr noundef %21, i32 noundef %23, i32 noundef 22, i16 noundef zeroext -31407) #3
  %call9 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 23, i16 noundef zeroext -256, i16 noundef zeroext 2048) #3
  %24 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus.i, align 8
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %addr.i, align 8
  %call.i58 = tail call i32 @mdiobus_write(ptr noundef %25, i32 noundef %27, i32 noundef 31, i16 noundef zeroext 0) #3
  %call11 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 3056, i32 noundef 16, i16 noundef zeroext -8192, i16 noundef zeroext -24576) #3
  %call12 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 3060, i32 noundef 19, i16 noundef zeroext 3840, i16 noundef zeroext 768) #3
  %call.i59 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %28 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus.i, align 8
  %30 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %addr.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %29, i32 noundef %31, i32 noundef 19, i16 noundef zeroext -32700) #3
  %call2.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i59, i32 noundef 0) #3
  %call.i60 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %32 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bus.i, align 8
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addr.i, align 8
  %call.i.i63 = tail call i32 @__mdiobus_write(ptr noundef %33, i32 noundef %35, i32 noundef 19, i16 noundef zeroext -32694) #3
  %call2.i64 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %call3.i65 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i60, i32 noundef 0) #3
  %call.i66 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %36 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bus.i, align 8
  %38 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %addr.i, align 8
  %call.i.i69 = tail call i32 @__mdiobus_write(ptr noundef %37, i32 noundef %39, i32 noundef 19, i16 noundef zeroext -32688) #3
  %call2.i70 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %call3.i71 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i66, i32 noundef 0) #3
  %call.i72 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %40 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bus.i, align 8
  %42 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %addr.i, align 8
  %call.i.i75 = tail call i32 @__mdiobus_write(ptr noundef %41, i32 noundef %43, i32 noundef 19, i16 noundef zeroext -32682) #3
  %call2.i76 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %call3.i77 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i72, i32 noundef 0) #3
  %call.i78 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %44 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bus.i, align 8
  %46 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr.i, align 8
  %call.i.i81 = tail call i32 @__mdiobus_write(ptr noundef %45, i32 noundef %47, i32 noundef 19, i16 noundef zeroext -32676) #3
  %call2.i82 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %call3.i83 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i78, i32 noundef 0) #3
  %call.i84 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %48 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bus.i, align 8
  %50 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr.i, align 8
  %call.i.i87 = tail call i32 @__mdiobus_write(ptr noundef %49, i32 noundef %51, i32 noundef 19, i16 noundef zeroext -32670) #3
  %call2.i88 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %call3.i89 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i84, i32 noundef 0) #3
  %call.i90 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %52 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bus.i, align 8
  %54 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addr.i, align 8
  %call.i.i93 = tail call i32 @__mdiobus_write(ptr noundef %53, i32 noundef %55, i32 noundef 19, i16 noundef zeroext -32664) #3
  %call2.i94 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %call3.i95 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i90, i32 noundef 0) #3
  %call.i96 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %56 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bus.i, align 8
  %58 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr.i, align 8
  %call.i.i99 = tail call i32 @__mdiobus_write(ptr noundef %57, i32 noundef %59, i32 noundef 19, i16 noundef zeroext -32658) #3
  %call2.i100 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %call3.i101 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i96, i32 noundef 0) #3
  %call.i102 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %60 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bus.i, align 8
  %62 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %addr.i, align 8
  %call.i.i105 = tail call i32 @__mdiobus_write(ptr noundef %61, i32 noundef %63, i32 noundef 19, i16 noundef zeroext -32652) #3
  %call2.i106 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %call3.i107 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i102, i32 noundef 0) #3
  %call.i108 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 2627) #3
  %64 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %bus.i, align 8
  %66 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %addr.i, align 8
  %call.i.i111 = tail call i32 @__mdiobus_write(ptr noundef %65, i32 noundef %67, i32 noundef 19, i16 noundef zeroext -32646) #3
  %call2.i112 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext -1, i16 noundef zeroext 9239) #3
  %call3.i113 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i108, i32 noundef 0) #3
  %call13 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2636, i32 noundef 21, i16 noundef zeroext 0, i16 noundef zeroext 64) #3
  %call14 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 3064, i32 noundef 18, i16 noundef zeroext -8192, i16 noundef zeroext -24576) #3
  %call.i114 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2651, i32 noundef 18, i16 noundef zeroext -32768, i16 noundef zeroext 0) #3
  %call.i115 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2669, i32 noundef 18, i16 noundef zeroext 1, i16 noundef zeroext 0) #3
  %call1.i = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2669, i32 noundef 20, i16 noundef zeroext 16, i16 noundef zeroext 0) #3
  %call2.i116 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2626, i32 noundef 20, i16 noundef zeroext 128, i16 noundef zeroext 0) #3
  %call3.i117 = tail call i32 @phy_modify_paged(ptr noundef %phydev, i32 noundef 2634, i32 noundef 17, i16 noundef zeroext 512, i16 noundef zeroext 0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_modify_paged(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @rtl8168d_efuse_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8168d_apply_firmware_cond(ptr noundef %tp, ptr noundef %phydev, i16 noundef zeroext %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 31, i16 noundef zeroext 5) #3
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i, align 8
  %call.i13 = tail call i32 @mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 5, i16 noundef zeroext 27) #3
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 8
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i, align 8
  %call.i16 = tail call i32 @mdiobus_read(ptr noundef %9, i32 noundef %11, i32 noundef 6) #3
  %12 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus.i, align 8
  %14 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr.i, align 8
  %call.i19 = tail call i32 @mdiobus_write(ptr noundef %13, i32 noundef %15, i32 noundef 31, i16 noundef zeroext 0) #3
  %16 = trunc i32 %call.i16 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %val)
  %cmp.not = icmp eq i16 %16, %val
  br i1 %cmp.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phydev, ptr noundef nonnull @.str) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @r8169_apply_firmware(ptr noundef %tp) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_select_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phy_modify(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_restore_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @r8169_apply_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_write_mmd(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8168f_config_eee_phy(ptr noundef %phydev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 7) #3
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 30, i16 noundef zeroext 32) #3
  %call2.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 21, i16 noundef zeroext 0, i16 noundef zeroext 256) #3
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i, i32 noundef 0) #3
  %call.i2 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i.i5 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 5, i16 noundef zeroext -29819) #3
  %call2.i6 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext 8192) #3
  %call3.i7 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i2, i32 noundef 0) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtl8168f_hw_phy_config(ptr noundef %phydev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %bus.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 1
  %0 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i.i, align 8
  %addr.i.i = getelementptr inbounds %struct.mdio_device, ptr %phydev, i32 0, i32 6
  %2 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr.i.i, align 8
  %call.i.i = tail call i32 @__mdiobus_write(ptr noundef %1, i32 noundef %3, i32 noundef 5, i16 noundef zeroext -29824) #3
  %call2.i = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext 6) #3
  %call3.i = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i, i32 noundef 0) #3
  %call.i1 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 7) #3
  %4 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i.i, align 8
  %6 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr.i.i, align 8
  %call.i.i4 = tail call i32 @__mdiobus_write(ptr noundef %5, i32 noundef %7, i32 noundef 30, i16 noundef zeroext 45) #3
  %call2.i5 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 24, i16 noundef zeroext 0, i16 noundef zeroext 16) #3
  %call3.i6 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i1, i32 noundef 0) #3
  %call.i7 = tail call i32 @phy_modify(ptr noundef %phydev, i32 noundef 20, i16 noundef zeroext 0, i16 noundef zeroext -32768) #3
  %call.i8 = tail call i32 @phy_select_page(ptr noundef %phydev, i32 noundef 5) #3
  %8 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i.i, align 8
  %10 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr.i.i, align 8
  %call.i.i11 = tail call i32 @__mdiobus_write(ptr noundef %9, i32 noundef %11, i32 noundef 5, i16 noundef zeroext -29818) #3
  %call2.i12 = tail call i32 @__phy_modify(ptr noundef %phydev, i32 noundef 6, i16 noundef zeroext 0, i16 noundef zeroext 1) #3
  %call3.i13 = tail call i32 @phy_restore_page(ptr noundef %phydev, i32 noundef %call.i8, i32 noundef 0) #3
  tail call fastcc void @rtl8168f_config_eee_phy(ptr noundef %phydev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_read_paged(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @rtl8168h_2_get_adc_bias_ioffset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @r8169_hw_phy_config.phy_configs, !1, !"phy_configs", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/realtek/r8169_phy_config.c", i32 1250, i32 31}
!2 = !{ptr @rtl8169s_hw_phy_config.phy_reg_init, !3, !"phy_reg_init", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/realtek/r8169_phy_config.c", i32 111, i32 30}
!4 = !{ptr @rtl8169scd_hw_phy_config.phy_reg_init, !5, !"phy_reg_init", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/realtek/r8169_phy_config.c", i32 185, i32 30}
!6 = !{ptr @rtl8169sce_hw_phy_config.phy_reg_init, !7, !"phy_reg_init", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/realtek/r8169_phy_config.c", i32 231, i32 30}
!8 = distinct !{null, !9, !"phy_reg_init", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/realtek/r8169_phy_config.c", i32 1030, i32 30}
!10 = !{ptr @rtl8168c_1_hw_phy_config.phy_reg_init, !11, !"phy_reg_init", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/realtek/r8169_phy_config.c", i32 315, i32 30}
!12 = !{ptr @rtl8168c_2_hw_phy_config.phy_reg_init, !13, !"phy_reg_init", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/realtek/r8169_phy_config.c", i32 344, i32 30}
!14 = distinct !{null, !15, !"phy_reg_init", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/realtek/r8169_phy_config.c", i32 372, i32 30}
!16 = distinct !{null, !17, !"set", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/realtek/r8169_phy_config.c", i32 479, i32 21}
!18 = !{ptr @rtl8168d_1_phy_reg_init_0, !19, !"rtl8168d_1_phy_reg_init_0", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/realtek/r8169_phy_config.c", i32 391, i32 29}
!20 = distinct !{null, !21, !"rtl8168d_1_phy_reg_init_1", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/realtek/r8169_phy_config.c", i32 432, i32 29}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/realtek/r8169_phy_config.c", i32 453, i32 3}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rtl8168d_apply_firmware_cond._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @rtl8168d_apply_firmware_cond._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"set", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/realtek/r8169_phy_config.c", i32 522, i32 21}
!32 = distinct !{null, !33, !"phy_reg_init", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/realtek/r8169_phy_config.c", i32 562, i32 30}
!34 = distinct !{null, !35, !"phy_reg_init", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/realtek/r8169_phy_config.c", i32 1084, i32 30}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
