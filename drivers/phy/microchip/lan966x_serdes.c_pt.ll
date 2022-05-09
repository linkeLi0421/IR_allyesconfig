; ModuleID = '/llk/IR_all_yes/drivers/phy/microchip/lan966x_serdes.c_pt.bc'
source_filename = "../drivers/phy/microchip/lan966x_serdes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serdes_mux = type { i8, i8, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.serdes_ctrl = type { ptr, ptr, [10 x ptr], i32 }
%struct.serdes_macro = type { i8, i32, ptr, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_lan966x_serdes__446_541_mscc_lan966x_serdes_init6 = internal global ptr @mscc_lan966x_serdes_init, section ".initcall6.init", align 4
@mscc_lan966x_serdes = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @serdes_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @serdes_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mscc_lan966x_serdes_exit = internal global ptr @mscc_lan966x_serdes_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description447 = internal constant [66 x i8] c"lan966x_serdes.description=Microchip lan966x switch serdes driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author448 = internal constant [68 x i8] c"lan966x_serdes.author=Horatiu Vultur <horatiu.vultur@microchip.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file449 = internal constant [57 x i8] c"lan966x_serdes.file=drivers/phy/microchip/lan966x_serdes\00", section ".modinfo", align 1
@__UNIQUE_ID_license450 = internal constant [30 x i8] c"lan966x_serdes.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"microchip,lan966x-serdes\00", [39 x i8] zeroinitializer }, align 32
@serdes_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,lan966x-serdes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@serdes_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr null, ptr null, ptr null, ptr null, ptr @serdes_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@lan966x_serdes_muxes = internal constant { [18 x %struct.serdes_mux], [88 x i8] } { [18 x %struct.serdes_mux] [%struct.serdes_mux { i8 4, i8 0, i32 15, i32 18, i32 3, i32 1 }, %struct.serdes_mux { i8 4, i8 1, i32 15, i32 18, i32 3, i32 1 }, %struct.serdes_mux { i8 4, i8 2, i32 15, i32 18, i32 3, i32 1 }, %struct.serdes_mux { i8 4, i8 3, i32 15, i32 18, i32 3, i32 1 }, %struct.serdes_mux { i8 5, i8 4, i32 15, i32 18, i32 3, i32 2 }, %struct.serdes_mux { i8 5, i8 5, i32 15, i32 18, i32 3, i32 2 }, %struct.serdes_mux { i8 5, i8 6, i32 15, i32 18, i32 3, i32 2 }, %struct.serdes_mux { i8 5, i8 7, i32 15, i32 18, i32 3, i32 2 }, %struct.serdes_mux { i8 0, i8 0, i32 15, i32 3, i32 1020, i32 4 }, %struct.serdes_mux { i8 1, i8 1, i32 15, i32 3, i32 1020, i32 8 }, %struct.serdes_mux { i8 3, i8 0, i32 15, i32 4, i32 2048, i32 0 }, %struct.serdes_mux { i8 4, i8 1, i32 15, i32 4, i32 1024, i32 0 }, %struct.serdes_mux { i8 3, i8 2, i32 15, i32 4, i32 2048, i32 2048 }, %struct.serdes_mux { i8 4, i8 3, i32 15, i32 4, i32 1024, i32 1024 }, %struct.serdes_mux { i8 7, i8 2, i32 15, i32 9, i32 28672, i32 20480 }, %struct.serdes_mux { i8 8, i8 3, i32 15, i32 9, i32 45056, i32 40960 }, %struct.serdes_mux { i8 7, i8 5, i32 15, i32 9, i32 28672, i32 20480 }, %struct.serdes_mux { i8 8, i8 6, i32 15, i32 9, i32 45056, i32 40960 }], [88 x i8] zeroinitializer }, align 32
@lan966x_sd6g40_reg_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 227, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Unexpected sd_sd_stat[%u] mpll_state was 0x1 but is 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lan966x_sd6g40_reg_cfg\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/phy/microchip/lan966x_serdes.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lan966x_sd6g40_reg_cfg._entry_ptr = internal global ptr @lan966x_sd6g40_reg_cfg._entry, section ".printk_index", align 4
@lan966x_sd6g40_reg_cfg._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 242, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Unexpected sd_sd_stat[%u] tx_cm_state was 0x1 but is 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@lan966x_sd6g40_reg_cfg._entry_ptr.8 = internal global ptr @lan966x_sd6g40_reg_cfg._entry.6, section ".printk_index", align 4
@lan966x_sd6g40_reg_cfg._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 260, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Unexpected sd_sd_stat[%u] rx_pll_state was 0x1 but is 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@lan966x_sd6g40_reg_cfg._entry_ptr.11 = internal global ptr @lan966x_sd6g40_reg_cfg._entry.9, section ".printk_index", align 4
@lan966x_sd6g40_reg_cfg._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 270, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Unexpected sd_sd_stat[%u] tx_state was 0x1 but is 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@lan966x_sd6g40_reg_cfg._entry_ptr.14 = internal global ptr @lan966x_sd6g40_reg_cfg._entry.12, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [20 x i8] c"mscc_lan966x_serdes\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 533, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 536, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"serdes_ids\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 527, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"serdes_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 435, i32 29 }
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"lan966x_serdes_muxes\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 65, i32 32 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 225, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 240, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 258, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [42 x i8] c"../drivers/phy/microchip/lan966x_serdes.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 268, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author448, ptr @__UNIQUE_ID_description447, ptr @__UNIQUE_ID_file449, ptr @__UNIQUE_ID_license450, ptr @__exitcall_mscc_lan966x_serdes_exit, ptr @__initcall__kmod_lan966x_serdes__446_541_mscc_lan966x_serdes_init6, ptr @lan966x_sd6g40_reg_cfg._entry, ptr @lan966x_sd6g40_reg_cfg._entry.12, ptr @lan966x_sd6g40_reg_cfg._entry.6, ptr @lan966x_sd6g40_reg_cfg._entry.9, ptr @lan966x_sd6g40_reg_cfg._entry_ptr, ptr @lan966x_sd6g40_reg_cfg._entry_ptr.11, ptr @lan966x_sd6g40_reg_cfg._entry_ptr.14, ptr @lan966x_sd6g40_reg_cfg._entry_ptr.8, ptr @mscc_lan966x_serdes_exit, ptr @mscc_lan966x_serdes, ptr @.str, ptr @serdes_ids, ptr @serdes_ops, ptr @lan966x_serdes_muxes, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mscc_lan966x_serdes to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @serdes_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_serdes_muxes to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_sd6g40_reg_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_sd6g40_reg_cfg._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_sd6g40_reg_cfg._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lan966x_sd6g40_reg_cfg._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mscc_lan966x_serdes_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mscc_lan966x_serdes, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mscc_lan966x_serdes_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mscc_lan966x_serdes) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serdes_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.serdes_ctrl, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %call3 = tail call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef null) #6
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 1, ptr noundef null) #6
  %cmp.i68 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %if.then12, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call10 to i32
  br label %cleanup

for.body:                                         ; preds = %serdes_phy_create.exit.thread.for.body_crit_edge, %if.end9.for.body_crit_edge
  %i.077 = phi i32 [ %inc, %serdes_phy_create.exit.thread.for.body_crit_edge ], [ 0, %if.end9.for.body_crit_edge ]
  %conv = trunc i32 %i.077 to i8
  %arrayidx = getelementptr %struct.serdes_ctrl, ptr %call.i, i32 0, i32 2, i32 %i.077
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %call.i69 = tail call ptr @devm_phy_create(ptr noundef %5, ptr noundef null, ptr noundef nonnull @serdes_ops) #6
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i69, ptr %arrayidx, align 4
  %cmp.i.i = icmp ugt ptr %call.i69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %serdes_phy_create.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body
  %7 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev2, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 20, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %serdes_phy_create.exit.thread

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

serdes_phy_create.exit.thread:                    ; preds = %if.end.i
  %9 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %call.i.i, align 4
  %ctrl8.i = getelementptr inbounds %struct.serdes_macro, ptr %call.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %ctrl8.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %ctrl8.i, align 4
  %port.i = getelementptr inbounds %struct.serdes_macro, ptr %call.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %port.i, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i.i, ptr %driver_data.i.i.i, align 4
  %inc = add nuw nsw i32 %i.077, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.end, label %serdes_phy_create.exit.thread.for.body_crit_edge

serdes_phy_create.exit.thread.for.body_crit_edge: ; preds = %serdes_phy_create.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

serdes_phy_create.exit:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call.i69 to i32
  br label %cleanup

for.end:                                          ; preds = %serdes_phy_create.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call10) #6, !srcloc !49
  %17 = lshr i32 %16, 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  %and = and i32 %17, 3
  %18 = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %19 = icmp ult i32 %18, 2
  %20 = zext i1 %19 to i32
  %ref125 = getelementptr inbounds %struct.serdes_ctrl, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %ref125 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ref125, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %22 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %driver_data.i, align 4
  %23 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev2, align 4
  %call40 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %24, ptr noundef null, ptr noundef null, ptr noundef nonnull @serdes_simple_xlate) #6
  %cmp.i.i70 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  %25 = ptrtoint ptr %call40 to i32
  %spec.select.i = select i1 %cmp.i.i70, i32 %25, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %serdes_phy_create.exit, %if.end.i.cleanup_crit_edge, %if.then12, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %3, %if.then12 ], [ %spec.select.i, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ %15, %serdes_phy_create.exit ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @serdes_simple_xlate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %args) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup17_crit_edge

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup17

if.end:                                           ; preds = %entry
  %args2 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %args2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args2, align 4
  %arrayidx4 = getelementptr %struct.of_phandle_args, ptr %args, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %arrayidx6 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 0
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp9.not = icmp eq i32 %7, %conv
  br i1 %cmp9.not, label %if.end.cleanup.thread_crit_edge, label %for.cond

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.cond:                                         ; preds = %if.end
  %arrayidx6.1 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx6.1, align 4
  %driver_data.i.i.1 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.1, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %17, align 4
  %conv.1 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.1)
  %cmp9.not.1 = icmp eq i32 %7, %conv.1
  br i1 %cmp9.not.1, label %for.cond.cleanup.thread_crit_edge, label %for.cond.1

for.cond.cleanup.thread_crit_edge:                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.cond.1:                                       ; preds = %for.cond
  %arrayidx6.2 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx6.2, align 4
  %driver_data.i.i.2 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.2, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  %conv.2 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.2)
  %cmp9.not.2 = icmp eq i32 %7, %conv.2
  br i1 %cmp9.not.2, label %for.cond.1.cleanup.thread_crit_edge, label %for.cond.2

for.cond.1.cleanup.thread_crit_edge:              ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx6.3 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 3
  %26 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx6.3, align 4
  %driver_data.i.i.3 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.3, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %conv.3 = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.3)
  %cmp9.not.3 = icmp eq i32 %7, %conv.3
  br i1 %cmp9.not.3, label %for.cond.2.cleanup.thread_crit_edge, label %for.cond.3

for.cond.2.cleanup.thread_crit_edge:              ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx6.4 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx6.4, align 4
  %driver_data.i.i.4 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 8
  %34 = ptrtoint ptr %driver_data.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver_data.i.i.4, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 4
  %conv.4 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.4)
  %cmp9.not.4 = icmp eq i32 %7, %conv.4
  br i1 %cmp9.not.4, label %for.cond.3.cleanup.thread_crit_edge, label %for.cond.4

for.cond.3.cleanup.thread_crit_edge:              ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx6.5 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 5
  %38 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx6.5, align 4
  %driver_data.i.i.5 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %driver_data.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i.5, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %41, align 4
  %conv.5 = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.5)
  %cmp9.not.5 = icmp eq i32 %7, %conv.5
  br i1 %cmp9.not.5, label %for.cond.4.cleanup.thread_crit_edge, label %for.cond.5

for.cond.4.cleanup.thread_crit_edge:              ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx6.6 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 6
  %44 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx6.6, align 4
  %driver_data.i.i.6 = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 8
  %46 = ptrtoint ptr %driver_data.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_data.i.i.6, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 4
  %conv.6 = zext i8 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.6)
  %cmp9.not.6 = icmp eq i32 %7, %conv.6
  br i1 %cmp9.not.6, label %for.cond.5.cleanup.thread_crit_edge, label %for.cond.6

for.cond.5.cleanup.thread_crit_edge:              ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx6.7 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 7
  %50 = ptrtoint ptr %arrayidx6.7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx6.7, align 4
  %driver_data.i.i.7 = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 8
  %52 = ptrtoint ptr %driver_data.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver_data.i.i.7, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %53, align 4
  %conv.7 = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.7)
  %cmp9.not.7 = icmp eq i32 %7, %conv.7
  br i1 %cmp9.not.7, label %for.cond.6.cleanup.thread_crit_edge, label %for.cond.7

for.cond.6.cleanup.thread_crit_edge:              ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.cond.7:                                       ; preds = %for.cond.6
  %arrayidx6.8 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 8
  %56 = ptrtoint ptr %arrayidx6.8 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx6.8, align 4
  %driver_data.i.i.8 = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %driver_data.i.i.8 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %driver_data.i.i.8, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %59, align 4
  %conv.8 = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.8)
  %cmp9.not.8 = icmp eq i32 %7, %conv.8
  br i1 %cmp9.not.8, label %for.cond.7.cleanup.thread_crit_edge, label %for.cond.8

for.cond.7.cleanup.thread_crit_edge:              ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

for.cond.8:                                       ; preds = %for.cond.7
  %arrayidx6.9 = getelementptr %struct.serdes_ctrl, ptr %1, i32 0, i32 2, i32 9
  %62 = ptrtoint ptr %arrayidx6.9 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx6.9, align 4
  %driver_data.i.i.9 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 8
  %64 = ptrtoint ptr %driver_data.i.i.9 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %driver_data.i.i.9, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 4
  %conv.9 = zext i8 %67 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv.9)
  %cmp9.not.9 = icmp eq i32 %7, %conv.9
  br i1 %cmp9.not.9, label %for.cond.8.cleanup.thread_crit_edge, label %for.cond.8.cleanup17_crit_edge

for.cond.8.cleanup17_crit_edge:                   ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup17

for.cond.8.cleanup.thread_crit_edge:              ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.cond.8.cleanup.thread_crit_edge, %for.cond.7.cleanup.thread_crit_edge, %for.cond.6.cleanup.thread_crit_edge, %for.cond.5.cleanup.thread_crit_edge, %for.cond.4.cleanup.thread_crit_edge, %for.cond.3.cleanup.thread_crit_edge, %for.cond.2.cleanup.thread_crit_edge, %for.cond.1.cleanup.thread_crit_edge, %for.cond.cleanup.thread_crit_edge, %if.end.cleanup.thread_crit_edge
  %arrayidx6.lcssa = phi ptr [ %arrayidx6, %if.end.cleanup.thread_crit_edge ], [ %arrayidx6.1, %for.cond.cleanup.thread_crit_edge ], [ %arrayidx6.2, %for.cond.1.cleanup.thread_crit_edge ], [ %arrayidx6.3, %for.cond.2.cleanup.thread_crit_edge ], [ %arrayidx6.4, %for.cond.3.cleanup.thread_crit_edge ], [ %arrayidx6.5, %for.cond.4.cleanup.thread_crit_edge ], [ %arrayidx6.6, %for.cond.5.cleanup.thread_crit_edge ], [ %arrayidx6.7, %for.cond.6.cleanup.thread_crit_edge ], [ %arrayidx6.8, %for.cond.7.cleanup.thread_crit_edge ], [ %arrayidx6.9, %for.cond.8.cleanup.thread_crit_edge ]
  %.lcssa = phi ptr [ %11, %if.end.cleanup.thread_crit_edge ], [ %17, %for.cond.cleanup.thread_crit_edge ], [ %23, %for.cond.1.cleanup.thread_crit_edge ], [ %29, %for.cond.2.cleanup.thread_crit_edge ], [ %35, %for.cond.3.cleanup.thread_crit_edge ], [ %41, %for.cond.4.cleanup.thread_crit_edge ], [ %47, %for.cond.5.cleanup.thread_crit_edge ], [ %53, %for.cond.6.cleanup.thread_crit_edge ], [ %59, %for.cond.7.cleanup.thread_crit_edge ], [ %65, %for.cond.8.cleanup.thread_crit_edge ]
  %port13 = getelementptr inbounds %struct.serdes_macro, ptr %.lcssa, i32 0, i32 1
  %68 = ptrtoint ptr %port13 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %5, ptr %port13, align 4
  %69 = ptrtoint ptr %arrayidx6.lcssa to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx6.lcssa, align 4
  br label %cleanup17

cleanup17:                                        ; preds = %cleanup.thread, %for.cond.8.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  %retval.2 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.cleanup17_crit_edge ], [ %70, %cleanup.thread ], [ inttoptr (i32 -19 to ptr), %for.cond.8.cleanup17_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serdes_set_mode(ptr nocapture noundef readonly %phy, i32 noundef %mode, i32 noundef %submode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %mode)
  %cmp.not = icmp eq i32 %mode, 15
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %submode)
  %cmp1 = icmp eq i32 %submode, 22
  %spec.select = select i1 %cmp1, i32 2500, i32 1000
  %2 = getelementptr inbounds %struct.serdes_macro, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 4
  %4 = add i32 %submode, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %5 = icmp ult i32 %4, 2
  %submode.addr.0 = select i1 %5, i32 4, i32 %submode
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 4
  %port = getelementptr inbounds %struct.serdes_macro, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.091 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [18 x %struct.serdes_mux], ptr @lan966x_serdes_muxes, i32 0, i32 %i.091
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp12.not = icmp eq i8 %7, %9
  br i1 %cmp12.not, label %lor.lhs.false19, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false19:                                  ; preds = %for.body
  %submode21 = getelementptr [18 x %struct.serdes_mux], ptr @lan966x_serdes_muxes, i32 0, i32 %i.091, i32 3
  %10 = ptrtoint ptr %submode21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %submode21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %submode.addr.0, i32 %11)
  %cmp22.not = icmp eq i32 %submode.addr.0, %11
  br i1 %cmp22.not, label %lor.lhs.false24, label %lor.lhs.false19.for.inc_crit_edge

lor.lhs.false19.for.inc_crit_edge:                ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false24:                                  ; preds = %lor.lhs.false19
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %port26 = getelementptr [18 x %struct.serdes_mux], ptr @lan966x_serdes_muxes, i32 0, i32 %i.091, i32 1
  %14 = ptrtoint ptr %port26 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port26, align 1
  %conv27 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv27)
  %cmp28.not = icmp eq i32 %13, %conv27
  br i1 %cmp28.not, label %if.end31, label %lor.lhs.false24.for.inc_crit_edge

lor.lhs.false24.for.inc_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end31:                                         ; preds = %lor.lhs.false24
  %ctrl = getelementptr inbounds %struct.serdes_macro, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 104
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !49
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  %mux = getelementptr [18 x %struct.serdes_mux], ptr @lan966x_serdes_muxes, i32 0, i32 %i.091, i32 5
  %22 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mux, align 4
  %or = or i32 %23, %21
  %mask = getelementptr [18 x %struct.serdes_mux], ptr @lan966x_serdes_muxes, i32 0, i32 %i.091, i32 4
  %24 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask, align 4
  %26 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 104
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !49
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %neg.i = xor i32 %25, -1
  %and.i = and i32 %31, %neg.i
  %and2.i = and i32 %25, %or
  %or.i = or i32 %and.i, %and2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %32) #6, !srcloc !54
  %mode40 = getelementptr inbounds %struct.serdes_macro, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %mode40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %submode.addr.0, ptr %mode40, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %1, align 4
  %conv42 = zext i8 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp43 = icmp ult i8 %35, 2
  br i1 %cmp43, label %if.end31.cleanup_crit_edge, label %if.end46

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %35)
  %cmp49 = icmp ult i8 %35, 6
  br i1 %cmp49, label %if.then51, label %if.end56

if.then51:                                        ; preds = %if.end46
  %sub = add nsw i32 %conv42, -3
  %36 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctrl, align 4
  %ref125.i = getelementptr inbounds %struct.serdes_ctrl, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %ref125.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ref125.i, align 4
  %40 = and i32 %i.091, 1073741816
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.i = icmp eq i32 %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %cmp.i, label %sw.bb.i.i.i.i, label %sw.bb5.i.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %conf.sroa.7.10.insert.shift.i = select i1 %tobool.not.i, i32 0, i32 131072
  %spec.select47.i.i.i = select i1 %tobool.not.i, i32 100, i32 40
  br label %do.end282.i.i.i

sw.bb5.i.i.i.i:                                   ; preds = %if.then51
  %41 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %42)
  %cmp.i.i.i.i = icmp eq i32 %42, 2500
  br i1 %tobool.not.i, label %if.else23.i.i.i.i, label %if.then8.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %sw.bb5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i.i = select i1 %cmp.i.i.i.i, i32 50, i32 40
  %conv15.i.i.i.i = select i1 %cmp.i.i.i.i, i8 1, i8 2
  br label %do.end282.i.i.i

if.else23.i.i.i.i:                                ; preds = %sw.bb5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv28.i.i.i.i = select i1 %cmp.i.i.i.i, i32 125, i32 100
  %conv35.i.i.i.i = select i1 %cmp.i.i.i.i, i8 1, i8 2
  br label %do.end282.i.i.i

do.end282.i.i.i:                                  ; preds = %if.else23.i.i.i.i, %if.then8.i.i.i.i, %sw.bb.i.i.i.i
  %shl.i.i.i = phi i32 [ 1024, %if.else23.i.i.i.i ], [ 1024, %if.then8.i.i.i.i ], [ 0, %sw.bb.i.i.i.i ]
  %sd6g40_mode.sroa.16.1.ph.i.i.i = phi i8 [ %conv35.i.i.i.i, %if.else23.i.i.i.i ], [ %conv15.i.i.i.i, %if.then8.i.i.i.i ], [ 0, %sw.bb.i.i.i.i ]
  %sd6g40_mode.sroa.11.1.ph.i.i.i = phi i32 [ 0, %if.else23.i.i.i.i ], [ 131072, %if.then8.i.i.i.i ], [ %conf.sroa.7.10.insert.shift.i, %sw.bb.i.i.i.i ]
  %sd6g40_mode.sroa.6.1.ph.i.i.i = phi i32 [ %conv28.i.i.i.i, %if.else23.i.i.i.i ], [ %conv.i.i.i.i, %if.then8.i.i.i.i ], [ %spec.select47.i.i.i, %sw.bb.i.i.i.i ]
  %43 = shl nuw i8 %sd6g40_mode.sroa.16.1.ph.i.i.i, 6
  %shl43.i.i.i = zext i8 %43 to i32
  %or.i.i.i = or i32 %shl.i.i.i, %shl43.i.i.i
  %conv70.i.i.i = zext i8 %sd6g40_mode.sroa.16.1.ph.i.i.i to i32
  %shl71.i.i.i = shl nuw nsw i32 %conv70.i.i.i, 16
  %or73.i.i.i = or i32 %or.i.i.i, %shl71.i.i.i
  %44 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %37, align 4
  %mul.i.i.i = shl nsw i32 %sub, 5
  %add.i.i.i = or i32 %mul.i.i.i, 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %45, i32 %add.i.i.i
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %47 = and i32 %46, 914028799
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #6
  %or.i.i.i.i = or i32 %48, %or73.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %49 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %49) #6, !srcloc !54
  %50 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctrl, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %add258.i.i.i = or i32 %mul.i.i.i, 16
  %add.ptr.i694.i.i.i = getelementptr i8, ptr %53, i32 %add258.i.i.i
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i694.i.i.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %55 = and i32 %54, -2130706945
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #6
  %and2.i696.i.i.i = or i32 %sd6g40_mode.sroa.6.1.ph.i.i.i, %sd6g40_mode.sroa.11.1.ph.i.i.i
  %or.i697.i.i.i = or i32 %and2.i696.i.i.i, %56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %57 = tail call i32 @llvm.bswap.i32(i32 %or.i697.i.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i694.i.i.i, i32 %57) #6, !srcloc !54
  %58 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctrl, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %add.ptr.i698.i.i.i = getelementptr i8, ptr %61, i32 %add.i.i.i
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i698.i.i.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %63 = and i32 %62, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i698.i.i.i, i32 %63) #6, !srcloc !54
  %64 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ctrl, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %add.ptr.i701.i.i.i = getelementptr i8, ptr %67, i32 %add258.i.i.i
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i701.i.i.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %69 = or i32 %68, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i701.i.i.i, i32 %69) #6, !srcloc !54
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %70 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctrl, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %add.ptr.i704.i.i.i = getelementptr i8, ptr %73, i32 %add.i.i.i
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i704.i.i.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %75 = and i32 %74, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i704.i.i.i, i32 %75) #6, !srcloc !54
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %76 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ctrl, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %add.ptr.i706.i.i.i = getelementptr i8, ptr %79, i32 %add258.i.i.i
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i706.i.i.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %81 = or i32 %80, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i706.i.i.i, i32 %81) #6, !srcloc !54
  tail call void @usleep_range_state(i32 noundef 7000, i32 noundef 8000, i32 noundef 2) #6
  %82 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ctrl, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %add364.i.i.i = or i32 %mul.i.i.i, 20
  %add.ptr.i.i.i = getelementptr i8, ptr %85, i32 %add364.i.i.i
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  %87 = and i32 %86, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.not.not.i.i.i = icmp eq i32 %87, 0
  %88 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ctrl, align 4
  br i1 %cmp.not.not.i.i.i, label %do.end389.i.i.i, label %do.end406.i.i.i

do.end389.i.i.i:                                  ; preds = %do.end282.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i.i = getelementptr inbounds %struct.serdes_ctrl, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.1, i32 noundef %sub, i32 noundef 0) #9
  br label %cleanup

do.end406.i.i.i:                                  ; preds = %do.end282.i.i.i
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %89, align 4
  %add.ptr.i709.i.i.i = getelementptr i8, ptr %93, i32 %add.i.i.i
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i709.i.i.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %95 = or i32 %94, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i709.i.i.i, i32 %95) #6, !srcloc !54
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %96 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ctrl, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %add.ptr422.i.i.i = getelementptr i8, ptr %99, i32 %add364.i.i.i
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr422.i.i.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %101 = and i32 %100, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp444.not.not.i.i.i = icmp eq i32 %101, 0
  %102 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ctrl, align 4
  br i1 %cmp444.not.not.i.i.i, label %do.end449.i.i.i, label %do.end467.i.i.i

do.end449.i.i.i:                                  ; preds = %do.end406.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev451.i.i.i = getelementptr inbounds %struct.serdes_ctrl, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %dev451.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev451.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.7, i32 noundef %sub, i32 noundef 0) #9
  br label %cleanup

do.end467.i.i.i:                                  ; preds = %do.end406.i.i.i
  %106 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %103, align 4
  %add.ptr.i712.i.i.i = getelementptr i8, ptr %107, i32 %add.i.i.i
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i712.i.i.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %109 = or i32 %108, 541065216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i712.i.i.i, i32 %109) #6, !srcloc !54
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %110 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ctrl, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %add.ptr500.i.i.i = getelementptr i8, ptr %113, i32 %add364.i.i.i
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr500.i.i.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %115 = and i32 %114, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp522.not.not.i.i.i = icmp eq i32 %115, 0
  %116 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ctrl, align 4
  br i1 %cmp522.not.not.i.i.i, label %do.end527.i.i.i, label %if.end530.i.i.i

do.end527.i.i.i:                                  ; preds = %do.end467.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev529.i.i.i = getelementptr inbounds %struct.serdes_ctrl, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %dev529.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev529.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.10, i32 noundef %sub, i32 noundef 0) #9
  br label %cleanup

if.end530.i.i.i:                                  ; preds = %do.end467.i.i.i
  %120 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %117, align 4
  %add.ptr539.i.i.i = getelementptr i8, ptr %121, i32 %add364.i.i.i
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr539.i.i.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %123 = and i32 %122, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp561.not.not.i.i.i = icmp eq i32 %123, 0
  %124 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ctrl, align 4
  br i1 %cmp561.not.not.i.i.i, label %do.end566.i.i.i, label %do.end584.i.i.i

do.end566.i.i.i:                                  ; preds = %if.end530.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev568.i.i.i = getelementptr inbounds %struct.serdes_ctrl, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %dev568.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev568.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.13, i32 noundef %sub, i32 noundef 0) #9
  br label %cleanup

do.end584.i.i.i:                                  ; preds = %if.end530.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %128 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %125, align 4
  %add.ptr.i715.i.i.i = getelementptr i8, ptr %129, i32 %add.i.i.i
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i715.i.i.i) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  %131 = or i32 %130, 68157440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i715.i.i.i, i32 %131) #6, !srcloc !54
  br label %cleanup

if.end56:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %35)
  %cmp59 = icmp ult i8 %35, 9
  %. = select i1 %cmp59, i32 0, i32 -95
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false24.for.inc_crit_edge, %lor.lhs.false19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.091, 1
  %exitcond.not = icmp eq i32 %inc, 18
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end56, %do.end584.i.i.i, %do.end566.i.i.i, %do.end527.i.i.i, %do.end449.i.i.i, %do.end389.i.i.i, %if.end31.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ], [ %., %if.end56 ], [ -5, %do.end389.i.i.i ], [ -5, %do.end449.i.i.i ], [ -5, %do.end527.i.i.i ], [ -5, %do.end566.i.i.i ], [ 0, %do.end584.i.i.i ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_lan966x_serdes__446_541_mscc_lan966x_serdes_init6, !1, !"__initcall__kmod_lan966x_serdes__446_541_mscc_lan966x_serdes_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/microchip/lan966x_serdes.c", i32 541, i32 1}
!2 = !{ptr @__exitcall_mscc_lan966x_serdes_exit, !1, !"__exitcall_mscc_lan966x_serdes_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description447, !4, !"__UNIQUE_ID_description447", i1 false, i1 false}
!4 = !{!"../drivers/phy/microchip/lan966x_serdes.c", i32 543, i32 1}
!5 = !{ptr @__UNIQUE_ID_author448, !6, !"__UNIQUE_ID_author448", i1 false, i1 false}
!6 = !{!"../drivers/phy/microchip/lan966x_serdes.c", i32 544, i32 1}
!7 = !{ptr @__UNIQUE_ID_file449, !8, !"__UNIQUE_ID_file449", i1 false, i1 false}
!8 = !{!"../drivers/phy/microchip/lan966x_serdes.c", i32 545, i32 1}
!9 = !{ptr @__UNIQUE_ID_license450, !8, !"__UNIQUE_ID_license450", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/microchip/lan966x_serdes.c", i32 536, i32 11}
!12 = !{ptr @mscc_lan966x_serdes, !13, !"mscc_lan966x_serdes", i1 false, i1 false}
!13 = !{!"../drivers/phy/microchip/lan966x_serdes.c", i32 533, i32 31}
!14 = !{ptr @serdes_ops, !15, !"serdes_ops", i1 false, i1 false}
!15 = !{!"../drivers/phy/microchip/lan966x_serdes.c", i32 435, i32 29}
!16 = !{ptr @lan966x_serdes_muxes, !17, !"lan966x_serdes_muxes", i1 false, i1 false}
!17 = !{!"../drivers/phy/microchip/lan966x_serdes.c", i32 65, i32 32}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/phy/microchip/lan966x_serdes.c", i32 225, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @lan966x_sd6g40_reg_cfg._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @lan966x_sd6g40_reg_cfg._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/microchip/lan966x_serdes.c", i32 240, i32 3}
!28 = !{ptr @lan966x_sd6g40_reg_cfg._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @lan966x_sd6g40_reg_cfg._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/phy/microchip/lan966x_serdes.c", i32 258, i32 3}
!32 = !{ptr @lan966x_sd6g40_reg_cfg._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @lan966x_sd6g40_reg_cfg._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/phy/microchip/lan966x_serdes.c", i32 268, i32 3}
!36 = !{ptr @lan966x_sd6g40_reg_cfg._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @lan966x_sd6g40_reg_cfg._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @serdes_ids, !39, !"serdes_ids", i1 false, i1 false}
!39 = !{!"../drivers/phy/microchip/lan966x_serdes.c", i32 527, i32 34}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 6826065}
!50 = !{i64 2156830609}
!51 = !{i64 2156828992}
!52 = !{i64 2156237466}
!53 = !{i64 2156237673}
!54 = !{i64 6825647}
!55 = !{i64 2156656334}
!56 = !{i64 2156697891}
!57 = !{i64 2156754004}
!58 = !{i64 2156772423}
