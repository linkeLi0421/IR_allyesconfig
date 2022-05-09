; ModuleID = '/llk/IR_all_yes/drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c_pt.bc'
source_filename = "../drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.mcp251xfd_priv = type { %struct.can_priv, %struct.can_rx_offload, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [44 x i8], [1 x %struct.mcp251xfd_tef_ring], [1 x %struct.mcp251xfd_tx_ring], [1 x ptr], i8, %struct.mcp251xfd_ecc, %struct.mcp251xfd_regs_status, %struct.cyclecounter, %struct.timecounter, %struct.delayed_work, ptr, ptr, ptr, ptr, %struct.mcp251xfd_devtype_data, %struct.can_berr_counter, [40 x i8] }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.can_rx_offload = type { ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, i32, i32, i32, %struct.napi_struct, i8 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mcp251xfd_tef_ring = type { i32, i32, [120 x i8], %union.mcp251xfd_write_reg_buf, [8 x %struct.spi_transfer] }
%union.mcp251xfd_write_reg_buf = type { %struct.anon.140, [122 x i8] }
%struct.anon.140 = type { %struct.mcp251xfd_buf_cmd, [4 x i8] }
%struct.mcp251xfd_buf_cmd = type { i16 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.mcp251xfd_tx_ring = type { i32, i32, i16, i8, i8, [116 x i8], [8 x %struct.mcp251xfd_tx_obj], %union.mcp251xfd_write_reg_buf }
%struct.mcp251xfd_tx_obj = type { %struct.spi_message, [2 x %struct.spi_transfer], [8 x i8], %union.mcp251xfd_tx_obj_load_buf }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%union.mcp251xfd_tx_obj_load_buf = type { %struct.anon.143, [51 x i8] }
%struct.anon.143 = type <{ %struct.mcp251xfd_buf_cmd_crc, %struct.mcp251xfd_hw_tx_obj_raw, i16 }>
%struct.mcp251xfd_buf_cmd_crc = type <{ i16, i8 }>
%struct.mcp251xfd_hw_tx_obj_raw = type { i32, i32, [64 x i8] }
%struct.mcp251xfd_ecc = type { i32, i32 }
%struct.mcp251xfd_regs_status = type { i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mcp251xfd_devtype_data = type { i32, i32 }
%struct.can_berr_counter = type { i16, i16 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mcp251xfd_map_buf_nocrc = type { %struct.mcp251xfd_buf_cmd, [256 x i8], [126 x i8] }
%struct.mcp251xfd_map_buf_crc = type <{ %struct.mcp251xfd_buf_cmd_crc, [252 x i8], i16, [127 x i8] }>

@mcp251xfd_regmap_init_nocrc._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mcp251xfd_bus_nocrc = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @mcp251xfd_regmap_nocrc_write, ptr @mcp251xfd_regmap_nocrc_gather_write, ptr null, ptr null, ptr @mcp251xfd_regmap_nocrc_update_bits, ptr @mcp251xfd_regmap_nocrc_read, ptr null, ptr null, ptr null, i8 0, i32 1, i32 2, i32 256, i32 256, i8 0 }, [32 x i8] zeroinitializer }, align 32
@mcp251xfd_regmap_nocrc = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.3, i32 16, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 4092, ptr @mcp251xfd_reg_table, ptr @mcp251xfd_reg_table, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 12288, i32 8192, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mcp251xfd_regmap:477:(&mcp251xfd_regmap_nocrc)->lock\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Status of reg 0x%04x unknown.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nocrc\00", [26 x i8] zeroinitializer }, align 32
@mcp251xfd_reg_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @mcp251xfd_reg_table_yes_range, i32 3, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@mcp251xfd_reg_table_yes_range = internal constant { [3 x %struct.regmap_range], [40 x i8] } { [3 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 748 }, %struct.regmap_range { i32 1024, i32 3068 }, %struct.regmap_range { i32 3584, i32 3604 }], [40 x i8] zeroinitializer }, align 32
@mcp251xfd_regmap_init_crc._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mcp251xfd_bus_crc = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @mcp251xfd_regmap_crc_write, ptr @mcp251xfd_regmap_crc_gather_write, ptr null, ptr null, ptr null, ptr @mcp251xfd_regmap_crc_read, ptr null, ptr null, ptr null, i8 0, i32 3, i32 2, i32 252, i32 252, i8 0 }, [32 x i8] zeroinitializer }, align 32
@mcp251xfd_regmap_crc = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.7, i32 16, i32 4, i32 16, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 4092, ptr @mcp251xfd_reg_table, ptr @mcp251xfd_reg_table, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"mcp251xfd_regmap:530:(&mcp251xfd_regmap_crc)->lock\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"CRC read error at address 0x%04x (length=%zd, data=%*ph, CRC=0x%04x) retrying.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"CRC read error at address 0x%04x (length=%zd, data=%*ph, CRC=0x%04x).\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"crc\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 28, i64 64, i64 104, i64 108, i64 464, i64 3584, i64 3592, i64 3596, i64 3600]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 16, i64 16, i64 3584]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"mcp251xfd_bus_nocrc\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 423, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant [23 x i8] c"mcp251xfd_regmap_nocrc\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 407, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 476, i32 9 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 66, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 408, i32 10 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"mcp251xfd_reg_table\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 402, i32 41 }
@___asan_gen_.39 = private unnamed_addr constant [30 x i8] c"mcp251xfd_reg_table_yes_range\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 396, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"mcp251xfd_bus_crc\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 446, i32 32 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"mcp251xfd_regmap_crc\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 434, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 529, i32 9 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 377, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 384, i32 7 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [52 x i8] c"../drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 435, i32 10 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @mcp251xfd_regmap_init_nocrc._key, ptr @mcp251xfd_bus_nocrc, ptr @mcp251xfd_regmap_nocrc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mcp251xfd_reg_table, ptr @mcp251xfd_reg_table_yes_range, ptr @mcp251xfd_regmap_init_crc._key, ptr @mcp251xfd_bus_crc, ptr @mcp251xfd_regmap_crc, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_regmap_init_nocrc._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_bus_nocrc to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_regmap_nocrc to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_reg_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_reg_table_yes_range to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_regmap_init_crc._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_bus_crc to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp251xfd_regmap_crc to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcp251xfd_regmap_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 27, i32 1
  %0 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks.i, align 4
  %2 = and i32 %1, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %.not = icmp eq i32 %2, 6
  br i1 %.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %map_nocrc.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 5
  %3 = ptrtoint ptr %map_nocrc.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map_nocrc.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then.i, label %if.then.if.end6.i_crit_edge

if.then.if.end6.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then.i:                                        ; preds = %if.then
  %spi.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %5 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spi.i, align 4
  %call.i = tail call ptr @__devm_regmap_init(ptr noundef %6, ptr noundef nonnull @mcp251xfd_bus_nocrc, ptr noundef %6, ptr noundef nonnull @mcp251xfd_regmap_nocrc, ptr noundef nonnull @mcp251xfd_regmap_init_nocrc._key, ptr noundef nonnull @.str) #5
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mcp251xfd_regmap_init_nocrc.exit, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %map_nocrc.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %map_nocrc.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %cleanup.thread.i, %if.then.if.end6.i_crit_edge
  %map_buf_nocrc_rx.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 6
  %8 = ptrtoint ptr %map_buf_nocrc_rx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map_buf_nocrc_rx.i, align 8
  %tobool7.not.i = icmp eq ptr %9, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end6.i.if.end17.i_crit_edge

if.end6.i.if.end17.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then8.i:                                       ; preds = %if.end6.i
  %spi9.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %10 = ptrtoint ptr %spi9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi9.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef 384, i32 noundef 3520) #5
  %12 = ptrtoint ptr %map_buf_nocrc_rx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %map_buf_nocrc_rx.i, align 8
  %tobool14.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool14.not.i, label %if.then8.i.cleanup_crit_edge, label %if.then8.i.if.end17.i_crit_edge

if.then8.i.if.end17.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.then8.i.cleanup_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17.i:                                       ; preds = %if.then8.i.if.end17.i_crit_edge, %if.end6.i.if.end17.i_crit_edge
  %map_buf_nocrc_tx.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 7
  %13 = ptrtoint ptr %map_buf_nocrc_tx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map_buf_nocrc_tx.i, align 4
  %tobool18.not.i = icmp eq ptr %14, null
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end17.i.if.end28.i_crit_edge

if.end17.i.if.end28.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.then19.i:                                      ; preds = %if.end17.i
  %spi20.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %15 = ptrtoint ptr %spi20.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spi20.i, align 4
  %call.i59.i = tail call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef 384, i32 noundef 3520) #5
  %17 = ptrtoint ptr %map_buf_nocrc_tx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i59.i, ptr %map_buf_nocrc_tx.i, align 4
  %tobool25.not.i = icmp eq ptr %call.i59.i, null
  br i1 %tobool25.not.i, label %if.then19.i.cleanup_crit_edge, label %if.then19.i.if.end28.i_crit_edge

if.then19.i.if.end28.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.then19.i.cleanup_crit_edge:                    ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28.i:                                       ; preds = %if.then19.i.if.end28.i_crit_edge, %if.end17.i.if.end28.i_crit_edge
  %18 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool29.not.i, label %if.then30.i, label %if.end28.i.if.end32.i_crit_edge

if.end28.i.if.end32.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i

if.then30.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %map_nocrc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map_nocrc.i, align 4
  %map_reg.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %22 = ptrtoint ptr %map_reg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %map_reg.i, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.then30.i, %if.end28.i.if.end32.i_crit_edge
  %and35.i = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.then37.i, label %if.end32.i.if.end3_crit_edge

if.end32.i.if.end3_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then37.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %map_nocrc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map_nocrc.i, align 4
  %map_rx.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 4
  %25 = ptrtoint ptr %map_rx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %map_rx.i, align 16
  br label %if.end3

mcp251xfd_regmap_init_nocrc.exit:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.else:                                          ; preds = %entry
  %map_buf_nocrc_rx.i21 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 6
  %27 = ptrtoint ptr %map_buf_nocrc_rx.i21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map_buf_nocrc_rx.i21, align 8
  %tobool.not.i22 = icmp eq ptr %28, null
  br i1 %tobool.not.i22, label %if.else.if.end.i_crit_edge, label %if.then.i24

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i24:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %spi.i23 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %29 = ptrtoint ptr %spi.i23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %spi.i23, align 4
  tail call void @devm_kfree(ptr noundef %30, ptr noundef nonnull %28) #5
  %31 = ptrtoint ptr %map_buf_nocrc_rx.i21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %map_buf_nocrc_rx.i21, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i24, %if.else.if.end.i_crit_edge
  %map_buf_nocrc_tx.i25 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 7
  %32 = ptrtoint ptr %map_buf_nocrc_tx.i25 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %map_buf_nocrc_tx.i25, align 4
  %tobool3.not.i = icmp eq ptr %33, null
  br i1 %tobool3.not.i, label %if.end.i.if.end3_crit_edge, label %if.then4.i

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %spi5.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %34 = ptrtoint ptr %spi5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spi5.i, align 4
  tail call void @devm_kfree(ptr noundef %35, ptr noundef nonnull %33) #5
  %36 = ptrtoint ptr %map_buf_nocrc_tx.i25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %map_buf_nocrc_tx.i25, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then4.i, %if.end.i.if.end3_crit_edge, %if.then37.i, %if.end32.i.if.end3_crit_edge
  %37 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %quirks.i, align 4
  %39 = and i32 %38, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %.not79 = icmp eq i32 %39, 0
  br i1 %.not79, label %if.else10, label %if.then5

if.then5:                                         ; preds = %if.end3
  %map_crc.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 8
  %40 = ptrtoint ptr %map_crc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %map_crc.i, align 64
  %tobool.not.i27 = icmp eq ptr %41, null
  br i1 %tobool.not.i27, label %if.then.i31, label %if.then5.if.end6.i35_crit_edge

if.then5.if.end6.i35_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i35

if.then.i31:                                      ; preds = %if.then5
  %spi.i28 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %42 = ptrtoint ptr %spi.i28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %spi.i28, align 4
  %call.i29 = tail call ptr @__devm_regmap_init(ptr noundef %43, ptr noundef nonnull @mcp251xfd_bus_crc, ptr noundef %43, ptr noundef nonnull @mcp251xfd_regmap_crc, ptr noundef nonnull @mcp251xfd_regmap_init_crc._key, ptr noundef nonnull @.str.4) #5
  %cmp.i.i30 = icmp ugt ptr %call.i29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i30, label %mcp251xfd_regmap_init_crc.exit, label %cleanup.thread.i32

cleanup.thread.i32:                               ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %map_crc.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i29, ptr %map_crc.i, align 64
  br label %if.end6.i35

if.end6.i35:                                      ; preds = %cleanup.thread.i32, %if.then5.if.end6.i35_crit_edge
  %map_buf_crc_rx.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 9
  %45 = ptrtoint ptr %map_buf_crc_rx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %map_buf_crc_rx.i, align 4
  %tobool7.not.i34 = icmp eq ptr %46, null
  br i1 %tobool7.not.i34, label %if.then8.i39, label %if.end6.i35.if.end17.i41_crit_edge

if.end6.i35.if.end17.i41_crit_edge:               ; preds = %if.end6.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i41

if.then8.i39:                                     ; preds = %if.end6.i35
  %spi9.i36 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %47 = ptrtoint ptr %spi9.i36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %spi9.i36, align 4
  %call.i.i37 = tail call noalias ptr @devm_kmalloc(ptr noundef %48, i32 noundef 384, i32 noundef 3520) #5
  %49 = ptrtoint ptr %map_buf_crc_rx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i.i37, ptr %map_buf_crc_rx.i, align 4
  %tobool14.not.i38 = icmp eq ptr %call.i.i37, null
  br i1 %tobool14.not.i38, label %if.then8.i39.cleanup_crit_edge, label %if.then8.i39.if.end17.i41_crit_edge

if.then8.i39.if.end17.i41_crit_edge:              ; preds = %if.then8.i39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i41

if.then8.i39.cleanup_crit_edge:                   ; preds = %if.then8.i39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17.i41:                                     ; preds = %if.then8.i39.if.end17.i41_crit_edge, %if.end6.i35.if.end17.i41_crit_edge
  %map_buf_crc_tx.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 10
  %50 = ptrtoint ptr %map_buf_crc_tx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %map_buf_crc_tx.i, align 8
  %tobool18.not.i40 = icmp eq ptr %51, null
  br i1 %tobool18.not.i40, label %if.then19.i45, label %if.end17.i41.if.end28.i49_crit_edge

if.end17.i41.if.end28.i49_crit_edge:              ; preds = %if.end17.i41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i49

if.then19.i45:                                    ; preds = %if.end17.i41
  %spi20.i42 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %52 = ptrtoint ptr %spi20.i42 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %spi20.i42, align 4
  %call.i59.i43 = tail call noalias ptr @devm_kmalloc(ptr noundef %53, i32 noundef 384, i32 noundef 3520) #5
  %54 = ptrtoint ptr %map_buf_crc_tx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i59.i43, ptr %map_buf_crc_tx.i, align 8
  %tobool25.not.i44 = icmp eq ptr %call.i59.i43, null
  br i1 %tobool25.not.i44, label %if.then19.i45.cleanup_crit_edge, label %if.then19.i45.if.end28.i49_crit_edge

if.then19.i45.if.end28.i49_crit_edge:             ; preds = %if.then19.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i49

if.then19.i45.cleanup_crit_edge:                  ; preds = %if.then19.i45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28.i49:                                     ; preds = %if.then19.i45.if.end28.i49_crit_edge, %if.end17.i41.if.end28.i49_crit_edge
  %55 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %quirks.i, align 4
  %and.i47 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i47)
  %tobool29.not.i48 = icmp eq i32 %and.i47, 0
  br i1 %tobool29.not.i48, label %if.end28.i49.if.end32.i54_crit_edge, label %if.then30.i51

if.end28.i49.if.end32.i54_crit_edge:              ; preds = %if.end28.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i54

if.then30.i51:                                    ; preds = %if.end28.i49
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %map_crc.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %map_crc.i, align 64
  %map_reg.i50 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 3
  %59 = ptrtoint ptr %map_reg.i50 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %map_reg.i50, align 4
  br label %if.end32.i54

if.end32.i54:                                     ; preds = %if.then30.i51, %if.end28.i49.if.end32.i54_crit_edge
  %and35.i52 = and i32 %56, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i52)
  %tobool36.not.i53 = icmp eq i32 %and35.i52, 0
  br i1 %tobool36.not.i53, label %if.end32.i54.cleanup_crit_edge, label %if.then37.i56

if.end32.i54.cleanup_crit_edge:                   ; preds = %if.end32.i54
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then37.i56:                                    ; preds = %if.end32.i54
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %map_crc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %map_crc.i, align 64
  %map_rx.i55 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 4
  %62 = ptrtoint ptr %map_rx.i55 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %map_rx.i55, align 16
  br label %cleanup

mcp251xfd_regmap_init_crc.exit:                   ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %call.i29 to i32
  br label %cleanup

if.else10:                                        ; preds = %if.end3
  %map_buf_crc_rx.i58 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 9
  %64 = ptrtoint ptr %map_buf_crc_rx.i58 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %map_buf_crc_rx.i58, align 4
  %tobool.not.i59 = icmp eq ptr %65, null
  br i1 %tobool.not.i59, label %if.else10.if.end.i64_crit_edge, label %if.then.i61

if.else10.if.end.i64_crit_edge:                   ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i64

if.then.i61:                                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #7
  %spi.i60 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %66 = ptrtoint ptr %spi.i60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %spi.i60, align 4
  tail call void @devm_kfree(ptr noundef %67, ptr noundef nonnull %65) #5
  %68 = ptrtoint ptr %map_buf_crc_rx.i58 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %map_buf_crc_rx.i58, align 4
  br label %if.end.i64

if.end.i64:                                       ; preds = %if.then.i61, %if.else10.if.end.i64_crit_edge
  %map_buf_crc_tx.i62 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 10
  %69 = ptrtoint ptr %map_buf_crc_tx.i62 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %map_buf_crc_tx.i62, align 8
  %tobool3.not.i63 = icmp eq ptr %70, null
  br i1 %tobool3.not.i63, label %if.end.i64.cleanup_crit_edge, label %if.then4.i66

if.end.i64.cleanup_crit_edge:                     ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4.i66:                                     ; preds = %if.end.i64
  call void @__sanitizer_cov_trace_pc() #7
  %spi5.i65 = getelementptr inbounds %struct.mcp251xfd_priv, ptr %priv, i32 0, i32 11
  %71 = ptrtoint ptr %spi5.i65 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %spi5.i65, align 4
  tail call void @devm_kfree(ptr noundef %72, ptr noundef nonnull %70) #5
  %73 = ptrtoint ptr %map_buf_crc_tx.i62 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %map_buf_crc_tx.i62, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i66, %if.end.i64.cleanup_crit_edge, %mcp251xfd_regmap_init_crc.exit, %if.then37.i56, %if.end32.i54.cleanup_crit_edge, %if.then19.i45.cleanup_crit_edge, %if.then8.i39.cleanup_crit_edge, %mcp251xfd_regmap_init_nocrc.exit, %if.then19.i.cleanup_crit_edge, %if.then8.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %mcp251xfd_regmap_init_nocrc.exit ], [ %63, %mcp251xfd_regmap_init_crc.exit ], [ -12, %if.then8.i.cleanup_crit_edge ], [ -12, %if.then19.i.cleanup_crit_edge ], [ -12, %if.then8.i39.cleanup_crit_edge ], [ -12, %if.then19.i45.cleanup_crit_edge ], [ 0, %if.end32.i54.cleanup_crit_edge ], [ 0, %if.then37.i56 ], [ 0, %if.then4.i66 ], [ 0, %if.end.i64.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251xfd_regmap_nocrc_write(ptr noundef %context, ptr noundef %data, i32 noundef %count) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %0 = getelementptr inbounds i8, ptr %t.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 92)
  %2 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %3 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %count, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %4 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %11 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251xfd_regmap_nocrc_gather_write(ptr noundef %context, ptr nocapture noundef readonly %reg, i32 noundef %reg_len, ptr nocapture noundef readonly %val, i32 noundef %val_len) #0 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfer = alloca [1 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %map_buf_nocrc_tx = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %map_buf_nocrc_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_buf_nocrc_tx, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer) #5
  %4 = getelementptr inbounds i8, ptr %xfer, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 92)
  %6 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %xfer, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %add = add i32 %val_len, 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg_len)
  %cmp.not = icmp eq i32 %reg_len, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %reg, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %3, align 128
  %data = getelementptr inbounds %struct.mcp251xfd_map_buf_nocrc, ptr %3, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %data, ptr %val, i32 %val_len)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.spi_sync_transfer.exit_crit_edge

if.end.spi_sync_transfer.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_sync_transfer.exit

if.end.i.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_sync_transfer.exit

spi_sync_transfer.exit:                           ; preds = %if.end.i.i.i.i.i, %if.end.spi_sync_transfer.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_sync_transfer.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %spi_sync_transfer.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251xfd_regmap_nocrc_update_bits(ptr noundef %context, i32 noundef %reg, i32 noundef %mask, i32 noundef %val) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %orig_le32 = alloca i32, align 4
  %tmp_le32 = alloca i32, align 4
  %xfer = alloca [2 x %struct.spi_transfer], align 4
  %msg = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %map_buf_nocrc_rx = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %map_buf_nocrc_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_buf_nocrc_rx, align 8
  %map_buf_nocrc_tx = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %map_buf_nocrc_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_buf_nocrc_tx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig_le32)
  %6 = ptrtoint ptr %orig_le32 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %orig_le32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp_le32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cmp = icmp eq i32 %mask, 0
  br i1 %cmp, label %entry.cleanup59_crit_edge, label %if.end

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup59

if.end:                                           ; preds = %entry
  %and.i = and i32 %mask, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and1.i = and i32 %mask, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.i = icmp eq i32 %and1.i, 0
  %cond.i = zext i1 %tobool2.i to i8
  br label %mcp251xfd_first_byte_set.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and3.i = and i32 %mask, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %cond5.i = select i1 %tobool4.not.i, i8 3, i8 2
  br label %mcp251xfd_first_byte_set.exit

mcp251xfd_first_byte_set.exit:                    ; preds = %cond.false.i, %cond.true.i
  %cond6.i = phi i8 [ %cond.i, %cond.true.i ], [ %cond5.i, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %mask)
  %tobool.not.i99 = icmp ult i32 %mask, 65536
  br i1 %tobool.not.i99, label %cond.false.i105, label %cond.true.i101

cond.true.i101:                                   ; preds = %mcp251xfd_first_byte_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %mask)
  %tobool2.not.i = icmp ult i32 %mask, 16777216
  %cond.i100 = select i1 %tobool2.not.i, i8 2, i8 3
  br label %mcp251xfd_last_byte_set.exit

cond.false.i105:                                  ; preds = %mcp251xfd_first_byte_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %and3.i102 = and i32 %mask, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i102)
  %tobool4.not.i103 = icmp ne i32 %and3.i102, 0
  %cond5.i104 = zext i1 %tobool4.not.i103 to i8
  br label %mcp251xfd_last_byte_set.exit

mcp251xfd_last_byte_set.exit:                     ; preds = %cond.false.i105, %cond.true.i101
  %cond6.i106 = phi i8 [ %cond.i100, %cond.true.i101 ], [ %cond5.i104, %cond.false.i105 ]
  %conv6 = zext i8 %cond6.i to i32
  %sub = sub nsw i8 %cond6.i106, %cond6.i
  %add = add nsw i8 %sub, 1
  %7 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %do.end.i [
    i32 28, label %mcp251xfd_last_byte_set.exit.if.end42_crit_edge
    i32 64, label %mcp251xfd_last_byte_set.exit.if.end42_crit_edge114
    i32 104, label %mcp251xfd_last_byte_set.exit.if.end42_crit_edge115
    i32 464, label %mcp251xfd_last_byte_set.exit.if.end42_crit_edge116
    i32 3600, label %mcp251xfd_last_byte_set.exit.if.end42_crit_edge117
    i32 3592, label %mcp251xfd_last_byte_set.exit.if.end42_crit_edge118
    i32 0, label %mcp251xfd_last_byte_set.exit.if.then9_crit_edge
    i32 108, label %mcp251xfd_last_byte_set.exit.if.then9_crit_edge119
    i32 3584, label %mcp251xfd_last_byte_set.exit.if.then9_crit_edge120
    i32 3596, label %mcp251xfd_last_byte_set.exit.if.then9_crit_edge121
  ]

mcp251xfd_last_byte_set.exit.if.then9_crit_edge121: ; preds = %mcp251xfd_last_byte_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

mcp251xfd_last_byte_set.exit.if.then9_crit_edge120: ; preds = %mcp251xfd_last_byte_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

mcp251xfd_last_byte_set.exit.if.then9_crit_edge119: ; preds = %mcp251xfd_last_byte_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

mcp251xfd_last_byte_set.exit.if.then9_crit_edge:  ; preds = %mcp251xfd_last_byte_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

mcp251xfd_last_byte_set.exit.if.end42_crit_edge118: ; preds = %mcp251xfd_last_byte_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

mcp251xfd_last_byte_set.exit.if.end42_crit_edge117: ; preds = %mcp251xfd_last_byte_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

mcp251xfd_last_byte_set.exit.if.end42_crit_edge116: ; preds = %mcp251xfd_last_byte_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

mcp251xfd_last_byte_set.exit.if.end42_crit_edge115: ; preds = %mcp251xfd_last_byte_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

mcp251xfd_last_byte_set.exit.if.end42_crit_edge114: ; preds = %mcp251xfd_last_byte_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

mcp251xfd_last_byte_set.exit.if.end42_crit_edge:  ; preds = %mcp251xfd_last_byte_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

do.end.i:                                         ; preds = %mcp251xfd_last_byte_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 66, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %reg) #5
  br label %if.then9

if.then9:                                         ; preds = %do.end.i, %mcp251xfd_last_byte_set.exit.if.then9_crit_edge, %mcp251xfd_last_byte_set.exit.if.then9_crit_edge119, %mcp251xfd_last_byte_set.exit.if.then9_crit_edge120, %mcp251xfd_last_byte_set.exit.if.then9_crit_edge121
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer) #5
  %8 = call ptr @memset(ptr %xfer, i32 0, i32 192)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #5
  %9 = getelementptr inbounds i8, ptr %msg, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then9.spi_message_add_tail.exit_crit_edge

if.then9.spi_message_add_tail.exit_crit_edge:     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.then9.spi_message_add_tail.exit_crit_edge
  %quirks = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 27, i32 1
  %19 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %quirks, align 4
  %and = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %21 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %5, ptr %xfer, align 4
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %spi_message_add_tail.exit
  %len13 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %22 = ptrtoint ptr %len13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %len13, align 4
  %data = getelementptr inbounds %struct.mcp251xfd_map_buf_nocrc, ptr %3, i32 0, i32 1
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %data, ptr %rx_buf, align 4
  %conv15 = zext i8 %add to i32
  %len17 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %len17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv15, ptr %len17, align 4
  %transfer_list.i107 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 18
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i109 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i107, ptr noundef %26, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i109, label %if.end.i.i.i111, label %if.then10.if.end30_crit_edge

if.then10.if.end30_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.end.i.i.i111:                                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i107, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i107 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg, ptr %transfer_list.i107, align 4
  %prev3.i.i.i110 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i110, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i107, ptr %26, align 4
  br label %if.end30

if.else:                                          ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %rx_buf22 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %31 = ptrtoint ptr %rx_buf22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %3, ptr %rx_buf22, align 4
  %conv23 = zext i8 %add to i32
  %add24 = add nuw nsw i32 %conv23, 2
  %len26 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %32 = ptrtoint ptr %len26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add24, ptr %len26, align 4
  %data27 = getelementptr inbounds %struct.mcp251xfd_map_buf_nocrc, ptr %5, i32 0, i32 1
  %33 = call ptr @memset(ptr %data27, i32 0, i32 %conv23)
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.end.i.i.i111, %if.then10.if.end30_crit_edge
  %add32 = add i32 %conv6, %reg
  %conv33 = trunc i32 %add32 to i16
  %34 = or i16 %conv33, 12288
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %5, align 1
  %call34 = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %cleanup59.critedge

if.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %data38 = getelementptr inbounds %struct.mcp251xfd_map_buf_nocrc, ptr %3, i32 0, i32 1
  %conv40 = zext i8 %add to i32
  %36 = call ptr @memcpy(ptr %orig_le32, ptr %data38, i32 %conv40)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer) #5
  br label %if.end42

if.end42:                                         ; preds = %if.end37, %mcp251xfd_last_byte_set.exit.if.end42_crit_edge, %mcp251xfd_last_byte_set.exit.if.end42_crit_edge114, %mcp251xfd_last_byte_set.exit.if.end42_crit_edge115, %mcp251xfd_last_byte_set.exit.if.end42_crit_edge116, %mcp251xfd_last_byte_set.exit.if.end42_crit_edge117, %mcp251xfd_last_byte_set.exit.if.end42_crit_edge118
  %mul = shl nuw nsw i32 %conv6, 3
  %shr = lshr i32 %mask, %mul
  %shr46 = lshr i32 %val, %mul
  %37 = ptrtoint ptr %orig_le32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %orig_le32.0.orig_le32.0.orig_le32.0. = load i32, ptr %orig_le32, align 4
  %38 = xor i32 %shr, -1
  %39 = call i32 @llvm.bswap.i32(i32 %38)
  %and47 = and i32 %orig_le32.0.orig_le32.0.orig_le32.0., %39
  %40 = and i32 %shr46, %shr
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %or = or i32 %and47, %41
  %42 = ptrtoint ptr %tmp_le32 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or, ptr %tmp_le32, align 4
  %add51 = add i32 %conv6, %reg
  %conv52 = trunc i32 %add51 to i16
  %43 = or i16 %conv52, 8192
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %43, ptr %5, align 1
  %data53 = getelementptr inbounds %struct.mcp251xfd_map_buf_nocrc, ptr %5, i32 0, i32 1
  %conv55 = zext i8 %add to i32
  %45 = call ptr @memcpy(ptr %data53, ptr %tmp_le32, i32 %conv55)
  %add57 = add nuw nsw i32 %conv55, 2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %46 = getelementptr inbounds i8, ptr %t.i, i32 4
  %47 = call ptr @memset(ptr %46, i32 0, i32 92)
  %48 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %5, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %49 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add57, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %50 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %51 = call ptr @memset(ptr %50, i32 0, i32 40)
  %52 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %54 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %55 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end42.spi_write.exit_crit_edge

if.end42.spi_write.exit_crit_edge:                ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %57 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %59 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end42.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  br label %cleanup59

cleanup59.critedge:                               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer) #5
  br label %cleanup59

cleanup59:                                        ; preds = %cleanup59.critedge, %spi_write.exit, %entry.cleanup59_crit_edge
  %retval.1 = phi i32 [ %call.i.i, %spi_write.exit ], [ -22, %entry.cleanup59_crit_edge ], [ %call34, %cleanup59.critedge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp_le32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig_le32)
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251xfd_regmap_nocrc_read(ptr noundef %context, ptr noundef %reg, i32 noundef %reg_len, ptr noundef %val_buf, i32 noundef %val_len) #0 align 64 {
entry:
  %xfer = alloca [2 x %struct.spi_transfer], align 4
  %msg = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %map_buf_nocrc_rx = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %map_buf_nocrc_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_buf_nocrc_rx, align 8
  %map_buf_nocrc_tx = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %map_buf_nocrc_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_buf_nocrc_tx, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer) #5
  %6 = call ptr @memset(ptr %xfer, i32 0, i32 192)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg_len)
  %cmp.not = icmp eq i32 %reg_len, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = getelementptr inbounds i8, ptr %msg, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.spi_message_add_tail.exit_crit_edge

if.end.spi_message_add_tail.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end.spi_message_add_tail.exit_crit_edge
  %quirks = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 27, i32 1
  %17 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %quirks, align 4
  %and = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %spi_message_add_tail.exit
  %19 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %reg, ptr %xfer, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %len, align 4
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %val_buf, ptr %rx_buf, align 4
  %len9 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %val_len, ptr %len9, align 4
  %transfer_list.i49 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 18
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i51 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i49, ptr noundef %24, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i51, label %if.end.i.i.i53, label %if.then4.if.end17_crit_edge

if.then4.if.end17_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.end.i.i.i53:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i49, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i49 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg, ptr %transfer_list.i49, align 4
  %prev3.i.i.i52 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i52, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i49, ptr %24, align 4
  br label %if.end17

if.else:                                          ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %5, ptr %xfer, align 4
  %rx_buf14 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %30 = ptrtoint ptr %rx_buf14 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %3, ptr %rx_buf14, align 4
  %add = add i32 %val_len, 2
  %len16 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %31 = ptrtoint ptr %len16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add, ptr %len16, align 4
  %32 = ptrtoint ptr %reg to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %reg, align 1
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %5, align 128
  %data = getelementptr inbounds %struct.mcp251xfd_map_buf_nocrc, ptr %5, i32 0, i32 1
  %35 = call ptr @memset(ptr %data, i32 0, i32 %val_len)
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end.i.i.i53, %if.then4.if.end17_crit_edge
  %call18 = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %36 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %quirks, align 4
  %and24 = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %data27 = getelementptr inbounds %struct.mcp251xfd_map_buf_nocrc, ptr %3, i32 0, i32 1
  %38 = call ptr @memcpy(ptr %val_buf, ptr %data27, i32 %val_len)
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call18, %if.end17.cleanup_crit_edge ], [ 0, %if.then26 ], [ 0, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251xfd_regmap_crc_write(ptr noundef %context, ptr nocapture noundef readonly %data, i32 noundef %count) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca [1 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %data, i32 4
  %sub = add i32 %count, -4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %map_buf_crc_tx.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %map_buf_crc_tx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_buf_crc_tx.i, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #5
  %4 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 92)
  %6 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %xfer.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %add1.i = add i32 %count, 1
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add1.i, ptr %len.i, align 4
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %data, align 2
  %add.i = add i32 %count, -1
  %conv.i = trunc i32 %sub to i16
  %10 = or i16 %9, -24576
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %3, align 1
  %conv.i.i = zext i16 %9 to i32
  %12 = add nsw i32 %conv.i.i, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 2045, i32 %12)
  %13 = icmp ult i32 %12, 2045
  %14 = lshr i16 %conv.i, 2
  %len.sink.i.i.i = select i1 %13, i16 %14, i16 %conv.i
  %conv3.i.i.i = trunc i16 %len.sink.i.i.i to i8
  %15 = getelementptr inbounds %struct.mcp251xfd_buf_cmd_crc, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3.i.i.i, ptr %15, align 1
  %data.i = getelementptr inbounds %struct.mcp251xfd_map_buf_crc, ptr %3, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %data.i, ptr %add.ptr, i32 %sub)
  %call4.i = tail call zeroext i16 @mcp251xfd_crc16_compute(ptr noundef %3, i32 noundef %add.i) #5
  %add.ptr.i = getelementptr i8, ptr %data.i, i32 %sub
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %call4.i, ptr %add.ptr.i, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %19 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.mcp251xfd_regmap_crc_gather_write.exit_crit_edge

entry.mcp251xfd_regmap_crc_gather_write.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mcp251xfd_regmap_crc_gather_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %mcp251xfd_regmap_crc_gather_write.exit

mcp251xfd_regmap_crc_gather_write.exit:           ; preds = %if.end.i.i.i.i.i.i, %entry.mcp251xfd_regmap_crc_gather_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #5
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251xfd_regmap_crc_gather_write(ptr noundef %context, ptr nocapture noundef readonly %reg_p, i32 noundef %reg_len, ptr nocapture noundef readonly %val, i32 noundef %val_len) #0 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfer = alloca [1 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %map_buf_crc_tx = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %map_buf_crc_tx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_buf_crc_tx, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer) #5
  %4 = getelementptr inbounds i8, ptr %xfer, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 92)
  %6 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %xfer, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %add1 = add i32 %val_len, 5
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add1, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %reg_len)
  %cmp.not = icmp eq i32 %reg_len, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %reg_p to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %reg_p, align 2
  %add = add i32 %val_len, 3
  %conv = trunc i32 %val_len to i16
  %10 = or i16 %9, -24576
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %3, align 1
  %conv.i = zext i16 %9 to i32
  %12 = add nsw i32 %conv.i, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 2045, i32 %12)
  %13 = icmp ult i32 %12, 2045
  %14 = lshr i16 %conv, 2
  %len.sink.i.i = select i1 %13, i16 %14, i16 %conv
  %conv3.i.i = trunc i16 %len.sink.i.i to i8
  %15 = getelementptr inbounds %struct.mcp251xfd_buf_cmd_crc, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv3.i.i, ptr %15, align 1
  %data = getelementptr inbounds %struct.mcp251xfd_map_buf_crc, ptr %3, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %data, ptr %val, i32 %val_len)
  %call4 = tail call zeroext i16 @mcp251xfd_crc16_compute(ptr noundef %3, i32 noundef %add) #5
  %add.ptr = getelementptr i8, ptr %data, i32 %val_len
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %call4, ptr %add.ptr, align 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  %19 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.spi_sync_transfer.exit_crit_edge

if.end.spi_sync_transfer.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_sync_transfer.exit

if.end.i.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_sync_transfer.exit

spi_sync_transfer.exit:                           ; preds = %if.end.i.i.i.i.i, %if.end.spi_sync_transfer.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_sync_transfer.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %spi_sync_transfer.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp251xfd_regmap_crc_read(ptr nocapture noundef readonly %context, ptr nocapture noundef readonly %reg_p, i32 noundef %reg_len, ptr nocapture noundef writeonly %val_buf, i32 noundef %val_len) #0 align 64 {
entry:
  %xfer = alloca [2 x %struct.spi_transfer], align 4
  %msg = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %context, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %map_buf_crc_rx = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %map_buf_crc_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map_buf_crc_rx, align 4
  %map_buf_crc_tx = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %map_buf_crc_tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map_buf_crc_tx, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer) #5
  %6 = call ptr @memset(ptr %xfer, i32 0, i32 192)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #5
  %7 = ptrtoint ptr %reg_p to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %reg_p, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %reg_len)
  %cmp.not = icmp eq i32 %reg_len, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds i8, ptr %msg, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.spi_message_add_tail.exit_crit_edge

if.end.spi_message_add_tail.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end.spi_message_add_tail.exit_crit_edge
  %quirks = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 27, i32 1
  %19 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %quirks, align 4
  %and = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %21 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %5, ptr %xfer, align 4
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %spi_message_add_tail.exit
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %22 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %len, align 4
  %data = getelementptr inbounds %struct.mcp251xfd_map_buf_crc, ptr %3, i32 0, i32 1
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %data, ptr %rx_buf, align 4
  %add8 = add i32 %val_len, 2
  %len10 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %len10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add8, ptr %len10, align 4
  %transfer_list.i138 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 18
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i140 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i138, ptr noundef %26, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i140, label %if.end.i.i.i142, label %if.then4.if.end23_crit_edge

if.then4.if.end23_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.end.i.i.i142:                                  ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i138, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i138 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg, ptr %transfer_list.i138, align 4
  %prev3.i.i.i141 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i141 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i141, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i138, ptr %26, align 4
  br label %if.end23

if.else:                                          ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %rx_buf15 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %31 = ptrtoint ptr %rx_buf15 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %3, ptr %rx_buf15, align 4
  %add17 = add i32 %val_len, 5
  %len19 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %32 = ptrtoint ptr %len19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add17, ptr %len19, align 4
  %data20 = getelementptr inbounds %struct.mcp251xfd_map_buf_crc, ptr %5, i32 0, i32 1
  %add22 = add i32 %val_len, 2
  %33 = call ptr @memset(ptr %data20, i32 0, i32 %add22)
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.end.i.i.i142, %if.then4.if.end23_crit_edge
  %conv = trunc i32 %val_len to i16
  %34 = or i16 %8, -20480
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %34, ptr %5, align 1
  %conv.i = zext i16 %8 to i32
  %36 = add nsw i32 %conv.i, -1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 2045, i32 %36)
  %37 = icmp ult i32 %36, 2045
  %38 = lshr i16 %conv, 2
  %len.sink.i.i = select i1 %37, i16 %38, i16 %conv
  %conv3.i.i = trunc i16 %len.sink.i.i to i8
  %39 = getelementptr inbounds %struct.mcp251xfd_buf_cmd_crc, ptr %5, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv3.i.i, ptr %39, align 1
  %spi.i = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 11
  %data37 = getelementptr inbounds %struct.mcp251xfd_map_buf_crc, ptr %3, i32 0, i32 1
  %add.ptr.i = getelementptr i8, ptr %data37, i32 %val_len
  %ndev = getelementptr inbounds %struct.mcp251xfd_priv, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %map_buf_crc_rx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map_buf_crc_rx, align 4
  %43 = ptrtoint ptr %map_buf_crc_tx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %map_buf_crc_tx, align 8
  %45 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_sync(ptr noundef %46, ptr noundef nonnull %msg) #5
  %47 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %call.i, label %if.end23.cleanup_crit_edge [
    i32 0, label %if.end.i
    i32 -74, label %if.end23.if.end33_crit_edge
  ]

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end23
  %data.i.i = getelementptr inbounds %struct.mcp251xfd_map_buf_crc, ptr %42, i32 0, i32 1
  %add.ptr.i.i = getelementptr i8, ptr %data.i.i, i32 %val_len
  %48 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %add.ptr.i.i, align 1
  %call3.i.i = call zeroext i16 @mcp251xfd_crc16_compute2(ptr noundef %44, i32 noundef 3, ptr noundef %data.i.i, i32 noundef %val_len) #5
  call void @__sanitizer_cov_trace_cmp2(i16 %49, i16 %call3.i.i)
  %cmp.not.i.i = icmp eq i16 %49, %call3.i.i
  br i1 %cmp.not.i.i, label %if.end.i.out_crit_edge, label %if.end.i.if.end33_crit_edge

if.end.i.if.end33_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end33:                                         ; preds = %if.end.i.if.end33_crit_edge, %if.end23.if.end33_crit_edge
  %50 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.9)
  switch i16 %8, label %if.end33.if.end66_crit_edge [
    i16 16, label %land.lhs.true
    i16 3584, label %if.end33.out_crit_edge
  ]

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end33.if.end66_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

land.lhs.true:                                    ; preds = %if.end33
  %51 = ptrtoint ptr %data37 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %data37, align 1
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %52, label %land.lhs.true.if.end66_crit_edge [
    i8 0, label %land.lhs.true.if.then47_crit_edge
    i8 -128, label %land.lhs.true.if.then47_crit_edge160
  ]

land.lhs.true.if.then47_crit_edge160:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47

land.lhs.true.if.then47_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47

land.lhs.true.if.end66_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then47:                                        ; preds = %land.lhs.true.if.then47_crit_edge, %land.lhs.true.if.then47_crit_edge160
  %54 = xor i8 %52, -128
  %55 = ptrtoint ptr %data37 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %data37, align 1
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 2)
  %57 = load i16, ptr %add.ptr.i, align 1
  %call3.i = call zeroext i16 @mcp251xfd_crc16_compute2(ptr noundef %5, i32 noundef 3, ptr noundef %data37, i32 noundef %val_len) #5
  call void @__sanitizer_cov_trace_cmp2(i16 %57, i16 %call3.i)
  %cmp.not.i = icmp eq i16 %57, %call3.i
  br i1 %cmp.not.i, label %if.then47.if.then54_crit_edge, label %if.then47.if.end66_crit_edge

if.then47.if.end66_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

if.then47.if.then54_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then54

if.then54:                                        ; preds = %if.then47.2.if.then54_crit_edge, %if.then47.1.if.then54_crit_edge, %if.then47.if.then54_crit_edge
  %58 = ptrtoint ptr %data37 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %data37, align 1
  %60 = xor i8 %59, -128
  store i8 %60, ptr %data37, align 1
  br label %out

if.end66:                                         ; preds = %if.then47.if.end66_crit_edge, %land.lhs.true.if.end66_crit_edge, %if.end33.if.end66_crit_edge
  %61 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ndev, align 8
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %64 = load i16, ptr %add.ptr.i, align 1
  %conv73 = zext i16 %64 to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %62, ptr noundef nonnull @.str.5, i32 noundef %conv.i, i32 noundef %val_len, i32 noundef %val_len, ptr noundef %data37, i32 noundef %conv73) #8
  %65 = ptrtoint ptr %map_buf_crc_rx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %map_buf_crc_rx, align 4
  %67 = ptrtoint ptr %map_buf_crc_tx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %map_buf_crc_tx, align 8
  %69 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %spi.i, align 4
  %call.i.1 = call i32 @spi_sync(ptr noundef %70, ptr noundef nonnull %msg) #5
  %71 = zext i32 %call.i.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %call.i.1, label %if.end66.cleanup_crit_edge [
    i32 0, label %if.end.i.1
    i32 -74, label %if.end66.if.end33.1_crit_edge
  ]

if.end66.if.end33.1_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.1

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.1:                                       ; preds = %if.end66
  %data.i.i.1 = getelementptr inbounds %struct.mcp251xfd_map_buf_crc, ptr %66, i32 0, i32 1
  %add.ptr.i.i.1 = getelementptr i8, ptr %data.i.i.1, i32 %val_len
  %72 = ptrtoint ptr %add.ptr.i.i.1 to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %add.ptr.i.i.1, align 1
  %call3.i.i.1 = call zeroext i16 @mcp251xfd_crc16_compute2(ptr noundef %68, i32 noundef 3, ptr noundef %data.i.i.1, i32 noundef %val_len) #5
  call void @__sanitizer_cov_trace_cmp2(i16 %73, i16 %call3.i.i.1)
  %cmp.not.i.i.1 = icmp eq i16 %73, %call3.i.i.1
  br i1 %cmp.not.i.i.1, label %if.end.i.1.out_crit_edge, label %if.end.i.1.if.end33.1_crit_edge

if.end.i.1.if.end33.1_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.1

if.end.i.1.out_crit_edge:                         ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end33.1:                                       ; preds = %if.end.i.1.if.end33.1_crit_edge, %if.end66.if.end33.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %8)
  %cond = icmp eq i16 %8, 16
  br i1 %cond, label %land.lhs.true.1, label %if.end33.1.if.end66.1_crit_edge

if.end33.1.if.end66.1_crit_edge:                  ; preds = %if.end33.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66.1

land.lhs.true.1:                                  ; preds = %if.end33.1
  %74 = ptrtoint ptr %data37 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %data37, align 1
  %76 = zext i8 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %75, label %land.lhs.true.1.if.end66.1_crit_edge [
    i8 0, label %land.lhs.true.1.if.then47.1_crit_edge
    i8 -128, label %land.lhs.true.1.if.then47.1_crit_edge161
  ]

land.lhs.true.1.if.then47.1_crit_edge161:         ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47.1

land.lhs.true.1.if.then47.1_crit_edge:            ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47.1

land.lhs.true.1.if.end66.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66.1

if.then47.1:                                      ; preds = %land.lhs.true.1.if.then47.1_crit_edge, %land.lhs.true.1.if.then47.1_crit_edge161
  %77 = xor i8 %75, -128
  %78 = ptrtoint ptr %data37 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %data37, align 1
  %79 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %79, i32 2)
  %80 = load i16, ptr %add.ptr.i, align 1
  %call3.i.1 = call zeroext i16 @mcp251xfd_crc16_compute2(ptr noundef %5, i32 noundef 3, ptr noundef %data37, i32 noundef %val_len) #5
  call void @__sanitizer_cov_trace_cmp2(i16 %80, i16 %call3.i.1)
  %cmp.not.i.1 = icmp eq i16 %80, %call3.i.1
  br i1 %cmp.not.i.1, label %if.then47.1.if.then54_crit_edge, label %if.then47.1.if.end66.1_crit_edge

if.then47.1.if.end66.1_crit_edge:                 ; preds = %if.then47.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66.1

if.then47.1.if.then54_crit_edge:                  ; preds = %if.then47.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then54

if.end66.1:                                       ; preds = %if.then47.1.if.end66.1_crit_edge, %land.lhs.true.1.if.end66.1_crit_edge, %if.end33.1.if.end66.1_crit_edge
  %81 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ndev, align 8
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %add.ptr.i, align 1
  %conv73.1 = zext i16 %84 to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %82, ptr noundef nonnull @.str.5, i32 noundef %conv.i, i32 noundef %val_len, i32 noundef %val_len, ptr noundef %data37, i32 noundef %conv73.1) #8
  %85 = ptrtoint ptr %map_buf_crc_rx to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %map_buf_crc_rx, align 4
  %87 = ptrtoint ptr %map_buf_crc_tx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %map_buf_crc_tx, align 8
  %89 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %spi.i, align 4
  %call.i.2 = call i32 @spi_sync(ptr noundef %90, ptr noundef nonnull %msg) #5
  %91 = zext i32 %call.i.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %call.i.2, label %if.end66.1.cleanup_crit_edge [
    i32 0, label %if.end.i.2
    i32 -74, label %if.end66.1.if.end33.2_crit_edge
  ]

if.end66.1.if.end33.2_crit_edge:                  ; preds = %if.end66.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.2

if.end66.1.cleanup_crit_edge:                     ; preds = %if.end66.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.2:                                       ; preds = %if.end66.1
  %data.i.i.2 = getelementptr inbounds %struct.mcp251xfd_map_buf_crc, ptr %86, i32 0, i32 1
  %add.ptr.i.i.2 = getelementptr i8, ptr %data.i.i.2, i32 %val_len
  %92 = ptrtoint ptr %add.ptr.i.i.2 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %add.ptr.i.i.2, align 1
  %call3.i.i.2 = call zeroext i16 @mcp251xfd_crc16_compute2(ptr noundef %88, i32 noundef 3, ptr noundef %data.i.i.2, i32 noundef %val_len) #5
  call void @__sanitizer_cov_trace_cmp2(i16 %93, i16 %call3.i.i.2)
  %cmp.not.i.i.2 = icmp eq i16 %93, %call3.i.i.2
  br i1 %cmp.not.i.i.2, label %if.end.i.2.out_crit_edge, label %if.end.i.2.if.end33.2_crit_edge

if.end.i.2.if.end33.2_crit_edge:                  ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.2

if.end.i.2.out_crit_edge:                         ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end33.2:                                       ; preds = %if.end.i.2.if.end33.2_crit_edge, %if.end66.1.if.end33.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %8)
  %cond159 = icmp eq i16 %8, 16
  br i1 %cond159, label %land.lhs.true.2, label %if.end33.2.if.end66.2_crit_edge

if.end33.2.if.end66.2_crit_edge:                  ; preds = %if.end33.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66.2

land.lhs.true.2:                                  ; preds = %if.end33.2
  %94 = ptrtoint ptr %data37 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %data37, align 1
  %96 = zext i8 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %95, label %land.lhs.true.2.if.end66.2_crit_edge [
    i8 0, label %land.lhs.true.2.if.then47.2_crit_edge
    i8 -128, label %land.lhs.true.2.if.then47.2_crit_edge162
  ]

land.lhs.true.2.if.then47.2_crit_edge162:         ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47.2

land.lhs.true.2.if.then47.2_crit_edge:            ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then47.2

land.lhs.true.2.if.end66.2_crit_edge:             ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66.2

if.then47.2:                                      ; preds = %land.lhs.true.2.if.then47.2_crit_edge, %land.lhs.true.2.if.then47.2_crit_edge162
  %97 = xor i8 %95, -128
  %98 = ptrtoint ptr %data37 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %data37, align 1
  %99 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 2)
  %100 = load i16, ptr %add.ptr.i, align 1
  %call3.i.2 = call zeroext i16 @mcp251xfd_crc16_compute2(ptr noundef %5, i32 noundef 3, ptr noundef %data37, i32 noundef %val_len) #5
  call void @__sanitizer_cov_trace_cmp2(i16 %100, i16 %call3.i.2)
  %cmp.not.i.2 = icmp eq i16 %100, %call3.i.2
  br i1 %cmp.not.i.2, label %if.then47.2.if.then54_crit_edge, label %if.then47.2.if.end66.2_crit_edge

if.then47.2.if.end66.2_crit_edge:                 ; preds = %if.then47.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66.2

if.then47.2.if.then54_crit_edge:                  ; preds = %if.then47.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then54

if.end66.2:                                       ; preds = %if.then47.2.if.end66.2_crit_edge, %land.lhs.true.2.if.end66.2_crit_edge, %if.end33.2.if.end66.2_crit_edge
  %101 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ndev, align 8
  %103 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %103, i32 2)
  %104 = load i16, ptr %add.ptr.i, align 1
  %conv73.2 = zext i16 %104 to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %102, ptr noundef nonnull @.str.5, i32 noundef %conv.i, i32 noundef %val_len, i32 noundef %val_len, ptr noundef %data37, i32 noundef %conv73.2) #8
  %105 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ndev, align 8
  %107 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %107, i32 2)
  %108 = load i16, ptr %add.ptr.i, align 1
  %conv84 = zext i16 %108 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %106, ptr noundef nonnull @.str.6, i32 noundef %conv.i, i32 noundef %val_len, i32 noundef %val_len, ptr noundef %data37, i32 noundef %conv84) #8
  br label %cleanup

out:                                              ; preds = %if.end.i.2.out_crit_edge, %if.end.i.1.out_crit_edge, %if.then54, %if.end33.out_crit_edge, %if.end.i.out_crit_edge
  %109 = call ptr @memcpy(ptr %val_buf, ptr %data37, i32 %val_len)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end66.2, %if.end66.1.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ -74, %if.end66.2 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end23.cleanup_crit_edge ], [ %call.i.1, %if.end66.cleanup_crit_edge ], [ %call.i.2, %if.end66.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mcp251xfd_crc16_compute(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mcp251xfd_crc16_compute2(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @mcp251xfd_regmap_init_nocrc._key, !1, !"_key", i1 false, i1 false}
!1 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c", i32 476, i32 9}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mcp251xfd_bus_nocrc, !4, !"mcp251xfd_bus_nocrc", i1 false, i1 false}
!4 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c", i32 423, i32 32}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c", i32 66, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c", i32 408, i32 10}
!10 = !{ptr @mcp251xfd_regmap_nocrc, !11, !"mcp251xfd_regmap_nocrc", i1 false, i1 false}
!11 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c", i32 407, i32 35}
!12 = !{ptr @mcp251xfd_reg_table, !13, !"mcp251xfd_reg_table", i1 false, i1 false}
!13 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c", i32 402, i32 41}
!14 = !{ptr @mcp251xfd_reg_table_yes_range, !15, !"mcp251xfd_reg_table_yes_range", i1 false, i1 false}
!15 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c", i32 396, i32 34}
!16 = !{ptr @mcp251xfd_regmap_init_crc._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c", i32 529, i32 9}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mcp251xfd_bus_crc, !20, !"mcp251xfd_bus_crc", i1 false, i1 false}
!20 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c", i32 446, i32 32}
!21 = distinct !{null, !22, !"range", i1 false, i1 false}
!22 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd.h", i32 668, i32 35}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c", i32 377, i32 8}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c", i32 384, i32 7}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c", i32 435, i32 10}
!29 = !{ptr @mcp251xfd_regmap_crc, !30, !"mcp251xfd_regmap_crc", i1 false, i1 false}
!30 = !{!"../drivers/net/can/spi/mcp251xfd/mcp251xfd-regmap.c", i32 434, i32 35}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
