; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/sja1105/sja1105_spi.c_pt.bc'
source_filename = "../drivers/net/dsa/sja1105/sja1105_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sja1105_dynamic_table_ops = type { ptr, ptr, i32, i32, i64, i8 }
%struct.sja1105_table_ops = type { ptr, i32, i32, i32 }
%struct.sja1105_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [11 x i64], [4 x [11 x i64]], i64, i64, [11 x i64] }
%struct.sja1105_info = type { i64, i64, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i8], [11 x i32], [5 x i64] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.sja1105_spi_message = type { i64, i64, i64 }
%struct.sja1105_private = type { %struct.sja1105_static_config, [11 x i32], [11 x i32], [11 x i32], [11 x i8], i32, i32, i32, ptr, i32, ptr, ptr, [11 x i16], [11 x i16], %struct.sja1105_flow_block, %struct.mutex, %struct.spinlock, i8, %struct.mutex, ptr, ptr, ptr, ptr, ptr, [11 x ptr], %struct.sja1105_ptp_data, %struct.sja1105_tas_data }
%struct.sja1105_static_config = type { i64, [21 x %struct.sja1105_table] }
%struct.sja1105_table = type { ptr, i32, ptr }
%struct.sja1105_flow_block = type { %struct.list_head, [110 x i8], i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.sja1105_ptp_data = type { %struct.timer_list, %struct.sk_buff_head, %struct.sk_buff_head, %struct.ptp_clock_info, ptr, %struct.sja1105_ptp_cmd, %struct.mutex, i8, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sja1105_ptp_cmd = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_tas_data = type { [11 x ptr], %struct.sja1105_gating_config, i32, i32, %struct.work_struct, i64, i64, i64, i8 }
%struct.sja1105_gating_config = type { i64, i64, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sja1105_table_header = type { i64, i64, i64 }
%struct.sja1105_status = type { i64, i64, i64, i64 }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@static_config_buf_prepare_for_upload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str, ptr @.str.1, i32 292, ptr @.str.2, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"static_config_buf_prepare_for_upload\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/dsa/sja1105/sja1105_spi.c\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@static_config_buf_prepare_for_upload._entry_ptr = internal global ptr @static_config_buf_prepare_for_upload._entry, section ".printk_index", align 4
@sja1105_static_config_error_msg = external dso_local local_unnamed_addr global [0 x ptr], align 4
@sja1105_static_config_upload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.1, i32 333, ptr @.str.2, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid config, cannot upload\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sja1105_static_config_upload\00", [35 x i8] zeroinitializer }, align 32
@sja1105_static_config_upload._entry_ptr = internal global ptr @sja1105_static_config_upload._entry, section ".printk_index", align 4
@sja1105_static_config_upload._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.1, i32 343, ptr @.str.2, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to inhibit Tx on ports\0A\00", [33 x i8] zeroinitializer }, align 32
@sja1105_static_config_upload._entry_ptr.8 = internal global ptr @sja1105_static_config_upload._entry.6, section ".printk_index", align 4
@sja1105_static_config_upload._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.1, i32 356, ptr @.str.2, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to reset switch, retrying...\0A\00", [59 x i8] zeroinitializer }, align 32
@sja1105_static_config_upload._entry_ptr.11 = internal global ptr @sja1105_static_config_upload._entry.9, section ".printk_index", align 4
@sja1105_static_config_upload._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.1, i32 365, ptr @.str.2, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to upload config, retrying...\0A\00", [58 x i8] zeroinitializer }, align 32
@sja1105_static_config_upload._entry_ptr.14 = internal global ptr @sja1105_static_config_upload._entry.12, section ".printk_index", align 4
@sja1105_static_config_upload._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.1, i32 376, ptr @.str.2, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"Mismatch between hardware and static config device id. Wrote 0x%llx, wants 0x%llx\0A\00", [45 x i8] zeroinitializer }, align 32
@sja1105_static_config_upload._entry_ptr.17 = internal global ptr @sja1105_static_config_upload._entry.15, section ".printk_index", align 4
@sja1105_static_config_upload._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.1, i32 381, ptr @.str.2, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Switch reported invalid local CRC on the uploaded config, retrying...\0A\00", [57 x i8] zeroinitializer }, align 32
@sja1105_static_config_upload._entry_ptr.20 = internal global ptr @sja1105_static_config_upload._entry.18, section ".printk_index", align 4
@sja1105_static_config_upload._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.1, i32 386, ptr @.str.2, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Switch reported invalid global CRC on the uploaded config, retrying...\0A\00", [56 x i8] zeroinitializer }, align 32
@sja1105_static_config_upload._entry_ptr.23 = internal global ptr @sja1105_static_config_upload._entry.21, section ".printk_index", align 4
@sja1105_static_config_upload._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.1, i32 391, ptr @.str.2, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Switch reported that configuration is invalid, retrying...\0A\00", [36 x i8] zeroinitializer }, align 32
@sja1105_static_config_upload._entry_ptr.26 = internal global ptr @sja1105_static_config_upload._entry.24, section ".printk_index", align 4
@sja1105_static_config_upload._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.5, ptr @.str.1, i32 400, ptr @.str.2, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to upload config to device, giving up\0A\00", [50 x i8] zeroinitializer }, align 32
@sja1105_static_config_upload._entry_ptr.29 = internal global ptr @sja1105_static_config_upload._entry.27, section ".printk_index", align 4
@sja1105_static_config_upload._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.5, ptr @.str.1, i32 403, ptr @.str.32, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Succeeded after %d tried\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sja1105_static_config_upload._entry_ptr.33 = internal global ptr @sja1105_static_config_upload._entry.30, section ".printk_index", align 4
@sja1105et_dyn_ops = external dso_local constant [23 x %struct.sja1105_dynamic_table_ops], align 8
@sja1105e_table_ops = external dso_local constant [21 x %struct.sja1105_table_ops], align 4
@sja1105et_regs = internal constant { %struct.sja1105_regs, [408 x i8] } { %struct.sja1105_regs { i64 0, i64 1051587, i64 1, i64 17, i64 1049664, i64 65536, i64 131072, i64 1048586, i64 20, i64 22, i64 23, i64 24, i64 26, i64 29, i64 0, i64 18, [11 x i64] [i64 192, i64 194, i64 196, i64 198, i64 200, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1050624, i64 1050626, i64 1050628, i64 1050630, i64 1050632, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1050625, i64 1050627, i64 1050629, i64 1050631, i64 1050633, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] zeroinitializer, [11 x i64] [i64 1048587, i64 1048588, i64 1048589, i64 1048590, i64 1048591, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1048595, i64 1048602, i64 1048609, i64 1048616, i64 1048623, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1048596, i64 1048603, i64 1048610, i64 1048617, i64 1048624, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1048600, i64 1048607, i64 1048614, i64 1048621, i64 1048628, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1048601, i64 1048608, i64 1048615, i64 1048622, i64 1048629, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1048598, i64 1048605, i64 1048612, i64 1048619, i64 1048626, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1048597, i64 1048604, i64 1048611, i64 1048618, i64 1048625, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1048600, i64 1048607, i64 1048614, i64 1048621, i64 1048628, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [4 x [11 x i64]] [[11 x i64] [i64 512, i64 514, i64 516, i64 518, i64 520, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1024, i64 1040, i64 1056, i64 1072, i64 1088, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1536, i64 1552, i64 1568, i64 1584, i64 1600, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] zeroinitializer], i64 -1, i64 -1, [11 x i64] zeroinitializer }, [408 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SJA1105E\00", [23 x i8] zeroinitializer }, align 32
@sja1105e_info = dso_local constant { %struct.sja1105_info, [40 x i8] } { %struct.sja1105_info { i64 2617245708, i64 39555, i32 24, i32 4, i32 10, i32 929, i32 5, i8 0, i32 13, ptr @sja1105et_dyn_ops, ptr @sja1105e_table_ops, ptr @sja1105et_regs, i8 0, ptr @sja1105et_reset_cmd, ptr null, ptr @sja1105et_fdb_add, ptr @sja1105et_fdb_del, ptr @sja1105et_ptp_cmd_packing, ptr @sja1105_rxtstamp, ptr null, ptr @sja1105_clocking_setup, ptr null, ptr null, ptr null, ptr @.str.34, [11 x i8] c"\01\01\01\01\01\00\00\00\00\00\00", [11 x i8] c"\01\01\01\01\01\00\00\00\00\00\00", [11 x i8] c"\01\01\01\01\01\00\00\00\00\00\00", [11 x i8] zeroinitializer, [11 x i8] zeroinitializer, [11 x i32] zeroinitializer, [5 x i64] [i64 0, i64 3, i64 2, i64 1, i64 0] }, [40 x i8] zeroinitializer }, align 32
@sja1105t_table_ops = external dso_local constant [21 x %struct.sja1105_table_ops], align 4
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SJA1105T\00", [23 x i8] zeroinitializer }, align 32
@sja1105t_info = dso_local constant { %struct.sja1105_info, [40 x i8] } { %struct.sja1105_info { i64 2650800910, i64 39555, i32 24, i32 4, i32 10, i32 929, i32 5, i8 0, i32 13, ptr @sja1105et_dyn_ops, ptr @sja1105t_table_ops, ptr @sja1105et_regs, i8 0, ptr @sja1105et_reset_cmd, ptr null, ptr @sja1105et_fdb_add, ptr @sja1105et_fdb_del, ptr @sja1105et_ptp_cmd_packing, ptr @sja1105_rxtstamp, ptr null, ptr @sja1105_clocking_setup, ptr null, ptr null, ptr null, ptr @.str.35, [11 x i8] c"\01\01\01\01\01\00\00\00\00\00\00", [11 x i8] c"\01\01\01\01\01\00\00\00\00\00\00", [11 x i8] c"\01\01\01\01\01\00\00\00\00\00\00", [11 x i8] zeroinitializer, [11 x i8] zeroinitializer, [11 x i32] zeroinitializer, [5 x i64] [i64 0, i64 3, i64 2, i64 1, i64 0] }, [40 x i8] zeroinitializer }, align 32
@sja1105pqrs_dyn_ops = external dso_local constant [23 x %struct.sja1105_dynamic_table_ops], align 8
@sja1105p_table_ops = external dso_local constant [21 x %struct.sja1105_table_ops], align 4
@sja1105pqrs_regs = internal constant { %struct.sja1105_regs, [408 x i8] } { %struct.sja1105_regs { i64 0, i64 1051587, i64 1, i64 18, i64 1049664, i64 65536, i64 131072, i64 1048586, i64 21, i64 23, i64 24, i64 25, i64 27, i64 30, i64 31, i64 19, [11 x i64] [i64 192, i64 196, i64 200, i64 204, i64 208, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1050624, i64 1050626, i64 1050628, i64 1050630, i64 1050632, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1050625, i64 1050627, i64 1050629, i64 1050631, i64 1050633, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1050640, i64 1050641, i64 1050642, i64 1050643, i64 1050644, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1048587, i64 1048588, i64 1048589, i64 1048590, i64 1048591, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1048595, i64 1048601, i64 1048607, i64 1048613, i64 1048619, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1048596, i64 1048602, i64 1048608, i64 1048614, i64 1048620, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1048599, i64 1048605, i64 1048611, i64 1048617, i64 1048623, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1048600, i64 1048606, i64 1048612, i64 1048618, i64 1048624, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1048598, i64 1048604, i64 1048610, i64 1048616, i64 1048622, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1048597, i64 1048603, i64 1048609, i64 1048615, i64 1048621, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1048599, i64 1048605, i64 1048611, i64 1048617, i64 1048623, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [4 x [11 x i64]] [[11 x i64] [i64 512, i64 514, i64 516, i64 518, i64 520, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1024, i64 1040, i64 1056, i64 1072, i64 1088, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 1536, i64 1552, i64 1568, i64 1584, i64 1600, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [11 x i64] [i64 5120, i64 5144, i64 5168, i64 5192, i64 5216, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0]], i64 -1, i64 -1, [11 x i64] zeroinitializer }, [408 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SJA1105P\00", [23 x i8] zeroinitializer }, align 32
@sja1105p_info = dso_local constant { %struct.sja1105_info, [40 x i8] } { %struct.sja1105_info { i64 2936013582, i64 39556, i32 32, i32 8, i32 16, i32 929, i32 5, i8 0, i32 13, ptr @sja1105pqrs_dyn_ops, ptr @sja1105p_table_ops, ptr @sja1105pqrs_regs, i8 1, ptr @sja1105pqrs_reset_cmd, ptr @sja1105pqrs_setup_rgmii_delay, ptr @sja1105pqrs_fdb_add, ptr @sja1105pqrs_fdb_del, ptr @sja1105pqrs_ptp_cmd_packing, ptr @sja1105_rxtstamp, ptr null, ptr @sja1105_clocking_setup, ptr null, ptr null, ptr null, ptr @.str.36, [11 x i8] c"\01\01\01\01\01\00\00\00\00\00\00", [11 x i8] c"\01\01\01\01\01\00\00\00\00\00\00", [11 x i8] c"\01\01\01\01\01\00\00\00\00\00\00", [11 x i8] zeroinitializer, [11 x i8] zeroinitializer, [11 x i32] zeroinitializer, [5 x i64] [i64 0, i64 3, i64 2, i64 1, i64 0] }, [40 x i8] zeroinitializer }, align 32
@sja1105q_table_ops = external dso_local constant [21 x %struct.sja1105_table_ops], align 4
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SJA1105Q\00", [23 x i8] zeroinitializer }, align 32
@sja1105q_info = dso_local constant { %struct.sja1105_info, [40 x i8] } { %struct.sja1105_info { i64 2919236366, i64 39557, i32 32, i32 8, i32 16, i32 929, i32 5, i8 0, i32 13, ptr @sja1105pqrs_dyn_ops, ptr @sja1105q_table_ops, ptr @sja1105pqrs_regs, i8 1, ptr @sja1105pqrs_reset_cmd, ptr @sja1105pqrs_setup_rgmii_delay, ptr @sja1105pqrs_fdb_add, ptr @sja1105pqrs_fdb_del, ptr @sja1105pqrs_ptp_cmd_packing, ptr @sja1105_rxtstamp, ptr null, ptr @sja1105_clocking_setup, ptr null, ptr null, ptr null, ptr @.str.37, [11 x i8] c"\01\01\01\01\01\00\00\00\00\00\00", [11 x i8] c"\01\01\01\01\01\00\00\00\00\00\00", [11 x i8] c"\01\01\01\01\01\00\00\00\00\00\00", [11 x i8] zeroinitializer, [11 x i8] zeroinitializer, [11 x i32] zeroinitializer, [5 x i64] [i64 0, i64 3, i64 2, i64 1, i64 0] }, [40 x i8] zeroinitializer }, align 32
@sja1105r_table_ops = external dso_local constant [21 x %struct.sja1105_table_ops], align 4
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SJA1105R\00", [23 x i8] zeroinitializer }, align 32
@sja1105r_info = dso_local constant { %struct.sja1105_info, [40 x i8] } { %struct.sja1105_info { i64 2936013582, i64 39558, i32 32, i32 8, i32 16, i32 929, i32 5, i8 0, i32 13, ptr @sja1105pqrs_dyn_ops, ptr @sja1105r_table_ops, ptr @sja1105pqrs_regs, i8 1, ptr @sja1105pqrs_reset_cmd, ptr @sja1105pqrs_setup_rgmii_delay, ptr @sja1105pqrs_fdb_add, ptr @sja1105pqrs_fdb_del, ptr @sja1105pqrs_ptp_cmd_packing, ptr @sja1105_rxtstamp, ptr null, ptr @sja1105_clocking_setup, ptr @sja1105_pcs_mdio_read, ptr @sja1105_pcs_mdio_write, ptr null, ptr @.str.38, [11 x i8] c"\01\01\01\01\01\00\00\00\00\00\00", [11 x i8] c"\01\01\01\01\01\00\00\00\00\00\00", [11 x i8] c"\01\01\01\01\01\00\00\00\00\00\00", [11 x i8] c"\00\00\00\00\01\00\00\00\00\00\00", [11 x i8] zeroinitializer, [11 x i32] zeroinitializer, [5 x i64] [i64 0, i64 3, i64 2, i64 1, i64 0] }, [40 x i8] zeroinitializer }, align 32
@sja1105s_table_ops = external dso_local constant [21 x %struct.sja1105_table_ops], align 4
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SJA1105S\00", [23 x i8] zeroinitializer }, align 32
@sja1105s_info = dso_local constant { %struct.sja1105_info, [40 x i8] } { %struct.sja1105_info { i64 2919236366, i64 39559, i32 32, i32 8, i32 16, i32 929, i32 5, i8 0, i32 13, ptr @sja1105pqrs_dyn_ops, ptr @sja1105s_table_ops, ptr @sja1105pqrs_regs, i8 1, ptr @sja1105pqrs_reset_cmd, ptr @sja1105pqrs_setup_rgmii_delay, ptr @sja1105pqrs_fdb_add, ptr @sja1105pqrs_fdb_del, ptr @sja1105pqrs_ptp_cmd_packing, ptr @sja1105_rxtstamp, ptr null, ptr @sja1105_clocking_setup, ptr @sja1105_pcs_mdio_read, ptr @sja1105_pcs_mdio_write, ptr null, ptr @.str.39, [11 x i8] c"\01\01\01\01\01\00\00\00\00\00\00", [11 x i8] c"\01\01\01\01\01\00\00\00\00\00\00", [11 x i8] c"\01\01\01\01\01\00\00\00\00\00\00", [11 x i8] c"\00\00\00\00\01\00\00\00\00\00\00", [11 x i8] zeroinitializer, [11 x i32] zeroinitializer, [5 x i64] [i64 0, i64 3, i64 2, i64 1, i64 0] }, [40 x i8] zeroinitializer }, align 32
@sja1110_dyn_ops = external dso_local constant [23 x %struct.sja1105_dynamic_table_ops], align 8
@sja1110_table_ops = external dso_local constant [21 x %struct.sja1105_table_ops], align 4
@sja1110_regs = internal constant { %struct.sja1105_regs, [408 x i8] } { %struct.sja1105_regs { i64 0, i64 1853376, i64 1, i64 20, i64 1859648, i64 65536, i64 131072, i64 -1, i64 23, i64 25, i64 26, i64 27, i64 29, i64 32, i64 33, i64 21, [11 x i64] zeroinitializer, [11 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], [11 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], [11 x i64] [i64 -1, i64 -1, i64 1852422, i64 1852426, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], [11 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], [11 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], [11 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], [11 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], [11 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], [11 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], [11 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], [11 x i64] [i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], [4 x [11 x i64]] [[11 x i64] [i64 512, i64 514, i64 516, i64 518, i64 520, i64 522, i64 524, i64 526, i64 528, i64 530, i64 532], [11 x i64] [i64 1024, i64 1040, i64 1056, i64 1072, i64 1088, i64 1104, i64 1120, i64 1136, i64 1152, i64 1168, i64 1184], [11 x i64] [i64 1536, i64 1552, i64 1568, i64 1584, i64 1600, i64 1616, i64 1632, i64 1648, i64 1664, i64 1680, i64 1696], [11 x i64] [i64 5120, i64 5144, i64 5168, i64 5192, i64 5216, i64 5240, i64 5264, i64 5288, i64 5312, i64 5336, i64 5360]], i64 1844224, i64 1839104, [11 x i64] [i64 -1, i64 1840128, i64 1841152, i64 1842176, i64 1843200, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1] }, [408 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SJA1110A\00", [23 x i8] zeroinitializer }, align 32
@sja1110a_info = dso_local constant { %struct.sja1105_info, [40 x i8] } { %struct.sja1105_info { i64 3070231311, i64 4368, i32 32, i32 8, i32 80, i32 1820, i32 11, i8 1, i32 23, ptr @sja1110_dyn_ops, ptr @sja1110_table_ops, ptr @sja1110_regs, i8 1, ptr @sja1110_reset_cmd, ptr @sja1110_setup_rgmii_delay, ptr @sja1105pqrs_fdb_add, ptr @sja1105pqrs_fdb_del, ptr @sja1105pqrs_ptp_cmd_packing, ptr @sja1110_rxtstamp, ptr @sja1110_txtstamp, ptr null, ptr @sja1110_pcs_mdio_read, ptr @sja1110_pcs_mdio_write, ptr @sja1110_disable_microcontroller, ptr @.str.40, [11 x i8] c"\01\01\01\01\00\01\01\01\01\01\01", [11 x i8] c"\00\00\01\01\00\00\00\00\00\00\00", [11 x i8] c"\00\00\01\01\00\00\00\00\00\00\00", [11 x i8] c"\00\01\01\01\01\00\00\00\00\00\00", [11 x i8] c"\00\00\00\01\01\00\00\00\00\00\00", [11 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], [5 x i64] [i64 0, i64 4, i64 3, i64 2, i64 1] }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SJA1110B\00", [23 x i8] zeroinitializer }, align 32
@sja1110b_info = dso_local constant { %struct.sja1105_info, [40 x i8] } { %struct.sja1105_info { i64 3070231311, i64 4369, i32 32, i32 8, i32 80, i32 1820, i32 11, i8 1, i32 23, ptr @sja1110_dyn_ops, ptr @sja1110_table_ops, ptr @sja1110_regs, i8 1, ptr @sja1110_reset_cmd, ptr @sja1110_setup_rgmii_delay, ptr @sja1105pqrs_fdb_add, ptr @sja1105pqrs_fdb_del, ptr @sja1105pqrs_ptp_cmd_packing, ptr @sja1110_rxtstamp, ptr @sja1110_txtstamp, ptr null, ptr @sja1110_pcs_mdio_read, ptr @sja1110_pcs_mdio_write, ptr @sja1110_disable_microcontroller, ptr @.str.41, [11 x i8] c"\01\01\01\01\00\01\01\01\01\01\00", [11 x i8] c"\00\00\01\01\00\00\00\00\00\00\00", [11 x i8] c"\00\00\01\01\00\00\00\00\00\00\00", [11 x i8] c"\00\00\00\01\01\00\00\00\00\00\00", [11 x i8] c"\00\00\00\01\01\00\00\00\00\00\00", [11 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 0], [5 x i64] [i64 0, i64 4, i64 3, i64 2, i64 1] }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SJA1110C\00", [23 x i8] zeroinitializer }, align 32
@sja1110c_info = dso_local constant { %struct.sja1105_info, [40 x i8] } { %struct.sja1105_info { i64 3070231311, i64 4370, i32 32, i32 8, i32 80, i32 1820, i32 11, i8 1, i32 23, ptr @sja1110_dyn_ops, ptr @sja1110_table_ops, ptr @sja1110_regs, i8 1, ptr @sja1110_reset_cmd, ptr @sja1110_setup_rgmii_delay, ptr @sja1105pqrs_fdb_add, ptr @sja1105pqrs_fdb_del, ptr @sja1105pqrs_ptp_cmd_packing, ptr @sja1110_rxtstamp, ptr @sja1110_txtstamp, ptr null, ptr @sja1110_pcs_mdio_read, ptr @sja1110_pcs_mdio_write, ptr @sja1110_disable_microcontroller, ptr @.str.42, [11 x i8] c"\01\01\01\01\00\01\01\01\00\00\00", [11 x i8] c"\00\00\01\01\00\00\00\00\00\00\00", [11 x i8] c"\00\00\01\01\00\00\00\00\00\00\00", [11 x i8] c"\00\00\00\00\01\00\00\00\00\00\00", [11 x i8] c"\00\00\00\00\01\00\00\00\00\00\00", [11 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0], [5 x i64] [i64 0, i64 4, i64 3, i64 2, i64 1] }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SJA1110D\00", [23 x i8] zeroinitializer }, align 32
@sja1110d_info = dso_local constant { { i64, i64, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [11 x i8], <{ i8, i8, i8, [8 x i8] }>, <{ i8, i8, i8, [8 x i8] }>, [11 x i8], [11 x i8], [11 x i32], [5 x i64] }, [40 x i8] } { { i64, i64, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [11 x i8], <{ i8, i8, i8, [8 x i8] }>, <{ i8, i8, i8, [8 x i8] }>, [11 x i8], [11 x i8], [11 x i32], [5 x i64] } { i64 3070231311, i64 4371, i32 32, i32 8, i32 80, i32 1820, i32 11, i8 1, i32 23, ptr @sja1110_dyn_ops, ptr @sja1110_table_ops, ptr @sja1110_regs, i8 1, ptr @sja1110_reset_cmd, ptr @sja1110_setup_rgmii_delay, ptr @sja1105pqrs_fdb_add, ptr @sja1105pqrs_fdb_del, ptr @sja1105pqrs_ptp_cmd_packing, ptr @sja1110_rxtstamp, ptr @sja1110_txtstamp, ptr null, ptr @sja1110_pcs_mdio_read, ptr @sja1110_pcs_mdio_write, ptr @sja1110_disable_microcontroller, ptr @.str.43, [11 x i8] c"\01\00\01\00\00\01\01\01\00\00\00", <{ i8, i8, i8, [8 x i8] }> <{ i8 0, i8 0, i8 1, [8 x i8] zeroinitializer }>, <{ i8, i8, i8, [8 x i8] }> <{ i8 0, i8 0, i8 1, [8 x i8] zeroinitializer }>, [11 x i8] c"\00\01\01\01\01\00\00\00\00\00\00", [11 x i8] c"\00\00\00\01\01\00\00\00\00\00\00", [11 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 0, i32 0, i32 0], [5 x i64] [i64 0, i64 4, i64 3, i64 2, i64 1] }, [40 x i8] zeroinitializer }, align 32
@sja1105_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.1, i32 107, ptr @.str.2, ptr @.str.3 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SPI transfer failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sja1105_xfer\00", [19 x i8] zeroinitializer }, align 32
@sja1105_xfer._entry_ptr = internal global ptr @sja1105_xfer._entry, section ".printk_index", align 4
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 291, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 333, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 343, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 356, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 365, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 374, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 380, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 385, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 390, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 400, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 403, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [15 x i8] c"sja1105et_regs\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 411, i32 34 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 602, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant [14 x i8] c"sja1105e_info\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 573, i32 27 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 634, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant [14 x i8] c"sja1105t_info\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 605, i32 27 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"sja1105pqrs_regs\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 447, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 667, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant [14 x i8] c"sja1105p_info\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 637, i32 27 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 700, i32 12 }
@___asan_gen_.154 = private unnamed_addr constant [14 x i8] c"sja1105q_info\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 670, i32 27 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 736, i32 12 }
@___asan_gen_.160 = private unnamed_addr constant [14 x i8] c"sja1105r_info\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 703, i32 27 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 772, i32 12 }
@___asan_gen_.166 = private unnamed_addr constant [14 x i8] c"sja1105s_info\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 739, i32 27 }
@___asan_gen_.169 = private unnamed_addr constant [13 x i8] c"sja1110_regs\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 486, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 822, i32 12 }
@___asan_gen_.175 = private unnamed_addr constant [14 x i8] c"sja1110a_info\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 775, i32 27 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 872, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant [14 x i8] c"sja1110b_info\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 825, i32 27 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 922, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant [14 x i8] c"sja1110c_info\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 875, i32 27 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 972, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant [14 x i8] c"sja1110d_info\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 925, i32 27 }
@___asan_gen_.196 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.203 = private constant [41 x i8] c"../drivers/net/dsa/sja1105/sja1105_spi.c\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 107, i32 4 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @sja1105_static_config_upload._entry, ptr @sja1105_static_config_upload._entry.12, ptr @sja1105_static_config_upload._entry.15, ptr @sja1105_static_config_upload._entry.18, ptr @sja1105_static_config_upload._entry.21, ptr @sja1105_static_config_upload._entry.24, ptr @sja1105_static_config_upload._entry.27, ptr @sja1105_static_config_upload._entry.30, ptr @sja1105_static_config_upload._entry.6, ptr @sja1105_static_config_upload._entry.9, ptr @sja1105_static_config_upload._entry_ptr, ptr @sja1105_static_config_upload._entry_ptr.11, ptr @sja1105_static_config_upload._entry_ptr.14, ptr @sja1105_static_config_upload._entry_ptr.17, ptr @sja1105_static_config_upload._entry_ptr.20, ptr @sja1105_static_config_upload._entry_ptr.23, ptr @sja1105_static_config_upload._entry_ptr.26, ptr @sja1105_static_config_upload._entry_ptr.29, ptr @sja1105_static_config_upload._entry_ptr.33, ptr @sja1105_static_config_upload._entry_ptr.8, ptr @sja1105_xfer._entry, ptr @sja1105_xfer._entry_ptr, ptr @static_config_buf_prepare_for_upload._entry, ptr @static_config_buf_prepare_for_upload._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.32, ptr @sja1105et_regs, ptr @.str.34, ptr @sja1105e_info, ptr @.str.35, ptr @sja1105t_info, ptr @sja1105pqrs_regs, ptr @.str.36, ptr @sja1105p_info, ptr @.str.37, ptr @sja1105q_info, ptr @.str.38, ptr @sja1105r_info, ptr @.str.39, ptr @sja1105s_info, ptr @sja1110_regs, ptr @.str.40, ptr @sja1110a_info, ptr @.str.41, ptr @sja1110b_info, ptr @.str.42, ptr @sja1110c_info, ptr @.str.43, ptr @sja1110d_info, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @static_config_buf_prepare_for_upload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_static_config_upload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_static_config_upload._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_static_config_upload._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_static_config_upload._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_static_config_upload._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_static_config_upload._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_static_config_upload._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_static_config_upload._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_static_config_upload._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_static_config_upload._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105et_regs to i32), i32 1640, i32 2048, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105e_info to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105t_info to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105pqrs_regs to i32), i32 1640, i32 2048, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105p_info to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105q_info to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105r_info to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105s_info to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1110_regs to i32), i32 1640, i32 2048, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1110a_info to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1110b_info to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1110c_info to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1110d_info to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_xfer_buf(ptr nocapture noundef readonly %priv, i32 noundef %rw, i64 noundef %reg_addr, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sja1105_xfer(ptr noundef %priv, i32 noundef %rw, i64 noundef %reg_addr, ptr noundef %buf, i32 noundef %len, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sja1105_xfer(ptr nocapture noundef readonly %priv, i32 noundef %rw, i64 noundef %reg_addr, ptr noundef %buf, i32 noundef %len, ptr noundef %ptp_sts) unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %hdr_buf = alloca [4 x i8], align 4
  %xfers = alloca [2 x %struct.spi_transfer], align 4
  %msg = alloca %struct.sja1105_spi_message, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdr_buf) #6
  %spidev = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spidev, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfers) #6
  %2 = call ptr @memset(ptr %xfers, i32 0, i32 192)
  %max_xfer_len = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 9
  %3 = ptrtoint ptr %max_xfer_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_xfer_len, align 8
  %add = add i32 %len, -1
  %sub = add i32 %add, %4
  %div = udiv i32 %sub, %4
  %arrayidx6 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfers, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp7118 = icmp sgt i32 %div, 0
  br i1 %cmp7118, label %for.body.lr.ph, label %entry.cleanup61_crit_edge

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

for.body.lr.ph:                                   ; preds = %entry
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 %len)
  %6 = getelementptr inbounds %struct.sja1105_spi_message, ptr %msg, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sja1105_spi_message, ptr %msg, i32 0, i32 2
  %conv = zext i32 %rw to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rw)
  %cmp9 = icmp eq i32 %rw, 0
  %len16 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 2
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfers, i32 0, i32 1, i32 1
  %len26 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfers, i32 0, i32 1, i32 2
  %xfers.sroa.gep111 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 14
  %arrayidx6.sroa.gep112 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfers, i32 0, i32 1, i32 14
  %xfers.arrayidx6.sroa.sel113 = select i1 %cmp9, ptr %xfers.sroa.gep111, ptr %arrayidx6.sroa.gep112
  %xfers.sroa.gep108 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 15
  %arrayidx6.sroa.gep109 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfers, i32 0, i32 1, i32 15
  %xfers.arrayidx6.sroa.sel110 = select i1 %cmp9, ptr %xfers.sroa.gep108, ptr %arrayidx6.sroa.gep109
  %xfers.sroa.gep = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 16
  %arrayidx6.sroa.gep = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfers, i32 0, i32 1, i32 16
  %xfers.arrayidx6.sroa.sel = select i1 %cmp9, ptr %xfers.sroa.gep, ptr %arrayidx6.sroa.gep
  %add.ptr44 = getelementptr i8, ptr %buf, i32 %len
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr44 to i32
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18, i32 1
  %transfer_list.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 18
  %prev3.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 18, i32 1
  %rx_buf.arrayidx6 = select i1 %cmp9, ptr %rx_buf, ptr %arrayidx6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0123 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %chunk.sroa.0.0121 = phi ptr [ %buf, %for.body.lr.ph ], [ %add.ptr, %for.inc.for.body_crit_edge ]
  %chunk.sroa.9.0120 = phi i32 [ %5, %for.body.lr.ph ], [ %22, %for.inc.for.body_crit_edge ]
  %chunk.sroa.16.0119 = phi i64 [ %reg_addr, %for.body.lr.ph ], [ %add43, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #6
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %chunk.sroa.16.0119, ptr %7, align 8
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %msg, align 8
  %div12107 = lshr i32 %chunk.sroa.9.0120, 2
  %conv13 = zext i32 %div12107 to i64
  %storemerge = select i1 %cmp9, i64 %conv13, i64 0
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %storemerge, ptr %6, align 8
  %12 = ptrtoint ptr %hdr_buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %hdr_buf, align 4
  call void @sja1105_pack(ptr noundef nonnull %hdr_buf, ptr noundef nonnull %msg, i32 noundef 31, i32 noundef 31, i32 noundef 4) #6
  call void @sja1105_pack(ptr noundef nonnull %hdr_buf, ptr noundef %6, i32 noundef 30, i32 noundef 25, i32 noundef 4) #6
  call void @sja1105_pack(ptr noundef nonnull %hdr_buf, ptr noundef %7, i32 noundef 24, i32 noundef 4, i32 noundef 4) #6
  %13 = ptrtoint ptr %xfers to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %hdr_buf, ptr %xfers, align 4
  %14 = ptrtoint ptr %len16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 4, ptr %len16, align 4
  %15 = ptrtoint ptr %rx_buf.arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %chunk.sroa.0.0121, ptr %rx_buf.arrayidx6, align 4
  %16 = ptrtoint ptr %len26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %chunk.sroa.9.0120, ptr %len26, align 4
  %chunk.sroa.9.0120.op = add i32 %chunk.sroa.9.0120, -1
  %sub33 = select i1 %cmp9, i32 3, i32 %chunk.sroa.9.0120.op
  %17 = ptrtoint ptr %xfers.arrayidx6.sroa.sel113 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub33, ptr %xfers.arrayidx6.sroa.sel113, align 4
  %18 = ptrtoint ptr %xfers.arrayidx6.sroa.sel110 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub33, ptr %xfers.arrayidx6.sroa.sel110, align 4
  %19 = ptrtoint ptr %xfers.arrayidx6.sroa.sel to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ptp_sts, ptr %xfers.arrayidx6.sroa.sel, align 4
  %add.ptr = getelementptr i8, ptr %chunk.sroa.0.0121, i32 %chunk.sroa.9.0120
  %add43 = add i64 %chunk.sroa.16.0119, %conv13
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %20 = ptrtoint ptr %max_xfer_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_xfer_len, align 8
  %22 = call i32 @llvm.umin.i32(i32 %sub.ptr.sub, i32 %21)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #6
  %23 = call ptr @memset(ptr %8, i32 0, i32 40)
  %24 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %25 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %27 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %for.body.spi_message_add_tail.exit.i.i_crit_edge

for.body.spi_message_add_tail.exit.i.i_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %30 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %for.body.spi_message_add_tail.exit.i.i_crit_edge
  %32 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.1.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.1.i.i, ptr noundef %33, ptr noundef nonnull %msg.i) #6
  br i1 %call.i.i.i.1.i.i, label %if.end.i.i.i.1.i.i, label %spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge

spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_sync_transfer.exit

if.end.i.i.i.1.i.i:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %transfer_list.i.1.i.i, ptr %prev.i.i.i.i.i, align 4
  %35 = ptrtoint ptr %transfer_list.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i, ptr %transfer_list.i.1.i.i, align 4
  %36 = ptrtoint ptr %prev3.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i.1.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %transfer_list.i.1.i.i, ptr %33, align 4
  br label %spi_sync_transfer.exit

spi_sync_transfer.exit:                           ; preds = %if.end.i.i.i.1.i.i, %spi_message_add_tail.exit.i.i.spi_sync_transfer.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp56 = icmp slt i32 %call.i, 0
  br i1 %cmp56, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %spi_sync_transfer.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #6
  br label %cleanup61

for.inc:                                          ; preds = %spi_sync_transfer.exit
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #6
  %inc = add nuw nsw i32 %i.0123, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.inc.cleanup61_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup61_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

cleanup61:                                        ; preds = %for.inc.cleanup61_crit_edge, %cleanup.thread, %entry.cleanup61_crit_edge
  %retval.2 = phi i32 [ %call.i, %cleanup.thread ], [ 0, %entry.cleanup61_crit_edge ], [ 0, %for.inc.cleanup61_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfers) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdr_buf) #6
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_xfer_u64(ptr nocapture noundef readonly %priv, i32 noundef %rw, i64 noundef %reg_addr, ptr noundef %value, ptr noundef %ptp_sts) local_unnamed_addr #0 align 64 {
entry:
  %packed_buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %packed_buf) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rw)
  %cmp = icmp eq i32 %rw, 1
  %0 = ptrtoint ptr %packed_buf to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %packed_buf, align 8
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @sja1105_pack(ptr noundef nonnull %packed_buf, ptr noundef %value, i32 noundef 63, i32 noundef 0, i32 noundef 8) #6
  %call9 = call fastcc i32 @sja1105_xfer(ptr noundef %priv, i32 noundef 1, i64 noundef %reg_addr, ptr noundef nonnull %packed_buf, i32 noundef 8, ptr noundef %ptp_sts)
  br label %if.end5

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @sja1105_xfer(ptr noundef %priv, i32 noundef %rw, i64 noundef %reg_addr, ptr noundef nonnull %packed_buf, i32 noundef 8, ptr noundef %ptp_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rw)
  %cmp2 = icmp eq i32 %rw, 0
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @sja1105_unpack(ptr noundef nonnull %packed_buf, ptr noundef %value, i32 noundef 63, i32 noundef 0, i32 noundef 8) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge, %if.end.thread
  %call11 = phi i32 [ %call9, %if.end.thread ], [ %call, %if.then3 ], [ %call, %if.end.if.end5_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %packed_buf) #6
  ret i32 %call11
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_pack(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_unpack(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_xfer_u32(ptr nocapture noundef readonly %priv, i32 noundef %rw, i64 noundef %reg_addr, ptr nocapture noundef %value, ptr noundef %ptp_sts) local_unnamed_addr #0 align 64 {
entry:
  %packed_buf = alloca [4 x i8], align 4
  %tmp = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf) #6
  %0 = ptrtoint ptr %packed_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %packed_buf, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp) #6
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %tmp, align 8, !annotation !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rw)
  %cmp = icmp eq i32 %rw, 1
  br i1 %cmp, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 4
  %conv = zext i32 %3 to i64
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %tmp, align 8
  call void @sja1105_pack(ptr noundef nonnull %packed_buf, ptr noundef nonnull %tmp, i32 noundef 31, i32 noundef 0, i32 noundef 4) #6
  %call11 = call fastcc i32 @sja1105_xfer(ptr noundef %priv, i32 noundef 1, i64 noundef %reg_addr, ptr noundef nonnull %packed_buf, i32 noundef 4, ptr noundef %ptp_sts)
  br label %if.end7

if.end:                                           ; preds = %entry
  %call = call fastcc i32 @sja1105_xfer(ptr noundef %priv, i32 noundef %rw, i64 noundef %reg_addr, ptr noundef nonnull %packed_buf, i32 noundef 4, ptr noundef %ptp_sts)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rw)
  %cmp2 = icmp eq i32 %rw, 0
  br i1 %cmp2, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @sja1105_unpack(ptr noundef nonnull %packed_buf, ptr noundef nonnull %tmp, i32 noundef 31, i32 noundef 0, i32 noundef 4) #6
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tmp, align 8
  %conv6 = trunc i64 %6 to i32
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv6, ptr %value, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge, %if.end.thread
  %call13 = phi i32 [ %call11, %if.end.thread ], [ %call, %if.then4 ], [ %call, %if.end.if.end7_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf) #6
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_inhibit_tx(ptr nocapture noundef readonly %priv, i32 noundef %port_bitmap, i1 noundef zeroext %tx_inhibited) local_unnamed_addr #0 align 64 {
entry:
  %packed_buf.i13 = alloca [4 x i8], align 4
  %tmp.i14 = alloca i64, align 8
  %packed_buf.i = alloca [4 x i8], align 4
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %regs1 = getelementptr inbounds %struct.sja1105_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 4
  %port_control = getelementptr inbounds %struct.sja1105_regs, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %port_control to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %port_control, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf.i) #6
  %6 = ptrtoint ptr %packed_buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %packed_buf.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #6
  %7 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %tmp.i, align 8, !annotation !109
  %call.i = call fastcc i32 @sja1105_xfer(ptr noundef %priv, i32 noundef 0, i64 noundef %5, ptr noundef nonnull %packed_buf.i, i32 noundef 4, ptr noundef null) #6
  call void @sja1105_unpack(ptr noundef nonnull %packed_buf.i, ptr noundef nonnull %tmp.i, i32 noundef 31, i32 noundef 0, i32 noundef 4) #6
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i = trunc i64 %9 to i32
  %neg = xor i32 %port_bitmap, -1
  %and = and i32 %conv6.i, %neg
  %or = or i32 %conv6.i, %port_bitmap
  %storemerge = select i1 %tx_inhibited, i32 %or, i32 %and
  %10 = ptrtoint ptr %port_control to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %port_control, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf.i13) #6
  %12 = ptrtoint ptr %packed_buf.i13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %packed_buf.i13, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i14) #6
  %conv.i = zext i32 %storemerge to i64
  %13 = ptrtoint ptr %tmp.i14 to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv.i, ptr %tmp.i14, align 8
  call void @sja1105_pack(ptr noundef nonnull %packed_buf.i13, ptr noundef nonnull %tmp.i14, i32 noundef 31, i32 noundef 0, i32 noundef 4) #6
  %call11.i = call fastcc i32 @sja1105_xfer(ptr noundef %priv, i32 noundef 1, i64 noundef %11, ptr noundef nonnull %packed_buf.i13, i32 noundef 4, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11.i, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @static_config_buf_prepare_for_upload(ptr noundef %priv, ptr noundef %config_buf, i32 noundef %buf_len) local_unnamed_addr #0 align 64 {
entry:
  %final_header = alloca %struct.sja1105_table_header, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %final_header) #6
  %info = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %0 = call ptr @memset(ptr %final_header, i32 255, i32 24)
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info, align 4
  %max_frame_mem = getelementptr inbounds %struct.sja1105_info, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %max_frame_mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_frame_mem, align 4
  %call = tail call i32 @sja1105_static_config_check_valid(ptr noundef %priv, i32 noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end2, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spidev = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 10
  %5 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spidev, align 4
  %arrayidx = getelementptr [0 x ptr], ptr @sja1105_static_config_error_msg, i32 0, i32 %call
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef %8) #9
  br label %cleanup

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = getelementptr inbounds %struct.sja1105_table_header, ptr %final_header, i32 0, i32 2
  tail call void @sja1105_static_config_pack(ptr noundef %config_buf, ptr noundef %priv) #6
  %sub = add i32 %buf_len, -4
  %add.ptr = getelementptr i8, ptr %config_buf, i32 %buf_len
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 -12
  %call4 = call i32 @sja1105_table_header_packing(ptr noundef %add.ptr3, ptr noundef nonnull %final_header, i32 noundef 1) #6
  %call5 = call i32 @sja1105_crc32(ptr noundef %config_buf, i32 noundef %sub) #6
  %conv = zext i32 %call5 to i64
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %9, align 8
  %call6 = call i32 @sja1105_table_header_packing(ptr noundef %add.ptr3, ptr noundef nonnull %final_header, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end2 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %final_header) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_static_config_check_valid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105_static_config_pack(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_table_header_packing(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_crc32(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_static_config_upload(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %packed_buf.i = alloca [4 x i8], align 4
  %status = alloca %struct.sja1105_status, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %regs1 = getelementptr inbounds %struct.sja1105_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs1, align 4
  %spidev = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 10
  %4 = ptrtoint ptr %spidev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spidev, align 4
  %ds3 = getelementptr inbounds %struct.sja1105_private, ptr %priv, i32 0, i32 11
  %6 = ptrtoint ptr %ds3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ds3, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %status) #6
  %8 = getelementptr inbounds %struct.sja1105_status, ptr %status, i32 0, i32 1
  %9 = getelementptr inbounds %struct.sja1105_status, ptr %status, i32 0, i32 2
  %10 = getelementptr inbounds %struct.sja1105_status, ptr %status, i32 0, i32 3
  %11 = call ptr @memset(ptr %status, i32 255, i32 32)
  %call = tail call i32 @sja1105_static_config_get_length(ptr noundef %priv) #6
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @static_config_buf_prepare_for_upload(ptr noundef %priv, ptr noundef nonnull %call8.i.i, i32 noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.4) #9
  br label %out

if.end7:                                          ; preds = %if.end
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %7, i32 0, i32 18
  %12 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ports, align 4
  %sub8 = sub i32 64, %13
  %sh_prom = zext i32 %sub8 to i64
  %shr = lshr i64 -1, %sh_prom
  %conv = trunc i64 %shr to i32
  %call9 = tail call i32 @sja1105_inhibit_tx(ptr noundef %priv, i32 noundef %conv, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.7) #9
  br label %out

if.end16:                                         ; preds = %if.end7
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #6
  %config28 = getelementptr inbounds %struct.sja1105_regs, ptr %3, i32 0, i32 6
  br label %do.body17

do.body17:                                        ; preds = %do.cond72.do.body17_crit_edge, %if.end16
  %retries.0 = phi i32 [ 10, %if.end16 ], [ %dec, %do.cond72.do.body17_crit_edge ]
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 4
  %reset_cmd = getelementptr inbounds %struct.sja1105_info, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %reset_cmd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset_cmd, align 4
  %18 = ptrtoint ptr %ds3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ds3, align 8
  %call20 = call i32 %17(ptr noundef %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end26, label %if.end27

do.end26:                                         ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.10) #9
  br label %do.cond72

if.end27:                                         ; preds = %do.body17
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #6
  %20 = ptrtoint ptr %config28 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %config28, align 8
  %call.i = call fastcc i32 @sja1105_xfer(ptr noundef %priv, i32 noundef 1, i64 noundef %21, ptr noundef nonnull %call8.i.i, i32 noundef %call, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp30 = icmp slt i32 %call.i, 0
  br i1 %cmp30, label %do.end35, label %if.end36

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.13) #9
  br label %do.cond72

if.end36:                                         ; preds = %if.end27
  %22 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %info, align 4
  %regs1.i = getelementptr inbounds %struct.sja1105_info, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf.i) #6
  %status2.i = getelementptr inbounds %struct.sja1105_regs, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %packed_buf.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %packed_buf.i, align 4
  %27 = ptrtoint ptr %status2.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %status2.i, align 8
  %call.i.i = call fastcc i32 @sja1105_xfer(ptr noundef %priv, i32 noundef 0, i64 noundef %28, ptr noundef nonnull %packed_buf.i, i32 noundef 4, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %sja1105_status_get.exit.thread, label %if.end41

sja1105_status_get.exit.thread:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i) #6
  br label %do.cond72

if.end41:                                         ; preds = %if.end36
  call void @sja1105_unpack(ptr noundef nonnull %packed_buf.i, ptr noundef nonnull %status, i32 noundef 31, i32 noundef 31, i32 noundef 4) #6
  call void @sja1105_unpack(ptr noundef nonnull %packed_buf.i, ptr noundef %8, i32 noundef 30, i32 noundef 30, i32 noundef 4) #6
  call void @sja1105_unpack(ptr noundef nonnull %packed_buf.i, ptr noundef %9, i32 noundef 29, i32 noundef 29, i32 noundef 4) #6
  call void @sja1105_unpack(ptr noundef nonnull %packed_buf.i, ptr noundef %10, i32 noundef 28, i32 noundef 28, i32 noundef 4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i) #6
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %30)
  %cmp42 = icmp eq i64 %30, 1
  br i1 %cmp42, label %do.end47, label %if.end50

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %priv, align 8
  %33 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %info, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %34, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.16, i64 noundef %32, i64 noundef %36) #9
  br label %do.cond72

if.end50:                                         ; preds = %if.end41
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %8, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %38)
  %cmp51 = icmp eq i64 %38, 1
  br i1 %cmp51, label %do.end56, label %if.end57

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.19) #9
  br label %do.cond72

if.end57:                                         ; preds = %if.end50
  %39 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %10, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %40)
  %cmp58 = icmp eq i64 %40, 1
  br i1 %cmp58, label %do.end63, label %if.end64

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.22) #9
  br label %do.cond72

if.end64:                                         ; preds = %if.end57
  %41 = ptrtoint ptr %status to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %cmp65 = icmp eq i64 %42, 0
  br i1 %cmp65, label %do.end70, label %do.end74

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.25) #9
  br label %do.cond72

do.cond72:                                        ; preds = %do.end70, %do.end63, %do.end56, %do.end47, %sja1105_status_get.exit.thread, %do.end35, %do.end26
  %dec = add nsw i32 %retries.0, -1
  %tobool73.not = icmp eq i32 %dec, 0
  br i1 %tobool73.not, label %if.then76, label %do.cond72.do.body17_crit_edge

do.cond72.do.body17_crit_edge:                    ; preds = %do.cond72
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body17

do.end74:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %retries.0)
  %cond = icmp eq i32 %retries.0, 10
  br i1 %cond, label %do.end74.out_crit_edge, label %do.end85

do.end74.out_crit_edge:                           ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then76:                                        ; preds = %do.cond72
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.28) #9
  br label %out

do.end85:                                         ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #8
  %sub86 = sub i32 10, %retries.0
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.31, i32 noundef %sub86) #9
  br label %out

out:                                              ; preds = %do.end85, %if.then76, %do.end74.out_crit_edge, %do.end15, %do.end
  %rc.2 = phi i32 [ -22, %do.end ], [ -6, %do.end15 ], [ 0, %do.end85 ], [ -5, %if.then76 ], [ 0, %do.end74.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.2, %out ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_static_config_get_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105et_reset_cmd(ptr nocapture noundef readonly %ds) #0 align 64 {
entry:
  %packed_buf.i = alloca [4 x i8], align 4
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %regs2 = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs2, align 4
  %rgu = getelementptr inbounds %struct.sja1105_regs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %rgu to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rgu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf.i) #6
  %8 = ptrtoint ptr %packed_buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %packed_buf.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #6
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 8, ptr %tmp.i, align 8
  call void @sja1105_pack(ptr noundef nonnull %packed_buf.i, ptr noundef nonnull %tmp.i, i32 noundef 31, i32 noundef 0, i32 noundef 4) #6
  %call11.i = call fastcc i32 @sja1105_xfer(ptr noundef %1, i32 noundef 1, i64 noundef %7, ptr noundef nonnull %packed_buf.i, i32 noundef 4, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i) #6
  ret i32 %call11.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105et_fdb_add(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105et_fdb_del(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105et_ptp_cmd_packing(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sja1105_rxtstamp(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_clocking_setup(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105pqrs_reset_cmd(ptr nocapture noundef readonly %ds) #0 align 64 {
entry:
  %packed_buf.i = alloca [4 x i8], align 4
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %regs2 = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs2, align 4
  %rgu = getelementptr inbounds %struct.sja1105_regs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %rgu to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rgu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf.i) #6
  %8 = ptrtoint ptr %packed_buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %packed_buf.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #6
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 4, ptr %tmp.i, align 8
  call void @sja1105_pack(ptr noundef nonnull %packed_buf.i, ptr noundef nonnull %tmp.i, i32 noundef 31, i32 noundef 0, i32 noundef 4) #6
  %call11.i = call fastcc i32 @sja1105_xfer(ptr noundef %1, i32 noundef 1, i64 noundef %7, ptr noundef nonnull %packed_buf.i, i32 noundef 4, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i) #6
  ret i32 %call11.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105pqrs_setup_rgmii_delay(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105pqrs_fdb_add(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105pqrs_fdb_del(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1105pqrs_ptp_cmd_packing(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_pcs_mdio_read(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1105_pcs_mdio_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1110_reset_cmd(ptr nocapture noundef readonly %ds) #0 align 64 {
entry:
  %packed_buf.i = alloca [4 x i8], align 4
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %info = getelementptr inbounds %struct.sja1105_private, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %regs2 = getelementptr inbounds %struct.sja1105_info, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %regs2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs2, align 4
  %rgu = getelementptr inbounds %struct.sja1105_regs, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %rgu to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rgu, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %packed_buf.i) #6
  %8 = ptrtoint ptr %packed_buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %packed_buf.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #6
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 1048576, ptr %tmp.i, align 8
  call void @sja1105_pack(ptr noundef nonnull %packed_buf.i, ptr noundef nonnull %tmp.i, i32 noundef 31, i32 noundef 0, i32 noundef 4) #6
  %call11.i = call fastcc i32 @sja1105_xfer(ptr noundef %1, i32 noundef 1, i64 noundef %7, ptr noundef nonnull %packed_buf.i, i32 noundef 4, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %packed_buf.i) #6
  ret i32 %call11.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1110_setup_rgmii_delay(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sja1110_rxtstamp(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sja1110_txtstamp(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1110_pcs_mdio_read(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1110_pcs_mdio_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sja1110_disable_microcontroller(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !92, !93, !94, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 291, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @static_config_buf_prepare_for_upload._entry, !1, !"_entry", i1 false, i1 false}
!6 = !{ptr @static_config_buf_prepare_for_upload._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 333, i32 3}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sja1105_static_config_upload._entry, !8, !"_entry", i1 false, i1 false}
!11 = !{ptr @sja1105_static_config_upload._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 343, i32 3}
!14 = !{ptr @sja1105_static_config_upload._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sja1105_static_config_upload._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 356, i32 4}
!18 = !{ptr @sja1105_static_config_upload._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @sja1105_static_config_upload._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 365, i32 4}
!22 = !{ptr @sja1105_static_config_upload._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @sja1105_static_config_upload._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 374, i32 4}
!26 = !{ptr @sja1105_static_config_upload._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sja1105_static_config_upload._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 380, i32 4}
!30 = !{ptr @sja1105_static_config_upload._entry.18, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @sja1105_static_config_upload._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 385, i32 4}
!34 = !{ptr @sja1105_static_config_upload._entry.21, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @sja1105_static_config_upload._entry_ptr.23, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.25, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 390, i32 4}
!38 = !{ptr @sja1105_static_config_upload._entry.24, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sja1105_static_config_upload._entry_ptr.26, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.28, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 400, i32 3}
!42 = !{ptr @sja1105_static_config_upload._entry.27, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sja1105_static_config_upload._entry_ptr.29, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.31, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 403, i32 3}
!46 = !{ptr @.str.32, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sja1105_static_config_upload._entry.30, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @sja1105_static_config_upload._entry_ptr.33, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.34, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 602, i32 12}
!51 = !{ptr @sja1105e_info, !52, !"sja1105e_info", i1 false, i1 false}
!52 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 573, i32 27}
!53 = !{ptr @.str.35, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 634, i32 12}
!55 = !{ptr @sja1105t_info, !56, !"sja1105t_info", i1 false, i1 false}
!56 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 605, i32 27}
!57 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 667, i32 12}
!59 = !{ptr @sja1105p_info, !60, !"sja1105p_info", i1 false, i1 false}
!60 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 637, i32 27}
!61 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 700, i32 12}
!63 = !{ptr @sja1105q_info, !64, !"sja1105q_info", i1 false, i1 false}
!64 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 670, i32 27}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 736, i32 12}
!67 = !{ptr @sja1105r_info, !68, !"sja1105r_info", i1 false, i1 false}
!68 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 703, i32 27}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 772, i32 12}
!71 = !{ptr @sja1105s_info, !72, !"sja1105s_info", i1 false, i1 false}
!72 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 739, i32 27}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 822, i32 12}
!75 = !{ptr @sja1110a_info, !76, !"sja1110a_info", i1 false, i1 false}
!76 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 775, i32 27}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 872, i32 12}
!79 = !{ptr @sja1110b_info, !80, !"sja1110b_info", i1 false, i1 false}
!80 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 825, i32 27}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 922, i32 12}
!83 = !{ptr @sja1110c_info, !84, !"sja1110c_info", i1 false, i1 false}
!84 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 875, i32 27}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 972, i32 12}
!87 = !{ptr @sja1110d_info, !88, !"sja1110d_info", i1 false, i1 false}
!88 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 925, i32 27}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 107, i32 4}
!91 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @sja1105_xfer._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @sja1105_xfer._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @sja1105et_regs, !95, !"sja1105et_regs", i1 false, i1 false}
!95 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 411, i32 34}
!96 = !{ptr @sja1105pqrs_regs, !97, !"sja1105pqrs_regs", i1 false, i1 false}
!97 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 447, i32 34}
!98 = !{ptr @sja1110_regs, !99, !"sja1110_regs", i1 false, i1 false}
!99 = !{!"../drivers/net/dsa/sja1105/sja1105_spi.c", i32 486, i32 34}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"auto-init"}
