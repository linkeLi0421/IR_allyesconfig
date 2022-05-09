; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/sja1105/sja1105_static_config.c_pt.bc'
source_filename = "../drivers/net/dsa/sja1105/sja1105_static_config.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sja1105_table_ops = type { ptr, i32, i32, i32 }
%struct.sja1105_avb_params_entry = type { i64, i64, i64 }
%struct.sja1105_general_params_entry = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_l2_forwarding_params_entry = type { i64, [8 x i64] }
%struct.sja1105_l2_forwarding_entry = type { i64, i64, i64, [11 x i64], i8 }
%struct.sja1105_l2_lookup_params_entry = type { [11 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_l2_lookup_entry = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i64, i64, i64, i64, i64, i64 }
%struct.sja1105_l2_policing_entry = type { i64, i64, i64, i64, i64 }
%struct.sja1105_mac_config_entry = type { [8 x i64], [8 x i64], [8 x i64], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_vl_lookup_entry = type { i64, i64, %union.anon.1, i32 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i64, i64, i64, i64, i64 }
%struct.sja1105_vl_policing_entry = type { i64, i64, i64, i64, i64 }
%struct.sja1105_vlan_lookup_entry = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_xmii_params_entry = type { [11 x i64], [11 x i64], [11 x i64] }
%struct.sja1105_retagging_entry = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_table_header = type { i64, i64, i64 }
%struct.sja1105_static_config = type { i64, [21 x %struct.sja1105_table] }
%struct.sja1105_table = type { ptr, i32, ptr }
%struct.sja1105_schedule_entry = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.sja1105_schedule_entry_points_entry = type { i64, i64, i64 }
%struct.sja1105_vl_forwarding_entry = type { i64, i64, i64, i64 }
%struct.sja1105_schedule_entry_points_params_entry = type { i64, i64 }
%struct.sja1105_vl_forwarding_params_entry = type { [8 x i64], i64 }

@sja1105_pack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 27, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013Start bit (%d) expected to be larger than end (%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sja1105_pack\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/dsa/sja1105/sja1105_static_config.c\00", [48 x i8] zeroinitializer }, align 32
@sja1105_pack._entry_ptr = internal global ptr @sja1105_pack._entry, section ".printk_index", align 4
@sja1105_pack._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Field %d-%d too large for 64 bits!\0A\00", [58 x i8] zeroinitializer }, align 32
@sja1105_pack._entry_ptr.5 = internal global ptr @sja1105_pack._entry.3, section ".printk_index", align 4
@sja1105_pack._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Cannot store %llx inside bits %d-%d (would truncate)\0A\00", [40 x i8] zeroinitializer }, align 32
@sja1105_pack._entry_ptr.8 = internal global ptr @sja1105_pack._entry.6, section ".printk_index", align 4
@sja1105_unpack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sja1105_unpack\00", [17 x i8] zeroinitializer }, align 32
@sja1105_unpack._entry_ptr = internal global ptr @sja1105_unpack._entry, section ".printk_index", align 4
@sja1105_unpack._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.9, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sja1105_unpack._entry_ptr.11 = internal global ptr @sja1105_unpack._entry.10, section ".printk_index", align 4
@sja1105_packing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.12, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sja1105_packing\00", [16 x i8] zeroinitializer }, align 32
@sja1105_packing._entry_ptr = internal global ptr @sja1105_packing._entry, section ".printk_index", align 4
@sja1105_packing._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.12, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sja1105_packing._entry_ptr.14 = internal global ptr @sja1105_packing._entry.13, section ".printk_index", align 4
@sja1105_packing._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.12, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sja1105_packing._entry_ptr.16 = internal global ptr @sja1105_packing._entry.15, section ".printk_index", align 4
@.str.17 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"schedule-table present, but TTEthernet is only supported on T and Q/S\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [141 x i8], [51 x i8] } { [141 x i8] c"schedule-table present, but one of schedule-entry-points-table, schedule-parameters-table or schedule-entry-points-parameters table is empty\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"vl-lookup-table present, but one of vl-policing-table, vl-forwarding-table or vl-forwarding-parameters-table is empty\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"l2-policing-table needs to have at least one entry\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"l2-forwarding-table is either missing or incomplete\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"l2-forwarding-parameters-table is missing\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"general-parameters-table is missing\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"vlan-lookup-table needs to have at least the default untagged VLAN\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xmii-table is missing\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"mac-configuration-table needs to contain an entry for each port\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [323 x i8], [93 x i8] } { [323 x i8] c"Not allowed to overcommit frame memory. L2 memory partitions and VL memory partitions share the same space. The sum of all 16 memory partitions is not allowed to be larger than 929 128-byte blocks (or 910 with retagging). Please adjust l2-forwarding-parameters-table.part_spc and/or vl-forwarding-parameters-table.partspc.\00", [93 x i8] zeroinitializer }, align 32
@sja1105_static_config_error_msg = dso_local global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], [48 x i8] zeroinitializer }, align 32
@blk_id_map = internal constant { [21 x i64], [56 x i8] } { [21 x i64] [i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 16, i64 17, i64 18, i64 0, i64 78, i64 28], [56 x i8] zeroinitializer }, align 32
@sja1105e_table_ops = dso_local constant { [21 x %struct.sja1105_table_ops], [80 x i8] } { [21 x %struct.sja1105_table_ops] [%struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops { ptr @sja1105et_l2_lookup_entry_packing, i32 144, i32 12, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1105_l2_policing_entry_packing, i32 40, i32 8, i32 45 }, %struct.sja1105_table_ops { ptr @sja1105_vlan_lookup_entry_packing, i32 56, i32 8, i32 4096 }, %struct.sja1105_table_ops { ptr @sja1105_l2_forwarding_entry_packing, i32 120, i32 8, i32 13 }, %struct.sja1105_table_ops { ptr @sja1105et_mac_config_entry_packing, i32 320, i32 28, i32 5 }, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops { ptr @sja1105et_l2_lookup_params_entry_packing, i32 176, i32 4, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_l2_forwarding_params_entry_packing, i32 72, i32 12, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105et_avb_params_entry_packing, i32 24, i32 12, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105et_general_params_entry_packing, i32 224, i32 40, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_retagging_entry_packing, i32 56, i32 8, i32 32 }, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops { ptr @sja1105_xmii_params_entry_packing, i32 264, i32 4, i32 1 }, %struct.sja1105_table_ops zeroinitializer], [80 x i8] zeroinitializer }, align 32
@sja1105t_table_ops = dso_local constant { [21 x %struct.sja1105_table_ops], [80 x i8] } { [21 x %struct.sja1105_table_ops] [%struct.sja1105_table_ops { ptr @sja1105_schedule_entry_packing, i32 80, i32 8, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1105_schedule_entry_points_entry_packing, i32 24, i32 4, i32 2048 }, %struct.sja1105_table_ops { ptr @sja1105_vl_lookup_entry_packing, i32 64, i32 12, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1105_vl_policing_entry_packing, i32 40, i32 8, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1105_vl_forwarding_entry_packing, i32 32, i32 4, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1105et_l2_lookup_entry_packing, i32 144, i32 12, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1105_l2_policing_entry_packing, i32 40, i32 8, i32 45 }, %struct.sja1105_table_ops { ptr @sja1105_vlan_lookup_entry_packing, i32 56, i32 8, i32 4096 }, %struct.sja1105_table_ops { ptr @sja1105_l2_forwarding_entry_packing, i32 120, i32 8, i32 13 }, %struct.sja1105_table_ops { ptr @sja1105et_mac_config_entry_packing, i32 320, i32 28, i32 5 }, %struct.sja1105_table_ops { ptr @sja1105_schedule_params_entry_packing, i32 64, i32 12, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_schedule_entry_points_params_entry_packing, i32 16, i32 4, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_vl_forwarding_params_entry_packing, i32 72, i32 12, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105et_l2_lookup_params_entry_packing, i32 176, i32 4, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_l2_forwarding_params_entry_packing, i32 72, i32 12, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105et_avb_params_entry_packing, i32 24, i32 12, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105et_general_params_entry_packing, i32 224, i32 40, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_retagging_entry_packing, i32 56, i32 8, i32 32 }, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops { ptr @sja1105_xmii_params_entry_packing, i32 264, i32 4, i32 1 }, %struct.sja1105_table_ops zeroinitializer], [80 x i8] zeroinitializer }, align 32
@sja1105p_table_ops = dso_local constant { [21 x %struct.sja1105_table_ops], [80 x i8] } { [21 x %struct.sja1105_table_ops] [%struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops { ptr @sja1105pqrs_l2_lookup_entry_packing, i32 144, i32 20, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1105_l2_policing_entry_packing, i32 40, i32 8, i32 45 }, %struct.sja1105_table_ops { ptr @sja1105_vlan_lookup_entry_packing, i32 56, i32 8, i32 4096 }, %struct.sja1105_table_ops { ptr @sja1105_l2_forwarding_entry_packing, i32 120, i32 8, i32 13 }, %struct.sja1105_table_ops { ptr @sja1105pqrs_mac_config_entry_packing, i32 320, i32 32, i32 5 }, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops { ptr @sja1105pqrs_l2_lookup_params_entry_packing, i32 176, i32 16, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_l2_forwarding_params_entry_packing, i32 72, i32 12, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105pqrs_avb_params_entry_packing, i32 24, i32 16, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105pqrs_general_params_entry_packing, i32 224, i32 44, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_retagging_entry_packing, i32 56, i32 8, i32 32 }, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops { ptr @sja1105_xmii_params_entry_packing, i32 264, i32 4, i32 1 }, %struct.sja1105_table_ops zeroinitializer], [80 x i8] zeroinitializer }, align 32
@sja1105q_table_ops = dso_local constant { [21 x %struct.sja1105_table_ops], [80 x i8] } { [21 x %struct.sja1105_table_ops] [%struct.sja1105_table_ops { ptr @sja1105_schedule_entry_packing, i32 80, i32 8, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1105_schedule_entry_points_entry_packing, i32 24, i32 4, i32 2048 }, %struct.sja1105_table_ops { ptr @sja1105_vl_lookup_entry_packing, i32 64, i32 12, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1105_vl_policing_entry_packing, i32 40, i32 8, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1105_vl_forwarding_entry_packing, i32 32, i32 4, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1105pqrs_l2_lookup_entry_packing, i32 144, i32 20, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1105_l2_policing_entry_packing, i32 40, i32 8, i32 45 }, %struct.sja1105_table_ops { ptr @sja1105_vlan_lookup_entry_packing, i32 56, i32 8, i32 4096 }, %struct.sja1105_table_ops { ptr @sja1105_l2_forwarding_entry_packing, i32 120, i32 8, i32 13 }, %struct.sja1105_table_ops { ptr @sja1105pqrs_mac_config_entry_packing, i32 320, i32 32, i32 5 }, %struct.sja1105_table_ops { ptr @sja1105_schedule_params_entry_packing, i32 64, i32 12, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_schedule_entry_points_params_entry_packing, i32 16, i32 4, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_vl_forwarding_params_entry_packing, i32 72, i32 12, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105pqrs_l2_lookup_params_entry_packing, i32 176, i32 16, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_l2_forwarding_params_entry_packing, i32 72, i32 12, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105pqrs_avb_params_entry_packing, i32 24, i32 16, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105pqrs_general_params_entry_packing, i32 224, i32 44, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_retagging_entry_packing, i32 56, i32 8, i32 32 }, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops { ptr @sja1105_xmii_params_entry_packing, i32 264, i32 4, i32 1 }, %struct.sja1105_table_ops zeroinitializer], [80 x i8] zeroinitializer }, align 32
@sja1105r_table_ops = dso_local constant { [21 x %struct.sja1105_table_ops], [80 x i8] } { [21 x %struct.sja1105_table_ops] [%struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops { ptr @sja1105pqrs_l2_lookup_entry_packing, i32 144, i32 20, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1105_l2_policing_entry_packing, i32 40, i32 8, i32 45 }, %struct.sja1105_table_ops { ptr @sja1105_vlan_lookup_entry_packing, i32 56, i32 8, i32 4096 }, %struct.sja1105_table_ops { ptr @sja1105_l2_forwarding_entry_packing, i32 120, i32 8, i32 13 }, %struct.sja1105_table_ops { ptr @sja1105pqrs_mac_config_entry_packing, i32 320, i32 32, i32 5 }, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops { ptr @sja1105pqrs_l2_lookup_params_entry_packing, i32 176, i32 16, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_l2_forwarding_params_entry_packing, i32 72, i32 12, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105pqrs_avb_params_entry_packing, i32 24, i32 16, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105pqrs_general_params_entry_packing, i32 224, i32 44, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_retagging_entry_packing, i32 56, i32 8, i32 32 }, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops { ptr @sja1105_xmii_params_entry_packing, i32 264, i32 4, i32 1 }, %struct.sja1105_table_ops zeroinitializer], [80 x i8] zeroinitializer }, align 32
@sja1105s_table_ops = dso_local constant { [21 x %struct.sja1105_table_ops], [80 x i8] } { [21 x %struct.sja1105_table_ops] [%struct.sja1105_table_ops { ptr @sja1105_schedule_entry_packing, i32 80, i32 8, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1105_schedule_entry_points_entry_packing, i32 24, i32 4, i32 2048 }, %struct.sja1105_table_ops { ptr @sja1105_vl_lookup_entry_packing, i32 64, i32 12, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1105_vl_policing_entry_packing, i32 40, i32 8, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1105_vl_forwarding_entry_packing, i32 32, i32 4, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1105pqrs_l2_lookup_entry_packing, i32 144, i32 20, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1105_l2_policing_entry_packing, i32 40, i32 8, i32 45 }, %struct.sja1105_table_ops { ptr @sja1105_vlan_lookup_entry_packing, i32 56, i32 8, i32 4096 }, %struct.sja1105_table_ops { ptr @sja1105_l2_forwarding_entry_packing, i32 120, i32 8, i32 13 }, %struct.sja1105_table_ops { ptr @sja1105pqrs_mac_config_entry_packing, i32 320, i32 32, i32 5 }, %struct.sja1105_table_ops { ptr @sja1105_schedule_params_entry_packing, i32 64, i32 12, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_schedule_entry_points_params_entry_packing, i32 16, i32 4, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_vl_forwarding_params_entry_packing, i32 72, i32 12, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105pqrs_l2_lookup_params_entry_packing, i32 176, i32 16, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_l2_forwarding_params_entry_packing, i32 72, i32 12, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105pqrs_avb_params_entry_packing, i32 24, i32 16, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105pqrs_general_params_entry_packing, i32 224, i32 44, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_retagging_entry_packing, i32 56, i32 8, i32 32 }, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops { ptr @sja1105_xmii_params_entry_packing, i32 264, i32 4, i32 1 }, %struct.sja1105_table_ops zeroinitializer], [80 x i8] zeroinitializer }, align 32
@sja1110_table_ops = dso_local constant { [21 x %struct.sja1105_table_ops], [80 x i8] } { [21 x %struct.sja1105_table_ops] [%struct.sja1105_table_ops { ptr @sja1110_schedule_entry_packing, i32 80, i32 12, i32 4096 }, %struct.sja1105_table_ops { ptr @sja1110_schedule_entry_points_entry_packing, i32 24, i32 8, i32 2048 }, %struct.sja1105_table_ops { ptr @sja1110_vl_lookup_entry_packing, i32 64, i32 12, i32 4096 }, %struct.sja1105_table_ops { ptr @sja1110_vl_policing_entry_packing, i32 40, i32 8, i32 4096 }, %struct.sja1105_table_ops { ptr @sja1110_vl_forwarding_entry_packing, i32 32, i32 4, i32 4096 }, %struct.sja1105_table_ops { ptr @sja1110_l2_lookup_entry_packing, i32 144, i32 24, i32 1024 }, %struct.sja1105_table_ops { ptr @sja1110_l2_policing_entry_packing, i32 40, i32 8, i32 110 }, %struct.sja1105_table_ops { ptr @sja1110_vlan_lookup_entry_packing, i32 56, i32 12, i32 4096 }, %struct.sja1105_table_ops { ptr @sja1110_l2_forwarding_entry_packing, i32 120, i32 8, i32 19 }, %struct.sja1105_table_ops { ptr @sja1110_mac_config_entry_packing, i32 320, i32 32, i32 11 }, %struct.sja1105_table_ops { ptr @sja1110_schedule_params_entry_packing, i32 64, i32 12, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105_schedule_entry_points_params_entry_packing, i32 16, i32 4, i32 1 }, %struct.sja1105_table_ops { ptr @sja1110_vl_forwarding_params_entry_packing, i32 72, i32 12, i32 1 }, %struct.sja1105_table_ops { ptr @sja1110_l2_lookup_params_entry_packing, i32 176, i32 28, i32 1 }, %struct.sja1105_table_ops { ptr @sja1110_l2_forwarding_params_entry_packing, i32 72, i32 12, i32 1 }, %struct.sja1105_table_ops { ptr @sja1105pqrs_avb_params_entry_packing, i32 24, i32 16, i32 1 }, %struct.sja1105_table_ops { ptr @sja1110_general_params_entry_packing, i32 224, i32 56, i32 1 }, %struct.sja1105_table_ops { ptr @sja1110_retagging_entry_packing, i32 56, i32 8, i32 32 }, %struct.sja1105_table_ops zeroinitializer, %struct.sja1105_table_ops { ptr @sja1110_xmii_params_entry_packing, i32 264, i32 8, i32 1 }, %struct.sja1105_table_ops { ptr @sja1110_pcp_remapping_entry_packing, i32 64, i32 4, i32 11 }], [80 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.29 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.48 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.58 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.105 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.106 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.107 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.113 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.114 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.115 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.121 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.122 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.126 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.127 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.128 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.129 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.130 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.131 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.132 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.133 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.134 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.135 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.136 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.137 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.140 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.141 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.143 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.146 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.147 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.148 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.149 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.150 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.151 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.152 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.153 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.154 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.155 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.156 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.157 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.158 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.159 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.160 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.161 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.162 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.163 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.164 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.165 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.166 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.167 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.168 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.169 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.170 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.171 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.172 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.173 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.174 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.175 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.176 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.177 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.178 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.179 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.180 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.181 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.182 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.183 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.184 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.185 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.186 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.187 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.188 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.189 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.190 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.191 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.192 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.193 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.194 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.195 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.196 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.197 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.198 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.199 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.200 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.201 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.202 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.203 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.204 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.205 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.206 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.207 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.208 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.209 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.210 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.211 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.212 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.213 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.214 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.215 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.216 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.217 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.218 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.219 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.220 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.221 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.222 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.223 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.224 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.225 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.226 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.227 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.228 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.229 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.230 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.231 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.232 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.233 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.234 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.235 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.236 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.237 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.238 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.239 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.240 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.241 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.242 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.243 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.244 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.245 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.246 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.247 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.248 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.249 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.250 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.251 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.252 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.253 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.254 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.255 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.256 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.257 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.258 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.259 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.260 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.261 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.262 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.263 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.264 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.265 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.266 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.267 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.268 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.269 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.270 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.271 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.272 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.273 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.274 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.275 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.276 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.277 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.278 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.279 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.280 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.281 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.282 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.283 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.284 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.285 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.286 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.287 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.288 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.289 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.290 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.291 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.292 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.293 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.294 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.295 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.296 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.297 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.298 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.299 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.300 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.301 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.302 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.303 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.304 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.305 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.306 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.307 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.308 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.309 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.310 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.311 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.312 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.313 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.314 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.315 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.316 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.317 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.318 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.319 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.320 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.321 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.322 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.323 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.324 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.325 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.326 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.327 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.328 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.329 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.330 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.331 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.332 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.333 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.334 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.335 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.336 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.337 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.338 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.339 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.340 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.341 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@__sancov_gen_cov_switch_values.342 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967262, i64 4294967274]
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 26, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 30, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 33, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 48, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 51, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 65, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 69, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 72, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 985, i32 24 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 987, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 990, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 994, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 997, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 999, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1001, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1003, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1005, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1007, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1009, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1011, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant [32 x i8] c"sja1105_static_config_error_msg\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 984, i32 13 }
@___asan_gen_.427 = private unnamed_addr constant [11 x i8] c"blk_id_map\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 961, i32 12 }
@___asan_gen_.430 = private unnamed_addr constant [19 x i8] c"sja1105e_table_ops\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1199, i32 32 }
@___asan_gen_.433 = private unnamed_addr constant [19 x i8] c"sja1105t_table_ops\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1269, i32 32 }
@___asan_gen_.436 = private unnamed_addr constant [19 x i8] c"sja1105p_table_ops\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1387, i32 32 }
@___asan_gen_.439 = private unnamed_addr constant [19 x i8] c"sja1105q_table_ops\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1457, i32 32 }
@___asan_gen_.442 = private unnamed_addr constant [19 x i8] c"sja1105r_table_ops\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1575, i32 32 }
@___asan_gen_.445 = private unnamed_addr constant [19 x i8] c"sja1105s_table_ops\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1645, i32 32 }
@___asan_gen_.448 = private unnamed_addr constant [18 x i8] c"sja1110_table_ops\00", align 1
@___asan_gen_.449 = private constant [51 x i8] c"../drivers/net/dsa/sja1105/sja1105_static_config.c\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1763, i32 32 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @sja1105_pack._entry, ptr @sja1105_pack._entry.3, ptr @sja1105_pack._entry.6, ptr @sja1105_pack._entry_ptr, ptr @sja1105_pack._entry_ptr.5, ptr @sja1105_pack._entry_ptr.8, ptr @sja1105_packing._entry, ptr @sja1105_packing._entry.13, ptr @sja1105_packing._entry.15, ptr @sja1105_packing._entry_ptr, ptr @sja1105_packing._entry_ptr.14, ptr @sja1105_packing._entry_ptr.16, ptr @sja1105_unpack._entry, ptr @sja1105_unpack._entry.10, ptr @sja1105_unpack._entry_ptr, ptr @sja1105_unpack._entry_ptr.11, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @sja1105_static_config_error_msg, ptr @blk_id_map, ptr @sja1105e_table_ops, ptr @sja1105t_table_ops, ptr @sja1105p_table_ops, ptr @sja1105q_table_ops, ptr @sja1105r_table_ops, ptr @sja1105s_table_ops, ptr @sja1110_table_ops], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_pack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_pack._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_pack._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_unpack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_unpack._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_packing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_packing._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_packing._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 141, i32 192, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 323, i32 416, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105_static_config_error_msg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_id_map to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105e_table_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105t_table_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105p_table_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105q_table_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105r_table_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1105s_table_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sja1110_table_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_pack(ptr noundef %buf, ptr noundef %val, i32 noundef %start, i32 noundef %end, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @packing(ptr noundef %buf, ptr noundef %val, i32 noundef %start, i32 noundef %end, i32 noundef %len, i32 noundef 0, i8 noundef zeroext 4) #10
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.if.end23_crit_edge [
    i32 0, label %entry.cleanup_crit_edge
    i32 -22, label %do.end
    i32 -34, label %if.then7
  ], !prof !82

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %start, i32 noundef %end) #13
  br label %if.end23

if.then7:                                         ; preds = %entry
  %sub = add i32 %start, 1
  %add = sub i32 %sub, %end
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp8 = icmp sgt i32 %add, 64
  br i1 %cmp8, label %do.end12, label %do.end18

do.end12:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %start, i32 noundef %end) #13
  br label %if.end23

do.end18:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %val, align 8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef %start, i32 noundef %end) #13
  br label %if.end23

if.end23:                                         ; preds = %do.end18, %do.end12, %do.end, %entry.if.end23_crit_edge
  tail call void @dump_stack() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @packing(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_unpack(ptr noundef %buf, ptr noundef %val, i32 noundef %start, i32 noundef %end, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @packing(ptr noundef %buf, ptr noundef %val, i32 noundef %start, i32 noundef %end, i32 noundef %len, i32 noundef 1, i8 noundef zeroext 4) #10
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %call, label %entry.if.end14_crit_edge [
    i32 0, label %entry.cleanup_crit_edge
    i32 -22, label %entry.if.end14.sink.split_crit_edge
    i32 -34, label %do.end10
  ], !prof !82

entry.if.end14.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %do.end10, %entry.if.end14.sink.split_crit_edge
  %.str.4.sink = phi ptr [ @.str.4, %do.end10 ], [ @.str, %entry.if.end14.sink.split_crit_edge ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink, i32 noundef %start, i32 noundef %end) #13
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %entry.if.end14_crit_edge
  tail call void @dump_stack() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_packing(ptr noundef %buf, ptr noundef %val, i32 noundef %start, i32 noundef %end, i32 noundef %len, i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @packing(ptr noundef %buf, ptr noundef %val, i32 noundef %start, i32 noundef %end, i32 noundef %len, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %call, label %entry.if.end23_crit_edge [
    i32 0, label %entry.cleanup_crit_edge
    i32 -22, label %do.end
    i32 -34, label %if.then7
  ], !prof !82

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %start, i32 noundef %end) #13
  br label %if.end23

if.then7:                                         ; preds = %entry
  %sub = add i32 %start, 1
  %add = sub i32 %sub, %end
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add)
  %cmp8 = icmp sgt i32 %add, 64
  br i1 %cmp8, label %do.end12, label %do.end18

do.end12:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %start, i32 noundef %end) #13
  br label %if.end23

do.end18:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %val, align 8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef %start, i32 noundef %end) #13
  br label %if.end23

if.end23:                                         ; preds = %do.end18, %do.end12, %do.end, %entry.if.end23_crit_edge
  tail call void @dump_stack() #13
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_crc32(ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %word = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %word) #10
  %0 = ptrtoint ptr %word to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %word, align 8, !annotation !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp4.not = icmp eq i32 %len, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %sja1105_unpack.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %crc.06 = phi i32 [ %call, %sja1105_unpack.exit.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  %i.05 = phi i32 [ %add, %sja1105_unpack.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.05
  %call.i = call i32 @packing(ptr noundef %add.ptr, ptr noundef nonnull %word, i32 noundef 31, i32 noundef 0, i32 noundef 4, i32 noundef 1, i8 noundef zeroext 4) #10
  %1 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call.i, label %for.body.if.end14.i_crit_edge [
    i32 0, label %for.body.sja1105_unpack.exit_crit_edge
    i32 -22, label %for.body.if.end14.sink.split.i_crit_edge
    i32 -34, label %do.end10.i
  ], !prof !82

for.body.if.end14.sink.split.i_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.sink.split.i

for.body.sja1105_unpack.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_unpack.exit

for.body.if.end14.i_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i

do.end10.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.sink.split.i

if.end14.sink.split.i:                            ; preds = %do.end10.i, %for.body.if.end14.sink.split.i_crit_edge
  %.str.4.sink.i = phi ptr [ @.str.4, %do.end10.i ], [ @.str, %for.body.if.end14.sink.split.i_crit_edge ]
  %call12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink.i, i32 noundef 31, i32 noundef 0) #13
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.end14.sink.split.i, %for.body.if.end14.i_crit_edge
  call void @dump_stack() #13
  br label %sja1105_unpack.exit

sja1105_unpack.exit:                              ; preds = %if.end14.i, %for.body.sja1105_unpack.exit_crit_edge
  %call = call i32 @crc32_le(i32 noundef %crc.06, ptr noundef nonnull %word, i32 noundef 4) #14
  %add = add i32 %i.05, 4
  %cmp = icmp ult i32 %add, %len
  br i1 %cmp, label %sja1105_unpack.exit.for.body_crit_edge, label %for.end.loopexit

sja1105_unpack.exit.for.body_crit_edge:           ; preds = %sja1105_unpack.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %sja1105_unpack.exit
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo = xor i32 %call, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %crc.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %word) #10
  ret i32 %crc.0.lcssa
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105pqrs_avb_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 126, i32 noundef 126, i32 noundef 16, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 126, i32 noundef 126) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 126, i32 noundef 126) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %destmeta = getelementptr inbounds %struct.sja1105_avb_params_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i8 = tail call i32 @packing(ptr noundef %buf, ptr noundef %destmeta, i32 noundef 125, i32 noundef 78, i32 noundef 16, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %call.i8, label %sja1105_packing.exit.if.end23.i13_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit14_crit_edge
    i32 -22, label %do.end.i10
    i32 -34, label %if.then7.i11
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit14_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit14

sja1105_packing.exit.if.end23.i13_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i13

do.end.i10:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 125, i32 noundef 78) #13
  br label %if.end23.i13

if.then7.i11:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %destmeta to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %destmeta, align 8
  %call20.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 125, i32 noundef 78) #13
  br label %if.end23.i13

if.end23.i13:                                     ; preds = %if.then7.i11, %do.end.i10, %sja1105_packing.exit.if.end23.i13_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit14

sja1105_packing.exit14:                           ; preds = %if.end23.i13, %sja1105_packing.exit.sja1105_packing.exit14_crit_edge
  %srcmeta = getelementptr inbounds %struct.sja1105_avb_params_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i15 = tail call i32 @packing(ptr noundef %buf, ptr noundef %srcmeta, i32 noundef 77, i32 noundef 30, i32 noundef 16, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %call.i15, label %sja1105_packing.exit14.if.end23.i20_crit_edge [
    i32 0, label %sja1105_packing.exit14.sja1105_packing.exit21_crit_edge
    i32 -22, label %do.end.i17
    i32 -34, label %if.then7.i18
  ], !prof !82

sja1105_packing.exit14.sja1105_packing.exit21_crit_edge: ; preds = %sja1105_packing.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit21

sja1105_packing.exit14.if.end23.i20_crit_edge:    ; preds = %sja1105_packing.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i20

do.end.i17:                                       ; preds = %sja1105_packing.exit14
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 30) #13
  br label %if.end23.i20

if.then7.i18:                                     ; preds = %sja1105_packing.exit14
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %srcmeta to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %srcmeta, align 8
  %call20.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 77, i32 noundef 30) #13
  br label %if.end23.i20

if.end23.i20:                                     ; preds = %if.then7.i18, %do.end.i17, %sja1105_packing.exit14.if.end23.i20_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit21

sja1105_packing.exit21:                           ; preds = %if.end23.i20, %sja1105_packing.exit14.sja1105_packing.exit21_crit_edge
  ret i32 16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105pqrs_general_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 351, i32 noundef 351, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 351, i32 noundef 351) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 351, i32 noundef 351) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %mirr_ptacu = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i74 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mirr_ptacu, i32 noundef 350, i32 noundef 350, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call.i74, label %sja1105_packing.exit.if.end23.i79_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit80_crit_edge
    i32 -22, label %do.end.i76
    i32 -34, label %if.then7.i77
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit80_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit80

sja1105_packing.exit.if.end23.i79_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i79

do.end.i76:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 350, i32 noundef 350) #13
  br label %if.end23.i79

if.then7.i77:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %mirr_ptacu to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mirr_ptacu, align 8
  %call20.i78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 350, i32 noundef 350) #13
  br label %if.end23.i79

if.end23.i79:                                     ; preds = %if.then7.i77, %do.end.i76, %sja1105_packing.exit.if.end23.i79_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit80

sja1105_packing.exit80:                           ; preds = %if.end23.i79, %sja1105_packing.exit.sja1105_packing.exit80_crit_edge
  %switchid = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i81 = tail call i32 @packing(ptr noundef %buf, ptr noundef %switchid, i32 noundef 349, i32 noundef 347, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %call.i81, label %sja1105_packing.exit80.if.end23.i86_crit_edge [
    i32 0, label %sja1105_packing.exit80.sja1105_packing.exit87_crit_edge
    i32 -22, label %do.end.i83
    i32 -34, label %if.then7.i84
  ], !prof !82

sja1105_packing.exit80.sja1105_packing.exit87_crit_edge: ; preds = %sja1105_packing.exit80
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit87

sja1105_packing.exit80.if.end23.i86_crit_edge:    ; preds = %sja1105_packing.exit80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i86

do.end.i83:                                       ; preds = %sja1105_packing.exit80
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 349, i32 noundef 347) #13
  br label %if.end23.i86

if.then7.i84:                                     ; preds = %sja1105_packing.exit80
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %switchid to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %switchid, align 8
  %call20.i85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 349, i32 noundef 347) #13
  br label %if.end23.i86

if.end23.i86:                                     ; preds = %if.then7.i84, %do.end.i83, %sja1105_packing.exit80.if.end23.i86_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit87

sja1105_packing.exit87:                           ; preds = %if.end23.i86, %sja1105_packing.exit80.sja1105_packing.exit87_crit_edge
  %hostprio = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i88 = tail call i32 @packing(ptr noundef %buf, ptr noundef %hostprio, i32 noundef 346, i32 noundef 344, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call.i88, label %sja1105_packing.exit87.if.end23.i93_crit_edge [
    i32 0, label %sja1105_packing.exit87.sja1105_packing.exit94_crit_edge
    i32 -22, label %do.end.i90
    i32 -34, label %if.then7.i91
  ], !prof !82

sja1105_packing.exit87.sja1105_packing.exit94_crit_edge: ; preds = %sja1105_packing.exit87
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit94

sja1105_packing.exit87.if.end23.i93_crit_edge:    ; preds = %sja1105_packing.exit87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i93

do.end.i90:                                       ; preds = %sja1105_packing.exit87
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 346, i32 noundef 344) #13
  br label %if.end23.i93

if.then7.i91:                                     ; preds = %sja1105_packing.exit87
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %hostprio to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %hostprio, align 8
  %call20.i92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 346, i32 noundef 344) #13
  br label %if.end23.i93

if.end23.i93:                                     ; preds = %if.then7.i91, %do.end.i90, %sja1105_packing.exit87.if.end23.i93_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit94

sja1105_packing.exit94:                           ; preds = %if.end23.i93, %sja1105_packing.exit87.sja1105_packing.exit94_crit_edge
  %mac_fltres1 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i95 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mac_fltres1, i32 noundef 343, i32 noundef 296, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %call.i95, label %sja1105_packing.exit94.if.end23.i100_crit_edge [
    i32 0, label %sja1105_packing.exit94.sja1105_packing.exit101_crit_edge
    i32 -22, label %do.end.i97
    i32 -34, label %if.then7.i98
  ], !prof !82

sja1105_packing.exit94.sja1105_packing.exit101_crit_edge: ; preds = %sja1105_packing.exit94
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit101

sja1105_packing.exit94.if.end23.i100_crit_edge:   ; preds = %sja1105_packing.exit94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i100

do.end.i97:                                       ; preds = %sja1105_packing.exit94
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 343, i32 noundef 296) #13
  br label %if.end23.i100

if.then7.i98:                                     ; preds = %sja1105_packing.exit94
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %mac_fltres1 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %mac_fltres1, align 8
  %call20.i99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 343, i32 noundef 296) #13
  br label %if.end23.i100

if.end23.i100:                                    ; preds = %if.then7.i98, %do.end.i97, %sja1105_packing.exit94.if.end23.i100_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit101

sja1105_packing.exit101:                          ; preds = %if.end23.i100, %sja1105_packing.exit94.sja1105_packing.exit101_crit_edge
  %mac_fltres0 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 5
  %call.i102 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mac_fltres0, i32 noundef 295, i32 noundef 248, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %15 = zext i32 %call.i102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call.i102, label %sja1105_packing.exit101.if.end23.i107_crit_edge [
    i32 0, label %sja1105_packing.exit101.sja1105_packing.exit108_crit_edge
    i32 -22, label %do.end.i104
    i32 -34, label %if.then7.i105
  ], !prof !82

sja1105_packing.exit101.sja1105_packing.exit108_crit_edge: ; preds = %sja1105_packing.exit101
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit108

sja1105_packing.exit101.if.end23.i107_crit_edge:  ; preds = %sja1105_packing.exit101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i107

do.end.i104:                                      ; preds = %sja1105_packing.exit101
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 295, i32 noundef 248) #13
  br label %if.end23.i107

if.then7.i105:                                    ; preds = %sja1105_packing.exit101
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %mac_fltres0 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %mac_fltres0, align 8
  %call20.i106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %17, i32 noundef 295, i32 noundef 248) #13
  br label %if.end23.i107

if.end23.i107:                                    ; preds = %if.then7.i105, %do.end.i104, %sja1105_packing.exit101.if.end23.i107_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit108

sja1105_packing.exit108:                          ; preds = %if.end23.i107, %sja1105_packing.exit101.sja1105_packing.exit108_crit_edge
  %mac_flt1 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 6
  %call.i109 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mac_flt1, i32 noundef 247, i32 noundef 200, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %18 = zext i32 %call.i109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call.i109, label %sja1105_packing.exit108.if.end23.i114_crit_edge [
    i32 0, label %sja1105_packing.exit108.sja1105_packing.exit115_crit_edge
    i32 -22, label %do.end.i111
    i32 -34, label %if.then7.i112
  ], !prof !82

sja1105_packing.exit108.sja1105_packing.exit115_crit_edge: ; preds = %sja1105_packing.exit108
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit115

sja1105_packing.exit108.if.end23.i114_crit_edge:  ; preds = %sja1105_packing.exit108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i114

do.end.i111:                                      ; preds = %sja1105_packing.exit108
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 200) #13
  br label %if.end23.i114

if.then7.i112:                                    ; preds = %sja1105_packing.exit108
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %mac_flt1 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %mac_flt1, align 8
  %call20.i113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %20, i32 noundef 247, i32 noundef 200) #13
  br label %if.end23.i114

if.end23.i114:                                    ; preds = %if.then7.i112, %do.end.i111, %sja1105_packing.exit108.if.end23.i114_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit115

sja1105_packing.exit115:                          ; preds = %if.end23.i114, %sja1105_packing.exit108.sja1105_packing.exit115_crit_edge
  %mac_flt0 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 7
  %call.i116 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mac_flt0, i32 noundef 199, i32 noundef 152, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %21 = zext i32 %call.i116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %call.i116, label %sja1105_packing.exit115.if.end23.i121_crit_edge [
    i32 0, label %sja1105_packing.exit115.sja1105_packing.exit122_crit_edge
    i32 -22, label %do.end.i118
    i32 -34, label %if.then7.i119
  ], !prof !82

sja1105_packing.exit115.sja1105_packing.exit122_crit_edge: ; preds = %sja1105_packing.exit115
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit122

sja1105_packing.exit115.if.end23.i121_crit_edge:  ; preds = %sja1105_packing.exit115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i121

do.end.i118:                                      ; preds = %sja1105_packing.exit115
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 199, i32 noundef 152) #13
  br label %if.end23.i121

if.then7.i119:                                    ; preds = %sja1105_packing.exit115
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %mac_flt0 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %mac_flt0, align 8
  %call20.i120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %23, i32 noundef 199, i32 noundef 152) #13
  br label %if.end23.i121

if.end23.i121:                                    ; preds = %if.then7.i119, %do.end.i118, %sja1105_packing.exit115.if.end23.i121_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit122

sja1105_packing.exit122:                          ; preds = %if.end23.i121, %sja1105_packing.exit115.sja1105_packing.exit122_crit_edge
  %incl_srcpt1 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 8
  %call.i123 = tail call i32 @packing(ptr noundef %buf, ptr noundef %incl_srcpt1, i32 noundef 151, i32 noundef 151, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %24 = zext i32 %call.i123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call.i123, label %sja1105_packing.exit122.if.end23.i128_crit_edge [
    i32 0, label %sja1105_packing.exit122.sja1105_packing.exit129_crit_edge
    i32 -22, label %do.end.i125
    i32 -34, label %if.then7.i126
  ], !prof !82

sja1105_packing.exit122.sja1105_packing.exit129_crit_edge: ; preds = %sja1105_packing.exit122
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit129

sja1105_packing.exit122.if.end23.i128_crit_edge:  ; preds = %sja1105_packing.exit122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i128

do.end.i125:                                      ; preds = %sja1105_packing.exit122
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 151) #13
  br label %if.end23.i128

if.then7.i126:                                    ; preds = %sja1105_packing.exit122
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %incl_srcpt1 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %incl_srcpt1, align 8
  %call20.i127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %26, i32 noundef 151, i32 noundef 151) #13
  br label %if.end23.i128

if.end23.i128:                                    ; preds = %if.then7.i126, %do.end.i125, %sja1105_packing.exit122.if.end23.i128_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit129

sja1105_packing.exit129:                          ; preds = %if.end23.i128, %sja1105_packing.exit122.sja1105_packing.exit129_crit_edge
  %incl_srcpt0 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 9
  %call.i130 = tail call i32 @packing(ptr noundef %buf, ptr noundef %incl_srcpt0, i32 noundef 150, i32 noundef 150, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %27 = zext i32 %call.i130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call.i130, label %sja1105_packing.exit129.if.end23.i135_crit_edge [
    i32 0, label %sja1105_packing.exit129.sja1105_packing.exit136_crit_edge
    i32 -22, label %do.end.i132
    i32 -34, label %if.then7.i133
  ], !prof !82

sja1105_packing.exit129.sja1105_packing.exit136_crit_edge: ; preds = %sja1105_packing.exit129
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit136

sja1105_packing.exit129.if.end23.i135_crit_edge:  ; preds = %sja1105_packing.exit129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i135

do.end.i132:                                      ; preds = %sja1105_packing.exit129
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 150, i32 noundef 150) #13
  br label %if.end23.i135

if.then7.i133:                                    ; preds = %sja1105_packing.exit129
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %incl_srcpt0 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %incl_srcpt0, align 8
  %call20.i134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %29, i32 noundef 150, i32 noundef 150) #13
  br label %if.end23.i135

if.end23.i135:                                    ; preds = %if.then7.i133, %do.end.i132, %sja1105_packing.exit129.if.end23.i135_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit136

sja1105_packing.exit136:                          ; preds = %if.end23.i135, %sja1105_packing.exit129.sja1105_packing.exit136_crit_edge
  %send_meta1 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 10
  %call.i137 = tail call i32 @packing(ptr noundef %buf, ptr noundef %send_meta1, i32 noundef 149, i32 noundef 149, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %30 = zext i32 %call.i137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call.i137, label %sja1105_packing.exit136.if.end23.i142_crit_edge [
    i32 0, label %sja1105_packing.exit136.sja1105_packing.exit143_crit_edge
    i32 -22, label %do.end.i139
    i32 -34, label %if.then7.i140
  ], !prof !82

sja1105_packing.exit136.sja1105_packing.exit143_crit_edge: ; preds = %sja1105_packing.exit136
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit143

sja1105_packing.exit136.if.end23.i142_crit_edge:  ; preds = %sja1105_packing.exit136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i142

do.end.i139:                                      ; preds = %sja1105_packing.exit136
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 149) #13
  br label %if.end23.i142

if.then7.i140:                                    ; preds = %sja1105_packing.exit136
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %send_meta1 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %send_meta1, align 8
  %call20.i141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %32, i32 noundef 149, i32 noundef 149) #13
  br label %if.end23.i142

if.end23.i142:                                    ; preds = %if.then7.i140, %do.end.i139, %sja1105_packing.exit136.if.end23.i142_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit143

sja1105_packing.exit143:                          ; preds = %if.end23.i142, %sja1105_packing.exit136.sja1105_packing.exit143_crit_edge
  %send_meta0 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 11
  %call.i144 = tail call i32 @packing(ptr noundef %buf, ptr noundef %send_meta0, i32 noundef 148, i32 noundef 148, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %33 = zext i32 %call.i144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call.i144, label %sja1105_packing.exit143.if.end23.i149_crit_edge [
    i32 0, label %sja1105_packing.exit143.sja1105_packing.exit150_crit_edge
    i32 -22, label %do.end.i146
    i32 -34, label %if.then7.i147
  ], !prof !82

sja1105_packing.exit143.sja1105_packing.exit150_crit_edge: ; preds = %sja1105_packing.exit143
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit150

sja1105_packing.exit143.if.end23.i149_crit_edge:  ; preds = %sja1105_packing.exit143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i149

do.end.i146:                                      ; preds = %sja1105_packing.exit143
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 148) #13
  br label %if.end23.i149

if.then7.i147:                                    ; preds = %sja1105_packing.exit143
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %send_meta0 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %send_meta0, align 8
  %call20.i148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %35, i32 noundef 148, i32 noundef 148) #13
  br label %if.end23.i149

if.end23.i149:                                    ; preds = %if.then7.i147, %do.end.i146, %sja1105_packing.exit143.if.end23.i149_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit150

sja1105_packing.exit150:                          ; preds = %if.end23.i149, %sja1105_packing.exit143.sja1105_packing.exit150_crit_edge
  %casc_port = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 12
  %call.i151 = tail call i32 @packing(ptr noundef %buf, ptr noundef %casc_port, i32 noundef 147, i32 noundef 145, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %36 = zext i32 %call.i151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call.i151, label %sja1105_packing.exit150.if.end23.i156_crit_edge [
    i32 0, label %sja1105_packing.exit150.sja1105_packing.exit157_crit_edge
    i32 -22, label %do.end.i153
    i32 -34, label %if.then7.i154
  ], !prof !82

sja1105_packing.exit150.sja1105_packing.exit157_crit_edge: ; preds = %sja1105_packing.exit150
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit157

sja1105_packing.exit150.if.end23.i156_crit_edge:  ; preds = %sja1105_packing.exit150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i156

do.end.i153:                                      ; preds = %sja1105_packing.exit150
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 147, i32 noundef 145) #13
  br label %if.end23.i156

if.then7.i154:                                    ; preds = %sja1105_packing.exit150
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %casc_port to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %casc_port, align 8
  %call20.i155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %38, i32 noundef 147, i32 noundef 145) #13
  br label %if.end23.i156

if.end23.i156:                                    ; preds = %if.then7.i154, %do.end.i153, %sja1105_packing.exit150.if.end23.i156_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit157

sja1105_packing.exit157:                          ; preds = %if.end23.i156, %sja1105_packing.exit150.sja1105_packing.exit157_crit_edge
  %host_port = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 13
  %call.i158 = tail call i32 @packing(ptr noundef %buf, ptr noundef %host_port, i32 noundef 144, i32 noundef 142, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %39 = zext i32 %call.i158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call.i158, label %sja1105_packing.exit157.if.end23.i163_crit_edge [
    i32 0, label %sja1105_packing.exit157.sja1105_packing.exit164_crit_edge
    i32 -22, label %do.end.i160
    i32 -34, label %if.then7.i161
  ], !prof !82

sja1105_packing.exit157.sja1105_packing.exit164_crit_edge: ; preds = %sja1105_packing.exit157
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit164

sja1105_packing.exit157.if.end23.i163_crit_edge:  ; preds = %sja1105_packing.exit157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i163

do.end.i160:                                      ; preds = %sja1105_packing.exit157
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 142) #13
  br label %if.end23.i163

if.then7.i161:                                    ; preds = %sja1105_packing.exit157
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %host_port to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %host_port, align 8
  %call20.i162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %41, i32 noundef 144, i32 noundef 142) #13
  br label %if.end23.i163

if.end23.i163:                                    ; preds = %if.then7.i161, %do.end.i160, %sja1105_packing.exit157.if.end23.i163_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit164

sja1105_packing.exit164:                          ; preds = %if.end23.i163, %sja1105_packing.exit157.sja1105_packing.exit164_crit_edge
  %mirr_port = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 14
  %call.i165 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mirr_port, i32 noundef 141, i32 noundef 139, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %42 = zext i32 %call.i165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call.i165, label %sja1105_packing.exit164.if.end23.i170_crit_edge [
    i32 0, label %sja1105_packing.exit164.sja1105_packing.exit171_crit_edge
    i32 -22, label %do.end.i167
    i32 -34, label %if.then7.i168
  ], !prof !82

sja1105_packing.exit164.sja1105_packing.exit171_crit_edge: ; preds = %sja1105_packing.exit164
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit171

sja1105_packing.exit164.if.end23.i170_crit_edge:  ; preds = %sja1105_packing.exit164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i170

do.end.i167:                                      ; preds = %sja1105_packing.exit164
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 139) #13
  br label %if.end23.i170

if.then7.i168:                                    ; preds = %sja1105_packing.exit164
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %mirr_port to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %mirr_port, align 8
  %call20.i169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %44, i32 noundef 141, i32 noundef 139) #13
  br label %if.end23.i170

if.end23.i170:                                    ; preds = %if.then7.i168, %do.end.i167, %sja1105_packing.exit164.if.end23.i170_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit171

sja1105_packing.exit171:                          ; preds = %if.end23.i170, %sja1105_packing.exit164.sja1105_packing.exit171_crit_edge
  %vlmarker = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 15
  %call.i172 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlmarker, i32 noundef 138, i32 noundef 107, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %45 = zext i32 %call.i172 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call.i172, label %sja1105_packing.exit171.if.end23.i177_crit_edge [
    i32 0, label %sja1105_packing.exit171.sja1105_packing.exit178_crit_edge
    i32 -22, label %do.end.i174
    i32 -34, label %if.then7.i175
  ], !prof !82

sja1105_packing.exit171.sja1105_packing.exit178_crit_edge: ; preds = %sja1105_packing.exit171
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit178

sja1105_packing.exit171.if.end23.i177_crit_edge:  ; preds = %sja1105_packing.exit171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i177

do.end.i174:                                      ; preds = %sja1105_packing.exit171
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 138, i32 noundef 107) #13
  br label %if.end23.i177

if.then7.i175:                                    ; preds = %sja1105_packing.exit171
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %vlmarker to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %vlmarker, align 8
  %call20.i176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %47, i32 noundef 138, i32 noundef 107) #13
  br label %if.end23.i177

if.end23.i177:                                    ; preds = %if.then7.i175, %do.end.i174, %sja1105_packing.exit171.if.end23.i177_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit178

sja1105_packing.exit178:                          ; preds = %if.end23.i177, %sja1105_packing.exit171.sja1105_packing.exit178_crit_edge
  %vlmask = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 16
  %call.i179 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlmask, i32 noundef 106, i32 noundef 75, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %48 = zext i32 %call.i179 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %call.i179, label %sja1105_packing.exit178.if.end23.i184_crit_edge [
    i32 0, label %sja1105_packing.exit178.sja1105_packing.exit185_crit_edge
    i32 -22, label %do.end.i181
    i32 -34, label %if.then7.i182
  ], !prof !82

sja1105_packing.exit178.sja1105_packing.exit185_crit_edge: ; preds = %sja1105_packing.exit178
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit185

sja1105_packing.exit178.if.end23.i184_crit_edge:  ; preds = %sja1105_packing.exit178
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i184

do.end.i181:                                      ; preds = %sja1105_packing.exit178
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i180 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 75) #13
  br label %if.end23.i184

if.then7.i182:                                    ; preds = %sja1105_packing.exit178
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %vlmask to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %vlmask, align 8
  %call20.i183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %50, i32 noundef 106, i32 noundef 75) #13
  br label %if.end23.i184

if.end23.i184:                                    ; preds = %if.then7.i182, %do.end.i181, %sja1105_packing.exit178.if.end23.i184_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit185

sja1105_packing.exit185:                          ; preds = %if.end23.i184, %sja1105_packing.exit178.sja1105_packing.exit185_crit_edge
  %tpid2 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 19
  %call.i186 = tail call i32 @packing(ptr noundef %buf, ptr noundef %tpid2, i32 noundef 74, i32 noundef 59, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %51 = zext i32 %call.i186 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %call.i186, label %sja1105_packing.exit185.if.end23.i191_crit_edge [
    i32 0, label %sja1105_packing.exit185.sja1105_packing.exit192_crit_edge
    i32 -22, label %do.end.i188
    i32 -34, label %if.then7.i189
  ], !prof !82

sja1105_packing.exit185.sja1105_packing.exit192_crit_edge: ; preds = %sja1105_packing.exit185
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit192

sja1105_packing.exit185.if.end23.i191_crit_edge:  ; preds = %sja1105_packing.exit185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i191

do.end.i188:                                      ; preds = %sja1105_packing.exit185
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 74, i32 noundef 59) #13
  br label %if.end23.i191

if.then7.i189:                                    ; preds = %sja1105_packing.exit185
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %tpid2 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %tpid2, align 8
  %call20.i190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %53, i32 noundef 74, i32 noundef 59) #13
  br label %if.end23.i191

if.end23.i191:                                    ; preds = %if.then7.i189, %do.end.i188, %sja1105_packing.exit185.if.end23.i191_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit192

sja1105_packing.exit192:                          ; preds = %if.end23.i191, %sja1105_packing.exit185.sja1105_packing.exit192_crit_edge
  %ignore2stf = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 18
  %call.i193 = tail call i32 @packing(ptr noundef %buf, ptr noundef %ignore2stf, i32 noundef 58, i32 noundef 58, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %54 = zext i32 %call.i193 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %call.i193, label %sja1105_packing.exit192.if.end23.i198_crit_edge [
    i32 0, label %sja1105_packing.exit192.sja1105_packing.exit199_crit_edge
    i32 -22, label %do.end.i195
    i32 -34, label %if.then7.i196
  ], !prof !82

sja1105_packing.exit192.sja1105_packing.exit199_crit_edge: ; preds = %sja1105_packing.exit192
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit199

sja1105_packing.exit192.if.end23.i198_crit_edge:  ; preds = %sja1105_packing.exit192
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i198

do.end.i195:                                      ; preds = %sja1105_packing.exit192
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 58) #13
  br label %if.end23.i198

if.then7.i196:                                    ; preds = %sja1105_packing.exit192
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %ignore2stf to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %ignore2stf, align 8
  %call20.i197 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %56, i32 noundef 58, i32 noundef 58) #13
  br label %if.end23.i198

if.end23.i198:                                    ; preds = %if.then7.i196, %do.end.i195, %sja1105_packing.exit192.if.end23.i198_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit199

sja1105_packing.exit199:                          ; preds = %if.end23.i198, %sja1105_packing.exit192.sja1105_packing.exit199_crit_edge
  %tpid = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 17
  %call.i200 = tail call i32 @packing(ptr noundef %buf, ptr noundef %tpid, i32 noundef 57, i32 noundef 42, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %57 = zext i32 %call.i200 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %call.i200, label %sja1105_packing.exit199.if.end23.i205_crit_edge [
    i32 0, label %sja1105_packing.exit199.sja1105_packing.exit206_crit_edge
    i32 -22, label %do.end.i202
    i32 -34, label %if.then7.i203
  ], !prof !82

sja1105_packing.exit199.sja1105_packing.exit206_crit_edge: ; preds = %sja1105_packing.exit199
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit206

sja1105_packing.exit199.if.end23.i205_crit_edge:  ; preds = %sja1105_packing.exit199
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i205

do.end.i202:                                      ; preds = %sja1105_packing.exit199
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i201 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 57, i32 noundef 42) #13
  br label %if.end23.i205

if.then7.i203:                                    ; preds = %sja1105_packing.exit199
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %tpid to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %tpid, align 8
  %call20.i204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %59, i32 noundef 57, i32 noundef 42) #13
  br label %if.end23.i205

if.end23.i205:                                    ; preds = %if.then7.i203, %do.end.i202, %sja1105_packing.exit199.if.end23.i205_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit206

sja1105_packing.exit206:                          ; preds = %if.end23.i205, %sja1105_packing.exit199.sja1105_packing.exit206_crit_edge
  %queue_ts = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 20
  %call.i207 = tail call i32 @packing(ptr noundef %buf, ptr noundef %queue_ts, i32 noundef 41, i32 noundef 41, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %60 = zext i32 %call.i207 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call.i207, label %sja1105_packing.exit206.if.end23.i212_crit_edge [
    i32 0, label %sja1105_packing.exit206.sja1105_packing.exit213_crit_edge
    i32 -22, label %do.end.i209
    i32 -34, label %if.then7.i210
  ], !prof !82

sja1105_packing.exit206.sja1105_packing.exit213_crit_edge: ; preds = %sja1105_packing.exit206
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit213

sja1105_packing.exit206.if.end23.i212_crit_edge:  ; preds = %sja1105_packing.exit206
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i212

do.end.i209:                                      ; preds = %sja1105_packing.exit206
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 41) #13
  br label %if.end23.i212

if.then7.i210:                                    ; preds = %sja1105_packing.exit206
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %queue_ts to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %queue_ts, align 8
  %call20.i211 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %62, i32 noundef 41, i32 noundef 41) #13
  br label %if.end23.i212

if.end23.i212:                                    ; preds = %if.then7.i210, %do.end.i209, %sja1105_packing.exit206.if.end23.i212_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit213

sja1105_packing.exit213:                          ; preds = %if.end23.i212, %sja1105_packing.exit206.sja1105_packing.exit213_crit_edge
  %egrmirrvid = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 21
  %call.i214 = tail call i32 @packing(ptr noundef %buf, ptr noundef %egrmirrvid, i32 noundef 40, i32 noundef 29, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %63 = zext i32 %call.i214 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %call.i214, label %sja1105_packing.exit213.if.end23.i219_crit_edge [
    i32 0, label %sja1105_packing.exit213.sja1105_packing.exit220_crit_edge
    i32 -22, label %do.end.i216
    i32 -34, label %if.then7.i217
  ], !prof !82

sja1105_packing.exit213.sja1105_packing.exit220_crit_edge: ; preds = %sja1105_packing.exit213
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit220

sja1105_packing.exit213.if.end23.i219_crit_edge:  ; preds = %sja1105_packing.exit213
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i219

do.end.i216:                                      ; preds = %sja1105_packing.exit213
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 29) #13
  br label %if.end23.i219

if.then7.i217:                                    ; preds = %sja1105_packing.exit213
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %egrmirrvid to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %egrmirrvid, align 8
  %call20.i218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %65, i32 noundef 40, i32 noundef 29) #13
  br label %if.end23.i219

if.end23.i219:                                    ; preds = %if.then7.i217, %do.end.i216, %sja1105_packing.exit213.if.end23.i219_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit220

sja1105_packing.exit220:                          ; preds = %if.end23.i219, %sja1105_packing.exit213.sja1105_packing.exit220_crit_edge
  %egrmirrpcp = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 22
  %call.i221 = tail call i32 @packing(ptr noundef %buf, ptr noundef %egrmirrpcp, i32 noundef 28, i32 noundef 26, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %66 = zext i32 %call.i221 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %call.i221, label %sja1105_packing.exit220.if.end23.i226_crit_edge [
    i32 0, label %sja1105_packing.exit220.sja1105_packing.exit227_crit_edge
    i32 -22, label %do.end.i223
    i32 -34, label %if.then7.i224
  ], !prof !82

sja1105_packing.exit220.sja1105_packing.exit227_crit_edge: ; preds = %sja1105_packing.exit220
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit227

sja1105_packing.exit220.if.end23.i226_crit_edge:  ; preds = %sja1105_packing.exit220
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i226

do.end.i223:                                      ; preds = %sja1105_packing.exit220
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 26) #13
  br label %if.end23.i226

if.then7.i224:                                    ; preds = %sja1105_packing.exit220
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %egrmirrpcp to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %egrmirrpcp, align 8
  %call20.i225 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %68, i32 noundef 28, i32 noundef 26) #13
  br label %if.end23.i226

if.end23.i226:                                    ; preds = %if.then7.i224, %do.end.i223, %sja1105_packing.exit220.if.end23.i226_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit227

sja1105_packing.exit227:                          ; preds = %if.end23.i226, %sja1105_packing.exit220.sja1105_packing.exit227_crit_edge
  %egrmirrdei = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 23
  %call.i228 = tail call i32 @packing(ptr noundef %buf, ptr noundef %egrmirrdei, i32 noundef 25, i32 noundef 25, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %69 = zext i32 %call.i228 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %call.i228, label %sja1105_packing.exit227.if.end23.i233_crit_edge [
    i32 0, label %sja1105_packing.exit227.sja1105_packing.exit234_crit_edge
    i32 -22, label %do.end.i230
    i32 -34, label %if.then7.i231
  ], !prof !82

sja1105_packing.exit227.sja1105_packing.exit234_crit_edge: ; preds = %sja1105_packing.exit227
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit234

sja1105_packing.exit227.if.end23.i233_crit_edge:  ; preds = %sja1105_packing.exit227
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i233

do.end.i230:                                      ; preds = %sja1105_packing.exit227
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i229 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 25, i32 noundef 25) #13
  br label %if.end23.i233

if.then7.i231:                                    ; preds = %sja1105_packing.exit227
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %egrmirrdei to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %egrmirrdei, align 8
  %call20.i232 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %71, i32 noundef 25, i32 noundef 25) #13
  br label %if.end23.i233

if.end23.i233:                                    ; preds = %if.then7.i231, %do.end.i230, %sja1105_packing.exit227.if.end23.i233_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit234

sja1105_packing.exit234:                          ; preds = %if.end23.i233, %sja1105_packing.exit227.sja1105_packing.exit234_crit_edge
  %replay_port = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 24
  %call.i235 = tail call i32 @packing(ptr noundef %buf, ptr noundef %replay_port, i32 noundef 24, i32 noundef 22, i32 noundef 44, i32 noundef %op, i8 noundef zeroext 4) #10
  %72 = zext i32 %call.i235 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %call.i235, label %sja1105_packing.exit234.if.end23.i240_crit_edge [
    i32 0, label %sja1105_packing.exit234.sja1105_packing.exit241_crit_edge
    i32 -22, label %do.end.i237
    i32 -34, label %if.then7.i238
  ], !prof !82

sja1105_packing.exit234.sja1105_packing.exit241_crit_edge: ; preds = %sja1105_packing.exit234
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit241

sja1105_packing.exit234.if.end23.i240_crit_edge:  ; preds = %sja1105_packing.exit234
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i240

do.end.i237:                                      ; preds = %sja1105_packing.exit234
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i236 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 22) #13
  br label %if.end23.i240

if.then7.i238:                                    ; preds = %sja1105_packing.exit234
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %replay_port to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %replay_port, align 8
  %call20.i239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %74, i32 noundef 24, i32 noundef 22) #13
  br label %if.end23.i240

if.end23.i240:                                    ; preds = %if.then7.i238, %do.end.i237, %sja1105_packing.exit234.if.end23.i240_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit241

sja1105_packing.exit241:                          ; preds = %if.end23.i240, %sja1105_packing.exit234.sja1105_packing.exit241_crit_edge
  ret i32 44
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1110_general_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 447, i32 noundef 447, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 447, i32 noundef 447) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 447, i32 noundef 447) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %mirr_ptacu = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i83 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mirr_ptacu, i32 noundef 446, i32 noundef 446, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call.i83, label %sja1105_packing.exit.if.end23.i88_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit89_crit_edge
    i32 -22, label %do.end.i85
    i32 -34, label %if.then7.i86
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit89_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit89

sja1105_packing.exit.if.end23.i88_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i88

do.end.i85:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 446, i32 noundef 446) #13
  br label %if.end23.i88

if.then7.i86:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %mirr_ptacu to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mirr_ptacu, align 8
  %call20.i87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 446, i32 noundef 446) #13
  br label %if.end23.i88

if.end23.i88:                                     ; preds = %if.then7.i86, %do.end.i85, %sja1105_packing.exit.if.end23.i88_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit89

sja1105_packing.exit89:                           ; preds = %if.end23.i88, %sja1105_packing.exit.sja1105_packing.exit89_crit_edge
  %switchid = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i90 = tail call i32 @packing(ptr noundef %buf, ptr noundef %switchid, i32 noundef 445, i32 noundef 442, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %call.i90, label %sja1105_packing.exit89.if.end23.i95_crit_edge [
    i32 0, label %sja1105_packing.exit89.sja1105_packing.exit96_crit_edge
    i32 -22, label %do.end.i92
    i32 -34, label %if.then7.i93
  ], !prof !82

sja1105_packing.exit89.sja1105_packing.exit96_crit_edge: ; preds = %sja1105_packing.exit89
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit96

sja1105_packing.exit89.if.end23.i95_crit_edge:    ; preds = %sja1105_packing.exit89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i95

do.end.i92:                                       ; preds = %sja1105_packing.exit89
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 445, i32 noundef 442) #13
  br label %if.end23.i95

if.then7.i93:                                     ; preds = %sja1105_packing.exit89
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %switchid to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %switchid, align 8
  %call20.i94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 445, i32 noundef 442) #13
  br label %if.end23.i95

if.end23.i95:                                     ; preds = %if.then7.i93, %do.end.i92, %sja1105_packing.exit89.if.end23.i95_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit96

sja1105_packing.exit96:                           ; preds = %if.end23.i95, %sja1105_packing.exit89.sja1105_packing.exit96_crit_edge
  %hostprio = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i97 = tail call i32 @packing(ptr noundef %buf, ptr noundef %hostprio, i32 noundef 441, i32 noundef 439, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %call.i97, label %sja1105_packing.exit96.if.end23.i102_crit_edge [
    i32 0, label %sja1105_packing.exit96.sja1105_packing.exit103_crit_edge
    i32 -22, label %do.end.i99
    i32 -34, label %if.then7.i100
  ], !prof !82

sja1105_packing.exit96.sja1105_packing.exit103_crit_edge: ; preds = %sja1105_packing.exit96
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit103

sja1105_packing.exit96.if.end23.i102_crit_edge:   ; preds = %sja1105_packing.exit96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i102

do.end.i99:                                       ; preds = %sja1105_packing.exit96
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 441, i32 noundef 439) #13
  br label %if.end23.i102

if.then7.i100:                                    ; preds = %sja1105_packing.exit96
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %hostprio to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %hostprio, align 8
  %call20.i101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 441, i32 noundef 439) #13
  br label %if.end23.i102

if.end23.i102:                                    ; preds = %if.then7.i100, %do.end.i99, %sja1105_packing.exit96.if.end23.i102_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit103

sja1105_packing.exit103:                          ; preds = %if.end23.i102, %sja1105_packing.exit96.sja1105_packing.exit103_crit_edge
  %mac_fltres1 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i104 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mac_fltres1, i32 noundef 438, i32 noundef 391, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %call.i104, label %sja1105_packing.exit103.if.end23.i109_crit_edge [
    i32 0, label %sja1105_packing.exit103.sja1105_packing.exit110_crit_edge
    i32 -22, label %do.end.i106
    i32 -34, label %if.then7.i107
  ], !prof !82

sja1105_packing.exit103.sja1105_packing.exit110_crit_edge: ; preds = %sja1105_packing.exit103
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit110

sja1105_packing.exit103.if.end23.i109_crit_edge:  ; preds = %sja1105_packing.exit103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i109

do.end.i106:                                      ; preds = %sja1105_packing.exit103
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 438, i32 noundef 391) #13
  br label %if.end23.i109

if.then7.i107:                                    ; preds = %sja1105_packing.exit103
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %mac_fltres1 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %mac_fltres1, align 8
  %call20.i108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 438, i32 noundef 391) #13
  br label %if.end23.i109

if.end23.i109:                                    ; preds = %if.then7.i107, %do.end.i106, %sja1105_packing.exit103.if.end23.i109_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit110

sja1105_packing.exit110:                          ; preds = %if.end23.i109, %sja1105_packing.exit103.sja1105_packing.exit110_crit_edge
  %mac_fltres0 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 5
  %call.i111 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mac_fltres0, i32 noundef 390, i32 noundef 343, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %15 = zext i32 %call.i111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %call.i111, label %sja1105_packing.exit110.if.end23.i116_crit_edge [
    i32 0, label %sja1105_packing.exit110.sja1105_packing.exit117_crit_edge
    i32 -22, label %do.end.i113
    i32 -34, label %if.then7.i114
  ], !prof !82

sja1105_packing.exit110.sja1105_packing.exit117_crit_edge: ; preds = %sja1105_packing.exit110
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit117

sja1105_packing.exit110.if.end23.i116_crit_edge:  ; preds = %sja1105_packing.exit110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i116

do.end.i113:                                      ; preds = %sja1105_packing.exit110
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 390, i32 noundef 343) #13
  br label %if.end23.i116

if.then7.i114:                                    ; preds = %sja1105_packing.exit110
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %mac_fltres0 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %mac_fltres0, align 8
  %call20.i115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %17, i32 noundef 390, i32 noundef 343) #13
  br label %if.end23.i116

if.end23.i116:                                    ; preds = %if.then7.i114, %do.end.i113, %sja1105_packing.exit110.if.end23.i116_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit117

sja1105_packing.exit117:                          ; preds = %if.end23.i116, %sja1105_packing.exit110.sja1105_packing.exit117_crit_edge
  %mac_flt1 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 6
  %call.i118 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mac_flt1, i32 noundef 342, i32 noundef 295, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %18 = zext i32 %call.i118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call.i118, label %sja1105_packing.exit117.if.end23.i123_crit_edge [
    i32 0, label %sja1105_packing.exit117.sja1105_packing.exit124_crit_edge
    i32 -22, label %do.end.i120
    i32 -34, label %if.then7.i121
  ], !prof !82

sja1105_packing.exit117.sja1105_packing.exit124_crit_edge: ; preds = %sja1105_packing.exit117
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit124

sja1105_packing.exit117.if.end23.i123_crit_edge:  ; preds = %sja1105_packing.exit117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i123

do.end.i120:                                      ; preds = %sja1105_packing.exit117
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 342, i32 noundef 295) #13
  br label %if.end23.i123

if.then7.i121:                                    ; preds = %sja1105_packing.exit117
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %mac_flt1 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %mac_flt1, align 8
  %call20.i122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %20, i32 noundef 342, i32 noundef 295) #13
  br label %if.end23.i123

if.end23.i123:                                    ; preds = %if.then7.i121, %do.end.i120, %sja1105_packing.exit117.if.end23.i123_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit124

sja1105_packing.exit124:                          ; preds = %if.end23.i123, %sja1105_packing.exit117.sja1105_packing.exit124_crit_edge
  %mac_flt0 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 7
  %call.i125 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mac_flt0, i32 noundef 294, i32 noundef 247, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %21 = zext i32 %call.i125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %call.i125, label %sja1105_packing.exit124.if.end23.i130_crit_edge [
    i32 0, label %sja1105_packing.exit124.sja1105_packing.exit131_crit_edge
    i32 -22, label %do.end.i127
    i32 -34, label %if.then7.i128
  ], !prof !82

sja1105_packing.exit124.sja1105_packing.exit131_crit_edge: ; preds = %sja1105_packing.exit124
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit131

sja1105_packing.exit124.if.end23.i130_crit_edge:  ; preds = %sja1105_packing.exit124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i130

do.end.i127:                                      ; preds = %sja1105_packing.exit124
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 294, i32 noundef 247) #13
  br label %if.end23.i130

if.then7.i128:                                    ; preds = %sja1105_packing.exit124
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %mac_flt0 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %mac_flt0, align 8
  %call20.i129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %23, i32 noundef 294, i32 noundef 247) #13
  br label %if.end23.i130

if.end23.i130:                                    ; preds = %if.then7.i128, %do.end.i127, %sja1105_packing.exit124.if.end23.i130_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit131

sja1105_packing.exit131:                          ; preds = %if.end23.i130, %sja1105_packing.exit124.sja1105_packing.exit131_crit_edge
  %incl_srcpt1 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 8
  %call.i132 = tail call i32 @packing(ptr noundef %buf, ptr noundef %incl_srcpt1, i32 noundef 246, i32 noundef 246, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %24 = zext i32 %call.i132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %call.i132, label %sja1105_packing.exit131.if.end23.i137_crit_edge [
    i32 0, label %sja1105_packing.exit131.sja1105_packing.exit138_crit_edge
    i32 -22, label %do.end.i134
    i32 -34, label %if.then7.i135
  ], !prof !82

sja1105_packing.exit131.sja1105_packing.exit138_crit_edge: ; preds = %sja1105_packing.exit131
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit138

sja1105_packing.exit131.if.end23.i137_crit_edge:  ; preds = %sja1105_packing.exit131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i137

do.end.i134:                                      ; preds = %sja1105_packing.exit131
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 246) #13
  br label %if.end23.i137

if.then7.i135:                                    ; preds = %sja1105_packing.exit131
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %incl_srcpt1 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %incl_srcpt1, align 8
  %call20.i136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %26, i32 noundef 246, i32 noundef 246) #13
  br label %if.end23.i137

if.end23.i137:                                    ; preds = %if.then7.i135, %do.end.i134, %sja1105_packing.exit131.if.end23.i137_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit138

sja1105_packing.exit138:                          ; preds = %if.end23.i137, %sja1105_packing.exit131.sja1105_packing.exit138_crit_edge
  %incl_srcpt0 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 9
  %call.i139 = tail call i32 @packing(ptr noundef %buf, ptr noundef %incl_srcpt0, i32 noundef 245, i32 noundef 245, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %27 = zext i32 %call.i139 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %call.i139, label %sja1105_packing.exit138.if.end23.i144_crit_edge [
    i32 0, label %sja1105_packing.exit138.sja1105_packing.exit145_crit_edge
    i32 -22, label %do.end.i141
    i32 -34, label %if.then7.i142
  ], !prof !82

sja1105_packing.exit138.sja1105_packing.exit145_crit_edge: ; preds = %sja1105_packing.exit138
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit145

sja1105_packing.exit138.if.end23.i144_crit_edge:  ; preds = %sja1105_packing.exit138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i144

do.end.i141:                                      ; preds = %sja1105_packing.exit138
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 245) #13
  br label %if.end23.i144

if.then7.i142:                                    ; preds = %sja1105_packing.exit138
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %incl_srcpt0 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %incl_srcpt0, align 8
  %call20.i143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %29, i32 noundef 245, i32 noundef 245) #13
  br label %if.end23.i144

if.end23.i144:                                    ; preds = %if.then7.i142, %do.end.i141, %sja1105_packing.exit138.if.end23.i144_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit145

sja1105_packing.exit145:                          ; preds = %if.end23.i144, %sja1105_packing.exit138.sja1105_packing.exit145_crit_edge
  %send_meta1 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 10
  %call.i146 = tail call i32 @packing(ptr noundef %buf, ptr noundef %send_meta1, i32 noundef 244, i32 noundef 244, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %30 = zext i32 %call.i146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call.i146, label %sja1105_packing.exit145.if.end23.i151_crit_edge [
    i32 0, label %sja1105_packing.exit145.sja1105_packing.exit152_crit_edge
    i32 -22, label %do.end.i148
    i32 -34, label %if.then7.i149
  ], !prof !82

sja1105_packing.exit145.sja1105_packing.exit152_crit_edge: ; preds = %sja1105_packing.exit145
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit152

sja1105_packing.exit145.if.end23.i151_crit_edge:  ; preds = %sja1105_packing.exit145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i151

do.end.i148:                                      ; preds = %sja1105_packing.exit145
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 244, i32 noundef 244) #13
  br label %if.end23.i151

if.then7.i149:                                    ; preds = %sja1105_packing.exit145
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %send_meta1 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %send_meta1, align 8
  %call20.i150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %32, i32 noundef 244, i32 noundef 244) #13
  br label %if.end23.i151

if.end23.i151:                                    ; preds = %if.then7.i149, %do.end.i148, %sja1105_packing.exit145.if.end23.i151_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit152

sja1105_packing.exit152:                          ; preds = %if.end23.i151, %sja1105_packing.exit145.sja1105_packing.exit152_crit_edge
  %send_meta0 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 11
  %call.i153 = tail call i32 @packing(ptr noundef %buf, ptr noundef %send_meta0, i32 noundef 243, i32 noundef 243, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %33 = zext i32 %call.i153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call.i153, label %sja1105_packing.exit152.if.end23.i158_crit_edge [
    i32 0, label %sja1105_packing.exit152.sja1105_packing.exit159_crit_edge
    i32 -22, label %do.end.i155
    i32 -34, label %if.then7.i156
  ], !prof !82

sja1105_packing.exit152.sja1105_packing.exit159_crit_edge: ; preds = %sja1105_packing.exit152
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit159

sja1105_packing.exit152.if.end23.i158_crit_edge:  ; preds = %sja1105_packing.exit152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i158

do.end.i155:                                      ; preds = %sja1105_packing.exit152
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 243, i32 noundef 243) #13
  br label %if.end23.i158

if.then7.i156:                                    ; preds = %sja1105_packing.exit152
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %send_meta0 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %send_meta0, align 8
  %call20.i157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %35, i32 noundef 243, i32 noundef 243) #13
  br label %if.end23.i158

if.end23.i158:                                    ; preds = %if.then7.i156, %do.end.i155, %sja1105_packing.exit152.if.end23.i158_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit159

sja1105_packing.exit159:                          ; preds = %if.end23.i158, %sja1105_packing.exit152.sja1105_packing.exit159_crit_edge
  %casc_port = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 12
  %call.i160 = tail call i32 @packing(ptr noundef %buf, ptr noundef %casc_port, i32 noundef 242, i32 noundef 232, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %36 = zext i32 %call.i160 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %call.i160, label %sja1105_packing.exit159.if.end23.i165_crit_edge [
    i32 0, label %sja1105_packing.exit159.sja1105_packing.exit166_crit_edge
    i32 -22, label %do.end.i162
    i32 -34, label %if.then7.i163
  ], !prof !82

sja1105_packing.exit159.sja1105_packing.exit166_crit_edge: ; preds = %sja1105_packing.exit159
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit166

sja1105_packing.exit159.if.end23.i165_crit_edge:  ; preds = %sja1105_packing.exit159
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i165

do.end.i162:                                      ; preds = %sja1105_packing.exit159
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 242, i32 noundef 232) #13
  br label %if.end23.i165

if.then7.i163:                                    ; preds = %sja1105_packing.exit159
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %casc_port to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %casc_port, align 8
  %call20.i164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %38, i32 noundef 242, i32 noundef 232) #13
  br label %if.end23.i165

if.end23.i165:                                    ; preds = %if.then7.i163, %do.end.i162, %sja1105_packing.exit159.if.end23.i165_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit166

sja1105_packing.exit166:                          ; preds = %if.end23.i165, %sja1105_packing.exit159.sja1105_packing.exit166_crit_edge
  %host_port = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 13
  %call.i167 = tail call i32 @packing(ptr noundef %buf, ptr noundef %host_port, i32 noundef 231, i32 noundef 228, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %39 = zext i32 %call.i167 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call.i167, label %sja1105_packing.exit166.if.end23.i172_crit_edge [
    i32 0, label %sja1105_packing.exit166.sja1105_packing.exit173_crit_edge
    i32 -22, label %do.end.i169
    i32 -34, label %if.then7.i170
  ], !prof !82

sja1105_packing.exit166.sja1105_packing.exit173_crit_edge: ; preds = %sja1105_packing.exit166
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit173

sja1105_packing.exit166.if.end23.i172_crit_edge:  ; preds = %sja1105_packing.exit166
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i172

do.end.i169:                                      ; preds = %sja1105_packing.exit166
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 228) #13
  br label %if.end23.i172

if.then7.i170:                                    ; preds = %sja1105_packing.exit166
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %host_port to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %host_port, align 8
  %call20.i171 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %41, i32 noundef 231, i32 noundef 228) #13
  br label %if.end23.i172

if.end23.i172:                                    ; preds = %if.then7.i170, %do.end.i169, %sja1105_packing.exit166.if.end23.i172_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit173

sja1105_packing.exit173:                          ; preds = %if.end23.i172, %sja1105_packing.exit166.sja1105_packing.exit173_crit_edge
  %mirr_port = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 14
  %call.i174 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mirr_port, i32 noundef 227, i32 noundef 224, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %42 = zext i32 %call.i174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %call.i174, label %sja1105_packing.exit173.if.end23.i179_crit_edge [
    i32 0, label %sja1105_packing.exit173.sja1105_packing.exit180_crit_edge
    i32 -22, label %do.end.i176
    i32 -34, label %if.then7.i177
  ], !prof !82

sja1105_packing.exit173.sja1105_packing.exit180_crit_edge: ; preds = %sja1105_packing.exit173
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit180

sja1105_packing.exit173.if.end23.i179_crit_edge:  ; preds = %sja1105_packing.exit173
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i179

do.end.i176:                                      ; preds = %sja1105_packing.exit173
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 224) #13
  br label %if.end23.i179

if.then7.i177:                                    ; preds = %sja1105_packing.exit173
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %mirr_port to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %mirr_port, align 8
  %call20.i178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %44, i32 noundef 227, i32 noundef 224) #13
  br label %if.end23.i179

if.end23.i179:                                    ; preds = %if.then7.i177, %do.end.i176, %sja1105_packing.exit173.if.end23.i179_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit180

sja1105_packing.exit180:                          ; preds = %if.end23.i179, %sja1105_packing.exit173.sja1105_packing.exit180_crit_edge
  %vlmarker = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 15
  %call.i181 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlmarker, i32 noundef 223, i32 noundef 192, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %45 = zext i32 %call.i181 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call.i181, label %sja1105_packing.exit180.if.end23.i186_crit_edge [
    i32 0, label %sja1105_packing.exit180.sja1105_packing.exit187_crit_edge
    i32 -22, label %do.end.i183
    i32 -34, label %if.then7.i184
  ], !prof !82

sja1105_packing.exit180.sja1105_packing.exit187_crit_edge: ; preds = %sja1105_packing.exit180
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit187

sja1105_packing.exit180.if.end23.i186_crit_edge:  ; preds = %sja1105_packing.exit180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i186

do.end.i183:                                      ; preds = %sja1105_packing.exit180
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 192) #13
  br label %if.end23.i186

if.then7.i184:                                    ; preds = %sja1105_packing.exit180
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %vlmarker to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %vlmarker, align 8
  %call20.i185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %47, i32 noundef 223, i32 noundef 192) #13
  br label %if.end23.i186

if.end23.i186:                                    ; preds = %if.then7.i184, %do.end.i183, %sja1105_packing.exit180.if.end23.i186_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit187

sja1105_packing.exit187:                          ; preds = %if.end23.i186, %sja1105_packing.exit180.sja1105_packing.exit187_crit_edge
  %vlmask = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 16
  %call.i188 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlmask, i32 noundef 191, i32 noundef 160, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %48 = zext i32 %call.i188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %call.i188, label %sja1105_packing.exit187.if.end23.i193_crit_edge [
    i32 0, label %sja1105_packing.exit187.sja1105_packing.exit194_crit_edge
    i32 -22, label %do.end.i190
    i32 -34, label %if.then7.i191
  ], !prof !82

sja1105_packing.exit187.sja1105_packing.exit194_crit_edge: ; preds = %sja1105_packing.exit187
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit194

sja1105_packing.exit187.if.end23.i193_crit_edge:  ; preds = %sja1105_packing.exit187
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i193

do.end.i190:                                      ; preds = %sja1105_packing.exit187
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 160) #13
  br label %if.end23.i193

if.then7.i191:                                    ; preds = %sja1105_packing.exit187
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %vlmask to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %vlmask, align 8
  %call20.i192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %50, i32 noundef 191, i32 noundef 160) #13
  br label %if.end23.i193

if.end23.i193:                                    ; preds = %if.then7.i191, %do.end.i190, %sja1105_packing.exit187.if.end23.i193_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit194

sja1105_packing.exit194:                          ; preds = %if.end23.i193, %sja1105_packing.exit187.sja1105_packing.exit194_crit_edge
  %tpid2 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 19
  %call.i195 = tail call i32 @packing(ptr noundef %buf, ptr noundef %tpid2, i32 noundef 159, i32 noundef 144, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %51 = zext i32 %call.i195 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %call.i195, label %sja1105_packing.exit194.if.end23.i200_crit_edge [
    i32 0, label %sja1105_packing.exit194.sja1105_packing.exit201_crit_edge
    i32 -22, label %do.end.i197
    i32 -34, label %if.then7.i198
  ], !prof !82

sja1105_packing.exit194.sja1105_packing.exit201_crit_edge: ; preds = %sja1105_packing.exit194
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit201

sja1105_packing.exit194.if.end23.i200_crit_edge:  ; preds = %sja1105_packing.exit194
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i200

do.end.i197:                                      ; preds = %sja1105_packing.exit194
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 159, i32 noundef 144) #13
  br label %if.end23.i200

if.then7.i198:                                    ; preds = %sja1105_packing.exit194
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %tpid2 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %tpid2, align 8
  %call20.i199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %53, i32 noundef 159, i32 noundef 144) #13
  br label %if.end23.i200

if.end23.i200:                                    ; preds = %if.then7.i198, %do.end.i197, %sja1105_packing.exit194.if.end23.i200_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit201

sja1105_packing.exit201:                          ; preds = %if.end23.i200, %sja1105_packing.exit194.sja1105_packing.exit201_crit_edge
  %ignore2stf = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 18
  %call.i202 = tail call i32 @packing(ptr noundef %buf, ptr noundef %ignore2stf, i32 noundef 143, i32 noundef 143, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %54 = zext i32 %call.i202 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %call.i202, label %sja1105_packing.exit201.if.end23.i207_crit_edge [
    i32 0, label %sja1105_packing.exit201.sja1105_packing.exit208_crit_edge
    i32 -22, label %do.end.i204
    i32 -34, label %if.then7.i205
  ], !prof !82

sja1105_packing.exit201.sja1105_packing.exit208_crit_edge: ; preds = %sja1105_packing.exit201
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit208

sja1105_packing.exit201.if.end23.i207_crit_edge:  ; preds = %sja1105_packing.exit201
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i207

do.end.i204:                                      ; preds = %sja1105_packing.exit201
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 143) #13
  br label %if.end23.i207

if.then7.i205:                                    ; preds = %sja1105_packing.exit201
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %ignore2stf to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %ignore2stf, align 8
  %call20.i206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %56, i32 noundef 143, i32 noundef 143) #13
  br label %if.end23.i207

if.end23.i207:                                    ; preds = %if.then7.i205, %do.end.i204, %sja1105_packing.exit201.if.end23.i207_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit208

sja1105_packing.exit208:                          ; preds = %if.end23.i207, %sja1105_packing.exit201.sja1105_packing.exit208_crit_edge
  %tpid = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 17
  %call.i209 = tail call i32 @packing(ptr noundef %buf, ptr noundef %tpid, i32 noundef 142, i32 noundef 127, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %57 = zext i32 %call.i209 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %call.i209, label %sja1105_packing.exit208.if.end23.i214_crit_edge [
    i32 0, label %sja1105_packing.exit208.sja1105_packing.exit215_crit_edge
    i32 -22, label %do.end.i211
    i32 -34, label %if.then7.i212
  ], !prof !82

sja1105_packing.exit208.sja1105_packing.exit215_crit_edge: ; preds = %sja1105_packing.exit208
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit215

sja1105_packing.exit208.if.end23.i214_crit_edge:  ; preds = %sja1105_packing.exit208
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i214

do.end.i211:                                      ; preds = %sja1105_packing.exit208
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i210 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 127) #13
  br label %if.end23.i214

if.then7.i212:                                    ; preds = %sja1105_packing.exit208
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %tpid to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %tpid, align 8
  %call20.i213 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %59, i32 noundef 142, i32 noundef 127) #13
  br label %if.end23.i214

if.end23.i214:                                    ; preds = %if.then7.i212, %do.end.i211, %sja1105_packing.exit208.if.end23.i214_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit215

sja1105_packing.exit215:                          ; preds = %if.end23.i214, %sja1105_packing.exit208.sja1105_packing.exit215_crit_edge
  %queue_ts = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 20
  %call.i216 = tail call i32 @packing(ptr noundef %buf, ptr noundef %queue_ts, i32 noundef 126, i32 noundef 126, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %60 = zext i32 %call.i216 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %call.i216, label %sja1105_packing.exit215.if.end23.i221_crit_edge [
    i32 0, label %sja1105_packing.exit215.sja1105_packing.exit222_crit_edge
    i32 -22, label %do.end.i218
    i32 -34, label %if.then7.i219
  ], !prof !82

sja1105_packing.exit215.sja1105_packing.exit222_crit_edge: ; preds = %sja1105_packing.exit215
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit222

sja1105_packing.exit215.if.end23.i221_crit_edge:  ; preds = %sja1105_packing.exit215
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i221

do.end.i218:                                      ; preds = %sja1105_packing.exit215
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i217 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 126, i32 noundef 126) #13
  br label %if.end23.i221

if.then7.i219:                                    ; preds = %sja1105_packing.exit215
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %queue_ts to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %queue_ts, align 8
  %call20.i220 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %62, i32 noundef 126, i32 noundef 126) #13
  br label %if.end23.i221

if.end23.i221:                                    ; preds = %if.then7.i219, %do.end.i218, %sja1105_packing.exit215.if.end23.i221_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit222

sja1105_packing.exit222:                          ; preds = %if.end23.i221, %sja1105_packing.exit215.sja1105_packing.exit222_crit_edge
  %egrmirrvid = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 21
  %call.i223 = tail call i32 @packing(ptr noundef %buf, ptr noundef %egrmirrvid, i32 noundef 125, i32 noundef 114, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %63 = zext i32 %call.i223 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %call.i223, label %sja1105_packing.exit222.if.end23.i228_crit_edge [
    i32 0, label %sja1105_packing.exit222.sja1105_packing.exit229_crit_edge
    i32 -22, label %do.end.i225
    i32 -34, label %if.then7.i226
  ], !prof !82

sja1105_packing.exit222.sja1105_packing.exit229_crit_edge: ; preds = %sja1105_packing.exit222
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit229

sja1105_packing.exit222.if.end23.i228_crit_edge:  ; preds = %sja1105_packing.exit222
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i228

do.end.i225:                                      ; preds = %sja1105_packing.exit222
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i224 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 125, i32 noundef 114) #13
  br label %if.end23.i228

if.then7.i226:                                    ; preds = %sja1105_packing.exit222
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %egrmirrvid to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %egrmirrvid, align 8
  %call20.i227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %65, i32 noundef 125, i32 noundef 114) #13
  br label %if.end23.i228

if.end23.i228:                                    ; preds = %if.then7.i226, %do.end.i225, %sja1105_packing.exit222.if.end23.i228_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit229

sja1105_packing.exit229:                          ; preds = %if.end23.i228, %sja1105_packing.exit222.sja1105_packing.exit229_crit_edge
  %egrmirrpcp = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 22
  %call.i230 = tail call i32 @packing(ptr noundef %buf, ptr noundef %egrmirrpcp, i32 noundef 113, i32 noundef 111, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %66 = zext i32 %call.i230 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %call.i230, label %sja1105_packing.exit229.if.end23.i235_crit_edge [
    i32 0, label %sja1105_packing.exit229.sja1105_packing.exit236_crit_edge
    i32 -22, label %do.end.i232
    i32 -34, label %if.then7.i233
  ], !prof !82

sja1105_packing.exit229.sja1105_packing.exit236_crit_edge: ; preds = %sja1105_packing.exit229
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit236

sja1105_packing.exit229.if.end23.i235_crit_edge:  ; preds = %sja1105_packing.exit229
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i235

do.end.i232:                                      ; preds = %sja1105_packing.exit229
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 113, i32 noundef 111) #13
  br label %if.end23.i235

if.then7.i233:                                    ; preds = %sja1105_packing.exit229
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %egrmirrpcp to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %egrmirrpcp, align 8
  %call20.i234 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %68, i32 noundef 113, i32 noundef 111) #13
  br label %if.end23.i235

if.end23.i235:                                    ; preds = %if.then7.i233, %do.end.i232, %sja1105_packing.exit229.if.end23.i235_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit236

sja1105_packing.exit236:                          ; preds = %if.end23.i235, %sja1105_packing.exit229.sja1105_packing.exit236_crit_edge
  %egrmirrdei = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 23
  %call.i237 = tail call i32 @packing(ptr noundef %buf, ptr noundef %egrmirrdei, i32 noundef 110, i32 noundef 110, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %69 = zext i32 %call.i237 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %call.i237, label %sja1105_packing.exit236.if.end23.i242_crit_edge [
    i32 0, label %sja1105_packing.exit236.sja1105_packing.exit243_crit_edge
    i32 -22, label %do.end.i239
    i32 -34, label %if.then7.i240
  ], !prof !82

sja1105_packing.exit236.sja1105_packing.exit243_crit_edge: ; preds = %sja1105_packing.exit236
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit243

sja1105_packing.exit236.if.end23.i242_crit_edge:  ; preds = %sja1105_packing.exit236
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i242

do.end.i239:                                      ; preds = %sja1105_packing.exit236
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i238 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 110) #13
  br label %if.end23.i242

if.then7.i240:                                    ; preds = %sja1105_packing.exit236
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %egrmirrdei to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %egrmirrdei, align 8
  %call20.i241 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %71, i32 noundef 110, i32 noundef 110) #13
  br label %if.end23.i242

if.end23.i242:                                    ; preds = %if.then7.i240, %do.end.i239, %sja1105_packing.exit236.if.end23.i242_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit243

sja1105_packing.exit243:                          ; preds = %if.end23.i242, %sja1105_packing.exit236.sja1105_packing.exit243_crit_edge
  %replay_port = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 24
  %call.i244 = tail call i32 @packing(ptr noundef %buf, ptr noundef %replay_port, i32 noundef 109, i32 noundef 106, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %72 = zext i32 %call.i244 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %call.i244, label %sja1105_packing.exit243.if.end23.i249_crit_edge [
    i32 0, label %sja1105_packing.exit243.sja1105_packing.exit250_crit_edge
    i32 -22, label %do.end.i246
    i32 -34, label %if.then7.i247
  ], !prof !82

sja1105_packing.exit243.sja1105_packing.exit250_crit_edge: ; preds = %sja1105_packing.exit243
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit250

sja1105_packing.exit243.if.end23.i249_crit_edge:  ; preds = %sja1105_packing.exit243
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i249

do.end.i246:                                      ; preds = %sja1105_packing.exit243
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 106) #13
  br label %if.end23.i249

if.then7.i247:                                    ; preds = %sja1105_packing.exit243
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %replay_port to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %replay_port, align 8
  %call20.i248 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %74, i32 noundef 109, i32 noundef 106) #13
  br label %if.end23.i249

if.end23.i249:                                    ; preds = %if.then7.i247, %do.end.i246, %sja1105_packing.exit243.if.end23.i249_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit250

sja1105_packing.exit250:                          ; preds = %if.end23.i249, %sja1105_packing.exit243.sja1105_packing.exit250_crit_edge
  %tdmaconfigidx = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 26
  %call.i251 = tail call i32 @packing(ptr noundef %buf, ptr noundef %tdmaconfigidx, i32 noundef 70, i32 noundef 67, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %75 = zext i32 %call.i251 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %call.i251, label %sja1105_packing.exit250.if.end23.i256_crit_edge [
    i32 0, label %sja1105_packing.exit250.sja1105_packing.exit257_crit_edge
    i32 -22, label %do.end.i253
    i32 -34, label %if.then7.i254
  ], !prof !82

sja1105_packing.exit250.sja1105_packing.exit257_crit_edge: ; preds = %sja1105_packing.exit250
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit257

sja1105_packing.exit250.if.end23.i256_crit_edge:  ; preds = %sja1105_packing.exit250
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i256

do.end.i253:                                      ; preds = %sja1105_packing.exit250
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 67) #13
  br label %if.end23.i256

if.then7.i254:                                    ; preds = %sja1105_packing.exit250
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %tdmaconfigidx to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %tdmaconfigidx, align 8
  %call20.i255 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %77, i32 noundef 70, i32 noundef 67) #13
  br label %if.end23.i256

if.end23.i256:                                    ; preds = %if.then7.i254, %do.end.i253, %sja1105_packing.exit250.if.end23.i256_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit257

sja1105_packing.exit257:                          ; preds = %if.end23.i256, %sja1105_packing.exit250.sja1105_packing.exit257_crit_edge
  %header_type = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 27
  %call.i258 = tail call i32 @packing(ptr noundef %buf, ptr noundef %header_type, i32 noundef 64, i32 noundef 49, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %78 = zext i32 %call.i258 to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %call.i258, label %sja1105_packing.exit257.if.end23.i263_crit_edge [
    i32 0, label %sja1105_packing.exit257.sja1105_packing.exit264_crit_edge
    i32 -22, label %do.end.i260
    i32 -34, label %if.then7.i261
  ], !prof !82

sja1105_packing.exit257.sja1105_packing.exit264_crit_edge: ; preds = %sja1105_packing.exit257
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit264

sja1105_packing.exit257.if.end23.i263_crit_edge:  ; preds = %sja1105_packing.exit257
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i263

do.end.i260:                                      ; preds = %sja1105_packing.exit257
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i259 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 49) #13
  br label %if.end23.i263

if.then7.i261:                                    ; preds = %sja1105_packing.exit257
  call void @__sanitizer_cov_trace_pc() #12
  %79 = ptrtoint ptr %header_type to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %header_type, align 8
  %call20.i262 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %80, i32 noundef 64, i32 noundef 49) #13
  br label %if.end23.i263

if.end23.i263:                                    ; preds = %if.then7.i261, %do.end.i260, %sja1105_packing.exit257.if.end23.i263_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit264

sja1105_packing.exit264:                          ; preds = %if.end23.i263, %sja1105_packing.exit257.sja1105_packing.exit264_crit_edge
  %tte_en = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 25
  %call.i265 = tail call i32 @packing(ptr noundef %buf, ptr noundef %tte_en, i32 noundef 16, i32 noundef 16, i32 noundef 56, i32 noundef %op, i8 noundef zeroext 4) #10
  %81 = zext i32 %call.i265 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %call.i265, label %sja1105_packing.exit264.if.end23.i270_crit_edge [
    i32 0, label %sja1105_packing.exit264.sja1105_packing.exit271_crit_edge
    i32 -22, label %do.end.i267
    i32 -34, label %if.then7.i268
  ], !prof !82

sja1105_packing.exit264.sja1105_packing.exit271_crit_edge: ; preds = %sja1105_packing.exit264
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit271

sja1105_packing.exit264.if.end23.i270_crit_edge:  ; preds = %sja1105_packing.exit264
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i270

do.end.i267:                                      ; preds = %sja1105_packing.exit264
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i266 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 16, i32 noundef 16) #13
  br label %if.end23.i270

if.then7.i268:                                    ; preds = %sja1105_packing.exit264
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %tte_en to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %tte_en, align 8
  %call20.i269 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %83, i32 noundef 16, i32 noundef 16) #13
  br label %if.end23.i270

if.end23.i270:                                    ; preds = %if.then7.i268, %do.end.i267, %sja1105_packing.exit264.if.end23.i270_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit271

sja1105_packing.exit271:                          ; preds = %if.end23.i270, %sja1105_packing.exit264.sja1105_packing.exit271_crit_edge
  ret i32 56
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1110_l2_forwarding_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 95, i32 noundef 93, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 93) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 95, i32 noundef 93) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %arrayidx = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 0
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx, i32 noundef 15, i32 noundef 5, i32 noundef 12, i32 noundef %op)
  %arrayidx.1 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.1, i32 noundef 26, i32 noundef 16, i32 noundef 12, i32 noundef %op)
  %arrayidx.2 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.2, i32 noundef 37, i32 noundef 27, i32 noundef 12, i32 noundef %op)
  %arrayidx.3 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.3, i32 noundef 48, i32 noundef 38, i32 noundef 12, i32 noundef %op)
  %arrayidx.4 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.4, i32 noundef 59, i32 noundef 49, i32 noundef 12, i32 noundef %op)
  %arrayidx.5 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.5, i32 noundef 70, i32 noundef 60, i32 noundef 12, i32 noundef %op)
  %arrayidx.6 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 6
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.6, i32 noundef 81, i32 noundef 71, i32 noundef 12, i32 noundef %op)
  %arrayidx.7 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 7
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.7, i32 noundef 92, i32 noundef 82, i32 noundef 12, i32 noundef %op)
  ret i32 12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_l2_forwarding_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 63, i32 noundef 59, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 59) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 63, i32 noundef 59) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %reach_port = getelementptr inbounds %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i17 = tail call i32 @packing(ptr noundef %buf, ptr noundef %reach_port, i32 noundef 58, i32 noundef 54, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %call.i17, label %sja1105_packing.exit.if.end23.i22_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit23_crit_edge
    i32 -22, label %do.end.i19
    i32 -34, label %if.then7.i20
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit23_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit23

sja1105_packing.exit.if.end23.i22_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i22

do.end.i19:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 54) #13
  br label %if.end23.i22

if.then7.i20:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %reach_port to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %reach_port, align 8
  %call20.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 58, i32 noundef 54) #13
  br label %if.end23.i22

if.end23.i22:                                     ; preds = %if.then7.i20, %do.end.i19, %sja1105_packing.exit.if.end23.i22_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit23

sja1105_packing.exit23:                           ; preds = %if.end23.i22, %sja1105_packing.exit.sja1105_packing.exit23_crit_edge
  %fl_domain = getelementptr inbounds %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i24 = tail call i32 @packing(ptr noundef %buf, ptr noundef %fl_domain, i32 noundef 53, i32 noundef 49, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %call.i24, label %sja1105_packing.exit23.if.end23.i29_crit_edge [
    i32 0, label %sja1105_packing.exit23.sja1105_packing.exit30_crit_edge
    i32 -22, label %do.end.i26
    i32 -34, label %if.then7.i27
  ], !prof !82

sja1105_packing.exit23.sja1105_packing.exit30_crit_edge: ; preds = %sja1105_packing.exit23
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit30

sja1105_packing.exit23.if.end23.i29_crit_edge:    ; preds = %sja1105_packing.exit23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i29

do.end.i26:                                       ; preds = %sja1105_packing.exit23
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 49) #13
  br label %if.end23.i29

if.then7.i27:                                     ; preds = %sja1105_packing.exit23
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %fl_domain to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %fl_domain, align 8
  %call20.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 53, i32 noundef 49) #13
  br label %if.end23.i29

if.end23.i29:                                     ; preds = %if.then7.i27, %do.end.i26, %sja1105_packing.exit23.if.end23.i29_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit30

sja1105_packing.exit30:                           ; preds = %if.end23.i29, %sja1105_packing.exit23.sja1105_packing.exit30_crit_edge
  %arrayidx = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 0
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx, i32 noundef 27, i32 noundef 25, i32 noundef 8, i32 noundef %op)
  %arrayidx.1 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.1, i32 noundef 30, i32 noundef 28, i32 noundef 8, i32 noundef %op)
  %arrayidx.2 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.2, i32 noundef 33, i32 noundef 31, i32 noundef 8, i32 noundef %op)
  %arrayidx.3 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.3, i32 noundef 36, i32 noundef 34, i32 noundef 8, i32 noundef %op)
  %arrayidx.4 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.4, i32 noundef 39, i32 noundef 37, i32 noundef 8, i32 noundef %op)
  %arrayidx.5 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.5, i32 noundef 42, i32 noundef 40, i32 noundef 8, i32 noundef %op)
  %arrayidx.6 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 6
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.6, i32 noundef 45, i32 noundef 43, i32 noundef 8, i32 noundef %op)
  %arrayidx.7 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 7
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.7, i32 noundef 48, i32 noundef 46, i32 noundef 8, i32 noundef %op)
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1110_l2_forwarding_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type_egrpcp2outputq = getelementptr inbounds %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 4
  %0 = ptrtoint ptr %type_egrpcp2outputq to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type_egrpcp2outputq, align 8, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 0
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx, i32 noundef 33, i32 noundef 31, i32 noundef 8, i32 noundef %op)
  %arrayidx.1 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.1, i32 noundef 36, i32 noundef 34, i32 noundef 8, i32 noundef %op)
  %arrayidx.2 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.2, i32 noundef 39, i32 noundef 37, i32 noundef 8, i32 noundef %op)
  %arrayidx.3 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.3, i32 noundef 42, i32 noundef 40, i32 noundef 8, i32 noundef %op)
  %arrayidx.4 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.4, i32 noundef 45, i32 noundef 43, i32 noundef 8, i32 noundef %op)
  %arrayidx.5 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.5, i32 noundef 48, i32 noundef 46, i32 noundef 8, i32 noundef %op)
  %arrayidx.6 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 6
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.6, i32 noundef 51, i32 noundef 49, i32 noundef 8, i32 noundef %op)
  %arrayidx.7 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 7
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.7, i32 noundef 54, i32 noundef 52, i32 noundef 8, i32 noundef %op)
  %arrayidx.8 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 8
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.8, i32 noundef 57, i32 noundef 55, i32 noundef 8, i32 noundef %op)
  %arrayidx.9 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 9
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.9, i32 noundef 60, i32 noundef 58, i32 noundef 8, i32 noundef %op)
  %arrayidx.10 = getelementptr %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 3, i32 10
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.10, i32 noundef 63, i32 noundef 61, i32 noundef 8, i32 noundef %op)
  br label %if.end

if.else:                                          ; preds = %entry
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 63, i32 noundef 53, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %2 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %call.i, label %if.else.if.end23.i_crit_edge [
    i32 0, label %if.else.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

if.else.sja1105_packing.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

if.else.if.end23.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 53) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %4, i32 noundef 63, i32 noundef 53) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %if.else.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %if.else.sja1105_packing.exit_crit_edge
  %reach_port = getelementptr inbounds %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i18 = tail call i32 @packing(ptr noundef %buf, ptr noundef %reach_port, i32 noundef 52, i32 noundef 42, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %5 = zext i32 %call.i18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %call.i18, label %sja1105_packing.exit.if.end23.i23_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit24_crit_edge
    i32 -22, label %do.end.i20
    i32 -34, label %if.then7.i21
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit24_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit24

sja1105_packing.exit.if.end23.i23_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i23

do.end.i20:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 42) #13
  br label %if.end23.i23

if.then7.i21:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %reach_port to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %reach_port, align 8
  %call20.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %7, i32 noundef 52, i32 noundef 42) #13
  br label %if.end23.i23

if.end23.i23:                                     ; preds = %if.then7.i21, %do.end.i20, %sja1105_packing.exit.if.end23.i23_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit24

sja1105_packing.exit24:                           ; preds = %if.end23.i23, %sja1105_packing.exit.sja1105_packing.exit24_crit_edge
  %fl_domain = getelementptr inbounds %struct.sja1105_l2_forwarding_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i25 = tail call i32 @packing(ptr noundef %buf, ptr noundef %fl_domain, i32 noundef 41, i32 noundef 31, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %8 = zext i32 %call.i25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %call.i25, label %sja1105_packing.exit24.if.end23.i30_crit_edge [
    i32 0, label %sja1105_packing.exit24.if.end_crit_edge
    i32 -22, label %do.end.i27
    i32 -34, label %if.then7.i28
  ], !prof !82

sja1105_packing.exit24.if.end_crit_edge:          ; preds = %sja1105_packing.exit24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sja1105_packing.exit24.if.end23.i30_crit_edge:    ; preds = %sja1105_packing.exit24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i30

do.end.i27:                                       ; preds = %sja1105_packing.exit24
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 31) #13
  br label %if.end23.i30

if.then7.i28:                                     ; preds = %sja1105_packing.exit24
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %fl_domain to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %fl_domain, align 8
  %call20.i29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %10, i32 noundef 41, i32 noundef 31) #13
  br label %if.end23.i30

if.end23.i30:                                     ; preds = %if.then7.i28, %do.end.i27, %sja1105_packing.exit24.if.end23.i30_crit_edge
  tail call void @dump_stack() #13
  br label %if.end

if.end:                                           ; preds = %if.end23.i30, %sja1105_packing.exit24.if.end_crit_edge, %for.body.preheader
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105pqrs_l2_lookup_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 68, i32 noundef 58, i32 noundef 16, i32 noundef %op)
  %arrayidx.1 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.1, i32 noundef 79, i32 noundef 69, i32 noundef 16, i32 noundef %op)
  %arrayidx.2 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.2, i32 noundef 90, i32 noundef 80, i32 noundef 16, i32 noundef %op)
  %arrayidx.3 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.3, i32 noundef 101, i32 noundef 91, i32 noundef 16, i32 noundef %op)
  %arrayidx.4 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.4, i32 noundef 112, i32 noundef 102, i32 noundef 16, i32 noundef %op)
  %maxage = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 6
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %maxage, i32 noundef 57, i32 noundef 43, i32 noundef 16, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 57, i32 noundef 43) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %maxage to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %maxage, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 57, i32 noundef 43) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %start_dynspc = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i35 = tail call i32 @packing(ptr noundef %buf, ptr noundef %start_dynspc, i32 noundef 42, i32 noundef 33, i32 noundef 16, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %call.i35, label %sja1105_packing.exit.if.end23.i40_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit41_crit_edge
    i32 -22, label %do.end.i37
    i32 -34, label %if.then7.i38
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit41_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit41

sja1105_packing.exit.if.end23.i40_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i40

do.end.i37:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 33) #13
  br label %if.end23.i40

if.then7.i38:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %start_dynspc to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start_dynspc, align 8
  %call20.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 42, i32 noundef 33) #13
  br label %if.end23.i40

if.end23.i40:                                     ; preds = %if.then7.i38, %do.end.i37, %sja1105_packing.exit.if.end23.i40_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit41

sja1105_packing.exit41:                           ; preds = %if.end23.i40, %sja1105_packing.exit.sja1105_packing.exit41_crit_edge
  %drpnolearn = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i42 = tail call i32 @packing(ptr noundef %buf, ptr noundef %drpnolearn, i32 noundef 32, i32 noundef 28, i32 noundef 16, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %call.i42, label %sja1105_packing.exit41.if.end23.i47_crit_edge [
    i32 0, label %sja1105_packing.exit41.sja1105_packing.exit48_crit_edge
    i32 -22, label %do.end.i44
    i32 -34, label %if.then7.i45
  ], !prof !82

sja1105_packing.exit41.sja1105_packing.exit48_crit_edge: ; preds = %sja1105_packing.exit41
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit48

sja1105_packing.exit41.if.end23.i47_crit_edge:    ; preds = %sja1105_packing.exit41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i47

do.end.i44:                                       ; preds = %sja1105_packing.exit41
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 32, i32 noundef 28) #13
  br label %if.end23.i47

if.then7.i45:                                     ; preds = %sja1105_packing.exit41
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %drpnolearn to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %drpnolearn, align 8
  %call20.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 32, i32 noundef 28) #13
  br label %if.end23.i47

if.end23.i47:                                     ; preds = %if.then7.i45, %do.end.i44, %sja1105_packing.exit41.if.end23.i47_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit48

sja1105_packing.exit48:                           ; preds = %if.end23.i47, %sja1105_packing.exit41.sja1105_packing.exit48_crit_edge
  %shared_learn = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 9
  %call.i49 = tail call i32 @packing(ptr noundef %buf, ptr noundef %shared_learn, i32 noundef 27, i32 noundef 27, i32 noundef 16, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %call.i49, label %sja1105_packing.exit48.if.end23.i54_crit_edge [
    i32 0, label %sja1105_packing.exit48.sja1105_packing.exit55_crit_edge
    i32 -22, label %do.end.i51
    i32 -34, label %if.then7.i52
  ], !prof !82

sja1105_packing.exit48.sja1105_packing.exit55_crit_edge: ; preds = %sja1105_packing.exit48
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit55

sja1105_packing.exit48.if.end23.i54_crit_edge:    ; preds = %sja1105_packing.exit48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i54

do.end.i51:                                       ; preds = %sja1105_packing.exit48
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 27, i32 noundef 27) #13
  br label %if.end23.i54

if.then7.i52:                                     ; preds = %sja1105_packing.exit48
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %shared_learn to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %shared_learn, align 8
  %call20.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 27, i32 noundef 27) #13
  br label %if.end23.i54

if.end23.i54:                                     ; preds = %if.then7.i52, %do.end.i51, %sja1105_packing.exit48.if.end23.i54_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit55

sja1105_packing.exit55:                           ; preds = %if.end23.i54, %sja1105_packing.exit48.sja1105_packing.exit55_crit_edge
  %no_enf_hostprt = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 10
  %call.i56 = tail call i32 @packing(ptr noundef %buf, ptr noundef %no_enf_hostprt, i32 noundef 26, i32 noundef 26, i32 noundef 16, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %call.i56, label %sja1105_packing.exit55.if.end23.i61_crit_edge [
    i32 0, label %sja1105_packing.exit55.sja1105_packing.exit62_crit_edge
    i32 -22, label %do.end.i58
    i32 -34, label %if.then7.i59
  ], !prof !82

sja1105_packing.exit55.sja1105_packing.exit62_crit_edge: ; preds = %sja1105_packing.exit55
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit62

sja1105_packing.exit55.if.end23.i61_crit_edge:    ; preds = %sja1105_packing.exit55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i61

do.end.i58:                                       ; preds = %sja1105_packing.exit55
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 26, i32 noundef 26) #13
  br label %if.end23.i61

if.then7.i59:                                     ; preds = %sja1105_packing.exit55
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %no_enf_hostprt to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %no_enf_hostprt, align 8
  %call20.i60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 26, i32 noundef 26) #13
  br label %if.end23.i61

if.end23.i61:                                     ; preds = %if.then7.i59, %do.end.i58, %sja1105_packing.exit55.if.end23.i61_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit62

sja1105_packing.exit62:                           ; preds = %if.end23.i61, %sja1105_packing.exit55.sja1105_packing.exit62_crit_edge
  %no_mgmt_learn = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 11
  %call.i63 = tail call i32 @packing(ptr noundef %buf, ptr noundef %no_mgmt_learn, i32 noundef 25, i32 noundef 25, i32 noundef 16, i32 noundef %op, i8 noundef zeroext 4) #10
  %15 = zext i32 %call.i63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %call.i63, label %sja1105_packing.exit62.if.end23.i68_crit_edge [
    i32 0, label %sja1105_packing.exit62.sja1105_packing.exit69_crit_edge
    i32 -22, label %do.end.i65
    i32 -34, label %if.then7.i66
  ], !prof !82

sja1105_packing.exit62.sja1105_packing.exit69_crit_edge: ; preds = %sja1105_packing.exit62
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit69

sja1105_packing.exit62.if.end23.i68_crit_edge:    ; preds = %sja1105_packing.exit62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i68

do.end.i65:                                       ; preds = %sja1105_packing.exit62
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 25, i32 noundef 25) #13
  br label %if.end23.i68

if.then7.i66:                                     ; preds = %sja1105_packing.exit62
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %no_mgmt_learn to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %no_mgmt_learn, align 8
  %call20.i67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %17, i32 noundef 25, i32 noundef 25) #13
  br label %if.end23.i68

if.end23.i68:                                     ; preds = %if.then7.i66, %do.end.i65, %sja1105_packing.exit62.if.end23.i68_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit69

sja1105_packing.exit69:                           ; preds = %if.end23.i68, %sja1105_packing.exit62.sja1105_packing.exit69_crit_edge
  %use_static = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i70 = tail call i32 @packing(ptr noundef %buf, ptr noundef %use_static, i32 noundef 24, i32 noundef 24, i32 noundef 16, i32 noundef %op, i8 noundef zeroext 4) #10
  %18 = zext i32 %call.i70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %call.i70, label %sja1105_packing.exit69.if.end23.i75_crit_edge [
    i32 0, label %sja1105_packing.exit69.sja1105_packing.exit76_crit_edge
    i32 -22, label %do.end.i72
    i32 -34, label %if.then7.i73
  ], !prof !82

sja1105_packing.exit69.sja1105_packing.exit76_crit_edge: ; preds = %sja1105_packing.exit69
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit76

sja1105_packing.exit69.if.end23.i75_crit_edge:    ; preds = %sja1105_packing.exit69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i75

do.end.i72:                                       ; preds = %sja1105_packing.exit69
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 24) #13
  br label %if.end23.i75

if.then7.i73:                                     ; preds = %sja1105_packing.exit69
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %use_static to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %use_static, align 8
  %call20.i74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %20, i32 noundef 24, i32 noundef 24) #13
  br label %if.end23.i75

if.end23.i75:                                     ; preds = %if.then7.i73, %do.end.i72, %sja1105_packing.exit69.if.end23.i75_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit76

sja1105_packing.exit76:                           ; preds = %if.end23.i75, %sja1105_packing.exit69.sja1105_packing.exit76_crit_edge
  %owr_dyn = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i77 = tail call i32 @packing(ptr noundef %buf, ptr noundef %owr_dyn, i32 noundef 23, i32 noundef 23, i32 noundef 16, i32 noundef %op, i8 noundef zeroext 4) #10
  %21 = zext i32 %call.i77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %call.i77, label %sja1105_packing.exit76.if.end23.i82_crit_edge [
    i32 0, label %sja1105_packing.exit76.sja1105_packing.exit83_crit_edge
    i32 -22, label %do.end.i79
    i32 -34, label %if.then7.i80
  ], !prof !82

sja1105_packing.exit76.sja1105_packing.exit83_crit_edge: ; preds = %sja1105_packing.exit76
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit83

sja1105_packing.exit76.if.end23.i82_crit_edge:    ; preds = %sja1105_packing.exit76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i82

do.end.i79:                                       ; preds = %sja1105_packing.exit76
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 23, i32 noundef 23) #13
  br label %if.end23.i82

if.then7.i80:                                     ; preds = %sja1105_packing.exit76
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %owr_dyn to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %owr_dyn, align 8
  %call20.i81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %23, i32 noundef 23, i32 noundef 23) #13
  br label %if.end23.i82

if.end23.i82:                                     ; preds = %if.then7.i80, %do.end.i79, %sja1105_packing.exit76.if.end23.i82_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit83

sja1105_packing.exit83:                           ; preds = %if.end23.i82, %sja1105_packing.exit76.sja1105_packing.exit83_crit_edge
  %learn_once = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 5
  %call.i84 = tail call i32 @packing(ptr noundef %buf, ptr noundef %learn_once, i32 noundef 22, i32 noundef 22, i32 noundef 16, i32 noundef %op, i8 noundef zeroext 4) #10
  %24 = zext i32 %call.i84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %call.i84, label %sja1105_packing.exit83.if.end23.i89_crit_edge [
    i32 0, label %sja1105_packing.exit83.sja1105_packing.exit90_crit_edge
    i32 -22, label %do.end.i86
    i32 -34, label %if.then7.i87
  ], !prof !82

sja1105_packing.exit83.sja1105_packing.exit90_crit_edge: ; preds = %sja1105_packing.exit83
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit90

sja1105_packing.exit83.if.end23.i89_crit_edge:    ; preds = %sja1105_packing.exit83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i89

do.end.i86:                                       ; preds = %sja1105_packing.exit83
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 22, i32 noundef 22) #13
  br label %if.end23.i89

if.then7.i87:                                     ; preds = %sja1105_packing.exit83
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %learn_once to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %learn_once, align 8
  %call20.i88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %26, i32 noundef 22, i32 noundef 22) #13
  br label %if.end23.i89

if.end23.i89:                                     ; preds = %if.then7.i87, %do.end.i86, %sja1105_packing.exit83.if.end23.i89_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit90

sja1105_packing.exit90:                           ; preds = %if.end23.i89, %sja1105_packing.exit83.sja1105_packing.exit90_crit_edge
  ret i32 16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1110_l2_lookup_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 80, i32 noundef 70, i32 noundef 28, i32 noundef %op)
  %arrayidx.1 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.1, i32 noundef 91, i32 noundef 81, i32 noundef 28, i32 noundef %op)
  %arrayidx.2 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.2, i32 noundef 102, i32 noundef 92, i32 noundef 28, i32 noundef %op)
  %arrayidx.3 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.3, i32 noundef 113, i32 noundef 103, i32 noundef 28, i32 noundef %op)
  %arrayidx.4 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.4, i32 noundef 124, i32 noundef 114, i32 noundef 28, i32 noundef %op)
  %arrayidx.5 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.5, i32 noundef 135, i32 noundef 125, i32 noundef 28, i32 noundef %op)
  %arrayidx.6 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 6
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.6, i32 noundef 146, i32 noundef 136, i32 noundef 28, i32 noundef %op)
  %arrayidx.7 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 7
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.7, i32 noundef 157, i32 noundef 147, i32 noundef 28, i32 noundef %op)
  %arrayidx.8 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 8
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.8, i32 noundef 168, i32 noundef 158, i32 noundef 28, i32 noundef %op)
  %arrayidx.9 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 9
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.9, i32 noundef 179, i32 noundef 169, i32 noundef 28, i32 noundef %op)
  %arrayidx.10 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 10
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.10, i32 noundef 190, i32 noundef 180, i32 noundef 28, i32 noundef %op)
  %maxage = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 6
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %maxage, i32 noundef 69, i32 noundef 55, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 55) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %maxage to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %maxage, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 69, i32 noundef 55) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %start_dynspc = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i35 = tail call i32 @packing(ptr noundef %buf, ptr noundef %start_dynspc, i32 noundef 54, i32 noundef 45, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %call.i35, label %sja1105_packing.exit.if.end23.i40_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit41_crit_edge
    i32 -22, label %do.end.i37
    i32 -34, label %if.then7.i38
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit41_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit41

sja1105_packing.exit.if.end23.i40_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i40

do.end.i37:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 54, i32 noundef 45) #13
  br label %if.end23.i40

if.then7.i38:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %start_dynspc to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %start_dynspc, align 8
  %call20.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 54, i32 noundef 45) #13
  br label %if.end23.i40

if.end23.i40:                                     ; preds = %if.then7.i38, %do.end.i37, %sja1105_packing.exit.if.end23.i40_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit41

sja1105_packing.exit41:                           ; preds = %if.end23.i40, %sja1105_packing.exit.sja1105_packing.exit41_crit_edge
  %drpnolearn = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i42 = tail call i32 @packing(ptr noundef %buf, ptr noundef %drpnolearn, i32 noundef 44, i32 noundef 34, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %call.i42, label %sja1105_packing.exit41.if.end23.i47_crit_edge [
    i32 0, label %sja1105_packing.exit41.sja1105_packing.exit48_crit_edge
    i32 -22, label %do.end.i44
    i32 -34, label %if.then7.i45
  ], !prof !82

sja1105_packing.exit41.sja1105_packing.exit48_crit_edge: ; preds = %sja1105_packing.exit41
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit48

sja1105_packing.exit41.if.end23.i47_crit_edge:    ; preds = %sja1105_packing.exit41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i47

do.end.i44:                                       ; preds = %sja1105_packing.exit41
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 34) #13
  br label %if.end23.i47

if.then7.i45:                                     ; preds = %sja1105_packing.exit41
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %drpnolearn to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %drpnolearn, align 8
  %call20.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 44, i32 noundef 34) #13
  br label %if.end23.i47

if.end23.i47:                                     ; preds = %if.then7.i45, %do.end.i44, %sja1105_packing.exit41.if.end23.i47_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit48

sja1105_packing.exit48:                           ; preds = %if.end23.i47, %sja1105_packing.exit41.sja1105_packing.exit48_crit_edge
  %shared_learn = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 9
  %call.i49 = tail call i32 @packing(ptr noundef %buf, ptr noundef %shared_learn, i32 noundef 33, i32 noundef 33, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %call.i49, label %sja1105_packing.exit48.if.end23.i54_crit_edge [
    i32 0, label %sja1105_packing.exit48.sja1105_packing.exit55_crit_edge
    i32 -22, label %do.end.i51
    i32 -34, label %if.then7.i52
  ], !prof !82

sja1105_packing.exit48.sja1105_packing.exit55_crit_edge: ; preds = %sja1105_packing.exit48
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit55

sja1105_packing.exit48.if.end23.i54_crit_edge:    ; preds = %sja1105_packing.exit48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i54

do.end.i51:                                       ; preds = %sja1105_packing.exit48
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 33, i32 noundef 33) #13
  br label %if.end23.i54

if.then7.i52:                                     ; preds = %sja1105_packing.exit48
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %shared_learn to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %shared_learn, align 8
  %call20.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 33, i32 noundef 33) #13
  br label %if.end23.i54

if.end23.i54:                                     ; preds = %if.then7.i52, %do.end.i51, %sja1105_packing.exit48.if.end23.i54_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit55

sja1105_packing.exit55:                           ; preds = %if.end23.i54, %sja1105_packing.exit48.sja1105_packing.exit55_crit_edge
  %no_enf_hostprt = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 10
  %call.i56 = tail call i32 @packing(ptr noundef %buf, ptr noundef %no_enf_hostprt, i32 noundef 32, i32 noundef 32, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %call.i56, label %sja1105_packing.exit55.if.end23.i61_crit_edge [
    i32 0, label %sja1105_packing.exit55.sja1105_packing.exit62_crit_edge
    i32 -22, label %do.end.i58
    i32 -34, label %if.then7.i59
  ], !prof !82

sja1105_packing.exit55.sja1105_packing.exit62_crit_edge: ; preds = %sja1105_packing.exit55
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit62

sja1105_packing.exit55.if.end23.i61_crit_edge:    ; preds = %sja1105_packing.exit55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i61

do.end.i58:                                       ; preds = %sja1105_packing.exit55
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 32, i32 noundef 32) #13
  br label %if.end23.i61

if.then7.i59:                                     ; preds = %sja1105_packing.exit55
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %no_enf_hostprt to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %no_enf_hostprt, align 8
  %call20.i60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 32, i32 noundef 32) #13
  br label %if.end23.i61

if.end23.i61:                                     ; preds = %if.then7.i59, %do.end.i58, %sja1105_packing.exit55.if.end23.i61_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit62

sja1105_packing.exit62:                           ; preds = %if.end23.i61, %sja1105_packing.exit55.sja1105_packing.exit62_crit_edge
  %no_mgmt_learn = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 11
  %call.i63 = tail call i32 @packing(ptr noundef %buf, ptr noundef %no_mgmt_learn, i32 noundef 31, i32 noundef 31, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %15 = zext i32 %call.i63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %call.i63, label %sja1105_packing.exit62.if.end23.i68_crit_edge [
    i32 0, label %sja1105_packing.exit62.sja1105_packing.exit69_crit_edge
    i32 -22, label %do.end.i65
    i32 -34, label %if.then7.i66
  ], !prof !82

sja1105_packing.exit62.sja1105_packing.exit69_crit_edge: ; preds = %sja1105_packing.exit62
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit69

sja1105_packing.exit62.if.end23.i68_crit_edge:    ; preds = %sja1105_packing.exit62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i68

do.end.i65:                                       ; preds = %sja1105_packing.exit62
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 31) #13
  br label %if.end23.i68

if.then7.i66:                                     ; preds = %sja1105_packing.exit62
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %no_mgmt_learn to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %no_mgmt_learn, align 8
  %call20.i67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %17, i32 noundef 31, i32 noundef 31) #13
  br label %if.end23.i68

if.end23.i68:                                     ; preds = %if.then7.i66, %do.end.i65, %sja1105_packing.exit62.if.end23.i68_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit69

sja1105_packing.exit69:                           ; preds = %if.end23.i68, %sja1105_packing.exit62.sja1105_packing.exit69_crit_edge
  %use_static = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i70 = tail call i32 @packing(ptr noundef %buf, ptr noundef %use_static, i32 noundef 30, i32 noundef 30, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %18 = zext i32 %call.i70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %call.i70, label %sja1105_packing.exit69.if.end23.i75_crit_edge [
    i32 0, label %sja1105_packing.exit69.sja1105_packing.exit76_crit_edge
    i32 -22, label %do.end.i72
    i32 -34, label %if.then7.i73
  ], !prof !82

sja1105_packing.exit69.sja1105_packing.exit76_crit_edge: ; preds = %sja1105_packing.exit69
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit76

sja1105_packing.exit69.if.end23.i75_crit_edge:    ; preds = %sja1105_packing.exit69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i75

do.end.i72:                                       ; preds = %sja1105_packing.exit69
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 30, i32 noundef 30) #13
  br label %if.end23.i75

if.then7.i73:                                     ; preds = %sja1105_packing.exit69
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %use_static to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %use_static, align 8
  %call20.i74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %20, i32 noundef 30, i32 noundef 30) #13
  br label %if.end23.i75

if.end23.i75:                                     ; preds = %if.then7.i73, %do.end.i72, %sja1105_packing.exit69.if.end23.i75_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit76

sja1105_packing.exit76:                           ; preds = %if.end23.i75, %sja1105_packing.exit69.sja1105_packing.exit76_crit_edge
  %owr_dyn = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i77 = tail call i32 @packing(ptr noundef %buf, ptr noundef %owr_dyn, i32 noundef 29, i32 noundef 29, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %21 = zext i32 %call.i77 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %call.i77, label %sja1105_packing.exit76.if.end23.i82_crit_edge [
    i32 0, label %sja1105_packing.exit76.sja1105_packing.exit83_crit_edge
    i32 -22, label %do.end.i79
    i32 -34, label %if.then7.i80
  ], !prof !82

sja1105_packing.exit76.sja1105_packing.exit83_crit_edge: ; preds = %sja1105_packing.exit76
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit83

sja1105_packing.exit76.if.end23.i82_crit_edge:    ; preds = %sja1105_packing.exit76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i82

do.end.i79:                                       ; preds = %sja1105_packing.exit76
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 29, i32 noundef 29) #13
  br label %if.end23.i82

if.then7.i80:                                     ; preds = %sja1105_packing.exit76
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %owr_dyn to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %owr_dyn, align 8
  %call20.i81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %23, i32 noundef 29, i32 noundef 29) #13
  br label %if.end23.i82

if.end23.i82:                                     ; preds = %if.then7.i80, %do.end.i79, %sja1105_packing.exit76.if.end23.i82_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit83

sja1105_packing.exit83:                           ; preds = %if.end23.i82, %sja1105_packing.exit76.sja1105_packing.exit83_crit_edge
  %learn_once = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 5
  %call.i84 = tail call i32 @packing(ptr noundef %buf, ptr noundef %learn_once, i32 noundef 28, i32 noundef 28, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %24 = zext i32 %call.i84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %call.i84, label %sja1105_packing.exit83.if.end23.i89_crit_edge [
    i32 0, label %sja1105_packing.exit83.sja1105_packing.exit90_crit_edge
    i32 -22, label %do.end.i86
    i32 -34, label %if.then7.i87
  ], !prof !82

sja1105_packing.exit83.sja1105_packing.exit90_crit_edge: ; preds = %sja1105_packing.exit83
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit90

sja1105_packing.exit83.if.end23.i89_crit_edge:    ; preds = %sja1105_packing.exit83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i89

do.end.i86:                                       ; preds = %sja1105_packing.exit83
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 28) #13
  br label %if.end23.i89

if.then7.i87:                                     ; preds = %sja1105_packing.exit83
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %learn_once to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %learn_once, align 8
  %call20.i88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %26, i32 noundef 28, i32 noundef 28) #13
  br label %if.end23.i89

if.end23.i89:                                     ; preds = %if.then7.i87, %do.end.i86, %sja1105_packing.exit83.if.end23.i89_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit90

sja1105_packing.exit90:                           ; preds = %if.end23.i89, %sja1105_packing.exit83.sja1105_packing.exit90_crit_edge
  ret i32 28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105et_l2_lookup_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 95, i32 noundef 84, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 84) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 95, i32 noundef 84) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %macaddr = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i14 = tail call i32 @packing(ptr noundef %buf, ptr noundef %macaddr, i32 noundef 83, i32 noundef 36, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %call.i14, label %sja1105_packing.exit.if.end23.i19_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit20_crit_edge
    i32 -22, label %do.end.i16
    i32 -34, label %if.then7.i17
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit20_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit20

sja1105_packing.exit.if.end23.i19_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i19

do.end.i16:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 83, i32 noundef 36) #13
  br label %if.end23.i19

if.then7.i17:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %macaddr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %macaddr, align 8
  %call20.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 83, i32 noundef 36) #13
  br label %if.end23.i19

if.end23.i19:                                     ; preds = %if.then7.i17, %do.end.i16, %sja1105_packing.exit.if.end23.i19_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit20

sja1105_packing.exit20:                           ; preds = %if.end23.i19, %sja1105_packing.exit.sja1105_packing.exit20_crit_edge
  %destports = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i21 = tail call i32 @packing(ptr noundef %buf, ptr noundef %destports, i32 noundef 35, i32 noundef 31, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %call.i21, label %sja1105_packing.exit20.if.end23.i26_crit_edge [
    i32 0, label %sja1105_packing.exit20.sja1105_packing.exit27_crit_edge
    i32 -22, label %do.end.i23
    i32 -34, label %if.then7.i24
  ], !prof !82

sja1105_packing.exit20.sja1105_packing.exit27_crit_edge: ; preds = %sja1105_packing.exit20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit27

sja1105_packing.exit20.if.end23.i26_crit_edge:    ; preds = %sja1105_packing.exit20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i26

do.end.i23:                                       ; preds = %sja1105_packing.exit20
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 35, i32 noundef 31) #13
  br label %if.end23.i26

if.then7.i24:                                     ; preds = %sja1105_packing.exit20
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %destports to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %destports, align 8
  %call20.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 35, i32 noundef 31) #13
  br label %if.end23.i26

if.end23.i26:                                     ; preds = %if.then7.i24, %do.end.i23, %sja1105_packing.exit20.if.end23.i26_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit27

sja1105_packing.exit27:                           ; preds = %if.end23.i26, %sja1105_packing.exit20.sja1105_packing.exit27_crit_edge
  %enfport = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i28 = tail call i32 @packing(ptr noundef %buf, ptr noundef %enfport, i32 noundef 30, i32 noundef 30, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %call.i28, label %sja1105_packing.exit27.if.end23.i33_crit_edge [
    i32 0, label %sja1105_packing.exit27.sja1105_packing.exit34_crit_edge
    i32 -22, label %do.end.i30
    i32 -34, label %if.then7.i31
  ], !prof !82

sja1105_packing.exit27.sja1105_packing.exit34_crit_edge: ; preds = %sja1105_packing.exit27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit34

sja1105_packing.exit27.if.end23.i33_crit_edge:    ; preds = %sja1105_packing.exit27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i33

do.end.i30:                                       ; preds = %sja1105_packing.exit27
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 30, i32 noundef 30) #13
  br label %if.end23.i33

if.then7.i31:                                     ; preds = %sja1105_packing.exit27
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %enfport to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %enfport, align 8
  %call20.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 30, i32 noundef 30) #13
  br label %if.end23.i33

if.end23.i33:                                     ; preds = %if.then7.i31, %do.end.i30, %sja1105_packing.exit27.if.end23.i33_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit34

sja1105_packing.exit34:                           ; preds = %if.end23.i33, %sja1105_packing.exit27.sja1105_packing.exit34_crit_edge
  %index = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i35 = tail call i32 @packing(ptr noundef %buf, ptr noundef %index, i32 noundef 29, i32 noundef 20, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %call.i35, label %sja1105_packing.exit34.if.end23.i40_crit_edge [
    i32 0, label %sja1105_packing.exit34.sja1105_packing.exit41_crit_edge
    i32 -22, label %do.end.i37
    i32 -34, label %if.then7.i38
  ], !prof !82

sja1105_packing.exit34.sja1105_packing.exit41_crit_edge: ; preds = %sja1105_packing.exit34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit41

sja1105_packing.exit34.if.end23.i40_crit_edge:    ; preds = %sja1105_packing.exit34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i40

do.end.i37:                                       ; preds = %sja1105_packing.exit34
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 29, i32 noundef 20) #13
  br label %if.end23.i40

if.then7.i38:                                     ; preds = %sja1105_packing.exit34
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %index, align 8
  %call20.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 29, i32 noundef 20) #13
  br label %if.end23.i40

if.end23.i40:                                     ; preds = %if.then7.i38, %do.end.i37, %sja1105_packing.exit34.if.end23.i40_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit41

sja1105_packing.exit41:                           ; preds = %if.end23.i40, %sja1105_packing.exit34.sja1105_packing.exit41_crit_edge
  ret i32 12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105pqrs_l2_lookup_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lockeds = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 11
  %0 = ptrtoint ptr %lockeds to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %lockeds, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %tsreg = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 12, i32 0, i32 1
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %tsreg, i32 noundef 159, i32 noundef 159, i32 noundef 20, i32 noundef %op, i8 noundef zeroext 4) #10
  %2 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %call.i, label %if.then.if.end23.i_crit_edge [
    i32 0, label %if.then.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

if.then.sja1105_packing.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

if.then.if.end23.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 159, i32 noundef 159) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %tsreg to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %tsreg, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %4, i32 noundef 159, i32 noundef 159) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %if.then.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %if.then.sja1105_packing.exit_crit_edge
  %mirrvlan = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 12, i32 0, i32 2
  %call.i48 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mirrvlan, i32 noundef 158, i32 noundef 147, i32 noundef 20, i32 noundef %op, i8 noundef zeroext 4) #10
  %5 = zext i32 %call.i48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %call.i48, label %sja1105_packing.exit.if.end23.i53_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit54_crit_edge
    i32 -22, label %do.end.i50
    i32 -34, label %if.then7.i51
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit54_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit54

sja1105_packing.exit.if.end23.i53_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i53

do.end.i50:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 158, i32 noundef 147) #13
  br label %if.end23.i53

if.then7.i51:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %mirrvlan to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %mirrvlan, align 8
  %call20.i52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %7, i32 noundef 158, i32 noundef 147) #13
  br label %if.end23.i53

if.end23.i53:                                     ; preds = %if.then7.i51, %do.end.i50, %sja1105_packing.exit.if.end23.i53_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit54

sja1105_packing.exit54:                           ; preds = %if.end23.i53, %sja1105_packing.exit.sja1105_packing.exit54_crit_edge
  %takets = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 12, i32 0, i32 3
  %call.i55 = tail call i32 @packing(ptr noundef %buf, ptr noundef %takets, i32 noundef 146, i32 noundef 146, i32 noundef 20, i32 noundef %op, i8 noundef zeroext 4) #10
  %8 = zext i32 %call.i55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %call.i55, label %sja1105_packing.exit54.if.end23.i60_crit_edge [
    i32 0, label %sja1105_packing.exit54.sja1105_packing.exit61_crit_edge
    i32 -22, label %do.end.i57
    i32 -34, label %if.then7.i58
  ], !prof !82

sja1105_packing.exit54.sja1105_packing.exit61_crit_edge: ; preds = %sja1105_packing.exit54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit61

sja1105_packing.exit54.if.end23.i60_crit_edge:    ; preds = %sja1105_packing.exit54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i60

do.end.i57:                                       ; preds = %sja1105_packing.exit54
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 146, i32 noundef 146) #13
  br label %if.end23.i60

if.then7.i58:                                     ; preds = %sja1105_packing.exit54
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %takets to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %takets, align 8
  %call20.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %10, i32 noundef 146, i32 noundef 146) #13
  br label %if.end23.i60

if.end23.i60:                                     ; preds = %if.then7.i58, %do.end.i57, %sja1105_packing.exit54.if.end23.i60_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit61

sja1105_packing.exit61:                           ; preds = %if.end23.i60, %sja1105_packing.exit54.sja1105_packing.exit61_crit_edge
  %mirr = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 12, i32 0, i32 4
  %call.i62 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mirr, i32 noundef 145, i32 noundef 145, i32 noundef 20, i32 noundef %op, i8 noundef zeroext 4) #10
  %11 = zext i32 %call.i62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %call.i62, label %sja1105_packing.exit61.if.end23.i67_crit_edge [
    i32 0, label %sja1105_packing.exit61.sja1105_packing.exit68_crit_edge
    i32 -22, label %do.end.i64
    i32 -34, label %if.then7.i65
  ], !prof !82

sja1105_packing.exit61.sja1105_packing.exit68_crit_edge: ; preds = %sja1105_packing.exit61
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit68

sja1105_packing.exit61.if.end23.i67_crit_edge:    ; preds = %sja1105_packing.exit61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i67

do.end.i64:                                       ; preds = %sja1105_packing.exit61
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 145) #13
  br label %if.end23.i67

if.then7.i65:                                     ; preds = %sja1105_packing.exit61
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %mirr to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %mirr, align 8
  %call20.i66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %13, i32 noundef 145, i32 noundef 145) #13
  br label %if.end23.i67

if.end23.i67:                                     ; preds = %if.then7.i65, %do.end.i64, %sja1105_packing.exit61.if.end23.i67_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit68

sja1105_packing.exit68:                           ; preds = %if.end23.i67, %sja1105_packing.exit61.sja1105_packing.exit68_crit_edge
  %retag = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 12, i32 0, i32 5
  %call.i69 = tail call i32 @packing(ptr noundef %buf, ptr noundef %retag, i32 noundef 144, i32 noundef 144, i32 noundef 20, i32 noundef %op, i8 noundef zeroext 4) #10
  %14 = zext i32 %call.i69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %call.i69, label %sja1105_packing.exit68.if.end.sink.split_crit_edge [
    i32 0, label %sja1105_packing.exit68.if.end_crit_edge
    i32 -22, label %do.end.i71
    i32 -34, label %if.then7.i72
  ], !prof !82

sja1105_packing.exit68.if.end_crit_edge:          ; preds = %sja1105_packing.exit68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sja1105_packing.exit68.if.end.sink.split_crit_edge: ; preds = %sja1105_packing.exit68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

do.end.i71:                                       ; preds = %sja1105_packing.exit68
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 144) #13
  br label %if.end.sink.split

if.then7.i72:                                     ; preds = %sja1105_packing.exit68
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %retag to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %retag, align 8
  %call20.i73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %16, i32 noundef 144, i32 noundef 144) #13
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %17 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 12
  %call.i76 = tail call i32 @packing(ptr noundef %buf, ptr noundef %17, i32 noundef 159, i32 noundef 159, i32 noundef 20, i32 noundef %op, i8 noundef zeroext 4) #10
  %18 = zext i32 %call.i76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %call.i76, label %if.else.if.end23.i81_crit_edge [
    i32 0, label %if.else.sja1105_packing.exit82_crit_edge
    i32 -22, label %do.end.i78
    i32 -34, label %if.then7.i79
  ], !prof !82

if.else.sja1105_packing.exit82_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit82

if.else.if.end23.i81_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i81

do.end.i78:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 159, i32 noundef 159) #13
  br label %if.end23.i81

if.then7.i79:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %17, align 8
  %call20.i80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %20, i32 noundef 159, i32 noundef 159) #13
  br label %if.end23.i81

if.end23.i81:                                     ; preds = %if.then7.i79, %do.end.i78, %if.else.if.end23.i81_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit82

sja1105_packing.exit82:                           ; preds = %if.end23.i81, %if.else.sja1105_packing.exit82_crit_edge
  %age = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 12, i32 0, i32 1
  %call.i83 = tail call i32 @packing(ptr noundef %buf, ptr noundef %age, i32 noundef 158, i32 noundef 144, i32 noundef 20, i32 noundef %op, i8 noundef zeroext 4) #10
  %21 = zext i32 %call.i83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %call.i83, label %sja1105_packing.exit82.if.end.sink.split_crit_edge [
    i32 0, label %sja1105_packing.exit82.if.end_crit_edge
    i32 -22, label %do.end.i85
    i32 -34, label %if.then7.i86
  ], !prof !82

sja1105_packing.exit82.if.end_crit_edge:          ; preds = %sja1105_packing.exit82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sja1105_packing.exit82.if.end.sink.split_crit_edge: ; preds = %sja1105_packing.exit82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

do.end.i85:                                       ; preds = %sja1105_packing.exit82
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 158, i32 noundef 144) #13
  br label %if.end.sink.split

if.then7.i86:                                     ; preds = %sja1105_packing.exit82
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %age to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %age, align 8
  %call20.i87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %23, i32 noundef 158, i32 noundef 144) #13
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.then7.i86, %do.end.i85, %sja1105_packing.exit82.if.end.sink.split_crit_edge, %if.then7.i72, %do.end.i71, %sja1105_packing.exit68.if.end.sink.split_crit_edge
  tail call void @dump_stack() #13
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %sja1105_packing.exit82.if.end_crit_edge, %sja1105_packing.exit68.if.end_crit_edge
  %mask_iotag = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 5
  %call.i90 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mask_iotag, i32 noundef 143, i32 noundef 143, i32 noundef 20, i32 noundef %op, i8 noundef zeroext 4) #10
  %24 = zext i32 %call.i90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %call.i90, label %if.end.if.end23.i95_crit_edge [
    i32 0, label %if.end.sja1105_packing.exit96_crit_edge
    i32 -22, label %do.end.i92
    i32 -34, label %if.then7.i93
  ], !prof !82

if.end.sja1105_packing.exit96_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit96

if.end.if.end23.i95_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i95

do.end.i92:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 143) #13
  br label %if.end23.i95

if.then7.i93:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %mask_iotag to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %mask_iotag, align 8
  %call20.i94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %26, i32 noundef 143, i32 noundef 143) #13
  br label %if.end23.i95

if.end23.i95:                                     ; preds = %if.then7.i93, %do.end.i92, %if.end.if.end23.i95_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit96

sja1105_packing.exit96:                           ; preds = %if.end23.i95, %if.end.sja1105_packing.exit96_crit_edge
  %mask_vlanid = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 6
  %call.i97 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mask_vlanid, i32 noundef 142, i32 noundef 131, i32 noundef 20, i32 noundef %op, i8 noundef zeroext 4) #10
  %27 = zext i32 %call.i97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %call.i97, label %sja1105_packing.exit96.if.end23.i102_crit_edge [
    i32 0, label %sja1105_packing.exit96.sja1105_packing.exit103_crit_edge
    i32 -22, label %do.end.i99
    i32 -34, label %if.then7.i100
  ], !prof !82

sja1105_packing.exit96.sja1105_packing.exit103_crit_edge: ; preds = %sja1105_packing.exit96
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit103

sja1105_packing.exit96.if.end23.i102_crit_edge:   ; preds = %sja1105_packing.exit96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i102

do.end.i99:                                       ; preds = %sja1105_packing.exit96
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 142, i32 noundef 131) #13
  br label %if.end23.i102

if.then7.i100:                                    ; preds = %sja1105_packing.exit96
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %mask_vlanid to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %mask_vlanid, align 8
  %call20.i101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %29, i32 noundef 142, i32 noundef 131) #13
  br label %if.end23.i102

if.end23.i102:                                    ; preds = %if.then7.i100, %do.end.i99, %sja1105_packing.exit96.if.end23.i102_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit103

sja1105_packing.exit103:                          ; preds = %if.end23.i102, %sja1105_packing.exit96.sja1105_packing.exit103_crit_edge
  %mask_macaddr = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 7
  %call.i104 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mask_macaddr, i32 noundef 130, i32 noundef 83, i32 noundef 20, i32 noundef %op, i8 noundef zeroext 4) #10
  %30 = zext i32 %call.i104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %call.i104, label %sja1105_packing.exit103.if.end23.i109_crit_edge [
    i32 0, label %sja1105_packing.exit103.sja1105_packing.exit110_crit_edge
    i32 -22, label %do.end.i106
    i32 -34, label %if.then7.i107
  ], !prof !82

sja1105_packing.exit103.sja1105_packing.exit110_crit_edge: ; preds = %sja1105_packing.exit103
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit110

sja1105_packing.exit103.if.end23.i109_crit_edge:  ; preds = %sja1105_packing.exit103
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i109

do.end.i106:                                      ; preds = %sja1105_packing.exit103
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 83) #13
  br label %if.end23.i109

if.then7.i107:                                    ; preds = %sja1105_packing.exit103
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %mask_macaddr to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %mask_macaddr, align 8
  %call20.i108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %32, i32 noundef 130, i32 noundef 83) #13
  br label %if.end23.i109

if.end23.i109:                                    ; preds = %if.then7.i107, %do.end.i106, %sja1105_packing.exit103.if.end23.i109_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit110

sja1105_packing.exit110:                          ; preds = %if.end23.i109, %sja1105_packing.exit103.sja1105_packing.exit110_crit_edge
  %iotag = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 9
  %call.i111 = tail call i32 @packing(ptr noundef %buf, ptr noundef %iotag, i32 noundef 82, i32 noundef 82, i32 noundef 20, i32 noundef %op, i8 noundef zeroext 4) #10
  %33 = zext i32 %call.i111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %call.i111, label %sja1105_packing.exit110.if.end23.i116_crit_edge [
    i32 0, label %sja1105_packing.exit110.sja1105_packing.exit117_crit_edge
    i32 -22, label %do.end.i113
    i32 -34, label %if.then7.i114
  ], !prof !82

sja1105_packing.exit110.sja1105_packing.exit117_crit_edge: ; preds = %sja1105_packing.exit110
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit117

sja1105_packing.exit110.if.end23.i116_crit_edge:  ; preds = %sja1105_packing.exit110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i116

do.end.i113:                                      ; preds = %sja1105_packing.exit110
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 82, i32 noundef 82) #13
  br label %if.end23.i116

if.then7.i114:                                    ; preds = %sja1105_packing.exit110
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %iotag to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %iotag, align 8
  %call20.i115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %35, i32 noundef 82, i32 noundef 82) #13
  br label %if.end23.i116

if.end23.i116:                                    ; preds = %if.then7.i114, %do.end.i113, %sja1105_packing.exit110.if.end23.i116_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit117

sja1105_packing.exit117:                          ; preds = %if.end23.i116, %sja1105_packing.exit110.sja1105_packing.exit117_crit_edge
  %call.i118 = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 81, i32 noundef 70, i32 noundef 20, i32 noundef %op, i8 noundef zeroext 4) #10
  %36 = zext i32 %call.i118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %call.i118, label %sja1105_packing.exit117.if.end23.i123_crit_edge [
    i32 0, label %sja1105_packing.exit117.sja1105_packing.exit124_crit_edge
    i32 -22, label %do.end.i120
    i32 -34, label %if.then7.i121
  ], !prof !82

sja1105_packing.exit117.sja1105_packing.exit124_crit_edge: ; preds = %sja1105_packing.exit117
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit124

sja1105_packing.exit117.if.end23.i123_crit_edge:  ; preds = %sja1105_packing.exit117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i123

do.end.i120:                                      ; preds = %sja1105_packing.exit117
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 70) #13
  br label %if.end23.i123

if.then7.i121:                                    ; preds = %sja1105_packing.exit117
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %entry_ptr, align 8
  %call20.i122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %38, i32 noundef 81, i32 noundef 70) #13
  br label %if.end23.i123

if.end23.i123:                                    ; preds = %if.then7.i121, %do.end.i120, %sja1105_packing.exit117.if.end23.i123_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit124

sja1105_packing.exit124:                          ; preds = %if.end23.i123, %sja1105_packing.exit117.sja1105_packing.exit124_crit_edge
  %macaddr = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i125 = tail call i32 @packing(ptr noundef %buf, ptr noundef %macaddr, i32 noundef 69, i32 noundef 22, i32 noundef 20, i32 noundef %op, i8 noundef zeroext 4) #10
  %39 = zext i32 %call.i125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %call.i125, label %sja1105_packing.exit124.if.end23.i130_crit_edge [
    i32 0, label %sja1105_packing.exit124.sja1105_packing.exit131_crit_edge
    i32 -22, label %do.end.i127
    i32 -34, label %if.then7.i128
  ], !prof !82

sja1105_packing.exit124.sja1105_packing.exit131_crit_edge: ; preds = %sja1105_packing.exit124
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit131

sja1105_packing.exit124.if.end23.i130_crit_edge:  ; preds = %sja1105_packing.exit124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i130

do.end.i127:                                      ; preds = %sja1105_packing.exit124
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 22) #13
  br label %if.end23.i130

if.then7.i128:                                    ; preds = %sja1105_packing.exit124
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %macaddr to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %macaddr, align 8
  %call20.i129 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %41, i32 noundef 69, i32 noundef 22) #13
  br label %if.end23.i130

if.end23.i130:                                    ; preds = %if.then7.i128, %do.end.i127, %sja1105_packing.exit124.if.end23.i130_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit131

sja1105_packing.exit131:                          ; preds = %if.end23.i130, %sja1105_packing.exit124.sja1105_packing.exit131_crit_edge
  %destports = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i132 = tail call i32 @packing(ptr noundef %buf, ptr noundef %destports, i32 noundef 21, i32 noundef 17, i32 noundef 20, i32 noundef %op, i8 noundef zeroext 4) #10
  %42 = zext i32 %call.i132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %call.i132, label %sja1105_packing.exit131.if.end23.i137_crit_edge [
    i32 0, label %sja1105_packing.exit131.sja1105_packing.exit138_crit_edge
    i32 -22, label %do.end.i134
    i32 -34, label %if.then7.i135
  ], !prof !82

sja1105_packing.exit131.sja1105_packing.exit138_crit_edge: ; preds = %sja1105_packing.exit131
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit138

sja1105_packing.exit131.if.end23.i137_crit_edge:  ; preds = %sja1105_packing.exit131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i137

do.end.i134:                                      ; preds = %sja1105_packing.exit131
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 21, i32 noundef 17) #13
  br label %if.end23.i137

if.then7.i135:                                    ; preds = %sja1105_packing.exit131
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %destports to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %destports, align 8
  %call20.i136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %44, i32 noundef 21, i32 noundef 17) #13
  br label %if.end23.i137

if.end23.i137:                                    ; preds = %if.then7.i135, %do.end.i134, %sja1105_packing.exit131.if.end23.i137_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit138

sja1105_packing.exit138:                          ; preds = %if.end23.i137, %sja1105_packing.exit131.sja1105_packing.exit138_crit_edge
  %enfport = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i139 = tail call i32 @packing(ptr noundef %buf, ptr noundef %enfport, i32 noundef 16, i32 noundef 16, i32 noundef 20, i32 noundef %op, i8 noundef zeroext 4) #10
  %45 = zext i32 %call.i139 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %call.i139, label %sja1105_packing.exit138.if.end23.i144_crit_edge [
    i32 0, label %sja1105_packing.exit138.sja1105_packing.exit145_crit_edge
    i32 -22, label %do.end.i141
    i32 -34, label %if.then7.i142
  ], !prof !82

sja1105_packing.exit138.sja1105_packing.exit145_crit_edge: ; preds = %sja1105_packing.exit138
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit145

sja1105_packing.exit138.if.end23.i144_crit_edge:  ; preds = %sja1105_packing.exit138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i144

do.end.i141:                                      ; preds = %sja1105_packing.exit138
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 16, i32 noundef 16) #13
  br label %if.end23.i144

if.then7.i142:                                    ; preds = %sja1105_packing.exit138
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %enfport to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %enfport, align 8
  %call20.i143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %47, i32 noundef 16, i32 noundef 16) #13
  br label %if.end23.i144

if.end23.i144:                                    ; preds = %if.then7.i142, %do.end.i141, %sja1105_packing.exit138.if.end23.i144_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit145

sja1105_packing.exit145:                          ; preds = %if.end23.i144, %sja1105_packing.exit138.sja1105_packing.exit145_crit_edge
  %index = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i146 = tail call i32 @packing(ptr noundef %buf, ptr noundef %index, i32 noundef 15, i32 noundef 6, i32 noundef 20, i32 noundef %op, i8 noundef zeroext 4) #10
  %48 = zext i32 %call.i146 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %call.i146, label %sja1105_packing.exit145.if.end23.i151_crit_edge [
    i32 0, label %sja1105_packing.exit145.sja1105_packing.exit152_crit_edge
    i32 -22, label %do.end.i148
    i32 -34, label %if.then7.i149
  ], !prof !82

sja1105_packing.exit145.sja1105_packing.exit152_crit_edge: ; preds = %sja1105_packing.exit145
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit152

sja1105_packing.exit145.if.end23.i151_crit_edge:  ; preds = %sja1105_packing.exit145
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i151

do.end.i148:                                      ; preds = %sja1105_packing.exit145
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 15, i32 noundef 6) #13
  br label %if.end23.i151

if.then7.i149:                                    ; preds = %sja1105_packing.exit145
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %index to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %index, align 8
  %call20.i150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %50, i32 noundef 15, i32 noundef 6) #13
  br label %if.end23.i151

if.end23.i151:                                    ; preds = %if.then7.i149, %do.end.i148, %sja1105_packing.exit145.if.end23.i151_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit152

sja1105_packing.exit152:                          ; preds = %if.end23.i151, %sja1105_packing.exit145.sja1105_packing.exit152_crit_edge
  ret i32 20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1110_l2_lookup_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lockeds = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 11
  %0 = ptrtoint ptr %lockeds to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %lockeds, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  %2 = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 12
  %call.i82 = tail call i32 @packing(ptr noundef %buf, ptr noundef %2, i32 noundef 168, i32 noundef 168, i32 noundef 24, i32 noundef %op, i8 noundef zeroext 4) #10
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %3 = zext i32 %call.i82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %call.i82, label %if.then.if.end23.i_crit_edge [
    i32 0, label %if.then.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

if.then.sja1105_packing.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

if.then.if.end23.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 168, i32 noundef 168) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %2, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 168, i32 noundef 168) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %if.then.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %if.then.sja1105_packing.exit_crit_edge
  %mirrvlan = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 12, i32 0, i32 2
  %call.i54 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mirrvlan, i32 noundef 167, i32 noundef 156, i32 noundef 24, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %call.i54, label %sja1105_packing.exit.if.end23.i59_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit60_crit_edge
    i32 -22, label %do.end.i56
    i32 -34, label %if.then7.i57
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit60_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit60

sja1105_packing.exit.if.end23.i59_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i59

do.end.i56:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 156) #13
  br label %if.end23.i59

if.then7.i57:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %mirrvlan to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %mirrvlan, align 8
  %call20.i58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 167, i32 noundef 156) #13
  br label %if.end23.i59

if.end23.i59:                                     ; preds = %if.then7.i57, %do.end.i56, %sja1105_packing.exit.if.end23.i59_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit60

sja1105_packing.exit60:                           ; preds = %if.end23.i59, %sja1105_packing.exit.sja1105_packing.exit60_crit_edge
  %takets = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 12, i32 0, i32 3
  %call.i61 = tail call i32 @packing(ptr noundef %buf, ptr noundef %takets, i32 noundef 155, i32 noundef 155, i32 noundef 24, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %call.i61, label %sja1105_packing.exit60.if.end23.i66_crit_edge [
    i32 0, label %sja1105_packing.exit60.sja1105_packing.exit67_crit_edge
    i32 -22, label %do.end.i63
    i32 -34, label %if.then7.i64
  ], !prof !82

sja1105_packing.exit60.sja1105_packing.exit67_crit_edge: ; preds = %sja1105_packing.exit60
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit67

sja1105_packing.exit60.if.end23.i66_crit_edge:    ; preds = %sja1105_packing.exit60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i66

do.end.i63:                                       ; preds = %sja1105_packing.exit60
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 155) #13
  br label %if.end23.i66

if.then7.i64:                                     ; preds = %sja1105_packing.exit60
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %takets to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %takets, align 8
  %call20.i65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 155, i32 noundef 155) #13
  br label %if.end23.i66

if.end23.i66:                                     ; preds = %if.then7.i64, %do.end.i63, %sja1105_packing.exit60.if.end23.i66_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit67

sja1105_packing.exit67:                           ; preds = %if.end23.i66, %sja1105_packing.exit60.sja1105_packing.exit67_crit_edge
  %mirr = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 12, i32 0, i32 4
  %call.i68 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mirr, i32 noundef 154, i32 noundef 154, i32 noundef 24, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %call.i68, label %sja1105_packing.exit67.if.end23.i73_crit_edge [
    i32 0, label %sja1105_packing.exit67.sja1105_packing.exit74_crit_edge
    i32 -22, label %do.end.i70
    i32 -34, label %if.then7.i71
  ], !prof !82

sja1105_packing.exit67.sja1105_packing.exit74_crit_edge: ; preds = %sja1105_packing.exit67
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit74

sja1105_packing.exit67.if.end23.i73_crit_edge:    ; preds = %sja1105_packing.exit67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i73

do.end.i70:                                       ; preds = %sja1105_packing.exit67
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 154, i32 noundef 154) #13
  br label %if.end23.i73

if.then7.i71:                                     ; preds = %sja1105_packing.exit67
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %mirr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %mirr, align 8
  %call20.i72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 154, i32 noundef 154) #13
  br label %if.end23.i73

if.end23.i73:                                     ; preds = %if.then7.i71, %do.end.i70, %sja1105_packing.exit67.if.end23.i73_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit74

sja1105_packing.exit74:                           ; preds = %if.end23.i73, %sja1105_packing.exit67.sja1105_packing.exit74_crit_edge
  %retag = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 12, i32 0, i32 5
  %call.i75 = tail call i32 @packing(ptr noundef %buf, ptr noundef %retag, i32 noundef 153, i32 noundef 153, i32 noundef 24, i32 noundef %op, i8 noundef zeroext 4) #10
  %15 = zext i32 %call.i75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %call.i75, label %sja1105_packing.exit74.if.end.sink.split_crit_edge [
    i32 0, label %sja1105_packing.exit74.if.end_crit_edge
    i32 -22, label %do.end.i77
    i32 -34, label %if.then7.i78
  ], !prof !82

sja1105_packing.exit74.if.end_crit_edge:          ; preds = %sja1105_packing.exit74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sja1105_packing.exit74.if.end.sink.split_crit_edge: ; preds = %sja1105_packing.exit74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

do.end.i77:                                       ; preds = %sja1105_packing.exit74
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 153) #13
  br label %if.end.sink.split

if.then7.i78:                                     ; preds = %sja1105_packing.exit74
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %retag to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %retag, align 8
  %call20.i79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %17, i32 noundef 153, i32 noundef 153) #13
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %18 = zext i32 %call.i82 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %call.i82, label %if.else.if.end23.i87_crit_edge [
    i32 0, label %if.else.sja1105_packing.exit88_crit_edge
    i32 -22, label %do.end.i84
    i32 -34, label %if.then7.i85
  ], !prof !82

if.else.sja1105_packing.exit88_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit88

if.else.if.end23.i87_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i87

do.end.i84:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 168, i32 noundef 168) #13
  br label %if.end23.i87

if.then7.i85:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %2, align 8
  %call20.i86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %20, i32 noundef 168, i32 noundef 168) #13
  br label %if.end23.i87

if.end23.i87:                                     ; preds = %if.then7.i85, %do.end.i84, %if.else.if.end23.i87_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit88

sja1105_packing.exit88:                           ; preds = %if.end23.i87, %if.else.sja1105_packing.exit88_crit_edge
  %age = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 12, i32 0, i32 1
  %call.i89 = tail call i32 @packing(ptr noundef %buf, ptr noundef %age, i32 noundef 167, i32 noundef 153, i32 noundef 24, i32 noundef %op, i8 noundef zeroext 4) #10
  %21 = zext i32 %call.i89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %call.i89, label %sja1105_packing.exit88.if.end.sink.split_crit_edge [
    i32 0, label %sja1105_packing.exit88.if.end_crit_edge
    i32 -22, label %do.end.i91
    i32 -34, label %if.then7.i92
  ], !prof !82

sja1105_packing.exit88.if.end_crit_edge:          ; preds = %sja1105_packing.exit88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sja1105_packing.exit88.if.end.sink.split_crit_edge: ; preds = %sja1105_packing.exit88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

do.end.i91:                                       ; preds = %sja1105_packing.exit88
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 153) #13
  br label %if.end.sink.split

if.then7.i92:                                     ; preds = %sja1105_packing.exit88
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %age to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %age, align 8
  %call20.i93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %23, i32 noundef 167, i32 noundef 153) #13
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.then7.i92, %do.end.i91, %sja1105_packing.exit88.if.end.sink.split_crit_edge, %if.then7.i78, %do.end.i77, %sja1105_packing.exit74.if.end.sink.split_crit_edge
  tail call void @dump_stack() #13
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %sja1105_packing.exit88.if.end_crit_edge, %sja1105_packing.exit74.if.end_crit_edge
  %mask_iotag = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 5
  %call.i96 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mask_iotag, i32 noundef 152, i32 noundef 152, i32 noundef 24, i32 noundef %op, i8 noundef zeroext 4) #10
  %24 = zext i32 %call.i96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %call.i96, label %if.end.if.end23.i101_crit_edge [
    i32 0, label %if.end.sja1105_packing.exit102_crit_edge
    i32 -22, label %do.end.i98
    i32 -34, label %if.then7.i99
  ], !prof !82

if.end.sja1105_packing.exit102_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit102

if.end.if.end23.i101_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i101

do.end.i98:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 152, i32 noundef 152) #13
  br label %if.end23.i101

if.then7.i99:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %mask_iotag to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %mask_iotag, align 8
  %call20.i100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %26, i32 noundef 152, i32 noundef 152) #13
  br label %if.end23.i101

if.end23.i101:                                    ; preds = %if.then7.i99, %do.end.i98, %if.end.if.end23.i101_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit102

sja1105_packing.exit102:                          ; preds = %if.end23.i101, %if.end.sja1105_packing.exit102_crit_edge
  %mask_vlanid = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 6
  %call.i103 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mask_vlanid, i32 noundef 151, i32 noundef 140, i32 noundef 24, i32 noundef %op, i8 noundef zeroext 4) #10
  %27 = zext i32 %call.i103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %call.i103, label %sja1105_packing.exit102.if.end23.i108_crit_edge [
    i32 0, label %sja1105_packing.exit102.sja1105_packing.exit109_crit_edge
    i32 -22, label %do.end.i105
    i32 -34, label %if.then7.i106
  ], !prof !82

sja1105_packing.exit102.sja1105_packing.exit109_crit_edge: ; preds = %sja1105_packing.exit102
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit109

sja1105_packing.exit102.if.end23.i108_crit_edge:  ; preds = %sja1105_packing.exit102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i108

do.end.i105:                                      ; preds = %sja1105_packing.exit102
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i104 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 140) #13
  br label %if.end23.i108

if.then7.i106:                                    ; preds = %sja1105_packing.exit102
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %mask_vlanid to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %mask_vlanid, align 8
  %call20.i107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %29, i32 noundef 151, i32 noundef 140) #13
  br label %if.end23.i108

if.end23.i108:                                    ; preds = %if.then7.i106, %do.end.i105, %sja1105_packing.exit102.if.end23.i108_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit109

sja1105_packing.exit109:                          ; preds = %if.end23.i108, %sja1105_packing.exit102.sja1105_packing.exit109_crit_edge
  %mask_macaddr = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 7
  %call.i110 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mask_macaddr, i32 noundef 139, i32 noundef 92, i32 noundef 24, i32 noundef %op, i8 noundef zeroext 4) #10
  %30 = zext i32 %call.i110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %call.i110, label %sja1105_packing.exit109.if.end23.i115_crit_edge [
    i32 0, label %sja1105_packing.exit109.sja1105_packing.exit116_crit_edge
    i32 -22, label %do.end.i112
    i32 -34, label %if.then7.i113
  ], !prof !82

sja1105_packing.exit109.sja1105_packing.exit116_crit_edge: ; preds = %sja1105_packing.exit109
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit116

sja1105_packing.exit109.if.end23.i115_crit_edge:  ; preds = %sja1105_packing.exit109
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i115

do.end.i112:                                      ; preds = %sja1105_packing.exit109
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 139, i32 noundef 92) #13
  br label %if.end23.i115

if.then7.i113:                                    ; preds = %sja1105_packing.exit109
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %mask_macaddr to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %mask_macaddr, align 8
  %call20.i114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %32, i32 noundef 139, i32 noundef 92) #13
  br label %if.end23.i115

if.end23.i115:                                    ; preds = %if.then7.i113, %do.end.i112, %sja1105_packing.exit109.if.end23.i115_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit116

sja1105_packing.exit116:                          ; preds = %if.end23.i115, %sja1105_packing.exit109.sja1105_packing.exit116_crit_edge
  %mask_srcport = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 8
  %call.i117 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mask_srcport, i32 noundef 91, i32 noundef 88, i32 noundef 24, i32 noundef %op, i8 noundef zeroext 4) #10
  %33 = zext i32 %call.i117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %call.i117, label %sja1105_packing.exit116.if.end23.i122_crit_edge [
    i32 0, label %sja1105_packing.exit116.sja1105_packing.exit123_crit_edge
    i32 -22, label %do.end.i119
    i32 -34, label %if.then7.i120
  ], !prof !82

sja1105_packing.exit116.sja1105_packing.exit123_crit_edge: ; preds = %sja1105_packing.exit116
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit123

sja1105_packing.exit116.if.end23.i122_crit_edge:  ; preds = %sja1105_packing.exit116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i122

do.end.i119:                                      ; preds = %sja1105_packing.exit116
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 88) #13
  br label %if.end23.i122

if.then7.i120:                                    ; preds = %sja1105_packing.exit116
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %mask_srcport to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %mask_srcport, align 8
  %call20.i121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %35, i32 noundef 91, i32 noundef 88) #13
  br label %if.end23.i122

if.end23.i122:                                    ; preds = %if.then7.i120, %do.end.i119, %sja1105_packing.exit116.if.end23.i122_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit123

sja1105_packing.exit123:                          ; preds = %if.end23.i122, %sja1105_packing.exit116.sja1105_packing.exit123_crit_edge
  %iotag = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 9
  %call.i124 = tail call i32 @packing(ptr noundef %buf, ptr noundef %iotag, i32 noundef 87, i32 noundef 87, i32 noundef 24, i32 noundef %op, i8 noundef zeroext 4) #10
  %36 = zext i32 %call.i124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %call.i124, label %sja1105_packing.exit123.if.end23.i129_crit_edge [
    i32 0, label %sja1105_packing.exit123.sja1105_packing.exit130_crit_edge
    i32 -22, label %do.end.i126
    i32 -34, label %if.then7.i127
  ], !prof !82

sja1105_packing.exit123.sja1105_packing.exit130_crit_edge: ; preds = %sja1105_packing.exit123
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit130

sja1105_packing.exit123.if.end23.i129_crit_edge:  ; preds = %sja1105_packing.exit123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i129

do.end.i126:                                      ; preds = %sja1105_packing.exit123
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 87, i32 noundef 87) #13
  br label %if.end23.i129

if.then7.i127:                                    ; preds = %sja1105_packing.exit123
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %iotag to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %iotag, align 8
  %call20.i128 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %38, i32 noundef 87, i32 noundef 87) #13
  br label %if.end23.i129

if.end23.i129:                                    ; preds = %if.then7.i127, %do.end.i126, %sja1105_packing.exit123.if.end23.i129_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit130

sja1105_packing.exit130:                          ; preds = %if.end23.i129, %sja1105_packing.exit123.sja1105_packing.exit130_crit_edge
  %call.i131 = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 86, i32 noundef 75, i32 noundef 24, i32 noundef %op, i8 noundef zeroext 4) #10
  %39 = zext i32 %call.i131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %call.i131, label %sja1105_packing.exit130.if.end23.i136_crit_edge [
    i32 0, label %sja1105_packing.exit130.sja1105_packing.exit137_crit_edge
    i32 -22, label %do.end.i133
    i32 -34, label %if.then7.i134
  ], !prof !82

sja1105_packing.exit130.sja1105_packing.exit137_crit_edge: ; preds = %sja1105_packing.exit130
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit137

sja1105_packing.exit130.if.end23.i136_crit_edge:  ; preds = %sja1105_packing.exit130
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i136

do.end.i133:                                      ; preds = %sja1105_packing.exit130
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 75) #13
  br label %if.end23.i136

if.then7.i134:                                    ; preds = %sja1105_packing.exit130
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %entry_ptr, align 8
  %call20.i135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %41, i32 noundef 86, i32 noundef 75) #13
  br label %if.end23.i136

if.end23.i136:                                    ; preds = %if.then7.i134, %do.end.i133, %sja1105_packing.exit130.if.end23.i136_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit137

sja1105_packing.exit137:                          ; preds = %if.end23.i136, %sja1105_packing.exit130.sja1105_packing.exit137_crit_edge
  %macaddr = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i138 = tail call i32 @packing(ptr noundef %buf, ptr noundef %macaddr, i32 noundef 74, i32 noundef 27, i32 noundef 24, i32 noundef %op, i8 noundef zeroext 4) #10
  %42 = zext i32 %call.i138 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %call.i138, label %sja1105_packing.exit137.if.end23.i143_crit_edge [
    i32 0, label %sja1105_packing.exit137.sja1105_packing.exit144_crit_edge
    i32 -22, label %do.end.i140
    i32 -34, label %if.then7.i141
  ], !prof !82

sja1105_packing.exit137.sja1105_packing.exit144_crit_edge: ; preds = %sja1105_packing.exit137
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit144

sja1105_packing.exit137.if.end23.i143_crit_edge:  ; preds = %sja1105_packing.exit137
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i143

do.end.i140:                                      ; preds = %sja1105_packing.exit137
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 74, i32 noundef 27) #13
  br label %if.end23.i143

if.then7.i141:                                    ; preds = %sja1105_packing.exit137
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %macaddr to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %macaddr, align 8
  %call20.i142 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %44, i32 noundef 74, i32 noundef 27) #13
  br label %if.end23.i143

if.end23.i143:                                    ; preds = %if.then7.i141, %do.end.i140, %sja1105_packing.exit137.if.end23.i143_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit144

sja1105_packing.exit144:                          ; preds = %if.end23.i143, %sja1105_packing.exit137.sja1105_packing.exit144_crit_edge
  %srcport = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 10
  %call.i145 = tail call i32 @packing(ptr noundef %buf, ptr noundef %srcport, i32 noundef 26, i32 noundef 23, i32 noundef 24, i32 noundef %op, i8 noundef zeroext 4) #10
  %45 = zext i32 %call.i145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %call.i145, label %sja1105_packing.exit144.if.end23.i150_crit_edge [
    i32 0, label %sja1105_packing.exit144.sja1105_packing.exit151_crit_edge
    i32 -22, label %do.end.i147
    i32 -34, label %if.then7.i148
  ], !prof !82

sja1105_packing.exit144.sja1105_packing.exit151_crit_edge: ; preds = %sja1105_packing.exit144
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit151

sja1105_packing.exit144.if.end23.i150_crit_edge:  ; preds = %sja1105_packing.exit144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i150

do.end.i147:                                      ; preds = %sja1105_packing.exit144
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 26, i32 noundef 23) #13
  br label %if.end23.i150

if.then7.i148:                                    ; preds = %sja1105_packing.exit144
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %srcport to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %srcport, align 8
  %call20.i149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %47, i32 noundef 26, i32 noundef 23) #13
  br label %if.end23.i150

if.end23.i150:                                    ; preds = %if.then7.i148, %do.end.i147, %sja1105_packing.exit144.if.end23.i150_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit151

sja1105_packing.exit151:                          ; preds = %if.end23.i150, %sja1105_packing.exit144.sja1105_packing.exit151_crit_edge
  %destports = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i152 = tail call i32 @packing(ptr noundef %buf, ptr noundef %destports, i32 noundef 22, i32 noundef 12, i32 noundef 24, i32 noundef %op, i8 noundef zeroext 4) #10
  %48 = zext i32 %call.i152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %call.i152, label %sja1105_packing.exit151.if.end23.i157_crit_edge [
    i32 0, label %sja1105_packing.exit151.sja1105_packing.exit158_crit_edge
    i32 -22, label %do.end.i154
    i32 -34, label %if.then7.i155
  ], !prof !82

sja1105_packing.exit151.sja1105_packing.exit158_crit_edge: ; preds = %sja1105_packing.exit151
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit158

sja1105_packing.exit151.if.end23.i157_crit_edge:  ; preds = %sja1105_packing.exit151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i157

do.end.i154:                                      ; preds = %sja1105_packing.exit151
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 22, i32 noundef 12) #13
  br label %if.end23.i157

if.then7.i155:                                    ; preds = %sja1105_packing.exit151
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %destports to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %destports, align 8
  %call20.i156 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %50, i32 noundef 22, i32 noundef 12) #13
  br label %if.end23.i157

if.end23.i157:                                    ; preds = %if.then7.i155, %do.end.i154, %sja1105_packing.exit151.if.end23.i157_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit158

sja1105_packing.exit158:                          ; preds = %if.end23.i157, %sja1105_packing.exit151.sja1105_packing.exit158_crit_edge
  %enfport = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i159 = tail call i32 @packing(ptr noundef %buf, ptr noundef %enfport, i32 noundef 11, i32 noundef 11, i32 noundef 24, i32 noundef %op, i8 noundef zeroext 4) #10
  %51 = zext i32 %call.i159 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %call.i159, label %sja1105_packing.exit158.if.end23.i164_crit_edge [
    i32 0, label %sja1105_packing.exit158.sja1105_packing.exit165_crit_edge
    i32 -22, label %do.end.i161
    i32 -34, label %if.then7.i162
  ], !prof !82

sja1105_packing.exit158.sja1105_packing.exit165_crit_edge: ; preds = %sja1105_packing.exit158
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit165

sja1105_packing.exit158.if.end23.i164_crit_edge:  ; preds = %sja1105_packing.exit158
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i164

do.end.i161:                                      ; preds = %sja1105_packing.exit158
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 11, i32 noundef 11) #13
  br label %if.end23.i164

if.then7.i162:                                    ; preds = %sja1105_packing.exit158
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %enfport to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %enfport, align 8
  %call20.i163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %53, i32 noundef 11, i32 noundef 11) #13
  br label %if.end23.i164

if.end23.i164:                                    ; preds = %if.then7.i162, %do.end.i161, %sja1105_packing.exit158.if.end23.i164_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit165

sja1105_packing.exit165:                          ; preds = %if.end23.i164, %sja1105_packing.exit158.sja1105_packing.exit165_crit_edge
  %index = getelementptr inbounds %struct.sja1105_l2_lookup_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i166 = tail call i32 @packing(ptr noundef %buf, ptr noundef %index, i32 noundef 10, i32 noundef 1, i32 noundef 24, i32 noundef %op, i8 noundef zeroext 4) #10
  %54 = zext i32 %call.i166 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %call.i166, label %sja1105_packing.exit165.if.end23.i171_crit_edge [
    i32 0, label %sja1105_packing.exit165.sja1105_packing.exit172_crit_edge
    i32 -22, label %do.end.i168
    i32 -34, label %if.then7.i169
  ], !prof !82

sja1105_packing.exit165.sja1105_packing.exit172_crit_edge: ; preds = %sja1105_packing.exit165
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit172

sja1105_packing.exit165.if.end23.i171_crit_edge:  ; preds = %sja1105_packing.exit165
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i171

do.end.i168:                                      ; preds = %sja1105_packing.exit165
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 10, i32 noundef 1) #13
  br label %if.end23.i171

if.then7.i169:                                    ; preds = %sja1105_packing.exit165
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %index to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %index, align 8
  %call20.i170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %56, i32 noundef 10, i32 noundef 1) #13
  br label %if.end23.i171

if.end23.i171:                                    ; preds = %if.then7.i169, %do.end.i168, %sja1105_packing.exit165.if.end23.i171_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit172

sja1105_packing.exit172:                          ; preds = %if.end23.i171, %sja1105_packing.exit165.sja1105_packing.exit172_crit_edge
  ret i32 24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1110_l2_policing_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 63, i32 noundef 57, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 57) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 63, i32 noundef 57) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %smax = getelementptr inbounds %struct.sja1105_l2_policing_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i14 = tail call i32 @packing(ptr noundef %buf, ptr noundef %smax, i32 noundef 56, i32 noundef 39, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %call.i14, label %sja1105_packing.exit.if.end23.i19_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit20_crit_edge
    i32 -22, label %do.end.i16
    i32 -34, label %if.then7.i17
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit20_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit20

sja1105_packing.exit.if.end23.i19_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i19

do.end.i16:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 39) #13
  br label %if.end23.i19

if.then7.i17:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %smax to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %smax, align 8
  %call20.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 56, i32 noundef 39) #13
  br label %if.end23.i19

if.end23.i19:                                     ; preds = %if.then7.i17, %do.end.i16, %sja1105_packing.exit.if.end23.i19_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit20

sja1105_packing.exit20:                           ; preds = %if.end23.i19, %sja1105_packing.exit.sja1105_packing.exit20_crit_edge
  %rate = getelementptr inbounds %struct.sja1105_l2_policing_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i21 = tail call i32 @packing(ptr noundef %buf, ptr noundef %rate, i32 noundef 38, i32 noundef 21, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %call.i21, label %sja1105_packing.exit20.if.end23.i26_crit_edge [
    i32 0, label %sja1105_packing.exit20.sja1105_packing.exit27_crit_edge
    i32 -22, label %do.end.i23
    i32 -34, label %if.then7.i24
  ], !prof !82

sja1105_packing.exit20.sja1105_packing.exit27_crit_edge: ; preds = %sja1105_packing.exit20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit27

sja1105_packing.exit20.if.end23.i26_crit_edge:    ; preds = %sja1105_packing.exit20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i26

do.end.i23:                                       ; preds = %sja1105_packing.exit20
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 21) #13
  br label %if.end23.i26

if.then7.i24:                                     ; preds = %sja1105_packing.exit20
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %rate, align 8
  %call20.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 38, i32 noundef 21) #13
  br label %if.end23.i26

if.end23.i26:                                     ; preds = %if.then7.i24, %do.end.i23, %sja1105_packing.exit20.if.end23.i26_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit27

sja1105_packing.exit27:                           ; preds = %if.end23.i26, %sja1105_packing.exit20.sja1105_packing.exit27_crit_edge
  %maxlen = getelementptr inbounds %struct.sja1105_l2_policing_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i28 = tail call i32 @packing(ptr noundef %buf, ptr noundef %maxlen, i32 noundef 20, i32 noundef 10, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %call.i28, label %sja1105_packing.exit27.if.end23.i33_crit_edge [
    i32 0, label %sja1105_packing.exit27.sja1105_packing.exit34_crit_edge
    i32 -22, label %do.end.i30
    i32 -34, label %if.then7.i31
  ], !prof !82

sja1105_packing.exit27.sja1105_packing.exit34_crit_edge: ; preds = %sja1105_packing.exit27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit34

sja1105_packing.exit27.if.end23.i33_crit_edge:    ; preds = %sja1105_packing.exit27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i33

do.end.i30:                                       ; preds = %sja1105_packing.exit27
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 20, i32 noundef 10) #13
  br label %if.end23.i33

if.then7.i31:                                     ; preds = %sja1105_packing.exit27
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %maxlen to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %maxlen, align 8
  %call20.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 20, i32 noundef 10) #13
  br label %if.end23.i33

if.end23.i33:                                     ; preds = %if.then7.i31, %do.end.i30, %sja1105_packing.exit27.if.end23.i33_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit34

sja1105_packing.exit34:                           ; preds = %if.end23.i33, %sja1105_packing.exit27.sja1105_packing.exit34_crit_edge
  %partition = getelementptr inbounds %struct.sja1105_l2_policing_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i35 = tail call i32 @packing(ptr noundef %buf, ptr noundef %partition, i32 noundef 9, i32 noundef 7, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %call.i35, label %sja1105_packing.exit34.if.end23.i40_crit_edge [
    i32 0, label %sja1105_packing.exit34.sja1105_packing.exit41_crit_edge
    i32 -22, label %do.end.i37
    i32 -34, label %if.then7.i38
  ], !prof !82

sja1105_packing.exit34.sja1105_packing.exit41_crit_edge: ; preds = %sja1105_packing.exit34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit41

sja1105_packing.exit34.if.end23.i40_crit_edge:    ; preds = %sja1105_packing.exit34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i40

do.end.i37:                                       ; preds = %sja1105_packing.exit34
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 9, i32 noundef 7) #13
  br label %if.end23.i40

if.then7.i38:                                     ; preds = %sja1105_packing.exit34
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %partition to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %partition, align 8
  %call20.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 9, i32 noundef 7) #13
  br label %if.end23.i40

if.end23.i40:                                     ; preds = %if.then7.i38, %do.end.i37, %sja1105_packing.exit34.if.end23.i40_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit41

sja1105_packing.exit41:                           ; preds = %if.end23.i40, %sja1105_packing.exit34.sja1105_packing.exit41_crit_edge
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105pqrs_mac_config_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0180 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %offset.0179 = phi i32 [ 104, %entry ], [ %add9, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 2, i32 %i.0180
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx, i32 noundef %offset.0179, i32 noundef %offset.0179, i32 noundef 32, i32 noundef %op)
  %arrayidx3 = getelementptr %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 1, i32 %i.0180
  %add4 = add nuw nsw i32 %offset.0179, 9
  %add5 = add nuw nsw i32 %offset.0179, 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx3, i32 noundef %add4, i32 noundef %add5, i32 noundef 32, i32 noundef %op)
  %arrayidx6 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 %i.0180
  %add7 = add nuw nsw i32 %offset.0179, 18
  %add8 = add nuw nsw i32 %offset.0179, 10
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx6, i32 noundef %add7, i32 noundef %add8, i32 noundef 32, i32 noundef %op)
  %inc = add nuw nsw i32 %i.0180, 1
  %add9 = add nuw nsw i32 %offset.0179, 19
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %ifg = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %ifg, i32 noundef 103, i32 noundef 99, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %call.i, label %for.end.if.end23.i_crit_edge [
    i32 0, label %for.end.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

for.end.sja1105_packing.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

for.end.if.end23.i_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 99) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %ifg to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ifg, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 103, i32 noundef 99) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %for.end.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %for.end.sja1105_packing.exit_crit_edge
  %speed = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i74 = tail call i32 @packing(ptr noundef %buf, ptr noundef %speed, i32 noundef 98, i32 noundef 97, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %call.i74, label %sja1105_packing.exit.if.end23.i79_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit80_crit_edge
    i32 -22, label %do.end.i76
    i32 -34, label %if.then7.i77
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit80_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit80

sja1105_packing.exit.if.end23.i79_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i79

do.end.i76:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 97) #13
  br label %if.end23.i79

if.then7.i77:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %speed, align 8
  %call20.i78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 98, i32 noundef 97) #13
  br label %if.end23.i79

if.end23.i79:                                     ; preds = %if.then7.i77, %do.end.i76, %sja1105_packing.exit.if.end23.i79_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit80

sja1105_packing.exit80:                           ; preds = %if.end23.i79, %sja1105_packing.exit.sja1105_packing.exit80_crit_edge
  %tp_delin = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 5
  %call.i81 = tail call i32 @packing(ptr noundef %buf, ptr noundef %tp_delin, i32 noundef 96, i32 noundef 81, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %call.i81, label %sja1105_packing.exit80.if.end23.i86_crit_edge [
    i32 0, label %sja1105_packing.exit80.sja1105_packing.exit87_crit_edge
    i32 -22, label %do.end.i83
    i32 -34, label %if.then7.i84
  ], !prof !82

sja1105_packing.exit80.sja1105_packing.exit87_crit_edge: ; preds = %sja1105_packing.exit80
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit87

sja1105_packing.exit80.if.end23.i86_crit_edge:    ; preds = %sja1105_packing.exit80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i86

do.end.i83:                                       ; preds = %sja1105_packing.exit80
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 96, i32 noundef 81) #13
  br label %if.end23.i86

if.then7.i84:                                     ; preds = %sja1105_packing.exit80
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %tp_delin to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tp_delin, align 8
  %call20.i85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 96, i32 noundef 81) #13
  br label %if.end23.i86

if.end23.i86:                                     ; preds = %if.then7.i84, %do.end.i83, %sja1105_packing.exit80.if.end23.i86_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit87

sja1105_packing.exit87:                           ; preds = %if.end23.i86, %sja1105_packing.exit80.sja1105_packing.exit87_crit_edge
  %tp_delout = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 6
  %call.i88 = tail call i32 @packing(ptr noundef %buf, ptr noundef %tp_delout, i32 noundef 80, i32 noundef 65, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %call.i88, label %sja1105_packing.exit87.if.end23.i93_crit_edge [
    i32 0, label %sja1105_packing.exit87.sja1105_packing.exit94_crit_edge
    i32 -22, label %do.end.i90
    i32 -34, label %if.then7.i91
  ], !prof !82

sja1105_packing.exit87.sja1105_packing.exit94_crit_edge: ; preds = %sja1105_packing.exit87
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit94

sja1105_packing.exit87.if.end23.i93_crit_edge:    ; preds = %sja1105_packing.exit87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i93

do.end.i90:                                       ; preds = %sja1105_packing.exit87
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 65) #13
  br label %if.end23.i93

if.then7.i91:                                     ; preds = %sja1105_packing.exit87
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %tp_delout to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tp_delout, align 8
  %call20.i92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 80, i32 noundef 65) #13
  br label %if.end23.i93

if.end23.i93:                                     ; preds = %if.then7.i91, %do.end.i90, %sja1105_packing.exit87.if.end23.i93_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit94

sja1105_packing.exit94:                           ; preds = %if.end23.i93, %sja1105_packing.exit87.sja1105_packing.exit94_crit_edge
  %maxage = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 7
  %call.i95 = tail call i32 @packing(ptr noundef %buf, ptr noundef %maxage, i32 noundef 64, i32 noundef 57, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %call.i95, label %sja1105_packing.exit94.if.end23.i100_crit_edge [
    i32 0, label %sja1105_packing.exit94.sja1105_packing.exit101_crit_edge
    i32 -22, label %do.end.i97
    i32 -34, label %if.then7.i98
  ], !prof !82

sja1105_packing.exit94.sja1105_packing.exit101_crit_edge: ; preds = %sja1105_packing.exit94
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit101

sja1105_packing.exit94.if.end23.i100_crit_edge:   ; preds = %sja1105_packing.exit94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i100

do.end.i97:                                       ; preds = %sja1105_packing.exit94
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 57) #13
  br label %if.end23.i100

if.then7.i98:                                     ; preds = %sja1105_packing.exit94
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %maxage to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %maxage, align 8
  %call20.i99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 64, i32 noundef 57) #13
  br label %if.end23.i100

if.end23.i100:                                    ; preds = %if.then7.i98, %do.end.i97, %sja1105_packing.exit94.if.end23.i100_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit101

sja1105_packing.exit101:                          ; preds = %if.end23.i100, %sja1105_packing.exit94.sja1105_packing.exit101_crit_edge
  %vlanprio = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 8
  %call.i102 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlanprio, i32 noundef 56, i32 noundef 54, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %15 = zext i32 %call.i102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %call.i102, label %sja1105_packing.exit101.if.end23.i107_crit_edge [
    i32 0, label %sja1105_packing.exit101.sja1105_packing.exit108_crit_edge
    i32 -22, label %do.end.i104
    i32 -34, label %if.then7.i105
  ], !prof !82

sja1105_packing.exit101.sja1105_packing.exit108_crit_edge: ; preds = %sja1105_packing.exit101
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit108

sja1105_packing.exit101.if.end23.i107_crit_edge:  ; preds = %sja1105_packing.exit101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i107

do.end.i104:                                      ; preds = %sja1105_packing.exit101
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 54) #13
  br label %if.end23.i107

if.then7.i105:                                    ; preds = %sja1105_packing.exit101
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %vlanprio to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vlanprio, align 8
  %call20.i106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %17, i32 noundef 56, i32 noundef 54) #13
  br label %if.end23.i107

if.end23.i107:                                    ; preds = %if.then7.i105, %do.end.i104, %sja1105_packing.exit101.if.end23.i107_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit108

sja1105_packing.exit108:                          ; preds = %if.end23.i107, %sja1105_packing.exit101.sja1105_packing.exit108_crit_edge
  %vlanid = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 9
  %call.i109 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlanid, i32 noundef 53, i32 noundef 42, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %18 = zext i32 %call.i109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %call.i109, label %sja1105_packing.exit108.if.end23.i114_crit_edge [
    i32 0, label %sja1105_packing.exit108.sja1105_packing.exit115_crit_edge
    i32 -22, label %do.end.i111
    i32 -34, label %if.then7.i112
  ], !prof !82

sja1105_packing.exit108.sja1105_packing.exit115_crit_edge: ; preds = %sja1105_packing.exit108
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit115

sja1105_packing.exit108.if.end23.i114_crit_edge:  ; preds = %sja1105_packing.exit108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i114

do.end.i111:                                      ; preds = %sja1105_packing.exit108
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 42) #13
  br label %if.end23.i114

if.then7.i112:                                    ; preds = %sja1105_packing.exit108
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %vlanid to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %vlanid, align 8
  %call20.i113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %20, i32 noundef 53, i32 noundef 42) #13
  br label %if.end23.i114

if.end23.i114:                                    ; preds = %if.then7.i112, %do.end.i111, %sja1105_packing.exit108.if.end23.i114_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit115

sja1105_packing.exit115:                          ; preds = %if.end23.i114, %sja1105_packing.exit108.sja1105_packing.exit115_crit_edge
  %ing_mirr = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 10
  %call.i116 = tail call i32 @packing(ptr noundef %buf, ptr noundef %ing_mirr, i32 noundef 41, i32 noundef 41, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %21 = zext i32 %call.i116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %call.i116, label %sja1105_packing.exit115.if.end23.i121_crit_edge [
    i32 0, label %sja1105_packing.exit115.sja1105_packing.exit122_crit_edge
    i32 -22, label %do.end.i118
    i32 -34, label %if.then7.i119
  ], !prof !82

sja1105_packing.exit115.sja1105_packing.exit122_crit_edge: ; preds = %sja1105_packing.exit115
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit122

sja1105_packing.exit115.if.end23.i121_crit_edge:  ; preds = %sja1105_packing.exit115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i121

do.end.i118:                                      ; preds = %sja1105_packing.exit115
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 41) #13
  br label %if.end23.i121

if.then7.i119:                                    ; preds = %sja1105_packing.exit115
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %ing_mirr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ing_mirr, align 8
  %call20.i120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %23, i32 noundef 41, i32 noundef 41) #13
  br label %if.end23.i121

if.end23.i121:                                    ; preds = %if.then7.i119, %do.end.i118, %sja1105_packing.exit115.if.end23.i121_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit122

sja1105_packing.exit122:                          ; preds = %if.end23.i121, %sja1105_packing.exit115.sja1105_packing.exit122_crit_edge
  %egr_mirr = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 11
  %call.i123 = tail call i32 @packing(ptr noundef %buf, ptr noundef %egr_mirr, i32 noundef 40, i32 noundef 40, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %24 = zext i32 %call.i123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.165)
  switch i32 %call.i123, label %sja1105_packing.exit122.if.end23.i128_crit_edge [
    i32 0, label %sja1105_packing.exit122.sja1105_packing.exit129_crit_edge
    i32 -22, label %do.end.i125
    i32 -34, label %if.then7.i126
  ], !prof !82

sja1105_packing.exit122.sja1105_packing.exit129_crit_edge: ; preds = %sja1105_packing.exit122
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit129

sja1105_packing.exit122.if.end23.i128_crit_edge:  ; preds = %sja1105_packing.exit122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i128

do.end.i125:                                      ; preds = %sja1105_packing.exit122
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 40) #13
  br label %if.end23.i128

if.then7.i126:                                    ; preds = %sja1105_packing.exit122
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %egr_mirr to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %egr_mirr, align 8
  %call20.i127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %26, i32 noundef 40, i32 noundef 40) #13
  br label %if.end23.i128

if.end23.i128:                                    ; preds = %if.then7.i126, %do.end.i125, %sja1105_packing.exit122.if.end23.i128_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit129

sja1105_packing.exit129:                          ; preds = %if.end23.i128, %sja1105_packing.exit122.sja1105_packing.exit129_crit_edge
  %drpnona664 = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 12
  %call.i130 = tail call i32 @packing(ptr noundef %buf, ptr noundef %drpnona664, i32 noundef 39, i32 noundef 39, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %27 = zext i32 %call.i130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.166)
  switch i32 %call.i130, label %sja1105_packing.exit129.if.end23.i135_crit_edge [
    i32 0, label %sja1105_packing.exit129.sja1105_packing.exit136_crit_edge
    i32 -22, label %do.end.i132
    i32 -34, label %if.then7.i133
  ], !prof !82

sja1105_packing.exit129.sja1105_packing.exit136_crit_edge: ; preds = %sja1105_packing.exit129
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit136

sja1105_packing.exit129.if.end23.i135_crit_edge:  ; preds = %sja1105_packing.exit129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i135

do.end.i132:                                      ; preds = %sja1105_packing.exit129
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 39) #13
  br label %if.end23.i135

if.then7.i133:                                    ; preds = %sja1105_packing.exit129
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %drpnona664 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %drpnona664, align 8
  %call20.i134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %29, i32 noundef 39, i32 noundef 39) #13
  br label %if.end23.i135

if.end23.i135:                                    ; preds = %if.then7.i133, %do.end.i132, %sja1105_packing.exit129.if.end23.i135_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit136

sja1105_packing.exit136:                          ; preds = %if.end23.i135, %sja1105_packing.exit129.sja1105_packing.exit136_crit_edge
  %drpdtag = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 13
  %call.i137 = tail call i32 @packing(ptr noundef %buf, ptr noundef %drpdtag, i32 noundef 38, i32 noundef 38, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %30 = zext i32 %call.i137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.167)
  switch i32 %call.i137, label %sja1105_packing.exit136.if.end23.i142_crit_edge [
    i32 0, label %sja1105_packing.exit136.sja1105_packing.exit143_crit_edge
    i32 -22, label %do.end.i139
    i32 -34, label %if.then7.i140
  ], !prof !82

sja1105_packing.exit136.sja1105_packing.exit143_crit_edge: ; preds = %sja1105_packing.exit136
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit143

sja1105_packing.exit136.if.end23.i142_crit_edge:  ; preds = %sja1105_packing.exit136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i142

do.end.i139:                                      ; preds = %sja1105_packing.exit136
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 38) #13
  br label %if.end23.i142

if.then7.i140:                                    ; preds = %sja1105_packing.exit136
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %drpdtag to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %drpdtag, align 8
  %call20.i141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %32, i32 noundef 38, i32 noundef 38) #13
  br label %if.end23.i142

if.end23.i142:                                    ; preds = %if.then7.i140, %do.end.i139, %sja1105_packing.exit136.if.end23.i142_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit143

sja1105_packing.exit143:                          ; preds = %if.end23.i142, %sja1105_packing.exit136.sja1105_packing.exit143_crit_edge
  %drpuntag = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 14
  %call.i144 = tail call i32 @packing(ptr noundef %buf, ptr noundef %drpuntag, i32 noundef 35, i32 noundef 35, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %33 = zext i32 %call.i144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.168)
  switch i32 %call.i144, label %sja1105_packing.exit143.if.end23.i149_crit_edge [
    i32 0, label %sja1105_packing.exit143.sja1105_packing.exit150_crit_edge
    i32 -22, label %do.end.i146
    i32 -34, label %if.then7.i147
  ], !prof !82

sja1105_packing.exit143.sja1105_packing.exit150_crit_edge: ; preds = %sja1105_packing.exit143
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit150

sja1105_packing.exit143.if.end23.i149_crit_edge:  ; preds = %sja1105_packing.exit143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i149

do.end.i146:                                      ; preds = %sja1105_packing.exit143
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 35, i32 noundef 35) #13
  br label %if.end23.i149

if.then7.i147:                                    ; preds = %sja1105_packing.exit143
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %drpuntag to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %drpuntag, align 8
  %call20.i148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %35, i32 noundef 35, i32 noundef 35) #13
  br label %if.end23.i149

if.end23.i149:                                    ; preds = %if.then7.i147, %do.end.i146, %sja1105_packing.exit143.if.end23.i149_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit150

sja1105_packing.exit150:                          ; preds = %if.end23.i149, %sja1105_packing.exit143.sja1105_packing.exit150_crit_edge
  %retag = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 15
  %call.i151 = tail call i32 @packing(ptr noundef %buf, ptr noundef %retag, i32 noundef 34, i32 noundef 34, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %36 = zext i32 %call.i151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.169)
  switch i32 %call.i151, label %sja1105_packing.exit150.if.end23.i156_crit_edge [
    i32 0, label %sja1105_packing.exit150.sja1105_packing.exit157_crit_edge
    i32 -22, label %do.end.i153
    i32 -34, label %if.then7.i154
  ], !prof !82

sja1105_packing.exit150.sja1105_packing.exit157_crit_edge: ; preds = %sja1105_packing.exit150
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit157

sja1105_packing.exit150.if.end23.i156_crit_edge:  ; preds = %sja1105_packing.exit150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i156

do.end.i153:                                      ; preds = %sja1105_packing.exit150
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 34, i32 noundef 34) #13
  br label %if.end23.i156

if.then7.i154:                                    ; preds = %sja1105_packing.exit150
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %retag to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %retag, align 8
  %call20.i155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %38, i32 noundef 34, i32 noundef 34) #13
  br label %if.end23.i156

if.end23.i156:                                    ; preds = %if.then7.i154, %do.end.i153, %sja1105_packing.exit150.if.end23.i156_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit157

sja1105_packing.exit157:                          ; preds = %if.end23.i156, %sja1105_packing.exit150.sja1105_packing.exit157_crit_edge
  %dyn_learn = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 16
  %call.i158 = tail call i32 @packing(ptr noundef %buf, ptr noundef %dyn_learn, i32 noundef 33, i32 noundef 33, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %39 = zext i32 %call.i158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.170)
  switch i32 %call.i158, label %sja1105_packing.exit157.if.end23.i163_crit_edge [
    i32 0, label %sja1105_packing.exit157.sja1105_packing.exit164_crit_edge
    i32 -22, label %do.end.i160
    i32 -34, label %if.then7.i161
  ], !prof !82

sja1105_packing.exit157.sja1105_packing.exit164_crit_edge: ; preds = %sja1105_packing.exit157
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit164

sja1105_packing.exit157.if.end23.i163_crit_edge:  ; preds = %sja1105_packing.exit157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i163

do.end.i160:                                      ; preds = %sja1105_packing.exit157
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 33, i32 noundef 33) #13
  br label %if.end23.i163

if.then7.i161:                                    ; preds = %sja1105_packing.exit157
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %dyn_learn to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %dyn_learn, align 8
  %call20.i162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %41, i32 noundef 33, i32 noundef 33) #13
  br label %if.end23.i163

if.end23.i163:                                    ; preds = %if.then7.i161, %do.end.i160, %sja1105_packing.exit157.if.end23.i163_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit164

sja1105_packing.exit164:                          ; preds = %if.end23.i163, %sja1105_packing.exit157.sja1105_packing.exit164_crit_edge
  %egress = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 17
  %call.i165 = tail call i32 @packing(ptr noundef %buf, ptr noundef %egress, i32 noundef 32, i32 noundef 32, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %42 = zext i32 %call.i165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.171)
  switch i32 %call.i165, label %sja1105_packing.exit164.if.end23.i170_crit_edge [
    i32 0, label %sja1105_packing.exit164.sja1105_packing.exit171_crit_edge
    i32 -22, label %do.end.i167
    i32 -34, label %if.then7.i168
  ], !prof !82

sja1105_packing.exit164.sja1105_packing.exit171_crit_edge: ; preds = %sja1105_packing.exit164
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit171

sja1105_packing.exit164.if.end23.i170_crit_edge:  ; preds = %sja1105_packing.exit164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i170

do.end.i167:                                      ; preds = %sja1105_packing.exit164
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 32, i32 noundef 32) #13
  br label %if.end23.i170

if.then7.i168:                                    ; preds = %sja1105_packing.exit164
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %egress to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %egress, align 8
  %call20.i169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %44, i32 noundef 32, i32 noundef 32) #13
  br label %if.end23.i170

if.end23.i170:                                    ; preds = %if.then7.i168, %do.end.i167, %sja1105_packing.exit164.if.end23.i170_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit171

sja1105_packing.exit171:                          ; preds = %if.end23.i170, %sja1105_packing.exit164.sja1105_packing.exit171_crit_edge
  %ingress = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 18
  %call.i172 = tail call i32 @packing(ptr noundef %buf, ptr noundef %ingress, i32 noundef 31, i32 noundef 31, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %45 = zext i32 %call.i172 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.172)
  switch i32 %call.i172, label %sja1105_packing.exit171.if.end23.i177_crit_edge [
    i32 0, label %sja1105_packing.exit171.sja1105_packing.exit178_crit_edge
    i32 -22, label %do.end.i174
    i32 -34, label %if.then7.i175
  ], !prof !82

sja1105_packing.exit171.sja1105_packing.exit178_crit_edge: ; preds = %sja1105_packing.exit171
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit178

sja1105_packing.exit171.if.end23.i177_crit_edge:  ; preds = %sja1105_packing.exit171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i177

do.end.i174:                                      ; preds = %sja1105_packing.exit171
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 31) #13
  br label %if.end23.i177

if.then7.i175:                                    ; preds = %sja1105_packing.exit171
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %ingress to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ingress, align 8
  %call20.i176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %47, i32 noundef 31, i32 noundef 31) #13
  br label %if.end23.i177

if.end23.i177:                                    ; preds = %if.then7.i175, %do.end.i174, %sja1105_packing.exit171.if.end23.i177_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit178

sja1105_packing.exit178:                          ; preds = %if.end23.i177, %sja1105_packing.exit171.sja1105_packing.exit178_crit_edge
  ret i32 32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1110_mac_config_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0180 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %offset.0179 = phi i32 [ 104, %entry ], [ %add9, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 2, i32 %i.0180
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx, i32 noundef %offset.0179, i32 noundef %offset.0179, i32 noundef 32, i32 noundef %op)
  %arrayidx3 = getelementptr %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 1, i32 %i.0180
  %add4 = add nuw nsw i32 %offset.0179, 9
  %add5 = add nuw nsw i32 %offset.0179, 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx3, i32 noundef %add4, i32 noundef %add5, i32 noundef 32, i32 noundef %op)
  %arrayidx6 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 %i.0180
  %add7 = add nuw nsw i32 %offset.0179, 18
  %add8 = add nuw nsw i32 %offset.0179, 10
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx6, i32 noundef %add7, i32 noundef %add8, i32 noundef 32, i32 noundef %op)
  %inc = add nuw nsw i32 %i.0180, 1
  %add9 = add nuw nsw i32 %offset.0179, 19
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %speed = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %speed, i32 noundef 98, i32 noundef 96, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.173)
  switch i32 %call.i, label %for.end.if.end23.i_crit_edge [
    i32 0, label %for.end.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

for.end.sja1105_packing.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

for.end.if.end23.i_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 98, i32 noundef 96) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %speed to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %speed, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 98, i32 noundef 96) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %for.end.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %for.end.sja1105_packing.exit_crit_edge
  %tp_delin = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 5
  %call.i74 = tail call i32 @packing(ptr noundef %buf, ptr noundef %tp_delin, i32 noundef 95, i32 noundef 80, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.174)
  switch i32 %call.i74, label %sja1105_packing.exit.if.end23.i79_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit80_crit_edge
    i32 -22, label %do.end.i76
    i32 -34, label %if.then7.i77
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit80_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit80

sja1105_packing.exit.if.end23.i79_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i79

do.end.i76:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 80) #13
  br label %if.end23.i79

if.then7.i77:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %tp_delin to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tp_delin, align 8
  %call20.i78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 95, i32 noundef 80) #13
  br label %if.end23.i79

if.end23.i79:                                     ; preds = %if.then7.i77, %do.end.i76, %sja1105_packing.exit.if.end23.i79_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit80

sja1105_packing.exit80:                           ; preds = %if.end23.i79, %sja1105_packing.exit.sja1105_packing.exit80_crit_edge
  %tp_delout = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 6
  %call.i81 = tail call i32 @packing(ptr noundef %buf, ptr noundef %tp_delout, i32 noundef 79, i32 noundef 64, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %call.i81, label %sja1105_packing.exit80.if.end23.i86_crit_edge [
    i32 0, label %sja1105_packing.exit80.sja1105_packing.exit87_crit_edge
    i32 -22, label %do.end.i83
    i32 -34, label %if.then7.i84
  ], !prof !82

sja1105_packing.exit80.sja1105_packing.exit87_crit_edge: ; preds = %sja1105_packing.exit80
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit87

sja1105_packing.exit80.if.end23.i86_crit_edge:    ; preds = %sja1105_packing.exit80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i86

do.end.i83:                                       ; preds = %sja1105_packing.exit80
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 64) #13
  br label %if.end23.i86

if.then7.i84:                                     ; preds = %sja1105_packing.exit80
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %tp_delout to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tp_delout, align 8
  %call20.i85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 79, i32 noundef 64) #13
  br label %if.end23.i86

if.end23.i86:                                     ; preds = %if.then7.i84, %do.end.i83, %sja1105_packing.exit80.if.end23.i86_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit87

sja1105_packing.exit87:                           ; preds = %if.end23.i86, %sja1105_packing.exit80.sja1105_packing.exit87_crit_edge
  %maxage = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 7
  %call.i88 = tail call i32 @packing(ptr noundef %buf, ptr noundef %maxage, i32 noundef 63, i32 noundef 56, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.176)
  switch i32 %call.i88, label %sja1105_packing.exit87.if.end23.i93_crit_edge [
    i32 0, label %sja1105_packing.exit87.sja1105_packing.exit94_crit_edge
    i32 -22, label %do.end.i90
    i32 -34, label %if.then7.i91
  ], !prof !82

sja1105_packing.exit87.sja1105_packing.exit94_crit_edge: ; preds = %sja1105_packing.exit87
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit94

sja1105_packing.exit87.if.end23.i93_crit_edge:    ; preds = %sja1105_packing.exit87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i93

do.end.i90:                                       ; preds = %sja1105_packing.exit87
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 56) #13
  br label %if.end23.i93

if.then7.i91:                                     ; preds = %sja1105_packing.exit87
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %maxage to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %maxage, align 8
  %call20.i92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 63, i32 noundef 56) #13
  br label %if.end23.i93

if.end23.i93:                                     ; preds = %if.then7.i91, %do.end.i90, %sja1105_packing.exit87.if.end23.i93_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit94

sja1105_packing.exit94:                           ; preds = %if.end23.i93, %sja1105_packing.exit87.sja1105_packing.exit94_crit_edge
  %vlanprio = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 8
  %call.i95 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlanprio, i32 noundef 55, i32 noundef 53, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.177)
  switch i32 %call.i95, label %sja1105_packing.exit94.if.end23.i100_crit_edge [
    i32 0, label %sja1105_packing.exit94.sja1105_packing.exit101_crit_edge
    i32 -22, label %do.end.i97
    i32 -34, label %if.then7.i98
  ], !prof !82

sja1105_packing.exit94.sja1105_packing.exit101_crit_edge: ; preds = %sja1105_packing.exit94
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit101

sja1105_packing.exit94.if.end23.i100_crit_edge:   ; preds = %sja1105_packing.exit94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i100

do.end.i97:                                       ; preds = %sja1105_packing.exit94
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 55, i32 noundef 53) #13
  br label %if.end23.i100

if.then7.i98:                                     ; preds = %sja1105_packing.exit94
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %vlanprio to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %vlanprio, align 8
  %call20.i99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 55, i32 noundef 53) #13
  br label %if.end23.i100

if.end23.i100:                                    ; preds = %if.then7.i98, %do.end.i97, %sja1105_packing.exit94.if.end23.i100_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit101

sja1105_packing.exit101:                          ; preds = %if.end23.i100, %sja1105_packing.exit94.sja1105_packing.exit101_crit_edge
  %vlanid = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 9
  %call.i102 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlanid, i32 noundef 52, i32 noundef 41, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %15 = zext i32 %call.i102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.178)
  switch i32 %call.i102, label %sja1105_packing.exit101.if.end23.i107_crit_edge [
    i32 0, label %sja1105_packing.exit101.sja1105_packing.exit108_crit_edge
    i32 -22, label %do.end.i104
    i32 -34, label %if.then7.i105
  ], !prof !82

sja1105_packing.exit101.sja1105_packing.exit108_crit_edge: ; preds = %sja1105_packing.exit101
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit108

sja1105_packing.exit101.if.end23.i107_crit_edge:  ; preds = %sja1105_packing.exit101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i107

do.end.i104:                                      ; preds = %sja1105_packing.exit101
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 41) #13
  br label %if.end23.i107

if.then7.i105:                                    ; preds = %sja1105_packing.exit101
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %vlanid to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vlanid, align 8
  %call20.i106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %17, i32 noundef 52, i32 noundef 41) #13
  br label %if.end23.i107

if.end23.i107:                                    ; preds = %if.then7.i105, %do.end.i104, %sja1105_packing.exit101.if.end23.i107_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit108

sja1105_packing.exit108:                          ; preds = %if.end23.i107, %sja1105_packing.exit101.sja1105_packing.exit108_crit_edge
  %ing_mirr = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 10
  %call.i109 = tail call i32 @packing(ptr noundef %buf, ptr noundef %ing_mirr, i32 noundef 40, i32 noundef 40, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %18 = zext i32 %call.i109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.179)
  switch i32 %call.i109, label %sja1105_packing.exit108.if.end23.i114_crit_edge [
    i32 0, label %sja1105_packing.exit108.sja1105_packing.exit115_crit_edge
    i32 -22, label %do.end.i111
    i32 -34, label %if.then7.i112
  ], !prof !82

sja1105_packing.exit108.sja1105_packing.exit115_crit_edge: ; preds = %sja1105_packing.exit108
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit115

sja1105_packing.exit108.if.end23.i114_crit_edge:  ; preds = %sja1105_packing.exit108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i114

do.end.i111:                                      ; preds = %sja1105_packing.exit108
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 40) #13
  br label %if.end23.i114

if.then7.i112:                                    ; preds = %sja1105_packing.exit108
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %ing_mirr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %ing_mirr, align 8
  %call20.i113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %20, i32 noundef 40, i32 noundef 40) #13
  br label %if.end23.i114

if.end23.i114:                                    ; preds = %if.then7.i112, %do.end.i111, %sja1105_packing.exit108.if.end23.i114_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit115

sja1105_packing.exit115:                          ; preds = %if.end23.i114, %sja1105_packing.exit108.sja1105_packing.exit115_crit_edge
  %egr_mirr = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 11
  %call.i116 = tail call i32 @packing(ptr noundef %buf, ptr noundef %egr_mirr, i32 noundef 39, i32 noundef 39, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %21 = zext i32 %call.i116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %call.i116, label %sja1105_packing.exit115.if.end23.i121_crit_edge [
    i32 0, label %sja1105_packing.exit115.sja1105_packing.exit122_crit_edge
    i32 -22, label %do.end.i118
    i32 -34, label %if.then7.i119
  ], !prof !82

sja1105_packing.exit115.sja1105_packing.exit122_crit_edge: ; preds = %sja1105_packing.exit115
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit122

sja1105_packing.exit115.if.end23.i121_crit_edge:  ; preds = %sja1105_packing.exit115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i121

do.end.i118:                                      ; preds = %sja1105_packing.exit115
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 39) #13
  br label %if.end23.i121

if.then7.i119:                                    ; preds = %sja1105_packing.exit115
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %egr_mirr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %egr_mirr, align 8
  %call20.i120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %23, i32 noundef 39, i32 noundef 39) #13
  br label %if.end23.i121

if.end23.i121:                                    ; preds = %if.then7.i119, %do.end.i118, %sja1105_packing.exit115.if.end23.i121_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit122

sja1105_packing.exit122:                          ; preds = %if.end23.i121, %sja1105_packing.exit115.sja1105_packing.exit122_crit_edge
  %drpnona664 = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 12
  %call.i123 = tail call i32 @packing(ptr noundef %buf, ptr noundef %drpnona664, i32 noundef 38, i32 noundef 38, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %24 = zext i32 %call.i123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %call.i123, label %sja1105_packing.exit122.if.end23.i128_crit_edge [
    i32 0, label %sja1105_packing.exit122.sja1105_packing.exit129_crit_edge
    i32 -22, label %do.end.i125
    i32 -34, label %if.then7.i126
  ], !prof !82

sja1105_packing.exit122.sja1105_packing.exit129_crit_edge: ; preds = %sja1105_packing.exit122
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit129

sja1105_packing.exit122.if.end23.i128_crit_edge:  ; preds = %sja1105_packing.exit122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i128

do.end.i125:                                      ; preds = %sja1105_packing.exit122
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 38) #13
  br label %if.end23.i128

if.then7.i126:                                    ; preds = %sja1105_packing.exit122
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %drpnona664 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %drpnona664, align 8
  %call20.i127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %26, i32 noundef 38, i32 noundef 38) #13
  br label %if.end23.i128

if.end23.i128:                                    ; preds = %if.then7.i126, %do.end.i125, %sja1105_packing.exit122.if.end23.i128_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit129

sja1105_packing.exit129:                          ; preds = %if.end23.i128, %sja1105_packing.exit122.sja1105_packing.exit129_crit_edge
  %drpdtag = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 13
  %call.i130 = tail call i32 @packing(ptr noundef %buf, ptr noundef %drpdtag, i32 noundef 37, i32 noundef 37, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %27 = zext i32 %call.i130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %call.i130, label %sja1105_packing.exit129.if.end23.i135_crit_edge [
    i32 0, label %sja1105_packing.exit129.sja1105_packing.exit136_crit_edge
    i32 -22, label %do.end.i132
    i32 -34, label %if.then7.i133
  ], !prof !82

sja1105_packing.exit129.sja1105_packing.exit136_crit_edge: ; preds = %sja1105_packing.exit129
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit136

sja1105_packing.exit129.if.end23.i135_crit_edge:  ; preds = %sja1105_packing.exit129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i135

do.end.i132:                                      ; preds = %sja1105_packing.exit129
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 37, i32 noundef 37) #13
  br label %if.end23.i135

if.then7.i133:                                    ; preds = %sja1105_packing.exit129
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %drpdtag to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %drpdtag, align 8
  %call20.i134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %29, i32 noundef 37, i32 noundef 37) #13
  br label %if.end23.i135

if.end23.i135:                                    ; preds = %if.then7.i133, %do.end.i132, %sja1105_packing.exit129.if.end23.i135_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit136

sja1105_packing.exit136:                          ; preds = %if.end23.i135, %sja1105_packing.exit129.sja1105_packing.exit136_crit_edge
  %drpuntag = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 14
  %call.i137 = tail call i32 @packing(ptr noundef %buf, ptr noundef %drpuntag, i32 noundef 34, i32 noundef 34, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %30 = zext i32 %call.i137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.183)
  switch i32 %call.i137, label %sja1105_packing.exit136.if.end23.i142_crit_edge [
    i32 0, label %sja1105_packing.exit136.sja1105_packing.exit143_crit_edge
    i32 -22, label %do.end.i139
    i32 -34, label %if.then7.i140
  ], !prof !82

sja1105_packing.exit136.sja1105_packing.exit143_crit_edge: ; preds = %sja1105_packing.exit136
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit143

sja1105_packing.exit136.if.end23.i142_crit_edge:  ; preds = %sja1105_packing.exit136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i142

do.end.i139:                                      ; preds = %sja1105_packing.exit136
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 34, i32 noundef 34) #13
  br label %if.end23.i142

if.then7.i140:                                    ; preds = %sja1105_packing.exit136
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %drpuntag to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %drpuntag, align 8
  %call20.i141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %32, i32 noundef 34, i32 noundef 34) #13
  br label %if.end23.i142

if.end23.i142:                                    ; preds = %if.then7.i140, %do.end.i139, %sja1105_packing.exit136.if.end23.i142_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit143

sja1105_packing.exit143:                          ; preds = %if.end23.i142, %sja1105_packing.exit136.sja1105_packing.exit143_crit_edge
  %retag = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 15
  %call.i144 = tail call i32 @packing(ptr noundef %buf, ptr noundef %retag, i32 noundef 33, i32 noundef 33, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %33 = zext i32 %call.i144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %call.i144, label %sja1105_packing.exit143.if.end23.i149_crit_edge [
    i32 0, label %sja1105_packing.exit143.sja1105_packing.exit150_crit_edge
    i32 -22, label %do.end.i146
    i32 -34, label %if.then7.i147
  ], !prof !82

sja1105_packing.exit143.sja1105_packing.exit150_crit_edge: ; preds = %sja1105_packing.exit143
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit150

sja1105_packing.exit143.if.end23.i149_crit_edge:  ; preds = %sja1105_packing.exit143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i149

do.end.i146:                                      ; preds = %sja1105_packing.exit143
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 33, i32 noundef 33) #13
  br label %if.end23.i149

if.then7.i147:                                    ; preds = %sja1105_packing.exit143
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %retag to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %retag, align 8
  %call20.i148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %35, i32 noundef 33, i32 noundef 33) #13
  br label %if.end23.i149

if.end23.i149:                                    ; preds = %if.then7.i147, %do.end.i146, %sja1105_packing.exit143.if.end23.i149_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit150

sja1105_packing.exit150:                          ; preds = %if.end23.i149, %sja1105_packing.exit143.sja1105_packing.exit150_crit_edge
  %dyn_learn = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 16
  %call.i151 = tail call i32 @packing(ptr noundef %buf, ptr noundef %dyn_learn, i32 noundef 32, i32 noundef 32, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %36 = zext i32 %call.i151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %call.i151, label %sja1105_packing.exit150.if.end23.i156_crit_edge [
    i32 0, label %sja1105_packing.exit150.sja1105_packing.exit157_crit_edge
    i32 -22, label %do.end.i153
    i32 -34, label %if.then7.i154
  ], !prof !82

sja1105_packing.exit150.sja1105_packing.exit157_crit_edge: ; preds = %sja1105_packing.exit150
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit157

sja1105_packing.exit150.if.end23.i156_crit_edge:  ; preds = %sja1105_packing.exit150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i156

do.end.i153:                                      ; preds = %sja1105_packing.exit150
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 32, i32 noundef 32) #13
  br label %if.end23.i156

if.then7.i154:                                    ; preds = %sja1105_packing.exit150
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %dyn_learn to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %dyn_learn, align 8
  %call20.i155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %38, i32 noundef 32, i32 noundef 32) #13
  br label %if.end23.i156

if.end23.i156:                                    ; preds = %if.then7.i154, %do.end.i153, %sja1105_packing.exit150.if.end23.i156_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit157

sja1105_packing.exit157:                          ; preds = %if.end23.i156, %sja1105_packing.exit150.sja1105_packing.exit157_crit_edge
  %egress = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 17
  %call.i158 = tail call i32 @packing(ptr noundef %buf, ptr noundef %egress, i32 noundef 31, i32 noundef 31, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %39 = zext i32 %call.i158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %call.i158, label %sja1105_packing.exit157.if.end23.i163_crit_edge [
    i32 0, label %sja1105_packing.exit157.sja1105_packing.exit164_crit_edge
    i32 -22, label %do.end.i160
    i32 -34, label %if.then7.i161
  ], !prof !82

sja1105_packing.exit157.sja1105_packing.exit164_crit_edge: ; preds = %sja1105_packing.exit157
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit164

sja1105_packing.exit157.if.end23.i163_crit_edge:  ; preds = %sja1105_packing.exit157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i163

do.end.i160:                                      ; preds = %sja1105_packing.exit157
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 31) #13
  br label %if.end23.i163

if.then7.i161:                                    ; preds = %sja1105_packing.exit157
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %egress to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %egress, align 8
  %call20.i162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %41, i32 noundef 31, i32 noundef 31) #13
  br label %if.end23.i163

if.end23.i163:                                    ; preds = %if.then7.i161, %do.end.i160, %sja1105_packing.exit157.if.end23.i163_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit164

sja1105_packing.exit164:                          ; preds = %if.end23.i163, %sja1105_packing.exit157.sja1105_packing.exit164_crit_edge
  %ingress = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 18
  %call.i165 = tail call i32 @packing(ptr noundef %buf, ptr noundef %ingress, i32 noundef 30, i32 noundef 30, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %42 = zext i32 %call.i165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %call.i165, label %sja1105_packing.exit164.if.end23.i170_crit_edge [
    i32 0, label %sja1105_packing.exit164.sja1105_packing.exit171_crit_edge
    i32 -22, label %do.end.i167
    i32 -34, label %if.then7.i168
  ], !prof !82

sja1105_packing.exit164.sja1105_packing.exit171_crit_edge: ; preds = %sja1105_packing.exit164
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit171

sja1105_packing.exit164.if.end23.i170_crit_edge:  ; preds = %sja1105_packing.exit164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i170

do.end.i167:                                      ; preds = %sja1105_packing.exit164
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 30, i32 noundef 30) #13
  br label %if.end23.i170

if.then7.i168:                                    ; preds = %sja1105_packing.exit164
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %ingress to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %ingress, align 8
  %call20.i169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %44, i32 noundef 30, i32 noundef 30) #13
  br label %if.end23.i170

if.end23.i170:                                    ; preds = %if.then7.i168, %do.end.i167, %sja1105_packing.exit164.if.end23.i170_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit171

sja1105_packing.exit171:                          ; preds = %if.end23.i170, %sja1105_packing.exit164.sja1105_packing.exit171_crit_edge
  %ifg = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i172 = tail call i32 @packing(ptr noundef %buf, ptr noundef %ifg, i32 noundef 10, i32 noundef 5, i32 noundef 32, i32 noundef %op, i8 noundef zeroext 4) #10
  %45 = zext i32 %call.i172 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %call.i172, label %sja1105_packing.exit171.if.end23.i177_crit_edge [
    i32 0, label %sja1105_packing.exit171.sja1105_packing.exit178_crit_edge
    i32 -22, label %do.end.i174
    i32 -34, label %if.then7.i175
  ], !prof !82

sja1105_packing.exit171.sja1105_packing.exit178_crit_edge: ; preds = %sja1105_packing.exit171
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit178

sja1105_packing.exit171.if.end23.i177_crit_edge:  ; preds = %sja1105_packing.exit171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i177

do.end.i174:                                      ; preds = %sja1105_packing.exit171
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 10, i32 noundef 5) #13
  br label %if.end23.i177

if.then7.i175:                                    ; preds = %sja1105_packing.exit171
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %ifg to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ifg, align 8
  %call20.i176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %47, i32 noundef 10, i32 noundef 5) #13
  br label %if.end23.i177

if.end23.i177:                                    ; preds = %if.then7.i175, %do.end.i174, %sja1105_packing.exit171.if.end23.i177_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit178

sja1105_packing.exit178:                          ; preds = %if.end23.i177, %sja1105_packing.exit171.sja1105_packing.exit178_crit_edge
  ret i32 32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_vl_lookup_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %entry_ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  %2 = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %2, i32 noundef 95, i32 noundef 91, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %call.i, label %if.then.if.end23.i_crit_edge [
    i32 0, label %if.then.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

if.then.sja1105_packing.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

if.then.if.end23.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 91) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %2, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 95, i32 noundef 91) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %if.then.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %if.then.sja1105_packing.exit_crit_edge
  %iscritical = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 2, i32 0, i32 1
  %call.i31 = tail call i32 @packing(ptr noundef %buf, ptr noundef %iscritical, i32 noundef 90, i32 noundef 90, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %call.i31, label %sja1105_packing.exit.if.end23.i36_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit37_crit_edge
    i32 -22, label %do.end.i33
    i32 -34, label %if.then7.i34
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit37_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit37

sja1105_packing.exit.if.end23.i36_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i36

do.end.i33:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 90) #13
  br label %if.end23.i36

if.then7.i34:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %iscritical to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %iscritical, align 8
  %call20.i35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 90, i32 noundef 90) #13
  br label %if.end23.i36

if.end23.i36:                                     ; preds = %if.then7.i34, %do.end.i33, %sja1105_packing.exit.if.end23.i36_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit37

sja1105_packing.exit37:                           ; preds = %if.end23.i36, %sja1105_packing.exit.sja1105_packing.exit37_crit_edge
  %macaddr = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 2, i32 0, i32 2
  %call.i38 = tail call i32 @packing(ptr noundef %buf, ptr noundef %macaddr, i32 noundef 89, i32 noundef 42, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %call.i38, label %sja1105_packing.exit37.if.end23.i43_crit_edge [
    i32 0, label %sja1105_packing.exit37.sja1105_packing.exit44_crit_edge
    i32 -22, label %do.end.i40
    i32 -34, label %if.then7.i41
  ], !prof !82

sja1105_packing.exit37.sja1105_packing.exit44_crit_edge: ; preds = %sja1105_packing.exit37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit44

sja1105_packing.exit37.if.end23.i43_crit_edge:    ; preds = %sja1105_packing.exit37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i43

do.end.i40:                                       ; preds = %sja1105_packing.exit37
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 89, i32 noundef 42) #13
  br label %if.end23.i43

if.then7.i41:                                     ; preds = %sja1105_packing.exit37
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %macaddr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %macaddr, align 8
  %call20.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 89, i32 noundef 42) #13
  br label %if.end23.i43

if.end23.i43:                                     ; preds = %if.then7.i41, %do.end.i40, %sja1105_packing.exit37.if.end23.i43_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit44

sja1105_packing.exit44:                           ; preds = %if.end23.i43, %sja1105_packing.exit37.sja1105_packing.exit44_crit_edge
  %vlanid = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 2, i32 0, i32 3
  %call.i45 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlanid, i32 noundef 41, i32 noundef 30, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %call.i45, label %sja1105_packing.exit44.if.end23.i50_crit_edge [
    i32 0, label %sja1105_packing.exit44.sja1105_packing.exit51_crit_edge
    i32 -22, label %do.end.i47
    i32 -34, label %if.then7.i48
  ], !prof !82

sja1105_packing.exit44.sja1105_packing.exit51_crit_edge: ; preds = %sja1105_packing.exit44
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit51

sja1105_packing.exit44.if.end23.i50_crit_edge:    ; preds = %sja1105_packing.exit44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i50

do.end.i47:                                       ; preds = %sja1105_packing.exit44
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 30) #13
  br label %if.end23.i50

if.then7.i48:                                     ; preds = %sja1105_packing.exit44
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %vlanid to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %vlanid, align 8
  %call20.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 41, i32 noundef 30) #13
  br label %if.end23.i50

if.end23.i50:                                     ; preds = %if.then7.i48, %do.end.i47, %sja1105_packing.exit44.if.end23.i50_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit51

sja1105_packing.exit51:                           ; preds = %if.end23.i50, %sja1105_packing.exit44.sja1105_packing.exit51_crit_edge
  %port = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i52 = tail call i32 @packing(ptr noundef %buf, ptr noundef %port, i32 noundef 29, i32 noundef 27, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %15 = zext i32 %call.i52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %call.i52, label %sja1105_packing.exit51.if.end23.i57_crit_edge [
    i32 0, label %sja1105_packing.exit51.sja1105_packing.exit58_crit_edge
    i32 -22, label %do.end.i54
    i32 -34, label %if.then7.i55
  ], !prof !82

sja1105_packing.exit51.sja1105_packing.exit58_crit_edge: ; preds = %sja1105_packing.exit51
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit58

sja1105_packing.exit51.if.end23.i57_crit_edge:    ; preds = %sja1105_packing.exit51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i57

do.end.i54:                                       ; preds = %sja1105_packing.exit51
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 29, i32 noundef 27) #13
  br label %if.end23.i57

if.then7.i55:                                     ; preds = %sja1105_packing.exit51
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %port, align 8
  %call20.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %17, i32 noundef 29, i32 noundef 27) #13
  br label %if.end23.i57

if.end23.i57:                                     ; preds = %if.then7.i55, %do.end.i54, %sja1105_packing.exit51.if.end23.i57_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit58

sja1105_packing.exit58:                           ; preds = %if.end23.i57, %sja1105_packing.exit51.sja1105_packing.exit58_crit_edge
  %vlanprior = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 2, i32 0, i32 4
  %call.i59 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlanprior, i32 noundef 26, i32 noundef 24, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %18 = zext i32 %call.i59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %call.i59, label %sja1105_packing.exit58.if.end.sink.split_crit_edge [
    i32 0, label %sja1105_packing.exit58.if.end_crit_edge
    i32 -22, label %do.end.i61
    i32 -34, label %if.then7.i62
  ], !prof !82

sja1105_packing.exit58.if.end_crit_edge:          ; preds = %sja1105_packing.exit58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sja1105_packing.exit58.if.end.sink.split_crit_edge: ; preds = %sja1105_packing.exit58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

do.end.i61:                                       ; preds = %sja1105_packing.exit58
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 26, i32 noundef 24) #13
  br label %if.end.sink.split

if.then7.i62:                                     ; preds = %sja1105_packing.exit58
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %vlanprior to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %vlanprior, align 8
  %call20.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %20, i32 noundef 26, i32 noundef 24) #13
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %21 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %call.i, label %if.else.if.end23.i71_crit_edge [
    i32 0, label %if.else.sja1105_packing.exit72_crit_edge
    i32 -22, label %do.end.i68
    i32 -34, label %if.then7.i69
  ], !prof !82

if.else.sja1105_packing.exit72_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit72

if.else.if.end23.i71_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i71

do.end.i68:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 91) #13
  br label %if.end23.i71

if.then7.i69:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %2, align 8
  %call20.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %23, i32 noundef 95, i32 noundef 91) #13
  br label %if.end23.i71

if.end23.i71:                                     ; preds = %if.then7.i69, %do.end.i68, %if.else.if.end23.i71_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit72

sja1105_packing.exit72:                           ; preds = %if.end23.i71, %if.else.sja1105_packing.exit72_crit_edge
  %ingrmirr = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 2, i32 0, i32 1
  %call.i73 = tail call i32 @packing(ptr noundef %buf, ptr noundef %ingrmirr, i32 noundef 90, i32 noundef 90, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %24 = zext i32 %call.i73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %call.i73, label %sja1105_packing.exit72.if.end23.i78_crit_edge [
    i32 0, label %sja1105_packing.exit72.sja1105_packing.exit79_crit_edge
    i32 -22, label %do.end.i75
    i32 -34, label %if.then7.i76
  ], !prof !82

sja1105_packing.exit72.sja1105_packing.exit79_crit_edge: ; preds = %sja1105_packing.exit72
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit79

sja1105_packing.exit72.if.end23.i78_crit_edge:    ; preds = %sja1105_packing.exit72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i78

do.end.i75:                                       ; preds = %sja1105_packing.exit72
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 90, i32 noundef 90) #13
  br label %if.end23.i78

if.then7.i76:                                     ; preds = %sja1105_packing.exit72
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %ingrmirr to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ingrmirr, align 8
  %call20.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %26, i32 noundef 90, i32 noundef 90) #13
  br label %if.end23.i78

if.end23.i78:                                     ; preds = %if.then7.i76, %do.end.i75, %sja1105_packing.exit72.if.end23.i78_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit79

sja1105_packing.exit79:                           ; preds = %if.end23.i78, %sja1105_packing.exit72.sja1105_packing.exit79_crit_edge
  %vlid = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 2, i32 0, i32 2
  %call.i80 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlid, i32 noundef 57, i32 noundef 42, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %27 = zext i32 %call.i80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %call.i80, label %sja1105_packing.exit79.if.end23.i85_crit_edge [
    i32 0, label %sja1105_packing.exit79.sja1105_packing.exit86_crit_edge
    i32 -22, label %do.end.i82
    i32 -34, label %if.then7.i83
  ], !prof !82

sja1105_packing.exit79.sja1105_packing.exit86_crit_edge: ; preds = %sja1105_packing.exit79
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit86

sja1105_packing.exit79.if.end23.i85_crit_edge:    ; preds = %sja1105_packing.exit79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i85

do.end.i82:                                       ; preds = %sja1105_packing.exit79
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 57, i32 noundef 42) #13
  br label %if.end23.i85

if.then7.i83:                                     ; preds = %sja1105_packing.exit79
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %vlid to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %vlid, align 8
  %call20.i84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %29, i32 noundef 57, i32 noundef 42) #13
  br label %if.end23.i85

if.end23.i85:                                     ; preds = %if.then7.i83, %do.end.i82, %sja1105_packing.exit79.if.end23.i85_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit86

sja1105_packing.exit86:                           ; preds = %if.end23.i85, %sja1105_packing.exit79.sja1105_packing.exit86_crit_edge
  %port2 = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i87 = tail call i32 @packing(ptr noundef %buf, ptr noundef %port2, i32 noundef 29, i32 noundef 27, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %30 = zext i32 %call.i87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %call.i87, label %sja1105_packing.exit86.if.end.sink.split_crit_edge [
    i32 0, label %sja1105_packing.exit86.if.end_crit_edge
    i32 -22, label %do.end.i89
    i32 -34, label %if.then7.i90
  ], !prof !82

sja1105_packing.exit86.if.end_crit_edge:          ; preds = %sja1105_packing.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sja1105_packing.exit86.if.end.sink.split_crit_edge: ; preds = %sja1105_packing.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

do.end.i89:                                       ; preds = %sja1105_packing.exit86
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 29, i32 noundef 27) #13
  br label %if.end.sink.split

if.then7.i90:                                     ; preds = %sja1105_packing.exit86
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %port2 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %port2, align 8
  %call20.i91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %32, i32 noundef 29, i32 noundef 27) #13
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.then7.i90, %do.end.i89, %sja1105_packing.exit86.if.end.sink.split_crit_edge, %if.then7.i62, %do.end.i61, %sja1105_packing.exit58.if.end.sink.split_crit_edge
  tail call void @dump_stack() #13
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %sja1105_packing.exit86.if.end_crit_edge, %sja1105_packing.exit58.if.end_crit_edge
  ret i32 12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1110_vl_lookup_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %entry_ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  %2 = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %2, i32 noundef 94, i32 noundef 84, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %call.i, label %if.then.if.end23.i_crit_edge [
    i32 0, label %if.then.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

if.then.sja1105_packing.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

if.then.if.end23.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 84) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %2, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 94, i32 noundef 84) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %if.then.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %if.then.sja1105_packing.exit_crit_edge
  %iscritical = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 2, i32 0, i32 1
  %call.i31 = tail call i32 @packing(ptr noundef %buf, ptr noundef %iscritical, i32 noundef 83, i32 noundef 83, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %call.i31, label %sja1105_packing.exit.if.end23.i36_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit37_crit_edge
    i32 -22, label %do.end.i33
    i32 -34, label %if.then7.i34
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit37_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit37

sja1105_packing.exit.if.end23.i36_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i36

do.end.i33:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 83, i32 noundef 83) #13
  br label %if.end23.i36

if.then7.i34:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %iscritical to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %iscritical, align 8
  %call20.i35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 83, i32 noundef 83) #13
  br label %if.end23.i36

if.end23.i36:                                     ; preds = %if.then7.i34, %do.end.i33, %sja1105_packing.exit.if.end23.i36_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit37

sja1105_packing.exit37:                           ; preds = %if.end23.i36, %sja1105_packing.exit.sja1105_packing.exit37_crit_edge
  %macaddr = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 2, i32 0, i32 2
  %call.i38 = tail call i32 @packing(ptr noundef %buf, ptr noundef %macaddr, i32 noundef 82, i32 noundef 35, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.201)
  switch i32 %call.i38, label %sja1105_packing.exit37.if.end23.i43_crit_edge [
    i32 0, label %sja1105_packing.exit37.sja1105_packing.exit44_crit_edge
    i32 -22, label %do.end.i40
    i32 -34, label %if.then7.i41
  ], !prof !82

sja1105_packing.exit37.sja1105_packing.exit44_crit_edge: ; preds = %sja1105_packing.exit37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit44

sja1105_packing.exit37.if.end23.i43_crit_edge:    ; preds = %sja1105_packing.exit37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i43

do.end.i40:                                       ; preds = %sja1105_packing.exit37
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 82, i32 noundef 35) #13
  br label %if.end23.i43

if.then7.i41:                                     ; preds = %sja1105_packing.exit37
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %macaddr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %macaddr, align 8
  %call20.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 82, i32 noundef 35) #13
  br label %if.end23.i43

if.end23.i43:                                     ; preds = %if.then7.i41, %do.end.i40, %sja1105_packing.exit37.if.end23.i43_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit44

sja1105_packing.exit44:                           ; preds = %if.end23.i43, %sja1105_packing.exit37.sja1105_packing.exit44_crit_edge
  %vlanid = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 2, i32 0, i32 3
  %call.i45 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlanid, i32 noundef 34, i32 noundef 23, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.202)
  switch i32 %call.i45, label %sja1105_packing.exit44.if.end23.i50_crit_edge [
    i32 0, label %sja1105_packing.exit44.sja1105_packing.exit51_crit_edge
    i32 -22, label %do.end.i47
    i32 -34, label %if.then7.i48
  ], !prof !82

sja1105_packing.exit44.sja1105_packing.exit51_crit_edge: ; preds = %sja1105_packing.exit44
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit51

sja1105_packing.exit44.if.end23.i50_crit_edge:    ; preds = %sja1105_packing.exit44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i50

do.end.i47:                                       ; preds = %sja1105_packing.exit44
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 34, i32 noundef 23) #13
  br label %if.end23.i50

if.then7.i48:                                     ; preds = %sja1105_packing.exit44
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %vlanid to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %vlanid, align 8
  %call20.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 34, i32 noundef 23) #13
  br label %if.end23.i50

if.end23.i50:                                     ; preds = %if.then7.i48, %do.end.i47, %sja1105_packing.exit44.if.end23.i50_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit51

sja1105_packing.exit51:                           ; preds = %if.end23.i50, %sja1105_packing.exit44.sja1105_packing.exit51_crit_edge
  %port = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i52 = tail call i32 @packing(ptr noundef %buf, ptr noundef %port, i32 noundef 22, i32 noundef 19, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %15 = zext i32 %call.i52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.203)
  switch i32 %call.i52, label %sja1105_packing.exit51.if.end23.i57_crit_edge [
    i32 0, label %sja1105_packing.exit51.sja1105_packing.exit58_crit_edge
    i32 -22, label %do.end.i54
    i32 -34, label %if.then7.i55
  ], !prof !82

sja1105_packing.exit51.sja1105_packing.exit58_crit_edge: ; preds = %sja1105_packing.exit51
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit58

sja1105_packing.exit51.if.end23.i57_crit_edge:    ; preds = %sja1105_packing.exit51
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i57

do.end.i54:                                       ; preds = %sja1105_packing.exit51
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 22, i32 noundef 19) #13
  br label %if.end23.i57

if.then7.i55:                                     ; preds = %sja1105_packing.exit51
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %port to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %port, align 8
  %call20.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %17, i32 noundef 22, i32 noundef 19) #13
  br label %if.end23.i57

if.end23.i57:                                     ; preds = %if.then7.i55, %do.end.i54, %sja1105_packing.exit51.if.end23.i57_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit58

sja1105_packing.exit58:                           ; preds = %if.end23.i57, %sja1105_packing.exit51.sja1105_packing.exit58_crit_edge
  %vlanprior = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 2, i32 0, i32 4
  %call.i59 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlanprior, i32 noundef 18, i32 noundef 16, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %18 = zext i32 %call.i59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.204)
  switch i32 %call.i59, label %sja1105_packing.exit58.if.end.sink.split_crit_edge [
    i32 0, label %sja1105_packing.exit58.if.end_crit_edge
    i32 -22, label %do.end.i61
    i32 -34, label %if.then7.i62
  ], !prof !82

sja1105_packing.exit58.if.end_crit_edge:          ; preds = %sja1105_packing.exit58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sja1105_packing.exit58.if.end.sink.split_crit_edge: ; preds = %sja1105_packing.exit58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

do.end.i61:                                       ; preds = %sja1105_packing.exit58
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 18, i32 noundef 16) #13
  br label %if.end.sink.split

if.then7.i62:                                     ; preds = %sja1105_packing.exit58
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %vlanprior to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %vlanprior, align 8
  %call20.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %20, i32 noundef 18, i32 noundef 16) #13
  br label %if.end.sink.split

if.else:                                          ; preds = %entry
  %21 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.205)
  switch i32 %call.i, label %if.else.if.end23.i71_crit_edge [
    i32 0, label %if.else.sja1105_packing.exit72_crit_edge
    i32 -22, label %do.end.i68
    i32 -34, label %if.then7.i69
  ], !prof !82

if.else.sja1105_packing.exit72_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit72

if.else.if.end23.i71_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i71

do.end.i68:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 84) #13
  br label %if.end23.i71

if.then7.i69:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %2, align 8
  %call20.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %23, i32 noundef 94, i32 noundef 84) #13
  br label %if.end23.i71

if.end23.i71:                                     ; preds = %if.then7.i69, %do.end.i68, %if.else.if.end23.i71_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit72

sja1105_packing.exit72:                           ; preds = %if.end23.i71, %if.else.sja1105_packing.exit72_crit_edge
  %ingrmirr = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 2, i32 0, i32 1
  %call.i73 = tail call i32 @packing(ptr noundef %buf, ptr noundef %ingrmirr, i32 noundef 83, i32 noundef 83, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %24 = zext i32 %call.i73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.206)
  switch i32 %call.i73, label %sja1105_packing.exit72.if.end23.i78_crit_edge [
    i32 0, label %sja1105_packing.exit72.sja1105_packing.exit79_crit_edge
    i32 -22, label %do.end.i75
    i32 -34, label %if.then7.i76
  ], !prof !82

sja1105_packing.exit72.sja1105_packing.exit79_crit_edge: ; preds = %sja1105_packing.exit72
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit79

sja1105_packing.exit72.if.end23.i78_crit_edge:    ; preds = %sja1105_packing.exit72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i78

do.end.i75:                                       ; preds = %sja1105_packing.exit72
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 83, i32 noundef 83) #13
  br label %if.end23.i78

if.then7.i76:                                     ; preds = %sja1105_packing.exit72
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %ingrmirr to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ingrmirr, align 8
  %call20.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %26, i32 noundef 83, i32 noundef 83) #13
  br label %if.end23.i78

if.end23.i78:                                     ; preds = %if.then7.i76, %do.end.i75, %sja1105_packing.exit72.if.end23.i78_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit79

sja1105_packing.exit79:                           ; preds = %if.end23.i78, %sja1105_packing.exit72.sja1105_packing.exit79_crit_edge
  %vlid = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 2, i32 0, i32 2
  %call.i80 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlid, i32 noundef 50, i32 noundef 35, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %27 = zext i32 %call.i80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.207)
  switch i32 %call.i80, label %sja1105_packing.exit79.if.end23.i85_crit_edge [
    i32 0, label %sja1105_packing.exit79.sja1105_packing.exit86_crit_edge
    i32 -22, label %do.end.i82
    i32 -34, label %if.then7.i83
  ], !prof !82

sja1105_packing.exit79.sja1105_packing.exit86_crit_edge: ; preds = %sja1105_packing.exit79
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit86

sja1105_packing.exit79.if.end23.i85_crit_edge:    ; preds = %sja1105_packing.exit79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i85

do.end.i82:                                       ; preds = %sja1105_packing.exit79
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 50, i32 noundef 35) #13
  br label %if.end23.i85

if.then7.i83:                                     ; preds = %sja1105_packing.exit79
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %vlid to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %vlid, align 8
  %call20.i84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %29, i32 noundef 50, i32 noundef 35) #13
  br label %if.end23.i85

if.end23.i85:                                     ; preds = %if.then7.i83, %do.end.i82, %sja1105_packing.exit79.if.end23.i85_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit86

sja1105_packing.exit86:                           ; preds = %if.end23.i85, %sja1105_packing.exit79.sja1105_packing.exit86_crit_edge
  %port2 = getelementptr inbounds %struct.sja1105_vl_lookup_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i87 = tail call i32 @packing(ptr noundef %buf, ptr noundef %port2, i32 noundef 22, i32 noundef 19, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %30 = zext i32 %call.i87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.208)
  switch i32 %call.i87, label %sja1105_packing.exit86.if.end.sink.split_crit_edge [
    i32 0, label %sja1105_packing.exit86.if.end_crit_edge
    i32 -22, label %do.end.i89
    i32 -34, label %if.then7.i90
  ], !prof !82

sja1105_packing.exit86.if.end_crit_edge:          ; preds = %sja1105_packing.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sja1105_packing.exit86.if.end.sink.split_crit_edge: ; preds = %sja1105_packing.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.sink.split

do.end.i89:                                       ; preds = %sja1105_packing.exit86
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 22, i32 noundef 19) #13
  br label %if.end.sink.split

if.then7.i90:                                     ; preds = %sja1105_packing.exit86
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %port2 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %port2, align 8
  %call20.i91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %32, i32 noundef 22, i32 noundef 19) #13
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.then7.i90, %do.end.i89, %sja1105_packing.exit86.if.end.sink.split_crit_edge, %if.then7.i62, %do.end.i61, %sja1105_packing.exit58.if.end.sink.split_crit_edge
  tail call void @dump_stack() #13
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %sja1105_packing.exit86.if.end_crit_edge, %sja1105_packing.exit58.if.end_crit_edge
  ret i32 12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1110_vl_policing_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 63, i32 noundef 63, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.209)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 63) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 63, i32 noundef 63) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %maxlen = getelementptr inbounds %struct.sja1105_vl_policing_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i16 = tail call i32 @packing(ptr noundef %buf, ptr noundef %maxlen, i32 noundef 62, i32 noundef 52, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.210)
  switch i32 %call.i16, label %sja1105_packing.exit.if.end23.i21_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit22_crit_edge
    i32 -22, label %do.end.i18
    i32 -34, label %if.then7.i19
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit22_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit22

sja1105_packing.exit.if.end23.i21_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i21

do.end.i18:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 52) #13
  br label %if.end23.i21

if.then7.i19:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %maxlen to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %maxlen, align 8
  %call20.i20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 62, i32 noundef 52) #13
  br label %if.end23.i21

if.end23.i21:                                     ; preds = %if.then7.i19, %do.end.i18, %sja1105_packing.exit.if.end23.i21_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit22

sja1105_packing.exit22:                           ; preds = %if.end23.i21, %sja1105_packing.exit.sja1105_packing.exit22_crit_edge
  %sharindx = getelementptr inbounds %struct.sja1105_vl_policing_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i23 = tail call i32 @packing(ptr noundef %buf, ptr noundef %sharindx, i32 noundef 51, i32 noundef 40, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.211)
  switch i32 %call.i23, label %sja1105_packing.exit22.if.end23.i28_crit_edge [
    i32 0, label %sja1105_packing.exit22.sja1105_packing.exit29_crit_edge
    i32 -22, label %do.end.i25
    i32 -34, label %if.then7.i26
  ], !prof !82

sja1105_packing.exit22.sja1105_packing.exit29_crit_edge: ; preds = %sja1105_packing.exit22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit29

sja1105_packing.exit22.if.end23.i28_crit_edge:    ; preds = %sja1105_packing.exit22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i28

do.end.i25:                                       ; preds = %sja1105_packing.exit22
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 40) #13
  br label %if.end23.i28

if.then7.i26:                                     ; preds = %sja1105_packing.exit22
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %sharindx to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sharindx, align 8
  %call20.i27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 51, i32 noundef 40) #13
  br label %if.end23.i28

if.end23.i28:                                     ; preds = %if.then7.i26, %do.end.i25, %sja1105_packing.exit22.if.end23.i28_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit29

sja1105_packing.exit29:                           ; preds = %if.end23.i28, %sja1105_packing.exit22.sja1105_packing.exit29_crit_edge
  %9 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %entry_ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp = icmp eq i64 %10, 0
  br i1 %cmp, label %if.then, label %sja1105_packing.exit29.if.end_crit_edge

sja1105_packing.exit29.if.end_crit_edge:          ; preds = %sja1105_packing.exit29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sja1105_packing.exit29
  %bag = getelementptr inbounds %struct.sja1105_vl_policing_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i30 = tail call i32 @packing(ptr noundef %buf, ptr noundef %bag, i32 noundef 41, i32 noundef 28, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %11 = zext i32 %call.i30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.212)
  switch i32 %call.i30, label %if.then.if.end23.i35_crit_edge [
    i32 0, label %if.then.sja1105_packing.exit36_crit_edge
    i32 -22, label %do.end.i32
    i32 -34, label %if.then7.i33
  ], !prof !82

if.then.sja1105_packing.exit36_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit36

if.then.if.end23.i35_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i35

do.end.i32:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 28) #13
  br label %if.end23.i35

if.then7.i33:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %bag to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bag, align 8
  %call20.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %13, i32 noundef 41, i32 noundef 28) #13
  br label %if.end23.i35

if.end23.i35:                                     ; preds = %if.then7.i33, %do.end.i32, %if.then.if.end23.i35_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit36

sja1105_packing.exit36:                           ; preds = %if.end23.i35, %if.then.sja1105_packing.exit36_crit_edge
  %jitter = getelementptr inbounds %struct.sja1105_vl_policing_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i37 = tail call i32 @packing(ptr noundef %buf, ptr noundef %jitter, i32 noundef 27, i32 noundef 18, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %14 = zext i32 %call.i37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %call.i37, label %sja1105_packing.exit36.if.end23.i42_crit_edge [
    i32 0, label %sja1105_packing.exit36.if.end_crit_edge
    i32 -22, label %do.end.i39
    i32 -34, label %if.then7.i40
  ], !prof !82

sja1105_packing.exit36.if.end_crit_edge:          ; preds = %sja1105_packing.exit36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sja1105_packing.exit36.if.end23.i42_crit_edge:    ; preds = %sja1105_packing.exit36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i42

do.end.i39:                                       ; preds = %sja1105_packing.exit36
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 27, i32 noundef 18) #13
  br label %if.end23.i42

if.then7.i40:                                     ; preds = %sja1105_packing.exit36
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %jitter to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %jitter, align 8
  %call20.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %16, i32 noundef 27, i32 noundef 18) #13
  br label %if.end23.i42

if.end23.i42:                                     ; preds = %if.then7.i40, %do.end.i39, %sja1105_packing.exit36.if.end23.i42_crit_edge
  tail call void @dump_stack() #13
  br label %if.end

if.end:                                           ; preds = %if.end23.i42, %sja1105_packing.exit36.if.end_crit_edge, %sja1105_packing.exit29.if.end_crit_edge
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_vlan_lookup_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 63, i32 noundef 59, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 59) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 63, i32 noundef 59) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %vegr_mirr = getelementptr inbounds %struct.sja1105_vlan_lookup_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i17 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vegr_mirr, i32 noundef 58, i32 noundef 54, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.215)
  switch i32 %call.i17, label %sja1105_packing.exit.if.end23.i22_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit23_crit_edge
    i32 -22, label %do.end.i19
    i32 -34, label %if.then7.i20
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit23_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit23

sja1105_packing.exit.if.end23.i22_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i22

do.end.i19:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 54) #13
  br label %if.end23.i22

if.then7.i20:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %vegr_mirr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %vegr_mirr, align 8
  %call20.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 58, i32 noundef 54) #13
  br label %if.end23.i22

if.end23.i22:                                     ; preds = %if.then7.i20, %do.end.i19, %sja1105_packing.exit.if.end23.i22_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit23

sja1105_packing.exit23:                           ; preds = %if.end23.i22, %sja1105_packing.exit.sja1105_packing.exit23_crit_edge
  %vmemb_port = getelementptr inbounds %struct.sja1105_vlan_lookup_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i24 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vmemb_port, i32 noundef 53, i32 noundef 49, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.216)
  switch i32 %call.i24, label %sja1105_packing.exit23.if.end23.i29_crit_edge [
    i32 0, label %sja1105_packing.exit23.sja1105_packing.exit30_crit_edge
    i32 -22, label %do.end.i26
    i32 -34, label %if.then7.i27
  ], !prof !82

sja1105_packing.exit23.sja1105_packing.exit30_crit_edge: ; preds = %sja1105_packing.exit23
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit30

sja1105_packing.exit23.if.end23.i29_crit_edge:    ; preds = %sja1105_packing.exit23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i29

do.end.i26:                                       ; preds = %sja1105_packing.exit23
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 49) #13
  br label %if.end23.i29

if.then7.i27:                                     ; preds = %sja1105_packing.exit23
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %vmemb_port to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %vmemb_port, align 8
  %call20.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 53, i32 noundef 49) #13
  br label %if.end23.i29

if.end23.i29:                                     ; preds = %if.then7.i27, %do.end.i26, %sja1105_packing.exit23.if.end23.i29_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit30

sja1105_packing.exit30:                           ; preds = %if.end23.i29, %sja1105_packing.exit23.sja1105_packing.exit30_crit_edge
  %vlan_bc = getelementptr inbounds %struct.sja1105_vlan_lookup_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i31 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlan_bc, i32 noundef 48, i32 noundef 44, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.217)
  switch i32 %call.i31, label %sja1105_packing.exit30.if.end23.i36_crit_edge [
    i32 0, label %sja1105_packing.exit30.sja1105_packing.exit37_crit_edge
    i32 -22, label %do.end.i33
    i32 -34, label %if.then7.i34
  ], !prof !82

sja1105_packing.exit30.sja1105_packing.exit37_crit_edge: ; preds = %sja1105_packing.exit30
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit37

sja1105_packing.exit30.if.end23.i36_crit_edge:    ; preds = %sja1105_packing.exit30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i36

do.end.i33:                                       ; preds = %sja1105_packing.exit30
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 44) #13
  br label %if.end23.i36

if.then7.i34:                                     ; preds = %sja1105_packing.exit30
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %vlan_bc to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %vlan_bc, align 8
  %call20.i35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 48, i32 noundef 44) #13
  br label %if.end23.i36

if.end23.i36:                                     ; preds = %if.then7.i34, %do.end.i33, %sja1105_packing.exit30.if.end23.i36_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit37

sja1105_packing.exit37:                           ; preds = %if.end23.i36, %sja1105_packing.exit30.sja1105_packing.exit37_crit_edge
  %tag_port = getelementptr inbounds %struct.sja1105_vlan_lookup_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i38 = tail call i32 @packing(ptr noundef %buf, ptr noundef %tag_port, i32 noundef 43, i32 noundef 39, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.218)
  switch i32 %call.i38, label %sja1105_packing.exit37.if.end23.i43_crit_edge [
    i32 0, label %sja1105_packing.exit37.sja1105_packing.exit44_crit_edge
    i32 -22, label %do.end.i40
    i32 -34, label %if.then7.i41
  ], !prof !82

sja1105_packing.exit37.sja1105_packing.exit44_crit_edge: ; preds = %sja1105_packing.exit37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit44

sja1105_packing.exit37.if.end23.i43_crit_edge:    ; preds = %sja1105_packing.exit37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i43

do.end.i40:                                       ; preds = %sja1105_packing.exit37
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 39) #13
  br label %if.end23.i43

if.then7.i41:                                     ; preds = %sja1105_packing.exit37
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %tag_port to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %tag_port, align 8
  %call20.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 43, i32 noundef 39) #13
  br label %if.end23.i43

if.end23.i43:                                     ; preds = %if.then7.i41, %do.end.i40, %sja1105_packing.exit37.if.end23.i43_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit44

sja1105_packing.exit44:                           ; preds = %if.end23.i43, %sja1105_packing.exit37.sja1105_packing.exit44_crit_edge
  %vlanid = getelementptr inbounds %struct.sja1105_vlan_lookup_entry, ptr %entry_ptr, i32 0, i32 5
  %call.i45 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlanid, i32 noundef 38, i32 noundef 27, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %15 = zext i32 %call.i45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.219)
  switch i32 %call.i45, label %sja1105_packing.exit44.if.end23.i50_crit_edge [
    i32 0, label %sja1105_packing.exit44.sja1105_packing.exit51_crit_edge
    i32 -22, label %do.end.i47
    i32 -34, label %if.then7.i48
  ], !prof !82

sja1105_packing.exit44.sja1105_packing.exit51_crit_edge: ; preds = %sja1105_packing.exit44
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit51

sja1105_packing.exit44.if.end23.i50_crit_edge:    ; preds = %sja1105_packing.exit44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i50

do.end.i47:                                       ; preds = %sja1105_packing.exit44
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 27) #13
  br label %if.end23.i50

if.then7.i48:                                     ; preds = %sja1105_packing.exit44
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %vlanid to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vlanid, align 8
  %call20.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %17, i32 noundef 38, i32 noundef 27) #13
  br label %if.end23.i50

if.end23.i50:                                     ; preds = %if.then7.i48, %do.end.i47, %sja1105_packing.exit44.if.end23.i50_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit51

sja1105_packing.exit51:                           ; preds = %if.end23.i50, %sja1105_packing.exit44.sja1105_packing.exit51_crit_edge
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1110_vlan_lookup_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 95, i32 noundef 85, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.220)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 85) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 95, i32 noundef 85) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %vegr_mirr = getelementptr inbounds %struct.sja1105_vlan_lookup_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i20 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vegr_mirr, i32 noundef 84, i32 noundef 74, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.221)
  switch i32 %call.i20, label %sja1105_packing.exit.if.end23.i25_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit26_crit_edge
    i32 -22, label %do.end.i22
    i32 -34, label %if.then7.i23
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit26_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit26

sja1105_packing.exit.if.end23.i25_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i25

do.end.i22:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 84, i32 noundef 74) #13
  br label %if.end23.i25

if.then7.i23:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %vegr_mirr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %vegr_mirr, align 8
  %call20.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 84, i32 noundef 74) #13
  br label %if.end23.i25

if.end23.i25:                                     ; preds = %if.then7.i23, %do.end.i22, %sja1105_packing.exit.if.end23.i25_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit26

sja1105_packing.exit26:                           ; preds = %if.end23.i25, %sja1105_packing.exit.sja1105_packing.exit26_crit_edge
  %vmemb_port = getelementptr inbounds %struct.sja1105_vlan_lookup_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i27 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vmemb_port, i32 noundef 73, i32 noundef 63, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.222)
  switch i32 %call.i27, label %sja1105_packing.exit26.if.end23.i32_crit_edge [
    i32 0, label %sja1105_packing.exit26.sja1105_packing.exit33_crit_edge
    i32 -22, label %do.end.i29
    i32 -34, label %if.then7.i30
  ], !prof !82

sja1105_packing.exit26.sja1105_packing.exit33_crit_edge: ; preds = %sja1105_packing.exit26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit33

sja1105_packing.exit26.if.end23.i32_crit_edge:    ; preds = %sja1105_packing.exit26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i32

do.end.i29:                                       ; preds = %sja1105_packing.exit26
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 73, i32 noundef 63) #13
  br label %if.end23.i32

if.then7.i30:                                     ; preds = %sja1105_packing.exit26
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %vmemb_port to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %vmemb_port, align 8
  %call20.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 73, i32 noundef 63) #13
  br label %if.end23.i32

if.end23.i32:                                     ; preds = %if.then7.i30, %do.end.i29, %sja1105_packing.exit26.if.end23.i32_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit33

sja1105_packing.exit33:                           ; preds = %if.end23.i32, %sja1105_packing.exit26.sja1105_packing.exit33_crit_edge
  %vlan_bc = getelementptr inbounds %struct.sja1105_vlan_lookup_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i34 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlan_bc, i32 noundef 62, i32 noundef 52, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %call.i34, label %sja1105_packing.exit33.if.end23.i39_crit_edge [
    i32 0, label %sja1105_packing.exit33.sja1105_packing.exit40_crit_edge
    i32 -22, label %do.end.i36
    i32 -34, label %if.then7.i37
  ], !prof !82

sja1105_packing.exit33.sja1105_packing.exit40_crit_edge: ; preds = %sja1105_packing.exit33
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit40

sja1105_packing.exit33.if.end23.i39_crit_edge:    ; preds = %sja1105_packing.exit33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i39

do.end.i36:                                       ; preds = %sja1105_packing.exit33
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 52) #13
  br label %if.end23.i39

if.then7.i37:                                     ; preds = %sja1105_packing.exit33
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %vlan_bc to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %vlan_bc, align 8
  %call20.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 62, i32 noundef 52) #13
  br label %if.end23.i39

if.end23.i39:                                     ; preds = %if.then7.i37, %do.end.i36, %sja1105_packing.exit33.if.end23.i39_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit40

sja1105_packing.exit40:                           ; preds = %if.end23.i39, %sja1105_packing.exit33.sja1105_packing.exit40_crit_edge
  %tag_port = getelementptr inbounds %struct.sja1105_vlan_lookup_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i41 = tail call i32 @packing(ptr noundef %buf, ptr noundef %tag_port, i32 noundef 51, i32 noundef 41, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.224)
  switch i32 %call.i41, label %sja1105_packing.exit40.if.end23.i46_crit_edge [
    i32 0, label %sja1105_packing.exit40.sja1105_packing.exit47_crit_edge
    i32 -22, label %do.end.i43
    i32 -34, label %if.then7.i44
  ], !prof !82

sja1105_packing.exit40.sja1105_packing.exit47_crit_edge: ; preds = %sja1105_packing.exit40
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit47

sja1105_packing.exit40.if.end23.i46_crit_edge:    ; preds = %sja1105_packing.exit40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i46

do.end.i43:                                       ; preds = %sja1105_packing.exit40
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 41) #13
  br label %if.end23.i46

if.then7.i44:                                     ; preds = %sja1105_packing.exit40
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %tag_port to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %tag_port, align 8
  %call20.i45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 51, i32 noundef 41) #13
  br label %if.end23.i46

if.end23.i46:                                     ; preds = %if.then7.i44, %do.end.i43, %sja1105_packing.exit40.if.end23.i46_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit47

sja1105_packing.exit47:                           ; preds = %if.end23.i46, %sja1105_packing.exit40.sja1105_packing.exit47_crit_edge
  %type_entry = getelementptr inbounds %struct.sja1105_vlan_lookup_entry, ptr %entry_ptr, i32 0, i32 6
  %call.i48 = tail call i32 @packing(ptr noundef %buf, ptr noundef %type_entry, i32 noundef 40, i32 noundef 39, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %15 = zext i32 %call.i48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.225)
  switch i32 %call.i48, label %sja1105_packing.exit47.if.end23.i53_crit_edge [
    i32 0, label %sja1105_packing.exit47.sja1105_packing.exit54_crit_edge
    i32 -22, label %do.end.i50
    i32 -34, label %if.then7.i51
  ], !prof !82

sja1105_packing.exit47.sja1105_packing.exit54_crit_edge: ; preds = %sja1105_packing.exit47
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit54

sja1105_packing.exit47.if.end23.i53_crit_edge:    ; preds = %sja1105_packing.exit47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i53

do.end.i50:                                       ; preds = %sja1105_packing.exit47
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 40, i32 noundef 39) #13
  br label %if.end23.i53

if.then7.i51:                                     ; preds = %sja1105_packing.exit47
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %type_entry to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %type_entry, align 8
  %call20.i52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %17, i32 noundef 40, i32 noundef 39) #13
  br label %if.end23.i53

if.end23.i53:                                     ; preds = %if.then7.i51, %do.end.i50, %sja1105_packing.exit47.if.end23.i53_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit54

sja1105_packing.exit54:                           ; preds = %if.end23.i53, %sja1105_packing.exit47.sja1105_packing.exit54_crit_edge
  %vlanid = getelementptr inbounds %struct.sja1105_vlan_lookup_entry, ptr %entry_ptr, i32 0, i32 5
  %call.i55 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlanid, i32 noundef 38, i32 noundef 27, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %18 = zext i32 %call.i55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.226)
  switch i32 %call.i55, label %sja1105_packing.exit54.if.end23.i60_crit_edge [
    i32 0, label %sja1105_packing.exit54.sja1105_packing.exit61_crit_edge
    i32 -22, label %do.end.i57
    i32 -34, label %if.then7.i58
  ], !prof !82

sja1105_packing.exit54.sja1105_packing.exit61_crit_edge: ; preds = %sja1105_packing.exit54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit61

sja1105_packing.exit54.if.end23.i60_crit_edge:    ; preds = %sja1105_packing.exit54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i60

do.end.i57:                                       ; preds = %sja1105_packing.exit54
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 27) #13
  br label %if.end23.i60

if.then7.i58:                                     ; preds = %sja1105_packing.exit54
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %vlanid to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %vlanid, align 8
  %call20.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %20, i32 noundef 38, i32 noundef 27) #13
  br label %if.end23.i60

if.end23.i60:                                     ; preds = %if.then7.i58, %do.end.i57, %sja1105_packing.exit54.if.end23.i60_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit61

sja1105_packing.exit61:                           ; preds = %if.end23.i60, %sja1105_packing.exit54.sja1105_packing.exit61_crit_edge
  ret i32 12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1110_xmii_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.027 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %offset.026 = phi i32 [ 20, %entry ], [ %add9, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sja1105_xmii_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 %i.027
  %add = or i32 %offset.026, 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx, i32 noundef %add, i32 noundef %offset.026, i32 noundef 8, i32 noundef %op)
  %arrayidx3 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 %i.027
  %add4 = or i32 %offset.026, 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx3, i32 noundef %add4, i32 noundef %add4, i32 noundef 8, i32 noundef %op)
  %arrayidx6 = getelementptr %struct.sja1105_xmii_params_entry, ptr %entry_ptr, i32 0, i32 2, i32 %i.027
  %add7 = or i32 %offset.026, 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx6, i32 noundef %add7, i32 noundef %add7, i32 noundef 8, i32 noundef %op)
  %inc = add nuw nsw i32 %i.027, 1
  %add9 = add nuw nsw i32 %offset.026, 4
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_retagging_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 63, i32 noundef 59, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.227)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 59) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 63, i32 noundef 59) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %ing_port = getelementptr inbounds %struct.sja1105_retagging_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i20 = tail call i32 @packing(ptr noundef %buf, ptr noundef %ing_port, i32 noundef 58, i32 noundef 54, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.228)
  switch i32 %call.i20, label %sja1105_packing.exit.if.end23.i25_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit26_crit_edge
    i32 -22, label %do.end.i22
    i32 -34, label %if.then7.i23
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit26_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit26

sja1105_packing.exit.if.end23.i25_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i25

do.end.i22:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 54) #13
  br label %if.end23.i25

if.then7.i23:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %ing_port to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ing_port, align 8
  %call20.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 58, i32 noundef 54) #13
  br label %if.end23.i25

if.end23.i25:                                     ; preds = %if.then7.i23, %do.end.i22, %sja1105_packing.exit.if.end23.i25_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit26

sja1105_packing.exit26:                           ; preds = %if.end23.i25, %sja1105_packing.exit.sja1105_packing.exit26_crit_edge
  %vlan_ing = getelementptr inbounds %struct.sja1105_retagging_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i27 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlan_ing, i32 noundef 53, i32 noundef 42, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.229)
  switch i32 %call.i27, label %sja1105_packing.exit26.if.end23.i32_crit_edge [
    i32 0, label %sja1105_packing.exit26.sja1105_packing.exit33_crit_edge
    i32 -22, label %do.end.i29
    i32 -34, label %if.then7.i30
  ], !prof !82

sja1105_packing.exit26.sja1105_packing.exit33_crit_edge: ; preds = %sja1105_packing.exit26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit33

sja1105_packing.exit26.if.end23.i32_crit_edge:    ; preds = %sja1105_packing.exit26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i32

do.end.i29:                                       ; preds = %sja1105_packing.exit26
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 42) #13
  br label %if.end23.i32

if.then7.i30:                                     ; preds = %sja1105_packing.exit26
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %vlan_ing to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %vlan_ing, align 8
  %call20.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 53, i32 noundef 42) #13
  br label %if.end23.i32

if.end23.i32:                                     ; preds = %if.then7.i30, %do.end.i29, %sja1105_packing.exit26.if.end23.i32_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit33

sja1105_packing.exit33:                           ; preds = %if.end23.i32, %sja1105_packing.exit26.sja1105_packing.exit33_crit_edge
  %vlan_egr = getelementptr inbounds %struct.sja1105_retagging_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i34 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlan_egr, i32 noundef 41, i32 noundef 30, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.230)
  switch i32 %call.i34, label %sja1105_packing.exit33.if.end23.i39_crit_edge [
    i32 0, label %sja1105_packing.exit33.sja1105_packing.exit40_crit_edge
    i32 -22, label %do.end.i36
    i32 -34, label %if.then7.i37
  ], !prof !82

sja1105_packing.exit33.sja1105_packing.exit40_crit_edge: ; preds = %sja1105_packing.exit33
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit40

sja1105_packing.exit33.if.end23.i39_crit_edge:    ; preds = %sja1105_packing.exit33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i39

do.end.i36:                                       ; preds = %sja1105_packing.exit33
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 30) #13
  br label %if.end23.i39

if.then7.i37:                                     ; preds = %sja1105_packing.exit33
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %vlan_egr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %vlan_egr, align 8
  %call20.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 41, i32 noundef 30) #13
  br label %if.end23.i39

if.end23.i39:                                     ; preds = %if.then7.i37, %do.end.i36, %sja1105_packing.exit33.if.end23.i39_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit40

sja1105_packing.exit40:                           ; preds = %if.end23.i39, %sja1105_packing.exit33.sja1105_packing.exit40_crit_edge
  %do_not_learn = getelementptr inbounds %struct.sja1105_retagging_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i41 = tail call i32 @packing(ptr noundef %buf, ptr noundef %do_not_learn, i32 noundef 29, i32 noundef 29, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.231)
  switch i32 %call.i41, label %sja1105_packing.exit40.if.end23.i46_crit_edge [
    i32 0, label %sja1105_packing.exit40.sja1105_packing.exit47_crit_edge
    i32 -22, label %do.end.i43
    i32 -34, label %if.then7.i44
  ], !prof !82

sja1105_packing.exit40.sja1105_packing.exit47_crit_edge: ; preds = %sja1105_packing.exit40
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit47

sja1105_packing.exit40.if.end23.i46_crit_edge:    ; preds = %sja1105_packing.exit40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i46

do.end.i43:                                       ; preds = %sja1105_packing.exit40
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 29, i32 noundef 29) #13
  br label %if.end23.i46

if.then7.i44:                                     ; preds = %sja1105_packing.exit40
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %do_not_learn to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %do_not_learn, align 8
  %call20.i45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 29, i32 noundef 29) #13
  br label %if.end23.i46

if.end23.i46:                                     ; preds = %if.then7.i44, %do.end.i43, %sja1105_packing.exit40.if.end23.i46_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit47

sja1105_packing.exit47:                           ; preds = %if.end23.i46, %sja1105_packing.exit40.sja1105_packing.exit47_crit_edge
  %use_dest_ports = getelementptr inbounds %struct.sja1105_retagging_entry, ptr %entry_ptr, i32 0, i32 5
  %call.i48 = tail call i32 @packing(ptr noundef %buf, ptr noundef %use_dest_ports, i32 noundef 28, i32 noundef 28, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %15 = zext i32 %call.i48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.232)
  switch i32 %call.i48, label %sja1105_packing.exit47.if.end23.i53_crit_edge [
    i32 0, label %sja1105_packing.exit47.sja1105_packing.exit54_crit_edge
    i32 -22, label %do.end.i50
    i32 -34, label %if.then7.i51
  ], !prof !82

sja1105_packing.exit47.sja1105_packing.exit54_crit_edge: ; preds = %sja1105_packing.exit47
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit54

sja1105_packing.exit47.if.end23.i53_crit_edge:    ; preds = %sja1105_packing.exit47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i53

do.end.i50:                                       ; preds = %sja1105_packing.exit47
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 28) #13
  br label %if.end23.i53

if.then7.i51:                                     ; preds = %sja1105_packing.exit47
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %use_dest_ports to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %use_dest_ports, align 8
  %call20.i52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %17, i32 noundef 28, i32 noundef 28) #13
  br label %if.end23.i53

if.end23.i53:                                     ; preds = %if.then7.i51, %do.end.i50, %sja1105_packing.exit47.if.end23.i53_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit54

sja1105_packing.exit54:                           ; preds = %if.end23.i53, %sja1105_packing.exit47.sja1105_packing.exit54_crit_edge
  %destports = getelementptr inbounds %struct.sja1105_retagging_entry, ptr %entry_ptr, i32 0, i32 6
  %call.i55 = tail call i32 @packing(ptr noundef %buf, ptr noundef %destports, i32 noundef 27, i32 noundef 23, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %18 = zext i32 %call.i55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.233)
  switch i32 %call.i55, label %sja1105_packing.exit54.if.end23.i60_crit_edge [
    i32 0, label %sja1105_packing.exit54.sja1105_packing.exit61_crit_edge
    i32 -22, label %do.end.i57
    i32 -34, label %if.then7.i58
  ], !prof !82

sja1105_packing.exit54.sja1105_packing.exit61_crit_edge: ; preds = %sja1105_packing.exit54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit61

sja1105_packing.exit54.if.end23.i60_crit_edge:    ; preds = %sja1105_packing.exit54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i60

do.end.i57:                                       ; preds = %sja1105_packing.exit54
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 27, i32 noundef 23) #13
  br label %if.end23.i60

if.then7.i58:                                     ; preds = %sja1105_packing.exit54
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %destports to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %destports, align 8
  %call20.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %20, i32 noundef 27, i32 noundef 23) #13
  br label %if.end23.i60

if.end23.i60:                                     ; preds = %if.then7.i58, %do.end.i57, %sja1105_packing.exit54.if.end23.i60_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit61

sja1105_packing.exit61:                           ; preds = %if.end23.i60, %sja1105_packing.exit54.sja1105_packing.exit61_crit_edge
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1110_retagging_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 63, i32 noundef 53, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.234)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 53) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 63, i32 noundef 53) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %ing_port = getelementptr inbounds %struct.sja1105_retagging_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i20 = tail call i32 @packing(ptr noundef %buf, ptr noundef %ing_port, i32 noundef 52, i32 noundef 42, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.235)
  switch i32 %call.i20, label %sja1105_packing.exit.if.end23.i25_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit26_crit_edge
    i32 -22, label %do.end.i22
    i32 -34, label %if.then7.i23
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit26_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit26

sja1105_packing.exit.if.end23.i25_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i25

do.end.i22:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 42) #13
  br label %if.end23.i25

if.then7.i23:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %ing_port to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %ing_port, align 8
  %call20.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 52, i32 noundef 42) #13
  br label %if.end23.i25

if.end23.i25:                                     ; preds = %if.then7.i23, %do.end.i22, %sja1105_packing.exit.if.end23.i25_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit26

sja1105_packing.exit26:                           ; preds = %if.end23.i25, %sja1105_packing.exit.sja1105_packing.exit26_crit_edge
  %vlan_ing = getelementptr inbounds %struct.sja1105_retagging_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i27 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlan_ing, i32 noundef 41, i32 noundef 30, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.236)
  switch i32 %call.i27, label %sja1105_packing.exit26.if.end23.i32_crit_edge [
    i32 0, label %sja1105_packing.exit26.sja1105_packing.exit33_crit_edge
    i32 -22, label %do.end.i29
    i32 -34, label %if.then7.i30
  ], !prof !82

sja1105_packing.exit26.sja1105_packing.exit33_crit_edge: ; preds = %sja1105_packing.exit26
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit33

sja1105_packing.exit26.if.end23.i32_crit_edge:    ; preds = %sja1105_packing.exit26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i32

do.end.i29:                                       ; preds = %sja1105_packing.exit26
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 30) #13
  br label %if.end23.i32

if.then7.i30:                                     ; preds = %sja1105_packing.exit26
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %vlan_ing to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %vlan_ing, align 8
  %call20.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 41, i32 noundef 30) #13
  br label %if.end23.i32

if.end23.i32:                                     ; preds = %if.then7.i30, %do.end.i29, %sja1105_packing.exit26.if.end23.i32_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit33

sja1105_packing.exit33:                           ; preds = %if.end23.i32, %sja1105_packing.exit26.sja1105_packing.exit33_crit_edge
  %vlan_egr = getelementptr inbounds %struct.sja1105_retagging_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i34 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlan_egr, i32 noundef 29, i32 noundef 18, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.237)
  switch i32 %call.i34, label %sja1105_packing.exit33.if.end23.i39_crit_edge [
    i32 0, label %sja1105_packing.exit33.sja1105_packing.exit40_crit_edge
    i32 -22, label %do.end.i36
    i32 -34, label %if.then7.i37
  ], !prof !82

sja1105_packing.exit33.sja1105_packing.exit40_crit_edge: ; preds = %sja1105_packing.exit33
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit40

sja1105_packing.exit33.if.end23.i39_crit_edge:    ; preds = %sja1105_packing.exit33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i39

do.end.i36:                                       ; preds = %sja1105_packing.exit33
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 29, i32 noundef 18) #13
  br label %if.end23.i39

if.then7.i37:                                     ; preds = %sja1105_packing.exit33
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %vlan_egr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %vlan_egr, align 8
  %call20.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 29, i32 noundef 18) #13
  br label %if.end23.i39

if.end23.i39:                                     ; preds = %if.then7.i37, %do.end.i36, %sja1105_packing.exit33.if.end23.i39_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit40

sja1105_packing.exit40:                           ; preds = %if.end23.i39, %sja1105_packing.exit33.sja1105_packing.exit40_crit_edge
  %do_not_learn = getelementptr inbounds %struct.sja1105_retagging_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i41 = tail call i32 @packing(ptr noundef %buf, ptr noundef %do_not_learn, i32 noundef 17, i32 noundef 17, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.238)
  switch i32 %call.i41, label %sja1105_packing.exit40.if.end23.i46_crit_edge [
    i32 0, label %sja1105_packing.exit40.sja1105_packing.exit47_crit_edge
    i32 -22, label %do.end.i43
    i32 -34, label %if.then7.i44
  ], !prof !82

sja1105_packing.exit40.sja1105_packing.exit47_crit_edge: ; preds = %sja1105_packing.exit40
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit47

sja1105_packing.exit40.if.end23.i46_crit_edge:    ; preds = %sja1105_packing.exit40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i46

do.end.i43:                                       ; preds = %sja1105_packing.exit40
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 17, i32 noundef 17) #13
  br label %if.end23.i46

if.then7.i44:                                     ; preds = %sja1105_packing.exit40
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %do_not_learn to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %do_not_learn, align 8
  %call20.i45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 17, i32 noundef 17) #13
  br label %if.end23.i46

if.end23.i46:                                     ; preds = %if.then7.i44, %do.end.i43, %sja1105_packing.exit40.if.end23.i46_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit47

sja1105_packing.exit47:                           ; preds = %if.end23.i46, %sja1105_packing.exit40.sja1105_packing.exit47_crit_edge
  %use_dest_ports = getelementptr inbounds %struct.sja1105_retagging_entry, ptr %entry_ptr, i32 0, i32 5
  %call.i48 = tail call i32 @packing(ptr noundef %buf, ptr noundef %use_dest_ports, i32 noundef 16, i32 noundef 16, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %15 = zext i32 %call.i48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.239)
  switch i32 %call.i48, label %sja1105_packing.exit47.if.end23.i53_crit_edge [
    i32 0, label %sja1105_packing.exit47.sja1105_packing.exit54_crit_edge
    i32 -22, label %do.end.i50
    i32 -34, label %if.then7.i51
  ], !prof !82

sja1105_packing.exit47.sja1105_packing.exit54_crit_edge: ; preds = %sja1105_packing.exit47
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit54

sja1105_packing.exit47.if.end23.i53_crit_edge:    ; preds = %sja1105_packing.exit47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i53

do.end.i50:                                       ; preds = %sja1105_packing.exit47
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 16, i32 noundef 16) #13
  br label %if.end23.i53

if.then7.i51:                                     ; preds = %sja1105_packing.exit47
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %use_dest_ports to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %use_dest_ports, align 8
  %call20.i52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %17, i32 noundef 16, i32 noundef 16) #13
  br label %if.end23.i53

if.end23.i53:                                     ; preds = %if.then7.i51, %do.end.i50, %sja1105_packing.exit47.if.end23.i53_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit54

sja1105_packing.exit54:                           ; preds = %if.end23.i53, %sja1105_packing.exit47.sja1105_packing.exit54_crit_edge
  %destports = getelementptr inbounds %struct.sja1105_retagging_entry, ptr %entry_ptr, i32 0, i32 6
  %call.i55 = tail call i32 @packing(ptr noundef %buf, ptr noundef %destports, i32 noundef 15, i32 noundef 5, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %18 = zext i32 %call.i55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.240)
  switch i32 %call.i55, label %sja1105_packing.exit54.if.end23.i60_crit_edge [
    i32 0, label %sja1105_packing.exit54.sja1105_packing.exit61_crit_edge
    i32 -22, label %do.end.i57
    i32 -34, label %if.then7.i58
  ], !prof !82

sja1105_packing.exit54.sja1105_packing.exit61_crit_edge: ; preds = %sja1105_packing.exit54
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit61

sja1105_packing.exit54.if.end23.i60_crit_edge:    ; preds = %sja1105_packing.exit54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i60

do.end.i57:                                       ; preds = %sja1105_packing.exit54
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 15, i32 noundef 5) #13
  br label %if.end23.i60

if.then7.i58:                                     ; preds = %sja1105_packing.exit54
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %destports to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %destports, align 8
  %call20.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %20, i32 noundef 15, i32 noundef 5) #13
  br label %if.end23.i60

if.end23.i60:                                     ; preds = %if.then7.i58, %do.end.i57, %sja1105_packing.exit54.if.end23.i60_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit61

sja1105_packing.exit61:                           ; preds = %if.end23.i60, %sja1105_packing.exit54.sja1105_packing.exit61_crit_edge
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_table_header_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 31, i32 noundef 24, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.241)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 24) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 31, i32 noundef 24) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %len = getelementptr inbounds %struct.sja1105_table_header, ptr %entry_ptr, i32 0, i32 1
  %call.i8 = tail call i32 @packing(ptr noundef %buf, ptr noundef %len, i32 noundef 55, i32 noundef 32, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.242)
  switch i32 %call.i8, label %sja1105_packing.exit.if.end23.i13_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit14_crit_edge
    i32 -22, label %do.end.i10
    i32 -34, label %if.then7.i11
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit14_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit14

sja1105_packing.exit.if.end23.i13_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i13

do.end.i10:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 55, i32 noundef 32) #13
  br label %if.end23.i13

if.then7.i11:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %len, align 8
  %call20.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 55, i32 noundef 32) #13
  br label %if.end23.i13

if.end23.i13:                                     ; preds = %if.then7.i11, %do.end.i10, %sja1105_packing.exit.if.end23.i13_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit14

sja1105_packing.exit14:                           ; preds = %if.end23.i13, %sja1105_packing.exit.sja1105_packing.exit14_crit_edge
  %crc = getelementptr inbounds %struct.sja1105_table_header, ptr %entry_ptr, i32 0, i32 2
  %call.i15 = tail call i32 @packing(ptr noundef %buf, ptr noundef %crc, i32 noundef 95, i32 noundef 64, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.243)
  switch i32 %call.i15, label %sja1105_packing.exit14.if.end23.i20_crit_edge [
    i32 0, label %sja1105_packing.exit14.sja1105_packing.exit21_crit_edge
    i32 -22, label %do.end.i17
    i32 -34, label %if.then7.i18
  ], !prof !82

sja1105_packing.exit14.sja1105_packing.exit21_crit_edge: ; preds = %sja1105_packing.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit21

sja1105_packing.exit14.if.end23.i20_crit_edge:    ; preds = %sja1105_packing.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i20

do.end.i17:                                       ; preds = %sja1105_packing.exit14
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 64) #13
  br label %if.end23.i20

if.then7.i18:                                     ; preds = %sja1105_packing.exit14
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %crc to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %crc, align 8
  %call20.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 95, i32 noundef 64) #13
  br label %if.end23.i20

if.end23.i20:                                     ; preds = %if.then7.i18, %do.end.i17, %sja1105_packing.exit14.if.end23.i20_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit21

sja1105_packing.exit21:                           ; preds = %if.end23.i20, %sja1105_packing.exit14.sja1105_packing.exit21_crit_edge
  ret i32 12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_table_header_pack_with_crc(ptr noundef %buf, ptr noundef %hdr) local_unnamed_addr #0 align 64 {
entry:
  %word.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %buf, i32 0, i32 12)
  %call = tail call i32 @sja1105_table_header_packing(ptr noundef %buf, ptr noundef %hdr, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %word.i) #10
  %1 = ptrtoint ptr %word.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %word.i, align 8, !annotation !83
  %call.i.i = call i32 @packing(ptr noundef %buf, ptr noundef nonnull %word.i, i32 noundef 31, i32 noundef 0, i32 noundef 4, i32 noundef 1, i8 noundef zeroext 4) #10
  %2 = zext i32 %call.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.244)
  switch i32 %call.i.i, label %entry.if.end14.i.i_crit_edge [
    i32 0, label %entry.sja1105_unpack.exit.i_crit_edge
    i32 -22, label %entry.if.end14.sink.split.i.i_crit_edge
    i32 -34, label %do.end10.i.i
  ], !prof !82

entry.if.end14.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.sink.split.i.i

entry.sja1105_unpack.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_unpack.exit.i

entry.if.end14.i.i_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i.i

do.end10.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.sink.split.i.i

if.end14.sink.split.i.i:                          ; preds = %do.end10.i.i, %entry.if.end14.sink.split.i.i_crit_edge
  %.str.4.sink.i.i = phi ptr [ @.str.4, %do.end10.i.i ], [ @.str, %entry.if.end14.sink.split.i.i_crit_edge ]
  %call12.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink.i.i, i32 noundef 31, i32 noundef 0) #13
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.end14.sink.split.i.i, %entry.if.end14.i.i_crit_edge
  call void @dump_stack() #13
  br label %sja1105_unpack.exit.i

sja1105_unpack.exit.i:                            ; preds = %if.end14.i.i, %entry.sja1105_unpack.exit.i_crit_edge
  %call.i = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %word.i, i32 noundef 4) #14
  %add.ptr.i.1 = getelementptr i8, ptr %buf, i32 4
  %call.i.i.1 = call i32 @packing(ptr noundef %add.ptr.i.1, ptr noundef nonnull %word.i, i32 noundef 31, i32 noundef 0, i32 noundef 4, i32 noundef 1, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i.i.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.245)
  switch i32 %call.i.i.1, label %sja1105_unpack.exit.i.if.end14.i.i.1_crit_edge [
    i32 0, label %sja1105_unpack.exit.i.sja1105_unpack.exit.i.1_crit_edge
    i32 -22, label %sja1105_unpack.exit.i.if.end14.sink.split.i.i.1_crit_edge
    i32 -34, label %do.end10.i.i.1
  ], !prof !82

sja1105_unpack.exit.i.if.end14.sink.split.i.i.1_crit_edge: ; preds = %sja1105_unpack.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.sink.split.i.i.1

sja1105_unpack.exit.i.sja1105_unpack.exit.i.1_crit_edge: ; preds = %sja1105_unpack.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_unpack.exit.i.1

sja1105_unpack.exit.i.if.end14.i.i.1_crit_edge:   ; preds = %sja1105_unpack.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i.i.1

do.end10.i.i.1:                                   ; preds = %sja1105_unpack.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.sink.split.i.i.1

if.end14.sink.split.i.i.1:                        ; preds = %do.end10.i.i.1, %sja1105_unpack.exit.i.if.end14.sink.split.i.i.1_crit_edge
  %.str.4.sink.i.i.1 = phi ptr [ @.str.4, %do.end10.i.i.1 ], [ @.str, %sja1105_unpack.exit.i.if.end14.sink.split.i.i.1_crit_edge ]
  %call12.i.i.1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink.i.i.1, i32 noundef 31, i32 noundef 0) #13
  br label %if.end14.i.i.1

if.end14.i.i.1:                                   ; preds = %if.end14.sink.split.i.i.1, %sja1105_unpack.exit.i.if.end14.i.i.1_crit_edge
  call void @dump_stack() #13
  br label %sja1105_unpack.exit.i.1

sja1105_unpack.exit.i.1:                          ; preds = %if.end14.i.i.1, %sja1105_unpack.exit.i.sja1105_unpack.exit.i.1_crit_edge
  %call.i.1 = call i32 @crc32_le(i32 noundef %call.i, ptr noundef nonnull %word.i, i32 noundef 4) #14
  %phi.bo.i = xor i32 %call.i.1, -1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %word.i) #10
  %conv = zext i32 %phi.bo.i to i64
  %crc = getelementptr inbounds %struct.sja1105_table_header, ptr %hdr, i32 0, i32 2
  %4 = ptrtoint ptr %crc to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %crc, align 8
  %add.ptr2 = getelementptr i8, ptr %buf, i32 8
  %call.i9 = call i32 @packing(ptr noundef %add.ptr2, ptr noundef %crc, i32 noundef 31, i32 noundef 0, i32 noundef 4, i32 noundef 0, i8 noundef zeroext 4) #10
  %5 = zext i32 %call.i9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.246)
  switch i32 %call.i9, label %sja1105_unpack.exit.i.1.if.end23.i_crit_edge [
    i32 0, label %sja1105_unpack.exit.i.1.sja1105_pack.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

sja1105_unpack.exit.i.1.sja1105_pack.exit_crit_edge: ; preds = %sja1105_unpack.exit.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_pack.exit

sja1105_unpack.exit.i.1.if.end23.i_crit_edge:     ; preds = %sja1105_unpack.exit.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %sja1105_unpack.exit.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 0) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %sja1105_unpack.exit.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %crc to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %crc, align 8
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %7, i32 noundef 31, i32 noundef 0) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %sja1105_unpack.exit.i.1.if.end23.i_crit_edge
  call void @dump_stack() #13
  br label %sja1105_pack.exit

sja1105_pack.exit:                                ; preds = %if.end23.i, %sja1105_unpack.exit.i.1.sja1105_pack.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_static_config_check_valid(ptr noundef readonly %config, i32 noundef %max_mem) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tables1 = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1
  %entry_count = getelementptr inbounds %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %tables1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tables1, align 4
  %max_entry_count = getelementptr inbounds %struct.sja1105_table_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %max_entry_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_entry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.then.cleanup111_crit_edge, label %if.end

if.then.cleanup111_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup111

if.end:                                           ; preds = %if.then
  %entry_count6 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %entry_count6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entry_count6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.end.cleanup111_crit_edge, label %if.end8

if.end.cleanup111_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup111

if.end8:                                          ; preds = %if.end
  %arrayidx9 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 10
  %entry_count10 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 10, i32 1
  %8 = ptrtoint ptr %entry_count10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %entry_count10, align 4
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9, align 4
  %max_entry_count13 = getelementptr inbounds %struct.sja1105_table_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %max_entry_count13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_entry_count13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp14 = icmp eq i32 %9, %13
  br i1 %cmp14, label %if.end16, label %if.end8.cleanup111_crit_edge

if.end8.cleanup111_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup111

if.end16:                                         ; preds = %if.end8
  %arrayidx17 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 11
  %entry_count18 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 11, i32 1
  %14 = ptrtoint ptr %entry_count18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %entry_count18, align 4
  %16 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx17, align 4
  %max_entry_count21 = getelementptr inbounds %struct.sja1105_table_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %max_entry_count21 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_entry_count21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %19)
  %cmp22 = icmp eq i32 %15, %19
  br i1 %cmp22, label %if.end16.if.end25_crit_edge, label %if.end16.cleanup111_crit_edge

if.end16.cleanup111_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup111

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.end25:                                         ; preds = %if.end16.if.end25_crit_edge, %entry.if.end25_crit_edge
  %entry_count27 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 2, i32 1
  %20 = ptrtoint ptr %entry_count27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %entry_count27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool28.not = icmp eq i32 %21, 0
  br i1 %tobool28.not, label %if.end25.if.end60_crit_edge, label %for.body.preheader

if.end25.if.end60_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

for.body.preheader:                               ; preds = %if.end25
  %entries = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 2, i32 2
  %22 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %entries, align 4
  %iscritical159 = getelementptr %struct.sja1105_vl_lookup_entry, ptr %23, i32 0, i32 2, i32 0, i32 1
  %24 = ptrtoint ptr %iscritical159 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %iscritical159, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool35.not160 = icmp eq i64 %25, 0
  br i1 %tobool35.not160, label %for.body.preheader.for.cond_crit_edge, label %for.body.preheader.for.end_crit_edge

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %i.0153161 = phi i32 [ %inc, %for.body.for.cond_crit_edge ], [ 0, %for.body.preheader.for.cond_crit_edge ]
  %inc = add nuw i32 %i.0153161, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %21)
  %exitcond.not = icmp eq i32 %inc, %21
  br i1 %exitcond.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %21)
  %cmp33.le165 = icmp ult i32 %inc, %21
  %phi.bo = xor i1 %cmp33.le165, true
  br label %if.end43

for.body:                                         ; preds = %for.cond
  %iscritical = getelementptr %struct.sja1105_vl_lookup_entry, ptr %23, i32 %inc, i32 2, i32 0, i32 1
  %26 = ptrtoint ptr %iscritical to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %iscritical, align 8
  %tobool35.not = icmp eq i64 %27, 0
  br i1 %tobool35.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %21)
  %cmp33.le = icmp ult i32 %inc, %21
  %phi.bo162 = xor i1 %cmp33.le, true
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %cmp33154.lcssa = phi i1 [ %phi.bo162, %for.body.for.end_crit_edge ], [ false, %for.body.preheader.for.end_crit_edge ]
  %entry_count39 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 3, i32 1
  %28 = ptrtoint ptr %entry_count39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %entry_count39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp40 = icmp ne i32 %29, 0
  %brmerge = select i1 %cmp40, i1 true, i1 %cmp33154.lcssa
  br i1 %brmerge, label %for.end.if.end43_crit_edge, label %for.end.cleanup111_crit_edge

for.end.cleanup111_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup111

for.end.if.end43_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.end43:                                         ; preds = %for.end.if.end43_crit_edge, %for.end.thread
  %cmp33.not150 = phi i1 [ %phi.bo, %for.end.thread ], [ %cmp33154.lcssa, %for.end.if.end43_crit_edge ]
  %entry_count45 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 4, i32 1
  %30 = ptrtoint ptr %entry_count45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %entry_count45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp46 = icmp ne i32 %31, 0
  %brmerge142 = select i1 %cmp46, i1 true, i1 %cmp33.not150
  br i1 %brmerge142, label %if.end50, label %if.end43.cleanup111_crit_edge

if.end43.cleanup111_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup111

if.end50:                                         ; preds = %if.end43
  %entry_count52 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 12, i32 1
  %32 = ptrtoint ptr %entry_count52 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %entry_count52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp53 = icmp ne i32 %33, 0
  %brmerge144 = select i1 %cmp53, i1 true, i1 %cmp33.not150
  br i1 %brmerge144, label %if.end50.if.end60_crit_edge, label %if.end50.cleanup111_crit_edge

if.end50.cleanup111_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup111

if.end50.if.end60_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.end60:                                         ; preds = %if.end50.if.end60_crit_edge, %if.end25.if.end60_crit_edge
  %entry_count62 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 6, i32 1
  %34 = ptrtoint ptr %entry_count62 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %entry_count62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp63 = icmp eq i32 %35, 0
  br i1 %cmp63, label %if.end60.cleanup111_crit_edge, label %if.end65

if.end60.cleanup111_crit_edge:                    ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup111

if.end65:                                         ; preds = %if.end60
  %entry_count67 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 7, i32 1
  %36 = ptrtoint ptr %entry_count67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %entry_count67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp68 = icmp eq i32 %37, 0
  br i1 %cmp68, label %if.end65.cleanup111_crit_edge, label %if.end70

if.end65.cleanup111_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup111

if.end70:                                         ; preds = %if.end65
  %arrayidx71 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 8
  %entry_count72 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 8, i32 1
  %38 = ptrtoint ptr %entry_count72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %entry_count72, align 4
  %40 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx71, align 4
  %max_entry_count75 = getelementptr inbounds %struct.sja1105_table_ops, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %max_entry_count75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_entry_count75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %43)
  %cmp76 = icmp eq i32 %39, %43
  br i1 %cmp76, label %if.end78, label %if.end70.cleanup111_crit_edge

if.end70.cleanup111_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup111

if.end78:                                         ; preds = %if.end70
  %arrayidx79 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 9
  %entry_count80 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 9, i32 1
  %44 = ptrtoint ptr %entry_count80 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %entry_count80, align 4
  %46 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx79, align 4
  %max_entry_count83 = getelementptr inbounds %struct.sja1105_table_ops, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %max_entry_count83 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_entry_count83, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %49)
  %cmp84 = icmp eq i32 %45, %49
  br i1 %cmp84, label %if.end86, label %if.end78.cleanup111_crit_edge

if.end78.cleanup111_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup111

if.end86:                                         ; preds = %if.end78
  %arrayidx87 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 14
  %entry_count88 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 14, i32 1
  %50 = ptrtoint ptr %entry_count88 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %entry_count88, align 4
  %52 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx87, align 4
  %max_entry_count91 = getelementptr inbounds %struct.sja1105_table_ops, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %max_entry_count91 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_entry_count91, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %55)
  %cmp92 = icmp eq i32 %51, %55
  br i1 %cmp92, label %if.end94, label %if.end86.cleanup111_crit_edge

if.end86.cleanup111_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup111

if.end94:                                         ; preds = %if.end86
  %arrayidx95 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 16
  %entry_count96 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 16, i32 1
  %56 = ptrtoint ptr %entry_count96 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %entry_count96, align 4
  %58 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx95, align 4
  %max_entry_count99 = getelementptr inbounds %struct.sja1105_table_ops, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %max_entry_count99 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_entry_count99, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %61)
  %cmp100 = icmp eq i32 %57, %61
  br i1 %cmp100, label %if.end102, label %if.end94.cleanup111_crit_edge

if.end94.cleanup111_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup111

if.end102:                                        ; preds = %if.end94
  %arrayidx103 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 19
  %entry_count104 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 19, i32 1
  %62 = ptrtoint ptr %entry_count104 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %entry_count104, align 4
  %64 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx103, align 4
  %max_entry_count107 = getelementptr inbounds %struct.sja1105_table_ops, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %max_entry_count107 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_entry_count107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %67)
  %cmp108 = icmp eq i32 %63, %67
  br i1 %cmp108, label %if.end110, label %if.end102.cleanup111_crit_edge

if.end102.cleanup111_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup111

if.end110:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @static_config_check_memory_size(ptr noundef %tables1, i32 noundef %max_mem)
  br label %cleanup111

cleanup111:                                       ; preds = %if.end110, %if.end102.cleanup111_crit_edge, %if.end94.cleanup111_crit_edge, %if.end86.cleanup111_crit_edge, %if.end78.cleanup111_crit_edge, %if.end70.cleanup111_crit_edge, %if.end65.cleanup111_crit_edge, %if.end60.cleanup111_crit_edge, %if.end50.cleanup111_crit_edge, %if.end43.cleanup111_crit_edge, %for.end.cleanup111_crit_edge, %if.end16.cleanup111_crit_edge, %if.end8.cleanup111_crit_edge, %if.end.cleanup111_crit_edge, %if.then.cleanup111_crit_edge
  %retval.1 = phi i32 [ %call, %if.end110 ], [ 1, %if.then.cleanup111_crit_edge ], [ 2, %if.end.cleanup111_crit_edge ], [ 2, %if.end8.cleanup111_crit_edge ], [ 2, %if.end16.cleanup111_crit_edge ], [ 3, %if.end50.cleanup111_crit_edge ], [ 3, %if.end43.cleanup111_crit_edge ], [ 3, %for.end.cleanup111_crit_edge ], [ 4, %if.end60.cleanup111_crit_edge ], [ 8, %if.end65.cleanup111_crit_edge ], [ 5, %if.end70.cleanup111_crit_edge ], [ 10, %if.end78.cleanup111_crit_edge ], [ 6, %if.end86.cleanup111_crit_edge ], [ 7, %if.end94.cleanup111_crit_edge ], [ 9, %if.end102.cleanup111_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @static_config_check_memory_size(ptr nocapture noundef readonly %tables, i32 noundef %max_mem) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %entries = getelementptr %struct.sja1105_table, ptr %tables, i32 14, i32 2
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entries, align 4
  %arrayidx1 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %1, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx1, align 8
  %4 = trunc i64 %3 to i32
  %arrayidx1.1 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx1.1, align 8
  %7 = trunc i64 %6 to i32
  %conv2.1 = add i32 %4, %7
  %arrayidx1.2 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %1, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx1.2, align 8
  %10 = trunc i64 %9 to i32
  %conv2.2 = add i32 %conv2.1, %10
  %arrayidx1.3 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %1, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx1.3, align 8
  %13 = trunc i64 %12 to i32
  %conv2.3 = add i32 %conv2.2, %13
  %arrayidx1.4 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %1, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx1.4, align 8
  %16 = trunc i64 %15 to i32
  %conv2.4 = add i32 %conv2.3, %16
  %arrayidx1.5 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %1, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx1.5, align 8
  %19 = trunc i64 %18 to i32
  %conv2.5 = add i32 %conv2.4, %19
  %arrayidx1.6 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %1, i32 0, i32 1, i32 6
  %20 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx1.6, align 8
  %22 = trunc i64 %21 to i32
  %conv2.6 = add i32 %conv2.5, %22
  %arrayidx1.7 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %1, i32 0, i32 1, i32 7
  %23 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx1.7, align 8
  %25 = trunc i64 %24 to i32
  %conv2.7 = add i32 %conv2.6, %25
  %entry_count = getelementptr %struct.sja1105_table, ptr %tables, i32 12, i32 1
  %26 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %entry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %entries5 = getelementptr %struct.sja1105_table, ptr %tables, i32 12, i32 2
  %28 = ptrtoint ptr %entries5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %entries5, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %29, align 8
  %32 = trunc i64 %31 to i32
  %conv13 = add i32 %conv2.7, %32
  %arrayidx10.1 = getelementptr [8 x i64], ptr %29, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx10.1, align 8
  %35 = trunc i64 %34 to i32
  %conv13.1 = add i32 %conv13, %35
  %arrayidx10.2 = getelementptr [8 x i64], ptr %29, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx10.2, align 8
  %38 = trunc i64 %37 to i32
  %conv13.2 = add i32 %conv13.1, %38
  %arrayidx10.3 = getelementptr [8 x i64], ptr %29, i32 0, i32 3
  %39 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx10.3, align 8
  %41 = trunc i64 %40 to i32
  %conv13.3 = add i32 %conv13.2, %41
  %arrayidx10.4 = getelementptr [8 x i64], ptr %29, i32 0, i32 4
  %42 = ptrtoint ptr %arrayidx10.4 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx10.4, align 8
  %44 = trunc i64 %43 to i32
  %conv13.4 = add i32 %conv13.3, %44
  %arrayidx10.5 = getelementptr [8 x i64], ptr %29, i32 0, i32 5
  %45 = ptrtoint ptr %arrayidx10.5 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx10.5, align 8
  %47 = trunc i64 %46 to i32
  %conv13.5 = add i32 %conv13.4, %47
  %arrayidx10.6 = getelementptr [8 x i64], ptr %29, i32 0, i32 6
  %48 = ptrtoint ptr %arrayidx10.6 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx10.6, align 8
  %50 = trunc i64 %49 to i32
  %conv13.6 = add i32 %conv13.5, %50
  %arrayidx10.7 = getelementptr [8 x i64], ptr %29, i32 0, i32 7
  %51 = ptrtoint ptr %arrayidx10.7 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx10.7, align 8
  %53 = trunc i64 %52 to i32
  %conv13.7 = add i32 %conv13.6, %53
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mem.2 = phi i32 [ %conv2.7, %entry.if.end_crit_edge ], [ %conv13.7, %if.then ]
  %entry_count18 = getelementptr %struct.sja1105_table, ptr %tables, i32 17, i32 1
  %54 = ptrtoint ptr %entry_count18 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %entry_count18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool19.not = icmp eq i32 %55, 0
  %sub = add i32 %max_mem, -19
  %spec.select = select i1 %tobool19.not, i32 %max_mem, i32 %sub
  call void @__sanitizer_cov_trace_cmp4(i32 %mem.2, i32 %spec.select)
  %cmp22 = icmp sgt i32 %mem.2, %spec.select
  %retval.0 = select i1 %cmp22, i32 11, i32 0
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_static_config_pack(ptr noundef %buf, ptr noundef %config) local_unnamed_addr #0 align 64 {
entry:
  %word.i.i = alloca i64, align 8
  %computed_crc.i = alloca i64, align 8
  %header = alloca %struct.sja1105_table_header, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %header) #10
  %0 = call ptr @memset(ptr %header, i32 0, i32 24)
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %config, i32 noundef 31, i32 noundef 0, i32 noundef 4, i32 noundef 0, i8 noundef zeroext 4) #10
  %1 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.247)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_pack.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_pack.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_pack.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 0) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %config, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %3, i32 noundef 31, i32 noundef 0) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_pack.exit

sja1105_pack.exit:                                ; preds = %if.end23.i, %entry.sja1105_pack.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %buf, i32 4
  %len = getelementptr inbounds %struct.sja1105_table_header, ptr %header, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %sja1105_pack.exit
  %i.057 = phi i32 [ 0, %sja1105_pack.exit ], [ %inc21, %cleanup.for.body_crit_edge ]
  %p.056 = phi ptr [ %add.ptr, %sja1105_pack.exit ], [ %p.2, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 %i.057
  %entry_count = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 %i.057, i32 1
  %4 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  %arrayidx1 = getelementptr [21 x i64], ptr @blk_id_map, i32 0, i32 %i.057
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx1, align 8
  %8 = ptrtoint ptr %header to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %header, align 8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %packed_entry_size = getelementptr inbounds %struct.sja1105_table_ops, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %packed_entry_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %packed_entry_size, align 4
  %mul = mul i32 %12, %5
  %div52 = lshr i32 %mul, 2
  %conv = zext i32 %div52 to i64
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %conv, ptr %len, align 8
  call void @sja1105_table_header_pack_with_crc(ptr noundef %p.056, ptr noundef nonnull %header)
  %add.ptr3 = getelementptr i8, ptr %p.056, i32 12
  %14 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %entry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp653.not = icmp eq i32 %15, 0
  br i1 %cmp653.not, label %for.end.thread, label %for.body8.lr.ph

for.end.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %computed_crc.i) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %word.i.i) #10
  br label %sja1105_crc32.exit.i

for.body8.lr.ph:                                  ; preds = %if.end
  %entries = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 %i.057, i32 2
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.body8.lr.ph
  %j.055 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.body8.for.body8_crit_edge ]
  %p.154 = phi ptr [ %add.ptr3, %for.body8.lr.ph ], [ %add.ptr17, %for.body8.for.body8_crit_edge ]
  %16 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entries, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %unpacked_entry_size = getelementptr inbounds %struct.sja1105_table_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %unpacked_entry_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %unpacked_entry_size, align 4
  %mul10 = mul i32 %21, %j.055
  %add.ptr11 = getelementptr i8, ptr %17, i32 %mul10
  %packed_entry_size13 = getelementptr inbounds %struct.sja1105_table_ops, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %packed_entry_size13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %packed_entry_size13, align 4
  %24 = call ptr @memset(ptr %p.154, i32 0, i32 %23)
  %25 = load ptr, ptr %arrayidx, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %call = call i32 %27(ptr noundef %p.154, ptr noundef %add.ptr11, i32 noundef 0) #10
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %packed_entry_size16 = getelementptr inbounds %struct.sja1105_table_ops, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %packed_entry_size16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %packed_entry_size16, align 4
  %add.ptr17 = getelementptr i8, ptr %p.154, i32 %31
  %inc = add nuw i32 %j.055, 1
  %32 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %entry_count, align 4
  %cmp6 = icmp ult i32 %inc, %33
  br i1 %cmp6, label %for.body8.for.body8_crit_edge, label %for.end

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body8

for.end:                                          ; preds = %for.body8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %computed_crc.i) #10
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %word.i.i) #10
  %34 = ptrtoint ptr %word.i.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 -1, ptr %word.i.i, align 8, !annotation !83
  %cmp4.not.i.i = icmp eq ptr %add.ptr17, %add.ptr3
  br i1 %cmp4.not.i.i, label %for.end.sja1105_crc32.exit.i_crit_edge, label %for.end.for.body.i.i_crit_edge

for.end.for.body.i.i_crit_edge:                   ; preds = %for.end
  br label %for.body.i.i

for.end.sja1105_crc32.exit.i_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_crc32.exit.i

for.body.i.i:                                     ; preds = %sja1105_unpack.exit.i.i.for.body.i.i_crit_edge, %for.end.for.body.i.i_crit_edge
  %crc.06.i.i = phi i32 [ %call.i.i, %sja1105_unpack.exit.i.i.for.body.i.i_crit_edge ], [ -1, %for.end.for.body.i.i_crit_edge ]
  %i.05.i.i = phi i32 [ %add.i.i, %sja1105_unpack.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.end.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr3, i32 %i.05.i.i
  %call.i.i.i = call i32 @packing(ptr noundef %add.ptr.i.i, ptr noundef nonnull %word.i.i, i32 noundef 31, i32 noundef 0, i32 noundef 4, i32 noundef 1, i8 noundef zeroext 4) #10
  %35 = zext i32 %call.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.248)
  switch i32 %call.i.i.i, label %for.body.i.i.if.end14.i.i.i_crit_edge [
    i32 0, label %for.body.i.i.sja1105_unpack.exit.i.i_crit_edge
    i32 -22, label %for.body.i.i.if.end14.sink.split.i.i.i_crit_edge
    i32 -34, label %do.end10.i.i.i
  ], !prof !82

for.body.i.i.if.end14.sink.split.i.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.sink.split.i.i.i

for.body.i.i.sja1105_unpack.exit.i.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_unpack.exit.i.i

for.body.i.i.if.end14.i.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.i.i.i

do.end10.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14.sink.split.i.i.i

if.end14.sink.split.i.i.i:                        ; preds = %do.end10.i.i.i, %for.body.i.i.if.end14.sink.split.i.i.i_crit_edge
  %.str.4.sink.i.i.i = phi ptr [ @.str.4, %do.end10.i.i.i ], [ @.str, %for.body.i.i.if.end14.sink.split.i.i.i_crit_edge ]
  %call12.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink.i.i.i, i32 noundef 31, i32 noundef 0) #13
  br label %if.end14.i.i.i

if.end14.i.i.i:                                   ; preds = %if.end14.sink.split.i.i.i, %for.body.i.i.if.end14.i.i.i_crit_edge
  call void @dump_stack() #13
  br label %sja1105_unpack.exit.i.i

sja1105_unpack.exit.i.i:                          ; preds = %if.end14.i.i.i, %for.body.i.i.sja1105_unpack.exit.i.i_crit_edge
  %call.i.i = call i32 @crc32_le(i32 noundef %crc.06.i.i, ptr noundef nonnull %word.i.i, i32 noundef 4) #14
  %add.i.i = add i32 %i.05.i.i, 4
  %cmp.i.i = icmp ult i32 %add.i.i, %sub.ptr.sub.i
  br i1 %cmp.i.i, label %sja1105_unpack.exit.i.i.for.body.i.i_crit_edge, label %for.end.loopexit.i.i

sja1105_unpack.exit.i.i.for.body.i.i_crit_edge:   ; preds = %sja1105_unpack.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.loopexit.i.i:                             ; preds = %sja1105_unpack.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo.i.i = xor i32 %call.i.i, -1
  br label %sja1105_crc32.exit.i

sja1105_crc32.exit.i:                             ; preds = %for.end.loopexit.i.i, %for.end.sja1105_crc32.exit.i_crit_edge, %for.end.thread
  %p.1.lcssa65 = phi ptr [ %add.ptr17, %for.end.sja1105_crc32.exit.i_crit_edge ], [ %add.ptr17, %for.end.loopexit.i.i ], [ %add.ptr3, %for.end.thread ]
  %crc.0.lcssa.i.i = phi i32 [ 0, %for.end.sja1105_crc32.exit.i_crit_edge ], [ %phi.bo.i.i, %for.end.loopexit.i.i ], [ 0, %for.end.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %word.i.i) #10
  %conv.i = zext i32 %crc.0.lcssa.i.i to i64
  %36 = ptrtoint ptr %computed_crc.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv.i, ptr %computed_crc.i, align 8
  %call.i3.i = call i32 @packing(ptr noundef %p.1.lcssa65, ptr noundef nonnull %computed_crc.i, i32 noundef 31, i32 noundef 0, i32 noundef 4, i32 noundef 0, i8 noundef zeroext 4) #10
  %37 = zext i32 %call.i3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.249)
  switch i32 %call.i3.i, label %sja1105_crc32.exit.i.if.end23.i.i_crit_edge [
    i32 0, label %sja1105_crc32.exit.i.sja1105_table_write_crc.exit_crit_edge
    i32 -22, label %do.end.i.i
    i32 -34, label %if.then7.i.i
  ], !prof !82

sja1105_crc32.exit.i.sja1105_table_write_crc.exit_crit_edge: ; preds = %sja1105_crc32.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_table_write_crc.exit

sja1105_crc32.exit.i.if.end23.i.i_crit_edge:      ; preds = %sja1105_crc32.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i.i

do.end.i.i:                                       ; preds = %sja1105_crc32.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 0) #13
  br label %if.end23.i.i

if.then7.i.i:                                     ; preds = %sja1105_crc32.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %computed_crc.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %computed_crc.i, align 8
  %call20.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %39, i32 noundef 31, i32 noundef 0) #13
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then7.i.i, %do.end.i.i, %sja1105_crc32.exit.i.if.end23.i.i_crit_edge
  call void @dump_stack() #13
  br label %sja1105_table_write_crc.exit

sja1105_table_write_crc.exit:                     ; preds = %if.end23.i.i, %sja1105_crc32.exit.i.sja1105_table_write_crc.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %computed_crc.i) #10
  %add.ptr18 = getelementptr i8, ptr %p.1.lcssa65, i32 4
  br label %cleanup

cleanup:                                          ; preds = %sja1105_table_write_crc.exit, %for.body.cleanup_crit_edge
  %p.2 = phi ptr [ %add.ptr18, %sja1105_table_write_crc.exit ], [ %p.056, %for.body.cleanup_crit_edge ]
  %inc21 = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc21, 21
  br i1 %exitcond.not, label %for.end22, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end22:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  %crc = getelementptr inbounds %struct.sja1105_table_header, ptr %header, i32 0, i32 2
  %40 = call ptr @memset(ptr %header, i32 0, i32 16)
  %41 = ptrtoint ptr %crc to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 3735928559, ptr %crc, align 8
  %42 = call ptr @memset(ptr %p.2, i32 0, i32 12)
  %call25 = call i32 @sja1105_table_header_packing(ptr noundef %p.2, ptr noundef nonnull %header, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %header) #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_static_config_get_length(ptr nocapture noundef readonly %config) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.015 = phi i32 [ 0, %entry ], [ %inc2, %for.body.for.body_crit_edge ]
  %header_count.014 = phi i32 [ 1, %entry ], [ %spec.select, %for.body.for.body_crit_edge ]
  %sum.013 = phi i32 [ 4, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 %i.015
  %entry_count = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 %i.015, i32 1
  %0 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  %inc = zext i1 %tobool.not to i32
  %spec.select = add i32 %header_count.014, %inc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %packed_entry_size = getelementptr inbounds %struct.sja1105_table_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %packed_entry_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %packed_entry_size, align 4
  %mul = mul i32 %5, %1
  %add = add i32 %mul, %sum.013
  %inc2 = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc2, 21
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %mul3 = shl i32 %spec.select, 4
  %add4 = add i32 %add, -4
  %sub = add i32 %add4, %mul3
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_l2_policing_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 63, i32 noundef 58, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.250)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 58) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 63, i32 noundef 58) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %smax = getelementptr inbounds %struct.sja1105_l2_policing_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i14 = tail call i32 @packing(ptr noundef %buf, ptr noundef %smax, i32 noundef 57, i32 noundef 42, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.251)
  switch i32 %call.i14, label %sja1105_packing.exit.if.end23.i19_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit20_crit_edge
    i32 -22, label %do.end.i16
    i32 -34, label %if.then7.i17
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit20_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit20

sja1105_packing.exit.if.end23.i19_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i19

do.end.i16:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 57, i32 noundef 42) #13
  br label %if.end23.i19

if.then7.i17:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %smax to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %smax, align 8
  %call20.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 57, i32 noundef 42) #13
  br label %if.end23.i19

if.end23.i19:                                     ; preds = %if.then7.i17, %do.end.i16, %sja1105_packing.exit.if.end23.i19_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit20

sja1105_packing.exit20:                           ; preds = %if.end23.i19, %sja1105_packing.exit.sja1105_packing.exit20_crit_edge
  %rate = getelementptr inbounds %struct.sja1105_l2_policing_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i21 = tail call i32 @packing(ptr noundef %buf, ptr noundef %rate, i32 noundef 41, i32 noundef 26, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.252)
  switch i32 %call.i21, label %sja1105_packing.exit20.if.end23.i26_crit_edge [
    i32 0, label %sja1105_packing.exit20.sja1105_packing.exit27_crit_edge
    i32 -22, label %do.end.i23
    i32 -34, label %if.then7.i24
  ], !prof !82

sja1105_packing.exit20.sja1105_packing.exit27_crit_edge: ; preds = %sja1105_packing.exit20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit27

sja1105_packing.exit20.if.end23.i26_crit_edge:    ; preds = %sja1105_packing.exit20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i26

do.end.i23:                                       ; preds = %sja1105_packing.exit20
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 26) #13
  br label %if.end23.i26

if.then7.i24:                                     ; preds = %sja1105_packing.exit20
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %rate, align 8
  %call20.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 41, i32 noundef 26) #13
  br label %if.end23.i26

if.end23.i26:                                     ; preds = %if.then7.i24, %do.end.i23, %sja1105_packing.exit20.if.end23.i26_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit27

sja1105_packing.exit27:                           ; preds = %if.end23.i26, %sja1105_packing.exit20.sja1105_packing.exit27_crit_edge
  %maxlen = getelementptr inbounds %struct.sja1105_l2_policing_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i28 = tail call i32 @packing(ptr noundef %buf, ptr noundef %maxlen, i32 noundef 25, i32 noundef 15, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.253)
  switch i32 %call.i28, label %sja1105_packing.exit27.if.end23.i33_crit_edge [
    i32 0, label %sja1105_packing.exit27.sja1105_packing.exit34_crit_edge
    i32 -22, label %do.end.i30
    i32 -34, label %if.then7.i31
  ], !prof !82

sja1105_packing.exit27.sja1105_packing.exit34_crit_edge: ; preds = %sja1105_packing.exit27
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit34

sja1105_packing.exit27.if.end23.i33_crit_edge:    ; preds = %sja1105_packing.exit27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i33

do.end.i30:                                       ; preds = %sja1105_packing.exit27
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 25, i32 noundef 15) #13
  br label %if.end23.i33

if.then7.i31:                                     ; preds = %sja1105_packing.exit27
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %maxlen to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %maxlen, align 8
  %call20.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 25, i32 noundef 15) #13
  br label %if.end23.i33

if.end23.i33:                                     ; preds = %if.then7.i31, %do.end.i30, %sja1105_packing.exit27.if.end23.i33_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit34

sja1105_packing.exit34:                           ; preds = %if.end23.i33, %sja1105_packing.exit27.sja1105_packing.exit34_crit_edge
  %partition = getelementptr inbounds %struct.sja1105_l2_policing_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i35 = tail call i32 @packing(ptr noundef %buf, ptr noundef %partition, i32 noundef 14, i32 noundef 12, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.254)
  switch i32 %call.i35, label %sja1105_packing.exit34.if.end23.i40_crit_edge [
    i32 0, label %sja1105_packing.exit34.sja1105_packing.exit41_crit_edge
    i32 -22, label %do.end.i37
    i32 -34, label %if.then7.i38
  ], !prof !82

sja1105_packing.exit34.sja1105_packing.exit41_crit_edge: ; preds = %sja1105_packing.exit34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit41

sja1105_packing.exit34.if.end23.i40_crit_edge:    ; preds = %sja1105_packing.exit34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i40

do.end.i37:                                       ; preds = %sja1105_packing.exit34
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 14, i32 noundef 12) #13
  br label %if.end23.i40

if.then7.i38:                                     ; preds = %sja1105_packing.exit34
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %partition to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %partition, align 8
  %call20.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 14, i32 noundef 12) #13
  br label %if.end23.i40

if.end23.i40:                                     ; preds = %if.then7.i38, %do.end.i37, %sja1105_packing.exit34.if.end23.i40_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit41

sja1105_packing.exit41:                           ; preds = %if.end23.i40, %sja1105_packing.exit34.sja1105_packing.exit41_crit_edge
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105et_mac_config_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0180 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %offset.0179 = phi i32 [ 72, %entry ], [ %add9, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 2, i32 %i.0180
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx, i32 noundef %offset.0179, i32 noundef %offset.0179, i32 noundef 28, i32 noundef %op)
  %arrayidx3 = getelementptr %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 1, i32 %i.0180
  %add4 = add nuw nsw i32 %offset.0179, 9
  %add5 = add nuw nsw i32 %offset.0179, 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx3, i32 noundef %add4, i32 noundef %add5, i32 noundef 28, i32 noundef %op)
  %arrayidx6 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 %i.0180
  %add7 = add nuw nsw i32 %offset.0179, 18
  %add8 = add nuw nsw i32 %offset.0179, 10
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx6, i32 noundef %add7, i32 noundef %add8, i32 noundef 28, i32 noundef %op)
  %inc = add nuw nsw i32 %i.0180, 1
  %add9 = add nuw nsw i32 %offset.0179, 19
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %ifg = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %ifg, i32 noundef 71, i32 noundef 67, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.255)
  switch i32 %call.i, label %for.end.if.end23.i_crit_edge [
    i32 0, label %for.end.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

for.end.sja1105_packing.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

for.end.if.end23.i_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 71, i32 noundef 67) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %ifg to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %ifg, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 71, i32 noundef 67) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %for.end.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %for.end.sja1105_packing.exit_crit_edge
  %speed = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i74 = tail call i32 @packing(ptr noundef %buf, ptr noundef %speed, i32 noundef 66, i32 noundef 65, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.256)
  switch i32 %call.i74, label %sja1105_packing.exit.if.end23.i79_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit80_crit_edge
    i32 -22, label %do.end.i76
    i32 -34, label %if.then7.i77
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit80_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit80

sja1105_packing.exit.if.end23.i79_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i79

do.end.i76:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 66, i32 noundef 65) #13
  br label %if.end23.i79

if.then7.i77:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %speed, align 8
  %call20.i78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 66, i32 noundef 65) #13
  br label %if.end23.i79

if.end23.i79:                                     ; preds = %if.then7.i77, %do.end.i76, %sja1105_packing.exit.if.end23.i79_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit80

sja1105_packing.exit80:                           ; preds = %if.end23.i79, %sja1105_packing.exit.sja1105_packing.exit80_crit_edge
  %tp_delin = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 5
  %call.i81 = tail call i32 @packing(ptr noundef %buf, ptr noundef %tp_delin, i32 noundef 64, i32 noundef 49, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.257)
  switch i32 %call.i81, label %sja1105_packing.exit80.if.end23.i86_crit_edge [
    i32 0, label %sja1105_packing.exit80.sja1105_packing.exit87_crit_edge
    i32 -22, label %do.end.i83
    i32 -34, label %if.then7.i84
  ], !prof !82

sja1105_packing.exit80.sja1105_packing.exit87_crit_edge: ; preds = %sja1105_packing.exit80
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit87

sja1105_packing.exit80.if.end23.i86_crit_edge:    ; preds = %sja1105_packing.exit80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i86

do.end.i83:                                       ; preds = %sja1105_packing.exit80
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 49) #13
  br label %if.end23.i86

if.then7.i84:                                     ; preds = %sja1105_packing.exit80
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %tp_delin to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tp_delin, align 8
  %call20.i85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 64, i32 noundef 49) #13
  br label %if.end23.i86

if.end23.i86:                                     ; preds = %if.then7.i84, %do.end.i83, %sja1105_packing.exit80.if.end23.i86_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit87

sja1105_packing.exit87:                           ; preds = %if.end23.i86, %sja1105_packing.exit80.sja1105_packing.exit87_crit_edge
  %tp_delout = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 6
  %call.i88 = tail call i32 @packing(ptr noundef %buf, ptr noundef %tp_delout, i32 noundef 48, i32 noundef 33, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.258)
  switch i32 %call.i88, label %sja1105_packing.exit87.if.end23.i93_crit_edge [
    i32 0, label %sja1105_packing.exit87.sja1105_packing.exit94_crit_edge
    i32 -22, label %do.end.i90
    i32 -34, label %if.then7.i91
  ], !prof !82

sja1105_packing.exit87.sja1105_packing.exit94_crit_edge: ; preds = %sja1105_packing.exit87
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit94

sja1105_packing.exit87.if.end23.i93_crit_edge:    ; preds = %sja1105_packing.exit87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i93

do.end.i90:                                       ; preds = %sja1105_packing.exit87
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 33) #13
  br label %if.end23.i93

if.then7.i91:                                     ; preds = %sja1105_packing.exit87
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %tp_delout to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %tp_delout, align 8
  %call20.i92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 48, i32 noundef 33) #13
  br label %if.end23.i93

if.end23.i93:                                     ; preds = %if.then7.i91, %do.end.i90, %sja1105_packing.exit87.if.end23.i93_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit94

sja1105_packing.exit94:                           ; preds = %if.end23.i93, %sja1105_packing.exit87.sja1105_packing.exit94_crit_edge
  %maxage = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 7
  %call.i95 = tail call i32 @packing(ptr noundef %buf, ptr noundef %maxage, i32 noundef 32, i32 noundef 25, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.259)
  switch i32 %call.i95, label %sja1105_packing.exit94.if.end23.i100_crit_edge [
    i32 0, label %sja1105_packing.exit94.sja1105_packing.exit101_crit_edge
    i32 -22, label %do.end.i97
    i32 -34, label %if.then7.i98
  ], !prof !82

sja1105_packing.exit94.sja1105_packing.exit101_crit_edge: ; preds = %sja1105_packing.exit94
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit101

sja1105_packing.exit94.if.end23.i100_crit_edge:   ; preds = %sja1105_packing.exit94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i100

do.end.i97:                                       ; preds = %sja1105_packing.exit94
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 32, i32 noundef 25) #13
  br label %if.end23.i100

if.then7.i98:                                     ; preds = %sja1105_packing.exit94
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %maxage to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %maxage, align 8
  %call20.i99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 32, i32 noundef 25) #13
  br label %if.end23.i100

if.end23.i100:                                    ; preds = %if.then7.i98, %do.end.i97, %sja1105_packing.exit94.if.end23.i100_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit101

sja1105_packing.exit101:                          ; preds = %if.end23.i100, %sja1105_packing.exit94.sja1105_packing.exit101_crit_edge
  %vlanprio = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 8
  %call.i102 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlanprio, i32 noundef 24, i32 noundef 22, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %15 = zext i32 %call.i102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.260)
  switch i32 %call.i102, label %sja1105_packing.exit101.if.end23.i107_crit_edge [
    i32 0, label %sja1105_packing.exit101.sja1105_packing.exit108_crit_edge
    i32 -22, label %do.end.i104
    i32 -34, label %if.then7.i105
  ], !prof !82

sja1105_packing.exit101.sja1105_packing.exit108_crit_edge: ; preds = %sja1105_packing.exit101
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit108

sja1105_packing.exit101.if.end23.i107_crit_edge:  ; preds = %sja1105_packing.exit101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i107

do.end.i104:                                      ; preds = %sja1105_packing.exit101
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 22) #13
  br label %if.end23.i107

if.then7.i105:                                    ; preds = %sja1105_packing.exit101
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %vlanprio to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vlanprio, align 8
  %call20.i106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %17, i32 noundef 24, i32 noundef 22) #13
  br label %if.end23.i107

if.end23.i107:                                    ; preds = %if.then7.i105, %do.end.i104, %sja1105_packing.exit101.if.end23.i107_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit108

sja1105_packing.exit108:                          ; preds = %if.end23.i107, %sja1105_packing.exit101.sja1105_packing.exit108_crit_edge
  %vlanid = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 9
  %call.i109 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlanid, i32 noundef 21, i32 noundef 10, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %18 = zext i32 %call.i109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.261)
  switch i32 %call.i109, label %sja1105_packing.exit108.if.end23.i114_crit_edge [
    i32 0, label %sja1105_packing.exit108.sja1105_packing.exit115_crit_edge
    i32 -22, label %do.end.i111
    i32 -34, label %if.then7.i112
  ], !prof !82

sja1105_packing.exit108.sja1105_packing.exit115_crit_edge: ; preds = %sja1105_packing.exit108
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit115

sja1105_packing.exit108.if.end23.i114_crit_edge:  ; preds = %sja1105_packing.exit108
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i114

do.end.i111:                                      ; preds = %sja1105_packing.exit108
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 21, i32 noundef 10) #13
  br label %if.end23.i114

if.then7.i112:                                    ; preds = %sja1105_packing.exit108
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %vlanid to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %vlanid, align 8
  %call20.i113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %20, i32 noundef 21, i32 noundef 10) #13
  br label %if.end23.i114

if.end23.i114:                                    ; preds = %if.then7.i112, %do.end.i111, %sja1105_packing.exit108.if.end23.i114_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit115

sja1105_packing.exit115:                          ; preds = %if.end23.i114, %sja1105_packing.exit108.sja1105_packing.exit115_crit_edge
  %ing_mirr = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 10
  %call.i116 = tail call i32 @packing(ptr noundef %buf, ptr noundef %ing_mirr, i32 noundef 9, i32 noundef 9, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %21 = zext i32 %call.i116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.262)
  switch i32 %call.i116, label %sja1105_packing.exit115.if.end23.i121_crit_edge [
    i32 0, label %sja1105_packing.exit115.sja1105_packing.exit122_crit_edge
    i32 -22, label %do.end.i118
    i32 -34, label %if.then7.i119
  ], !prof !82

sja1105_packing.exit115.sja1105_packing.exit122_crit_edge: ; preds = %sja1105_packing.exit115
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit122

sja1105_packing.exit115.if.end23.i121_crit_edge:  ; preds = %sja1105_packing.exit115
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i121

do.end.i118:                                      ; preds = %sja1105_packing.exit115
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 9, i32 noundef 9) #13
  br label %if.end23.i121

if.then7.i119:                                    ; preds = %sja1105_packing.exit115
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %ing_mirr to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %ing_mirr, align 8
  %call20.i120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %23, i32 noundef 9, i32 noundef 9) #13
  br label %if.end23.i121

if.end23.i121:                                    ; preds = %if.then7.i119, %do.end.i118, %sja1105_packing.exit115.if.end23.i121_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit122

sja1105_packing.exit122:                          ; preds = %if.end23.i121, %sja1105_packing.exit115.sja1105_packing.exit122_crit_edge
  %egr_mirr = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 11
  %call.i123 = tail call i32 @packing(ptr noundef %buf, ptr noundef %egr_mirr, i32 noundef 8, i32 noundef 8, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %24 = zext i32 %call.i123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %call.i123, label %sja1105_packing.exit122.if.end23.i128_crit_edge [
    i32 0, label %sja1105_packing.exit122.sja1105_packing.exit129_crit_edge
    i32 -22, label %do.end.i125
    i32 -34, label %if.then7.i126
  ], !prof !82

sja1105_packing.exit122.sja1105_packing.exit129_crit_edge: ; preds = %sja1105_packing.exit122
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit129

sja1105_packing.exit122.if.end23.i128_crit_edge:  ; preds = %sja1105_packing.exit122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i128

do.end.i125:                                      ; preds = %sja1105_packing.exit122
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 8, i32 noundef 8) #13
  br label %if.end23.i128

if.then7.i126:                                    ; preds = %sja1105_packing.exit122
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %egr_mirr to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %egr_mirr, align 8
  %call20.i127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %26, i32 noundef 8, i32 noundef 8) #13
  br label %if.end23.i128

if.end23.i128:                                    ; preds = %if.then7.i126, %do.end.i125, %sja1105_packing.exit122.if.end23.i128_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit129

sja1105_packing.exit129:                          ; preds = %if.end23.i128, %sja1105_packing.exit122.sja1105_packing.exit129_crit_edge
  %drpnona664 = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 12
  %call.i130 = tail call i32 @packing(ptr noundef %buf, ptr noundef %drpnona664, i32 noundef 7, i32 noundef 7, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %27 = zext i32 %call.i130 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.264)
  switch i32 %call.i130, label %sja1105_packing.exit129.if.end23.i135_crit_edge [
    i32 0, label %sja1105_packing.exit129.sja1105_packing.exit136_crit_edge
    i32 -22, label %do.end.i132
    i32 -34, label %if.then7.i133
  ], !prof !82

sja1105_packing.exit129.sja1105_packing.exit136_crit_edge: ; preds = %sja1105_packing.exit129
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit136

sja1105_packing.exit129.if.end23.i135_crit_edge:  ; preds = %sja1105_packing.exit129
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i135

do.end.i132:                                      ; preds = %sja1105_packing.exit129
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 7, i32 noundef 7) #13
  br label %if.end23.i135

if.then7.i133:                                    ; preds = %sja1105_packing.exit129
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %drpnona664 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %drpnona664, align 8
  %call20.i134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %29, i32 noundef 7, i32 noundef 7) #13
  br label %if.end23.i135

if.end23.i135:                                    ; preds = %if.then7.i133, %do.end.i132, %sja1105_packing.exit129.if.end23.i135_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit136

sja1105_packing.exit136:                          ; preds = %if.end23.i135, %sja1105_packing.exit129.sja1105_packing.exit136_crit_edge
  %drpdtag = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 13
  %call.i137 = tail call i32 @packing(ptr noundef %buf, ptr noundef %drpdtag, i32 noundef 6, i32 noundef 6, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %30 = zext i32 %call.i137 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.265)
  switch i32 %call.i137, label %sja1105_packing.exit136.if.end23.i142_crit_edge [
    i32 0, label %sja1105_packing.exit136.sja1105_packing.exit143_crit_edge
    i32 -22, label %do.end.i139
    i32 -34, label %if.then7.i140
  ], !prof !82

sja1105_packing.exit136.sja1105_packing.exit143_crit_edge: ; preds = %sja1105_packing.exit136
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit143

sja1105_packing.exit136.if.end23.i142_crit_edge:  ; preds = %sja1105_packing.exit136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i142

do.end.i139:                                      ; preds = %sja1105_packing.exit136
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i138 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 6, i32 noundef 6) #13
  br label %if.end23.i142

if.then7.i140:                                    ; preds = %sja1105_packing.exit136
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %drpdtag to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %drpdtag, align 8
  %call20.i141 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %32, i32 noundef 6, i32 noundef 6) #13
  br label %if.end23.i142

if.end23.i142:                                    ; preds = %if.then7.i140, %do.end.i139, %sja1105_packing.exit136.if.end23.i142_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit143

sja1105_packing.exit143:                          ; preds = %if.end23.i142, %sja1105_packing.exit136.sja1105_packing.exit143_crit_edge
  %drpuntag = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 14
  %call.i144 = tail call i32 @packing(ptr noundef %buf, ptr noundef %drpuntag, i32 noundef 5, i32 noundef 5, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %33 = zext i32 %call.i144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.266)
  switch i32 %call.i144, label %sja1105_packing.exit143.if.end23.i149_crit_edge [
    i32 0, label %sja1105_packing.exit143.sja1105_packing.exit150_crit_edge
    i32 -22, label %do.end.i146
    i32 -34, label %if.then7.i147
  ], !prof !82

sja1105_packing.exit143.sja1105_packing.exit150_crit_edge: ; preds = %sja1105_packing.exit143
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit150

sja1105_packing.exit143.if.end23.i149_crit_edge:  ; preds = %sja1105_packing.exit143
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i149

do.end.i146:                                      ; preds = %sja1105_packing.exit143
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i145 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 5, i32 noundef 5) #13
  br label %if.end23.i149

if.then7.i147:                                    ; preds = %sja1105_packing.exit143
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %drpuntag to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %drpuntag, align 8
  %call20.i148 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %35, i32 noundef 5, i32 noundef 5) #13
  br label %if.end23.i149

if.end23.i149:                                    ; preds = %if.then7.i147, %do.end.i146, %sja1105_packing.exit143.if.end23.i149_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit150

sja1105_packing.exit150:                          ; preds = %if.end23.i149, %sja1105_packing.exit143.sja1105_packing.exit150_crit_edge
  %retag = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 15
  %call.i151 = tail call i32 @packing(ptr noundef %buf, ptr noundef %retag, i32 noundef 4, i32 noundef 4, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %36 = zext i32 %call.i151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.267)
  switch i32 %call.i151, label %sja1105_packing.exit150.if.end23.i156_crit_edge [
    i32 0, label %sja1105_packing.exit150.sja1105_packing.exit157_crit_edge
    i32 -22, label %do.end.i153
    i32 -34, label %if.then7.i154
  ], !prof !82

sja1105_packing.exit150.sja1105_packing.exit157_crit_edge: ; preds = %sja1105_packing.exit150
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit157

sja1105_packing.exit150.if.end23.i156_crit_edge:  ; preds = %sja1105_packing.exit150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i156

do.end.i153:                                      ; preds = %sja1105_packing.exit150
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i152 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 4, i32 noundef 4) #13
  br label %if.end23.i156

if.then7.i154:                                    ; preds = %sja1105_packing.exit150
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %retag to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %retag, align 8
  %call20.i155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %38, i32 noundef 4, i32 noundef 4) #13
  br label %if.end23.i156

if.end23.i156:                                    ; preds = %if.then7.i154, %do.end.i153, %sja1105_packing.exit150.if.end23.i156_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit157

sja1105_packing.exit157:                          ; preds = %if.end23.i156, %sja1105_packing.exit150.sja1105_packing.exit157_crit_edge
  %dyn_learn = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 16
  %call.i158 = tail call i32 @packing(ptr noundef %buf, ptr noundef %dyn_learn, i32 noundef 3, i32 noundef 3, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %39 = zext i32 %call.i158 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.268)
  switch i32 %call.i158, label %sja1105_packing.exit157.if.end23.i163_crit_edge [
    i32 0, label %sja1105_packing.exit157.sja1105_packing.exit164_crit_edge
    i32 -22, label %do.end.i160
    i32 -34, label %if.then7.i161
  ], !prof !82

sja1105_packing.exit157.sja1105_packing.exit164_crit_edge: ; preds = %sja1105_packing.exit157
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit164

sja1105_packing.exit157.if.end23.i163_crit_edge:  ; preds = %sja1105_packing.exit157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i163

do.end.i160:                                      ; preds = %sja1105_packing.exit157
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 3, i32 noundef 3) #13
  br label %if.end23.i163

if.then7.i161:                                    ; preds = %sja1105_packing.exit157
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %dyn_learn to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %dyn_learn, align 8
  %call20.i162 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %41, i32 noundef 3, i32 noundef 3) #13
  br label %if.end23.i163

if.end23.i163:                                    ; preds = %if.then7.i161, %do.end.i160, %sja1105_packing.exit157.if.end23.i163_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit164

sja1105_packing.exit164:                          ; preds = %if.end23.i163, %sja1105_packing.exit157.sja1105_packing.exit164_crit_edge
  %egress = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 17
  %call.i165 = tail call i32 @packing(ptr noundef %buf, ptr noundef %egress, i32 noundef 2, i32 noundef 2, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %42 = zext i32 %call.i165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.269)
  switch i32 %call.i165, label %sja1105_packing.exit164.if.end23.i170_crit_edge [
    i32 0, label %sja1105_packing.exit164.sja1105_packing.exit171_crit_edge
    i32 -22, label %do.end.i167
    i32 -34, label %if.then7.i168
  ], !prof !82

sja1105_packing.exit164.sja1105_packing.exit171_crit_edge: ; preds = %sja1105_packing.exit164
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit171

sja1105_packing.exit164.if.end23.i170_crit_edge:  ; preds = %sja1105_packing.exit164
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i170

do.end.i167:                                      ; preds = %sja1105_packing.exit164
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 2, i32 noundef 2) #13
  br label %if.end23.i170

if.then7.i168:                                    ; preds = %sja1105_packing.exit164
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %egress to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %egress, align 8
  %call20.i169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %44, i32 noundef 2, i32 noundef 2) #13
  br label %if.end23.i170

if.end23.i170:                                    ; preds = %if.then7.i168, %do.end.i167, %sja1105_packing.exit164.if.end23.i170_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit171

sja1105_packing.exit171:                          ; preds = %if.end23.i170, %sja1105_packing.exit164.sja1105_packing.exit171_crit_edge
  %ingress = getelementptr inbounds %struct.sja1105_mac_config_entry, ptr %entry_ptr, i32 0, i32 18
  %call.i172 = tail call i32 @packing(ptr noundef %buf, ptr noundef %ingress, i32 noundef 1, i32 noundef 1, i32 noundef 28, i32 noundef %op, i8 noundef zeroext 4) #10
  %45 = zext i32 %call.i172 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.270)
  switch i32 %call.i172, label %sja1105_packing.exit171.if.end23.i177_crit_edge [
    i32 0, label %sja1105_packing.exit171.sja1105_packing.exit178_crit_edge
    i32 -22, label %do.end.i174
    i32 -34, label %if.then7.i175
  ], !prof !82

sja1105_packing.exit171.sja1105_packing.exit178_crit_edge: ; preds = %sja1105_packing.exit171
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit178

sja1105_packing.exit171.if.end23.i177_crit_edge:  ; preds = %sja1105_packing.exit171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i177

do.end.i174:                                      ; preds = %sja1105_packing.exit171
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i173 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 1, i32 noundef 1) #13
  br label %if.end23.i177

if.then7.i175:                                    ; preds = %sja1105_packing.exit171
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %ingress to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %ingress, align 8
  %call20.i176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %47, i32 noundef 1, i32 noundef 1) #13
  br label %if.end23.i177

if.end23.i177:                                    ; preds = %if.then7.i175, %do.end.i174, %sja1105_packing.exit171.if.end23.i177_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit178

sja1105_packing.exit178:                          ; preds = %if.end23.i177, %sja1105_packing.exit171.sja1105_packing.exit178_crit_edge
  ret i32 28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105et_l2_lookup_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %maxage = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 6
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %maxage, i32 noundef 31, i32 noundef 17, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.271)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 17) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %maxage to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %maxage, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 31, i32 noundef 17) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %dyn_tbsz = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 7
  %call.i17 = tail call i32 @packing(ptr noundef %buf, ptr noundef %dyn_tbsz, i32 noundef 16, i32 noundef 14, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.272)
  switch i32 %call.i17, label %sja1105_packing.exit.if.end23.i22_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit23_crit_edge
    i32 -22, label %do.end.i19
    i32 -34, label %if.then7.i20
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit23_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit23

sja1105_packing.exit.if.end23.i22_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i22

do.end.i19:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 16, i32 noundef 14) #13
  br label %if.end23.i22

if.then7.i20:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %dyn_tbsz to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dyn_tbsz, align 8
  %call20.i21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 16, i32 noundef 14) #13
  br label %if.end23.i22

if.end23.i22:                                     ; preds = %if.then7.i20, %do.end.i19, %sja1105_packing.exit.if.end23.i22_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit23

sja1105_packing.exit23:                           ; preds = %if.end23.i22, %sja1105_packing.exit.sja1105_packing.exit23_crit_edge
  %poly = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 8
  %call.i24 = tail call i32 @packing(ptr noundef %buf, ptr noundef %poly, i32 noundef 13, i32 noundef 6, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.273)
  switch i32 %call.i24, label %sja1105_packing.exit23.if.end23.i29_crit_edge [
    i32 0, label %sja1105_packing.exit23.sja1105_packing.exit30_crit_edge
    i32 -22, label %do.end.i26
    i32 -34, label %if.then7.i27
  ], !prof !82

sja1105_packing.exit23.sja1105_packing.exit30_crit_edge: ; preds = %sja1105_packing.exit23
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit30

sja1105_packing.exit23.if.end23.i29_crit_edge:    ; preds = %sja1105_packing.exit23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i29

do.end.i26:                                       ; preds = %sja1105_packing.exit23
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 13, i32 noundef 6) #13
  br label %if.end23.i29

if.then7.i27:                                     ; preds = %sja1105_packing.exit23
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %poly to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %poly, align 8
  %call20.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 13, i32 noundef 6) #13
  br label %if.end23.i29

if.end23.i29:                                     ; preds = %if.then7.i27, %do.end.i26, %sja1105_packing.exit23.if.end23.i29_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit30

sja1105_packing.exit30:                           ; preds = %if.end23.i29, %sja1105_packing.exit23.sja1105_packing.exit30_crit_edge
  %shared_learn = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 9
  %call.i31 = tail call i32 @packing(ptr noundef %buf, ptr noundef %shared_learn, i32 noundef 5, i32 noundef 5, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.274)
  switch i32 %call.i31, label %sja1105_packing.exit30.if.end23.i36_crit_edge [
    i32 0, label %sja1105_packing.exit30.sja1105_packing.exit37_crit_edge
    i32 -22, label %do.end.i33
    i32 -34, label %if.then7.i34
  ], !prof !82

sja1105_packing.exit30.sja1105_packing.exit37_crit_edge: ; preds = %sja1105_packing.exit30
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit37

sja1105_packing.exit30.if.end23.i36_crit_edge:    ; preds = %sja1105_packing.exit30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i36

do.end.i33:                                       ; preds = %sja1105_packing.exit30
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 5, i32 noundef 5) #13
  br label %if.end23.i36

if.then7.i34:                                     ; preds = %sja1105_packing.exit30
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %shared_learn to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %shared_learn, align 8
  %call20.i35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 5, i32 noundef 5) #13
  br label %if.end23.i36

if.end23.i36:                                     ; preds = %if.then7.i34, %do.end.i33, %sja1105_packing.exit30.if.end23.i36_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit37

sja1105_packing.exit37:                           ; preds = %if.end23.i36, %sja1105_packing.exit30.sja1105_packing.exit37_crit_edge
  %no_enf_hostprt = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 10
  %call.i38 = tail call i32 @packing(ptr noundef %buf, ptr noundef %no_enf_hostprt, i32 noundef 4, i32 noundef 4, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.275)
  switch i32 %call.i38, label %sja1105_packing.exit37.if.end23.i43_crit_edge [
    i32 0, label %sja1105_packing.exit37.sja1105_packing.exit44_crit_edge
    i32 -22, label %do.end.i40
    i32 -34, label %if.then7.i41
  ], !prof !82

sja1105_packing.exit37.sja1105_packing.exit44_crit_edge: ; preds = %sja1105_packing.exit37
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit44

sja1105_packing.exit37.if.end23.i43_crit_edge:    ; preds = %sja1105_packing.exit37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i43

do.end.i40:                                       ; preds = %sja1105_packing.exit37
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 4, i32 noundef 4) #13
  br label %if.end23.i43

if.then7.i41:                                     ; preds = %sja1105_packing.exit37
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %no_enf_hostprt to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %no_enf_hostprt, align 8
  %call20.i42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 4, i32 noundef 4) #13
  br label %if.end23.i43

if.end23.i43:                                     ; preds = %if.then7.i41, %do.end.i40, %sja1105_packing.exit37.if.end23.i43_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit44

sja1105_packing.exit44:                           ; preds = %if.end23.i43, %sja1105_packing.exit37.sja1105_packing.exit44_crit_edge
  %no_mgmt_learn = getelementptr inbounds %struct.sja1105_l2_lookup_params_entry, ptr %entry_ptr, i32 0, i32 11
  %call.i45 = tail call i32 @packing(ptr noundef %buf, ptr noundef %no_mgmt_learn, i32 noundef 3, i32 noundef 3, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %15 = zext i32 %call.i45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.276)
  switch i32 %call.i45, label %sja1105_packing.exit44.if.end23.i50_crit_edge [
    i32 0, label %sja1105_packing.exit44.sja1105_packing.exit51_crit_edge
    i32 -22, label %do.end.i47
    i32 -34, label %if.then7.i48
  ], !prof !82

sja1105_packing.exit44.sja1105_packing.exit51_crit_edge: ; preds = %sja1105_packing.exit44
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit51

sja1105_packing.exit44.if.end23.i50_crit_edge:    ; preds = %sja1105_packing.exit44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i50

do.end.i47:                                       ; preds = %sja1105_packing.exit44
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 3, i32 noundef 3) #13
  br label %if.end23.i50

if.then7.i48:                                     ; preds = %sja1105_packing.exit44
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %no_mgmt_learn to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %no_mgmt_learn, align 8
  %call20.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %17, i32 noundef 3, i32 noundef 3) #13
  br label %if.end23.i50

if.end23.i50:                                     ; preds = %if.then7.i48, %do.end.i47, %sja1105_packing.exit44.if.end23.i50_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit51

sja1105_packing.exit51:                           ; preds = %if.end23.i50, %sja1105_packing.exit44.sja1105_packing.exit51_crit_edge
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_l2_forwarding_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 95, i32 noundef 93, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.277)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 93) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 95, i32 noundef 93) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %arrayidx = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 0
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx, i32 noundef 22, i32 noundef 13, i32 noundef 12, i32 noundef %op)
  %arrayidx.1 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.1, i32 noundef 32, i32 noundef 23, i32 noundef 12, i32 noundef %op)
  %arrayidx.2 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.2, i32 noundef 42, i32 noundef 33, i32 noundef 12, i32 noundef %op)
  %arrayidx.3 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.3, i32 noundef 52, i32 noundef 43, i32 noundef 12, i32 noundef %op)
  %arrayidx.4 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.4, i32 noundef 62, i32 noundef 53, i32 noundef 12, i32 noundef %op)
  %arrayidx.5 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.5, i32 noundef 72, i32 noundef 63, i32 noundef 12, i32 noundef %op)
  %arrayidx.6 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 6
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.6, i32 noundef 82, i32 noundef 73, i32 noundef 12, i32 noundef %op)
  %arrayidx.7 = getelementptr %struct.sja1105_l2_forwarding_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 7
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.7, i32 noundef 92, i32 noundef 83, i32 noundef 12, i32 noundef %op)
  ret i32 12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105et_avb_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %destmeta = getelementptr inbounds %struct.sja1105_avb_params_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %destmeta, i32 noundef 95, i32 noundef 48, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.278)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 48) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %destmeta to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %destmeta, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 95, i32 noundef 48) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %srcmeta = getelementptr inbounds %struct.sja1105_avb_params_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i5 = tail call i32 @packing(ptr noundef %buf, ptr noundef %srcmeta, i32 noundef 47, i32 noundef 0, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.279)
  switch i32 %call.i5, label %sja1105_packing.exit.if.end23.i10_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit11_crit_edge
    i32 -22, label %do.end.i7
    i32 -34, label %if.then7.i8
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit11_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit11

sja1105_packing.exit.if.end23.i10_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i10

do.end.i7:                                        ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 0) #13
  br label %if.end23.i10

if.then7.i8:                                      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %srcmeta to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %srcmeta, align 8
  %call20.i9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 47, i32 noundef 0) #13
  br label %if.end23.i10

if.end23.i10:                                     ; preds = %if.then7.i8, %do.end.i7, %sja1105_packing.exit.if.end23.i10_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit11

sja1105_packing.exit11:                           ; preds = %if.end23.i10, %sja1105_packing.exit.sja1105_packing.exit11_crit_edge
  ret i32 12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105et_general_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 319, i32 noundef 319, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.280)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 319, i32 noundef 319) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 319, i32 noundef 319) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %mirr_ptacu = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i59 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mirr_ptacu, i32 noundef 318, i32 noundef 318, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.281)
  switch i32 %call.i59, label %sja1105_packing.exit.if.end23.i64_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit65_crit_edge
    i32 -22, label %do.end.i61
    i32 -34, label %if.then7.i62
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit65_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit65

sja1105_packing.exit.if.end23.i64_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i64

do.end.i61:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 318, i32 noundef 318) #13
  br label %if.end23.i64

if.then7.i62:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %mirr_ptacu to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %mirr_ptacu, align 8
  %call20.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 318, i32 noundef 318) #13
  br label %if.end23.i64

if.end23.i64:                                     ; preds = %if.then7.i62, %do.end.i61, %sja1105_packing.exit.if.end23.i64_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit65

sja1105_packing.exit65:                           ; preds = %if.end23.i64, %sja1105_packing.exit.sja1105_packing.exit65_crit_edge
  %switchid = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i66 = tail call i32 @packing(ptr noundef %buf, ptr noundef %switchid, i32 noundef 317, i32 noundef 315, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.282)
  switch i32 %call.i66, label %sja1105_packing.exit65.if.end23.i71_crit_edge [
    i32 0, label %sja1105_packing.exit65.sja1105_packing.exit72_crit_edge
    i32 -22, label %do.end.i68
    i32 -34, label %if.then7.i69
  ], !prof !82

sja1105_packing.exit65.sja1105_packing.exit72_crit_edge: ; preds = %sja1105_packing.exit65
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit72

sja1105_packing.exit65.if.end23.i71_crit_edge:    ; preds = %sja1105_packing.exit65
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i71

do.end.i68:                                       ; preds = %sja1105_packing.exit65
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 317, i32 noundef 315) #13
  br label %if.end23.i71

if.then7.i69:                                     ; preds = %sja1105_packing.exit65
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %switchid to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %switchid, align 8
  %call20.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 317, i32 noundef 315) #13
  br label %if.end23.i71

if.end23.i71:                                     ; preds = %if.then7.i69, %do.end.i68, %sja1105_packing.exit65.if.end23.i71_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit72

sja1105_packing.exit72:                           ; preds = %if.end23.i71, %sja1105_packing.exit65.sja1105_packing.exit72_crit_edge
  %hostprio = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i73 = tail call i32 @packing(ptr noundef %buf, ptr noundef %hostprio, i32 noundef 314, i32 noundef 312, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.283)
  switch i32 %call.i73, label %sja1105_packing.exit72.if.end23.i78_crit_edge [
    i32 0, label %sja1105_packing.exit72.sja1105_packing.exit79_crit_edge
    i32 -22, label %do.end.i75
    i32 -34, label %if.then7.i76
  ], !prof !82

sja1105_packing.exit72.sja1105_packing.exit79_crit_edge: ; preds = %sja1105_packing.exit72
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit79

sja1105_packing.exit72.if.end23.i78_crit_edge:    ; preds = %sja1105_packing.exit72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i78

do.end.i75:                                       ; preds = %sja1105_packing.exit72
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 314, i32 noundef 312) #13
  br label %if.end23.i78

if.then7.i76:                                     ; preds = %sja1105_packing.exit72
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %hostprio to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %hostprio, align 8
  %call20.i77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 314, i32 noundef 312) #13
  br label %if.end23.i78

if.end23.i78:                                     ; preds = %if.then7.i76, %do.end.i75, %sja1105_packing.exit72.if.end23.i78_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit79

sja1105_packing.exit79:                           ; preds = %if.end23.i78, %sja1105_packing.exit72.sja1105_packing.exit79_crit_edge
  %mac_fltres1 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i80 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mac_fltres1, i32 noundef 311, i32 noundef 264, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.284)
  switch i32 %call.i80, label %sja1105_packing.exit79.if.end23.i85_crit_edge [
    i32 0, label %sja1105_packing.exit79.sja1105_packing.exit86_crit_edge
    i32 -22, label %do.end.i82
    i32 -34, label %if.then7.i83
  ], !prof !82

sja1105_packing.exit79.sja1105_packing.exit86_crit_edge: ; preds = %sja1105_packing.exit79
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit86

sja1105_packing.exit79.if.end23.i85_crit_edge:    ; preds = %sja1105_packing.exit79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i85

do.end.i82:                                       ; preds = %sja1105_packing.exit79
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 311, i32 noundef 264) #13
  br label %if.end23.i85

if.then7.i83:                                     ; preds = %sja1105_packing.exit79
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %mac_fltres1 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %mac_fltres1, align 8
  %call20.i84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 311, i32 noundef 264) #13
  br label %if.end23.i85

if.end23.i85:                                     ; preds = %if.then7.i83, %do.end.i82, %sja1105_packing.exit79.if.end23.i85_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit86

sja1105_packing.exit86:                           ; preds = %if.end23.i85, %sja1105_packing.exit79.sja1105_packing.exit86_crit_edge
  %mac_fltres0 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 5
  %call.i87 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mac_fltres0, i32 noundef 263, i32 noundef 216, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %15 = zext i32 %call.i87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.285)
  switch i32 %call.i87, label %sja1105_packing.exit86.if.end23.i92_crit_edge [
    i32 0, label %sja1105_packing.exit86.sja1105_packing.exit93_crit_edge
    i32 -22, label %do.end.i89
    i32 -34, label %if.then7.i90
  ], !prof !82

sja1105_packing.exit86.sja1105_packing.exit93_crit_edge: ; preds = %sja1105_packing.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit93

sja1105_packing.exit86.if.end23.i92_crit_edge:    ; preds = %sja1105_packing.exit86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i92

do.end.i89:                                       ; preds = %sja1105_packing.exit86
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 263, i32 noundef 216) #13
  br label %if.end23.i92

if.then7.i90:                                     ; preds = %sja1105_packing.exit86
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %mac_fltres0 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %mac_fltres0, align 8
  %call20.i91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %17, i32 noundef 263, i32 noundef 216) #13
  br label %if.end23.i92

if.end23.i92:                                     ; preds = %if.then7.i90, %do.end.i89, %sja1105_packing.exit86.if.end23.i92_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit93

sja1105_packing.exit93:                           ; preds = %if.end23.i92, %sja1105_packing.exit86.sja1105_packing.exit93_crit_edge
  %mac_flt1 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 6
  %call.i94 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mac_flt1, i32 noundef 215, i32 noundef 168, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %18 = zext i32 %call.i94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.286)
  switch i32 %call.i94, label %sja1105_packing.exit93.if.end23.i99_crit_edge [
    i32 0, label %sja1105_packing.exit93.sja1105_packing.exit100_crit_edge
    i32 -22, label %do.end.i96
    i32 -34, label %if.then7.i97
  ], !prof !82

sja1105_packing.exit93.sja1105_packing.exit100_crit_edge: ; preds = %sja1105_packing.exit93
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit100

sja1105_packing.exit93.if.end23.i99_crit_edge:    ; preds = %sja1105_packing.exit93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i99

do.end.i96:                                       ; preds = %sja1105_packing.exit93
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 215, i32 noundef 168) #13
  br label %if.end23.i99

if.then7.i97:                                     ; preds = %sja1105_packing.exit93
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %mac_flt1 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %mac_flt1, align 8
  %call20.i98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %20, i32 noundef 215, i32 noundef 168) #13
  br label %if.end23.i99

if.end23.i99:                                     ; preds = %if.then7.i97, %do.end.i96, %sja1105_packing.exit93.if.end23.i99_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit100

sja1105_packing.exit100:                          ; preds = %if.end23.i99, %sja1105_packing.exit93.sja1105_packing.exit100_crit_edge
  %mac_flt0 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 7
  %call.i101 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mac_flt0, i32 noundef 167, i32 noundef 120, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %21 = zext i32 %call.i101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.287)
  switch i32 %call.i101, label %sja1105_packing.exit100.if.end23.i106_crit_edge [
    i32 0, label %sja1105_packing.exit100.sja1105_packing.exit107_crit_edge
    i32 -22, label %do.end.i103
    i32 -34, label %if.then7.i104
  ], !prof !82

sja1105_packing.exit100.sja1105_packing.exit107_crit_edge: ; preds = %sja1105_packing.exit100
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit107

sja1105_packing.exit100.if.end23.i106_crit_edge:  ; preds = %sja1105_packing.exit100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i106

do.end.i103:                                      ; preds = %sja1105_packing.exit100
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 120) #13
  br label %if.end23.i106

if.then7.i104:                                    ; preds = %sja1105_packing.exit100
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %mac_flt0 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %mac_flt0, align 8
  %call20.i105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %23, i32 noundef 167, i32 noundef 120) #13
  br label %if.end23.i106

if.end23.i106:                                    ; preds = %if.then7.i104, %do.end.i103, %sja1105_packing.exit100.if.end23.i106_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit107

sja1105_packing.exit107:                          ; preds = %if.end23.i106, %sja1105_packing.exit100.sja1105_packing.exit107_crit_edge
  %incl_srcpt1 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 8
  %call.i108 = tail call i32 @packing(ptr noundef %buf, ptr noundef %incl_srcpt1, i32 noundef 119, i32 noundef 119, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %24 = zext i32 %call.i108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.288)
  switch i32 %call.i108, label %sja1105_packing.exit107.if.end23.i113_crit_edge [
    i32 0, label %sja1105_packing.exit107.sja1105_packing.exit114_crit_edge
    i32 -22, label %do.end.i110
    i32 -34, label %if.then7.i111
  ], !prof !82

sja1105_packing.exit107.sja1105_packing.exit114_crit_edge: ; preds = %sja1105_packing.exit107
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit114

sja1105_packing.exit107.if.end23.i113_crit_edge:  ; preds = %sja1105_packing.exit107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i113

do.end.i110:                                      ; preds = %sja1105_packing.exit107
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 119, i32 noundef 119) #13
  br label %if.end23.i113

if.then7.i111:                                    ; preds = %sja1105_packing.exit107
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %incl_srcpt1 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %incl_srcpt1, align 8
  %call20.i112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %26, i32 noundef 119, i32 noundef 119) #13
  br label %if.end23.i113

if.end23.i113:                                    ; preds = %if.then7.i111, %do.end.i110, %sja1105_packing.exit107.if.end23.i113_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit114

sja1105_packing.exit114:                          ; preds = %if.end23.i113, %sja1105_packing.exit107.sja1105_packing.exit114_crit_edge
  %incl_srcpt0 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 9
  %call.i115 = tail call i32 @packing(ptr noundef %buf, ptr noundef %incl_srcpt0, i32 noundef 118, i32 noundef 118, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %27 = zext i32 %call.i115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.289)
  switch i32 %call.i115, label %sja1105_packing.exit114.if.end23.i120_crit_edge [
    i32 0, label %sja1105_packing.exit114.sja1105_packing.exit121_crit_edge
    i32 -22, label %do.end.i117
    i32 -34, label %if.then7.i118
  ], !prof !82

sja1105_packing.exit114.sja1105_packing.exit121_crit_edge: ; preds = %sja1105_packing.exit114
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit121

sja1105_packing.exit114.if.end23.i120_crit_edge:  ; preds = %sja1105_packing.exit114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i120

do.end.i117:                                      ; preds = %sja1105_packing.exit114
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 118, i32 noundef 118) #13
  br label %if.end23.i120

if.then7.i118:                                    ; preds = %sja1105_packing.exit114
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %incl_srcpt0 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %incl_srcpt0, align 8
  %call20.i119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %29, i32 noundef 118, i32 noundef 118) #13
  br label %if.end23.i120

if.end23.i120:                                    ; preds = %if.then7.i118, %do.end.i117, %sja1105_packing.exit114.if.end23.i120_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit121

sja1105_packing.exit121:                          ; preds = %if.end23.i120, %sja1105_packing.exit114.sja1105_packing.exit121_crit_edge
  %send_meta1 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 10
  %call.i122 = tail call i32 @packing(ptr noundef %buf, ptr noundef %send_meta1, i32 noundef 117, i32 noundef 117, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %30 = zext i32 %call.i122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.290)
  switch i32 %call.i122, label %sja1105_packing.exit121.if.end23.i127_crit_edge [
    i32 0, label %sja1105_packing.exit121.sja1105_packing.exit128_crit_edge
    i32 -22, label %do.end.i124
    i32 -34, label %if.then7.i125
  ], !prof !82

sja1105_packing.exit121.sja1105_packing.exit128_crit_edge: ; preds = %sja1105_packing.exit121
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit128

sja1105_packing.exit121.if.end23.i127_crit_edge:  ; preds = %sja1105_packing.exit121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i127

do.end.i124:                                      ; preds = %sja1105_packing.exit121
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 117, i32 noundef 117) #13
  br label %if.end23.i127

if.then7.i125:                                    ; preds = %sja1105_packing.exit121
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %send_meta1 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %send_meta1, align 8
  %call20.i126 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %32, i32 noundef 117, i32 noundef 117) #13
  br label %if.end23.i127

if.end23.i127:                                    ; preds = %if.then7.i125, %do.end.i124, %sja1105_packing.exit121.if.end23.i127_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit128

sja1105_packing.exit128:                          ; preds = %if.end23.i127, %sja1105_packing.exit121.sja1105_packing.exit128_crit_edge
  %send_meta0 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 11
  %call.i129 = tail call i32 @packing(ptr noundef %buf, ptr noundef %send_meta0, i32 noundef 116, i32 noundef 116, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %33 = zext i32 %call.i129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.291)
  switch i32 %call.i129, label %sja1105_packing.exit128.if.end23.i134_crit_edge [
    i32 0, label %sja1105_packing.exit128.sja1105_packing.exit135_crit_edge
    i32 -22, label %do.end.i131
    i32 -34, label %if.then7.i132
  ], !prof !82

sja1105_packing.exit128.sja1105_packing.exit135_crit_edge: ; preds = %sja1105_packing.exit128
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit135

sja1105_packing.exit128.if.end23.i134_crit_edge:  ; preds = %sja1105_packing.exit128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i134

do.end.i131:                                      ; preds = %sja1105_packing.exit128
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i130 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 116, i32 noundef 116) #13
  br label %if.end23.i134

if.then7.i132:                                    ; preds = %sja1105_packing.exit128
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %send_meta0 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %send_meta0, align 8
  %call20.i133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %35, i32 noundef 116, i32 noundef 116) #13
  br label %if.end23.i134

if.end23.i134:                                    ; preds = %if.then7.i132, %do.end.i131, %sja1105_packing.exit128.if.end23.i134_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit135

sja1105_packing.exit135:                          ; preds = %if.end23.i134, %sja1105_packing.exit128.sja1105_packing.exit135_crit_edge
  %casc_port = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 12
  %call.i136 = tail call i32 @packing(ptr noundef %buf, ptr noundef %casc_port, i32 noundef 115, i32 noundef 113, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %36 = zext i32 %call.i136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.292)
  switch i32 %call.i136, label %sja1105_packing.exit135.if.end23.i141_crit_edge [
    i32 0, label %sja1105_packing.exit135.sja1105_packing.exit142_crit_edge
    i32 -22, label %do.end.i138
    i32 -34, label %if.then7.i139
  ], !prof !82

sja1105_packing.exit135.sja1105_packing.exit142_crit_edge: ; preds = %sja1105_packing.exit135
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit142

sja1105_packing.exit135.if.end23.i141_crit_edge:  ; preds = %sja1105_packing.exit135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i141

do.end.i138:                                      ; preds = %sja1105_packing.exit135
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 115, i32 noundef 113) #13
  br label %if.end23.i141

if.then7.i139:                                    ; preds = %sja1105_packing.exit135
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %casc_port to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %casc_port, align 8
  %call20.i140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %38, i32 noundef 115, i32 noundef 113) #13
  br label %if.end23.i141

if.end23.i141:                                    ; preds = %if.then7.i139, %do.end.i138, %sja1105_packing.exit135.if.end23.i141_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit142

sja1105_packing.exit142:                          ; preds = %if.end23.i141, %sja1105_packing.exit135.sja1105_packing.exit142_crit_edge
  %host_port = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 13
  %call.i143 = tail call i32 @packing(ptr noundef %buf, ptr noundef %host_port, i32 noundef 112, i32 noundef 110, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %39 = zext i32 %call.i143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.293)
  switch i32 %call.i143, label %sja1105_packing.exit142.if.end23.i148_crit_edge [
    i32 0, label %sja1105_packing.exit142.sja1105_packing.exit149_crit_edge
    i32 -22, label %do.end.i145
    i32 -34, label %if.then7.i146
  ], !prof !82

sja1105_packing.exit142.sja1105_packing.exit149_crit_edge: ; preds = %sja1105_packing.exit142
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit149

sja1105_packing.exit142.if.end23.i148_crit_edge:  ; preds = %sja1105_packing.exit142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i148

do.end.i145:                                      ; preds = %sja1105_packing.exit142
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 112, i32 noundef 110) #13
  br label %if.end23.i148

if.then7.i146:                                    ; preds = %sja1105_packing.exit142
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %host_port to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %host_port, align 8
  %call20.i147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %41, i32 noundef 112, i32 noundef 110) #13
  br label %if.end23.i148

if.end23.i148:                                    ; preds = %if.then7.i146, %do.end.i145, %sja1105_packing.exit142.if.end23.i148_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit149

sja1105_packing.exit149:                          ; preds = %if.end23.i148, %sja1105_packing.exit142.sja1105_packing.exit149_crit_edge
  %mirr_port = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 14
  %call.i150 = tail call i32 @packing(ptr noundef %buf, ptr noundef %mirr_port, i32 noundef 109, i32 noundef 107, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %42 = zext i32 %call.i150 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.294)
  switch i32 %call.i150, label %sja1105_packing.exit149.if.end23.i155_crit_edge [
    i32 0, label %sja1105_packing.exit149.sja1105_packing.exit156_crit_edge
    i32 -22, label %do.end.i152
    i32 -34, label %if.then7.i153
  ], !prof !82

sja1105_packing.exit149.sja1105_packing.exit156_crit_edge: ; preds = %sja1105_packing.exit149
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit156

sja1105_packing.exit149.if.end23.i155_crit_edge:  ; preds = %sja1105_packing.exit149
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i155

do.end.i152:                                      ; preds = %sja1105_packing.exit149
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 107) #13
  br label %if.end23.i155

if.then7.i153:                                    ; preds = %sja1105_packing.exit149
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %mirr_port to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %mirr_port, align 8
  %call20.i154 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %44, i32 noundef 109, i32 noundef 107) #13
  br label %if.end23.i155

if.end23.i155:                                    ; preds = %if.then7.i153, %do.end.i152, %sja1105_packing.exit149.if.end23.i155_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit156

sja1105_packing.exit156:                          ; preds = %if.end23.i155, %sja1105_packing.exit149.sja1105_packing.exit156_crit_edge
  %vlmarker = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 15
  %call.i157 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlmarker, i32 noundef 106, i32 noundef 75, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %45 = zext i32 %call.i157 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.295)
  switch i32 %call.i157, label %sja1105_packing.exit156.if.end23.i162_crit_edge [
    i32 0, label %sja1105_packing.exit156.sja1105_packing.exit163_crit_edge
    i32 -22, label %do.end.i159
    i32 -34, label %if.then7.i160
  ], !prof !82

sja1105_packing.exit156.sja1105_packing.exit163_crit_edge: ; preds = %sja1105_packing.exit156
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit163

sja1105_packing.exit156.if.end23.i162_crit_edge:  ; preds = %sja1105_packing.exit156
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i162

do.end.i159:                                      ; preds = %sja1105_packing.exit156
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i158 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 106, i32 noundef 75) #13
  br label %if.end23.i162

if.then7.i160:                                    ; preds = %sja1105_packing.exit156
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %vlmarker to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %vlmarker, align 8
  %call20.i161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %47, i32 noundef 106, i32 noundef 75) #13
  br label %if.end23.i162

if.end23.i162:                                    ; preds = %if.then7.i160, %do.end.i159, %sja1105_packing.exit156.if.end23.i162_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit163

sja1105_packing.exit163:                          ; preds = %if.end23.i162, %sja1105_packing.exit156.sja1105_packing.exit163_crit_edge
  %vlmask = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 16
  %call.i164 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlmask, i32 noundef 74, i32 noundef 43, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %48 = zext i32 %call.i164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.296)
  switch i32 %call.i164, label %sja1105_packing.exit163.if.end23.i169_crit_edge [
    i32 0, label %sja1105_packing.exit163.sja1105_packing.exit170_crit_edge
    i32 -22, label %do.end.i166
    i32 -34, label %if.then7.i167
  ], !prof !82

sja1105_packing.exit163.sja1105_packing.exit170_crit_edge: ; preds = %sja1105_packing.exit163
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit170

sja1105_packing.exit163.if.end23.i169_crit_edge:  ; preds = %sja1105_packing.exit163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i169

do.end.i166:                                      ; preds = %sja1105_packing.exit163
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i165 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 74, i32 noundef 43) #13
  br label %if.end23.i169

if.then7.i167:                                    ; preds = %sja1105_packing.exit163
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %vlmask to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %vlmask, align 8
  %call20.i168 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %50, i32 noundef 74, i32 noundef 43) #13
  br label %if.end23.i169

if.end23.i169:                                    ; preds = %if.then7.i167, %do.end.i166, %sja1105_packing.exit163.if.end23.i169_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit170

sja1105_packing.exit170:                          ; preds = %if.end23.i169, %sja1105_packing.exit163.sja1105_packing.exit170_crit_edge
  %tpid = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 17
  %call.i171 = tail call i32 @packing(ptr noundef %buf, ptr noundef %tpid, i32 noundef 42, i32 noundef 27, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %51 = zext i32 %call.i171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.297)
  switch i32 %call.i171, label %sja1105_packing.exit170.if.end23.i176_crit_edge [
    i32 0, label %sja1105_packing.exit170.sja1105_packing.exit177_crit_edge
    i32 -22, label %do.end.i173
    i32 -34, label %if.then7.i174
  ], !prof !82

sja1105_packing.exit170.sja1105_packing.exit177_crit_edge: ; preds = %sja1105_packing.exit170
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit177

sja1105_packing.exit170.if.end23.i176_crit_edge:  ; preds = %sja1105_packing.exit170
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i176

do.end.i173:                                      ; preds = %sja1105_packing.exit170
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 27) #13
  br label %if.end23.i176

if.then7.i174:                                    ; preds = %sja1105_packing.exit170
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %tpid to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %tpid, align 8
  %call20.i175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %53, i32 noundef 42, i32 noundef 27) #13
  br label %if.end23.i176

if.end23.i176:                                    ; preds = %if.then7.i174, %do.end.i173, %sja1105_packing.exit170.if.end23.i176_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit177

sja1105_packing.exit177:                          ; preds = %if.end23.i176, %sja1105_packing.exit170.sja1105_packing.exit177_crit_edge
  %ignore2stf = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 18
  %call.i178 = tail call i32 @packing(ptr noundef %buf, ptr noundef %ignore2stf, i32 noundef 26, i32 noundef 26, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %54 = zext i32 %call.i178 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.298)
  switch i32 %call.i178, label %sja1105_packing.exit177.if.end23.i183_crit_edge [
    i32 0, label %sja1105_packing.exit177.sja1105_packing.exit184_crit_edge
    i32 -22, label %do.end.i180
    i32 -34, label %if.then7.i181
  ], !prof !82

sja1105_packing.exit177.sja1105_packing.exit184_crit_edge: ; preds = %sja1105_packing.exit177
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit184

sja1105_packing.exit177.if.end23.i183_crit_edge:  ; preds = %sja1105_packing.exit177
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i183

do.end.i180:                                      ; preds = %sja1105_packing.exit177
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 26, i32 noundef 26) #13
  br label %if.end23.i183

if.then7.i181:                                    ; preds = %sja1105_packing.exit177
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %ignore2stf to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %ignore2stf, align 8
  %call20.i182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %56, i32 noundef 26, i32 noundef 26) #13
  br label %if.end23.i183

if.end23.i183:                                    ; preds = %if.then7.i181, %do.end.i180, %sja1105_packing.exit177.if.end23.i183_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit184

sja1105_packing.exit184:                          ; preds = %if.end23.i183, %sja1105_packing.exit177.sja1105_packing.exit184_crit_edge
  %tpid2 = getelementptr inbounds %struct.sja1105_general_params_entry, ptr %entry_ptr, i32 0, i32 19
  %call.i185 = tail call i32 @packing(ptr noundef %buf, ptr noundef %tpid2, i32 noundef 25, i32 noundef 10, i32 noundef 40, i32 noundef %op, i8 noundef zeroext 4) #10
  %57 = zext i32 %call.i185 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.299)
  switch i32 %call.i185, label %sja1105_packing.exit184.if.end23.i190_crit_edge [
    i32 0, label %sja1105_packing.exit184.sja1105_packing.exit191_crit_edge
    i32 -22, label %do.end.i187
    i32 -34, label %if.then7.i188
  ], !prof !82

sja1105_packing.exit184.sja1105_packing.exit191_crit_edge: ; preds = %sja1105_packing.exit184
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit191

sja1105_packing.exit184.if.end23.i190_crit_edge:  ; preds = %sja1105_packing.exit184
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i190

do.end.i187:                                      ; preds = %sja1105_packing.exit184
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 25, i32 noundef 10) #13
  br label %if.end23.i190

if.then7.i188:                                    ; preds = %sja1105_packing.exit184
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %tpid2 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %tpid2, align 8
  %call20.i189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %59, i32 noundef 25, i32 noundef 10) #13
  br label %if.end23.i190

if.end23.i190:                                    ; preds = %if.then7.i188, %do.end.i187, %sja1105_packing.exit184.if.end23.i190_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit191

sja1105_packing.exit191:                          ; preds = %if.end23.i190, %sja1105_packing.exit184.sja1105_packing.exit191_crit_edge
  ret i32 40
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_xmii_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.sja1105_xmii_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 0
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx, i32 noundef 18, i32 noundef 17, i32 noundef 4, i32 noundef %op)
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 19, i32 noundef 19, i32 noundef 4, i32 noundef %op)
  %arrayidx.1 = getelementptr %struct.sja1105_xmii_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.1, i32 noundef 21, i32 noundef 20, i32 noundef 4, i32 noundef %op)
  %arrayidx3.1 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx3.1, i32 noundef 22, i32 noundef 22, i32 noundef 4, i32 noundef %op)
  %arrayidx.2 = getelementptr %struct.sja1105_xmii_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.2, i32 noundef 24, i32 noundef 23, i32 noundef 4, i32 noundef %op)
  %arrayidx3.2 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx3.2, i32 noundef 25, i32 noundef 25, i32 noundef 4, i32 noundef %op)
  %arrayidx.3 = getelementptr %struct.sja1105_xmii_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.3, i32 noundef 27, i32 noundef 26, i32 noundef 4, i32 noundef %op)
  %arrayidx3.3 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx3.3, i32 noundef 28, i32 noundef 28, i32 noundef 4, i32 noundef %op)
  %arrayidx.4 = getelementptr %struct.sja1105_xmii_params_entry, ptr %entry_ptr, i32 0, i32 1, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.4, i32 noundef 30, i32 noundef 29, i32 noundef 4, i32 noundef %op)
  %arrayidx3.4 = getelementptr [11 x i64], ptr %entry_ptr, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx3.4, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op)
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_schedule_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 63, i32 noundef 54, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.300)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 54) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 63, i32 noundef 54) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %winend = getelementptr inbounds %struct.sja1105_schedule_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i29 = tail call i32 @packing(ptr noundef %buf, ptr noundef %winend, i32 noundef 53, i32 noundef 53, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.301)
  switch i32 %call.i29, label %sja1105_packing.exit.if.end23.i34_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit35_crit_edge
    i32 -22, label %do.end.i31
    i32 -34, label %if.then7.i32
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit35_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit35

sja1105_packing.exit.if.end23.i34_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i34

do.end.i31:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 53) #13
  br label %if.end23.i34

if.then7.i32:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %winend to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %winend, align 8
  %call20.i33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 53, i32 noundef 53) #13
  br label %if.end23.i34

if.end23.i34:                                     ; preds = %if.then7.i32, %do.end.i31, %sja1105_packing.exit.if.end23.i34_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit35

sja1105_packing.exit35:                           ; preds = %if.end23.i34, %sja1105_packing.exit.sja1105_packing.exit35_crit_edge
  %winst = getelementptr inbounds %struct.sja1105_schedule_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i36 = tail call i32 @packing(ptr noundef %buf, ptr noundef %winst, i32 noundef 52, i32 noundef 52, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.302)
  switch i32 %call.i36, label %sja1105_packing.exit35.if.end23.i41_crit_edge [
    i32 0, label %sja1105_packing.exit35.sja1105_packing.exit42_crit_edge
    i32 -22, label %do.end.i38
    i32 -34, label %if.then7.i39
  ], !prof !82

sja1105_packing.exit35.sja1105_packing.exit42_crit_edge: ; preds = %sja1105_packing.exit35
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit42

sja1105_packing.exit35.if.end23.i41_crit_edge:    ; preds = %sja1105_packing.exit35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i41

do.end.i38:                                       ; preds = %sja1105_packing.exit35
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 52) #13
  br label %if.end23.i41

if.then7.i39:                                     ; preds = %sja1105_packing.exit35
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %winst to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %winst, align 8
  %call20.i40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 52, i32 noundef 52) #13
  br label %if.end23.i41

if.end23.i41:                                     ; preds = %if.then7.i39, %do.end.i38, %sja1105_packing.exit35.if.end23.i41_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit42

sja1105_packing.exit42:                           ; preds = %if.end23.i41, %sja1105_packing.exit35.sja1105_packing.exit42_crit_edge
  %destports = getelementptr inbounds %struct.sja1105_schedule_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i43 = tail call i32 @packing(ptr noundef %buf, ptr noundef %destports, i32 noundef 51, i32 noundef 47, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.303)
  switch i32 %call.i43, label %sja1105_packing.exit42.if.end23.i48_crit_edge [
    i32 0, label %sja1105_packing.exit42.sja1105_packing.exit49_crit_edge
    i32 -22, label %do.end.i45
    i32 -34, label %if.then7.i46
  ], !prof !82

sja1105_packing.exit42.sja1105_packing.exit49_crit_edge: ; preds = %sja1105_packing.exit42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit49

sja1105_packing.exit42.if.end23.i48_crit_edge:    ; preds = %sja1105_packing.exit42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i48

do.end.i45:                                       ; preds = %sja1105_packing.exit42
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 47) #13
  br label %if.end23.i48

if.then7.i46:                                     ; preds = %sja1105_packing.exit42
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %destports to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %destports, align 8
  %call20.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 51, i32 noundef 47) #13
  br label %if.end23.i48

if.end23.i48:                                     ; preds = %if.then7.i46, %do.end.i45, %sja1105_packing.exit42.if.end23.i48_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit49

sja1105_packing.exit49:                           ; preds = %if.end23.i48, %sja1105_packing.exit42.sja1105_packing.exit49_crit_edge
  %setvalid = getelementptr inbounds %struct.sja1105_schedule_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i50 = tail call i32 @packing(ptr noundef %buf, ptr noundef %setvalid, i32 noundef 46, i32 noundef 46, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.304)
  switch i32 %call.i50, label %sja1105_packing.exit49.if.end23.i55_crit_edge [
    i32 0, label %sja1105_packing.exit49.sja1105_packing.exit56_crit_edge
    i32 -22, label %do.end.i52
    i32 -34, label %if.then7.i53
  ], !prof !82

sja1105_packing.exit49.sja1105_packing.exit56_crit_edge: ; preds = %sja1105_packing.exit49
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit56

sja1105_packing.exit49.if.end23.i55_crit_edge:    ; preds = %sja1105_packing.exit49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i55

do.end.i52:                                       ; preds = %sja1105_packing.exit49
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 46, i32 noundef 46) #13
  br label %if.end23.i55

if.then7.i53:                                     ; preds = %sja1105_packing.exit49
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %setvalid to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %setvalid, align 8
  %call20.i54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 46, i32 noundef 46) #13
  br label %if.end23.i55

if.end23.i55:                                     ; preds = %if.then7.i53, %do.end.i52, %sja1105_packing.exit49.if.end23.i55_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit56

sja1105_packing.exit56:                           ; preds = %if.end23.i55, %sja1105_packing.exit49.sja1105_packing.exit56_crit_edge
  %txen = getelementptr inbounds %struct.sja1105_schedule_entry, ptr %entry_ptr, i32 0, i32 5
  %call.i57 = tail call i32 @packing(ptr noundef %buf, ptr noundef %txen, i32 noundef 45, i32 noundef 45, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %15 = zext i32 %call.i57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.305)
  switch i32 %call.i57, label %sja1105_packing.exit56.if.end23.i62_crit_edge [
    i32 0, label %sja1105_packing.exit56.sja1105_packing.exit63_crit_edge
    i32 -22, label %do.end.i59
    i32 -34, label %if.then7.i60
  ], !prof !82

sja1105_packing.exit56.sja1105_packing.exit63_crit_edge: ; preds = %sja1105_packing.exit56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit63

sja1105_packing.exit56.if.end23.i62_crit_edge:    ; preds = %sja1105_packing.exit56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i62

do.end.i59:                                       ; preds = %sja1105_packing.exit56
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 45) #13
  br label %if.end23.i62

if.then7.i60:                                     ; preds = %sja1105_packing.exit56
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %txen to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %txen, align 8
  %call20.i61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %17, i32 noundef 45, i32 noundef 45) #13
  br label %if.end23.i62

if.end23.i62:                                     ; preds = %if.then7.i60, %do.end.i59, %sja1105_packing.exit56.if.end23.i62_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit63

sja1105_packing.exit63:                           ; preds = %if.end23.i62, %sja1105_packing.exit56.sja1105_packing.exit63_crit_edge
  %resmedia_en = getelementptr inbounds %struct.sja1105_schedule_entry, ptr %entry_ptr, i32 0, i32 6
  %call.i64 = tail call i32 @packing(ptr noundef %buf, ptr noundef %resmedia_en, i32 noundef 44, i32 noundef 44, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %18 = zext i32 %call.i64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.306)
  switch i32 %call.i64, label %sja1105_packing.exit63.if.end23.i69_crit_edge [
    i32 0, label %sja1105_packing.exit63.sja1105_packing.exit70_crit_edge
    i32 -22, label %do.end.i66
    i32 -34, label %if.then7.i67
  ], !prof !82

sja1105_packing.exit63.sja1105_packing.exit70_crit_edge: ; preds = %sja1105_packing.exit63
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit70

sja1105_packing.exit63.if.end23.i69_crit_edge:    ; preds = %sja1105_packing.exit63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i69

do.end.i66:                                       ; preds = %sja1105_packing.exit63
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 44) #13
  br label %if.end23.i69

if.then7.i67:                                     ; preds = %sja1105_packing.exit63
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %resmedia_en to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %resmedia_en, align 8
  %call20.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %20, i32 noundef 44, i32 noundef 44) #13
  br label %if.end23.i69

if.end23.i69:                                     ; preds = %if.then7.i67, %do.end.i66, %sja1105_packing.exit63.if.end23.i69_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit70

sja1105_packing.exit70:                           ; preds = %if.end23.i69, %sja1105_packing.exit63.sja1105_packing.exit70_crit_edge
  %resmedia = getelementptr inbounds %struct.sja1105_schedule_entry, ptr %entry_ptr, i32 0, i32 7
  %call.i71 = tail call i32 @packing(ptr noundef %buf, ptr noundef %resmedia, i32 noundef 43, i32 noundef 36, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %21 = zext i32 %call.i71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.307)
  switch i32 %call.i71, label %sja1105_packing.exit70.if.end23.i76_crit_edge [
    i32 0, label %sja1105_packing.exit70.sja1105_packing.exit77_crit_edge
    i32 -22, label %do.end.i73
    i32 -34, label %if.then7.i74
  ], !prof !82

sja1105_packing.exit70.sja1105_packing.exit77_crit_edge: ; preds = %sja1105_packing.exit70
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit77

sja1105_packing.exit70.if.end23.i76_crit_edge:    ; preds = %sja1105_packing.exit70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i76

do.end.i73:                                       ; preds = %sja1105_packing.exit70
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 43, i32 noundef 36) #13
  br label %if.end23.i76

if.then7.i74:                                     ; preds = %sja1105_packing.exit70
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %resmedia to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %resmedia, align 8
  %call20.i75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %23, i32 noundef 43, i32 noundef 36) #13
  br label %if.end23.i76

if.end23.i76:                                     ; preds = %if.then7.i74, %do.end.i73, %sja1105_packing.exit70.if.end23.i76_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit77

sja1105_packing.exit77:                           ; preds = %if.end23.i76, %sja1105_packing.exit70.sja1105_packing.exit77_crit_edge
  %vlindex = getelementptr inbounds %struct.sja1105_schedule_entry, ptr %entry_ptr, i32 0, i32 8
  %call.i78 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlindex, i32 noundef 35, i32 noundef 26, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %24 = zext i32 %call.i78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.308)
  switch i32 %call.i78, label %sja1105_packing.exit77.if.end23.i83_crit_edge [
    i32 0, label %sja1105_packing.exit77.sja1105_packing.exit84_crit_edge
    i32 -22, label %do.end.i80
    i32 -34, label %if.then7.i81
  ], !prof !82

sja1105_packing.exit77.sja1105_packing.exit84_crit_edge: ; preds = %sja1105_packing.exit77
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit84

sja1105_packing.exit77.if.end23.i83_crit_edge:    ; preds = %sja1105_packing.exit77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i83

do.end.i80:                                       ; preds = %sja1105_packing.exit77
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 35, i32 noundef 26) #13
  br label %if.end23.i83

if.then7.i81:                                     ; preds = %sja1105_packing.exit77
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %vlindex to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %vlindex, align 8
  %call20.i82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %26, i32 noundef 35, i32 noundef 26) #13
  br label %if.end23.i83

if.end23.i83:                                     ; preds = %if.then7.i81, %do.end.i80, %sja1105_packing.exit77.if.end23.i83_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit84

sja1105_packing.exit84:                           ; preds = %if.end23.i83, %sja1105_packing.exit77.sja1105_packing.exit84_crit_edge
  %delta = getelementptr inbounds %struct.sja1105_schedule_entry, ptr %entry_ptr, i32 0, i32 9
  %call.i85 = tail call i32 @packing(ptr noundef %buf, ptr noundef %delta, i32 noundef 25, i32 noundef 8, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %27 = zext i32 %call.i85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.309)
  switch i32 %call.i85, label %sja1105_packing.exit84.if.end23.i90_crit_edge [
    i32 0, label %sja1105_packing.exit84.sja1105_packing.exit91_crit_edge
    i32 -22, label %do.end.i87
    i32 -34, label %if.then7.i88
  ], !prof !82

sja1105_packing.exit84.sja1105_packing.exit91_crit_edge: ; preds = %sja1105_packing.exit84
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit91

sja1105_packing.exit84.if.end23.i90_crit_edge:    ; preds = %sja1105_packing.exit84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i90

do.end.i87:                                       ; preds = %sja1105_packing.exit84
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 25, i32 noundef 8) #13
  br label %if.end23.i90

if.then7.i88:                                     ; preds = %sja1105_packing.exit84
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %delta to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %delta, align 8
  %call20.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %29, i32 noundef 25, i32 noundef 8) #13
  br label %if.end23.i90

if.end23.i90:                                     ; preds = %if.then7.i88, %do.end.i87, %sja1105_packing.exit84.if.end23.i90_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit91

sja1105_packing.exit91:                           ; preds = %if.end23.i90, %sja1105_packing.exit84.sja1105_packing.exit91_crit_edge
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_schedule_entry_points_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 31, i32 noundef 29, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.310)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 29) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 31, i32 noundef 29) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %delta = getelementptr inbounds %struct.sja1105_schedule_entry_points_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i8 = tail call i32 @packing(ptr noundef %buf, ptr noundef %delta, i32 noundef 28, i32 noundef 11, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.311)
  switch i32 %call.i8, label %sja1105_packing.exit.if.end23.i13_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit14_crit_edge
    i32 -22, label %do.end.i10
    i32 -34, label %if.then7.i11
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit14_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit14

sja1105_packing.exit.if.end23.i13_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i13

do.end.i10:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 11) #13
  br label %if.end23.i13

if.then7.i11:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %delta to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %delta, align 8
  %call20.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 28, i32 noundef 11) #13
  br label %if.end23.i13

if.end23.i13:                                     ; preds = %if.then7.i11, %do.end.i10, %sja1105_packing.exit.if.end23.i13_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit14

sja1105_packing.exit14:                           ; preds = %if.end23.i13, %sja1105_packing.exit.sja1105_packing.exit14_crit_edge
  %address = getelementptr inbounds %struct.sja1105_schedule_entry_points_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i15 = tail call i32 @packing(ptr noundef %buf, ptr noundef %address, i32 noundef 10, i32 noundef 1, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.312)
  switch i32 %call.i15, label %sja1105_packing.exit14.if.end23.i20_crit_edge [
    i32 0, label %sja1105_packing.exit14.sja1105_packing.exit21_crit_edge
    i32 -22, label %do.end.i17
    i32 -34, label %if.then7.i18
  ], !prof !82

sja1105_packing.exit14.sja1105_packing.exit21_crit_edge: ; preds = %sja1105_packing.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit21

sja1105_packing.exit14.if.end23.i20_crit_edge:    ; preds = %sja1105_packing.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i20

do.end.i17:                                       ; preds = %sja1105_packing.exit14
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 10, i32 noundef 1) #13
  br label %if.end23.i20

if.then7.i18:                                     ; preds = %sja1105_packing.exit14
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %address, align 8
  %call20.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 10, i32 noundef 1) #13
  br label %if.end23.i20

if.end23.i20:                                     ; preds = %if.then7.i18, %do.end.i17, %sja1105_packing.exit14.if.end23.i20_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit21

sja1105_packing.exit21:                           ; preds = %if.end23.i20, %sja1105_packing.exit14.sja1105_packing.exit21_crit_edge
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_vl_policing_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 63, i32 noundef 63, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.313)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 63) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 63, i32 noundef 63) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %maxlen = getelementptr inbounds %struct.sja1105_vl_policing_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i16 = tail call i32 @packing(ptr noundef %buf, ptr noundef %maxlen, i32 noundef 62, i32 noundef 52, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.314)
  switch i32 %call.i16, label %sja1105_packing.exit.if.end23.i21_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit22_crit_edge
    i32 -22, label %do.end.i18
    i32 -34, label %if.then7.i19
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit22_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit22

sja1105_packing.exit.if.end23.i21_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i21

do.end.i18:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 62, i32 noundef 52) #13
  br label %if.end23.i21

if.then7.i19:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %maxlen to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %maxlen, align 8
  %call20.i20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 62, i32 noundef 52) #13
  br label %if.end23.i21

if.end23.i21:                                     ; preds = %if.then7.i19, %do.end.i18, %sja1105_packing.exit.if.end23.i21_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit22

sja1105_packing.exit22:                           ; preds = %if.end23.i21, %sja1105_packing.exit.sja1105_packing.exit22_crit_edge
  %sharindx = getelementptr inbounds %struct.sja1105_vl_policing_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i23 = tail call i32 @packing(ptr noundef %buf, ptr noundef %sharindx, i32 noundef 51, i32 noundef 42, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.315)
  switch i32 %call.i23, label %sja1105_packing.exit22.if.end23.i28_crit_edge [
    i32 0, label %sja1105_packing.exit22.sja1105_packing.exit29_crit_edge
    i32 -22, label %do.end.i25
    i32 -34, label %if.then7.i26
  ], !prof !82

sja1105_packing.exit22.sja1105_packing.exit29_crit_edge: ; preds = %sja1105_packing.exit22
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit29

sja1105_packing.exit22.if.end23.i28_crit_edge:    ; preds = %sja1105_packing.exit22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i28

do.end.i25:                                       ; preds = %sja1105_packing.exit22
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 51, i32 noundef 42) #13
  br label %if.end23.i28

if.then7.i26:                                     ; preds = %sja1105_packing.exit22
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %sharindx to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %sharindx, align 8
  %call20.i27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 51, i32 noundef 42) #13
  br label %if.end23.i28

if.end23.i28:                                     ; preds = %if.then7.i26, %do.end.i25, %sja1105_packing.exit22.if.end23.i28_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit29

sja1105_packing.exit29:                           ; preds = %if.end23.i28, %sja1105_packing.exit22.sja1105_packing.exit29_crit_edge
  %9 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %entry_ptr, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %cmp = icmp eq i64 %10, 0
  br i1 %cmp, label %if.then, label %sja1105_packing.exit29.if.end_crit_edge

sja1105_packing.exit29.if.end_crit_edge:          ; preds = %sja1105_packing.exit29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %sja1105_packing.exit29
  %bag = getelementptr inbounds %struct.sja1105_vl_policing_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i30 = tail call i32 @packing(ptr noundef %buf, ptr noundef %bag, i32 noundef 41, i32 noundef 28, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %11 = zext i32 %call.i30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.316)
  switch i32 %call.i30, label %if.then.if.end23.i35_crit_edge [
    i32 0, label %if.then.sja1105_packing.exit36_crit_edge
    i32 -22, label %do.end.i32
    i32 -34, label %if.then7.i33
  ], !prof !82

if.then.sja1105_packing.exit36_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit36

if.then.if.end23.i35_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i35

do.end.i32:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 28) #13
  br label %if.end23.i35

if.then7.i33:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %bag to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %bag, align 8
  %call20.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %13, i32 noundef 41, i32 noundef 28) #13
  br label %if.end23.i35

if.end23.i35:                                     ; preds = %if.then7.i33, %do.end.i32, %if.then.if.end23.i35_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit36

sja1105_packing.exit36:                           ; preds = %if.end23.i35, %if.then.sja1105_packing.exit36_crit_edge
  %jitter = getelementptr inbounds %struct.sja1105_vl_policing_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i37 = tail call i32 @packing(ptr noundef %buf, ptr noundef %jitter, i32 noundef 27, i32 noundef 18, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %14 = zext i32 %call.i37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.317)
  switch i32 %call.i37, label %sja1105_packing.exit36.if.end23.i42_crit_edge [
    i32 0, label %sja1105_packing.exit36.if.end_crit_edge
    i32 -22, label %do.end.i39
    i32 -34, label %if.then7.i40
  ], !prof !82

sja1105_packing.exit36.if.end_crit_edge:          ; preds = %sja1105_packing.exit36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sja1105_packing.exit36.if.end23.i42_crit_edge:    ; preds = %sja1105_packing.exit36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i42

do.end.i39:                                       ; preds = %sja1105_packing.exit36
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 27, i32 noundef 18) #13
  br label %if.end23.i42

if.then7.i40:                                     ; preds = %sja1105_packing.exit36
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %jitter to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %jitter, align 8
  %call20.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %16, i32 noundef 27, i32 noundef 18) #13
  br label %if.end23.i42

if.end23.i42:                                     ; preds = %if.then7.i40, %do.end.i39, %sja1105_packing.exit36.if.end23.i42_crit_edge
  tail call void @dump_stack() #13
  br label %if.end

if.end:                                           ; preds = %if.end23.i42, %sja1105_packing.exit36.if.end_crit_edge, %sja1105_packing.exit29.if.end_crit_edge
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_vl_forwarding_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.318)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 31) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 31, i32 noundef 31) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %priority = getelementptr inbounds %struct.sja1105_vl_forwarding_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i11 = tail call i32 @packing(ptr noundef %buf, ptr noundef %priority, i32 noundef 30, i32 noundef 28, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.319)
  switch i32 %call.i11, label %sja1105_packing.exit.if.end23.i16_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit17_crit_edge
    i32 -22, label %do.end.i13
    i32 -34, label %if.then7.i14
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit17_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit17

sja1105_packing.exit.if.end23.i16_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i16

do.end.i13:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 30, i32 noundef 28) #13
  br label %if.end23.i16

if.then7.i14:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %priority to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priority, align 8
  %call20.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 30, i32 noundef 28) #13
  br label %if.end23.i16

if.end23.i16:                                     ; preds = %if.then7.i14, %do.end.i13, %sja1105_packing.exit.if.end23.i16_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit17

sja1105_packing.exit17:                           ; preds = %if.end23.i16, %sja1105_packing.exit.sja1105_packing.exit17_crit_edge
  %partition = getelementptr inbounds %struct.sja1105_vl_forwarding_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i18 = tail call i32 @packing(ptr noundef %buf, ptr noundef %partition, i32 noundef 27, i32 noundef 25, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.320)
  switch i32 %call.i18, label %sja1105_packing.exit17.if.end23.i23_crit_edge [
    i32 0, label %sja1105_packing.exit17.sja1105_packing.exit24_crit_edge
    i32 -22, label %do.end.i20
    i32 -34, label %if.then7.i21
  ], !prof !82

sja1105_packing.exit17.sja1105_packing.exit24_crit_edge: ; preds = %sja1105_packing.exit17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit24

sja1105_packing.exit17.if.end23.i23_crit_edge:    ; preds = %sja1105_packing.exit17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i23

do.end.i20:                                       ; preds = %sja1105_packing.exit17
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 27, i32 noundef 25) #13
  br label %if.end23.i23

if.then7.i21:                                     ; preds = %sja1105_packing.exit17
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %partition to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %partition, align 8
  %call20.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 27, i32 noundef 25) #13
  br label %if.end23.i23

if.end23.i23:                                     ; preds = %if.then7.i21, %do.end.i20, %sja1105_packing.exit17.if.end23.i23_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit24

sja1105_packing.exit24:                           ; preds = %if.end23.i23, %sja1105_packing.exit17.sja1105_packing.exit24_crit_edge
  %destports = getelementptr inbounds %struct.sja1105_vl_forwarding_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i25 = tail call i32 @packing(ptr noundef %buf, ptr noundef %destports, i32 noundef 24, i32 noundef 20, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.321)
  switch i32 %call.i25, label %sja1105_packing.exit24.if.end23.i30_crit_edge [
    i32 0, label %sja1105_packing.exit24.sja1105_packing.exit31_crit_edge
    i32 -22, label %do.end.i27
    i32 -34, label %if.then7.i28
  ], !prof !82

sja1105_packing.exit24.sja1105_packing.exit31_crit_edge: ; preds = %sja1105_packing.exit24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit31

sja1105_packing.exit24.if.end23.i30_crit_edge:    ; preds = %sja1105_packing.exit24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i30

do.end.i27:                                       ; preds = %sja1105_packing.exit24
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 20) #13
  br label %if.end23.i30

if.then7.i28:                                     ; preds = %sja1105_packing.exit24
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %destports to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %destports, align 8
  %call20.i29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 24, i32 noundef 20) #13
  br label %if.end23.i30

if.end23.i30:                                     ; preds = %if.then7.i28, %do.end.i27, %sja1105_packing.exit24.if.end23.i30_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit31

sja1105_packing.exit31:                           ; preds = %if.end23.i30, %sja1105_packing.exit24.sja1105_packing.exit31_crit_edge
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_schedule_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 25, i32 noundef 16, i32 noundef 12, i32 noundef %op)
  %arrayidx.1 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.1, i32 noundef 35, i32 noundef 26, i32 noundef 12, i32 noundef %op)
  %arrayidx.2 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.2, i32 noundef 45, i32 noundef 36, i32 noundef 12, i32 noundef %op)
  %arrayidx.3 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.3, i32 noundef 55, i32 noundef 46, i32 noundef 12, i32 noundef %op)
  %arrayidx.4 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.4, i32 noundef 65, i32 noundef 56, i32 noundef 12, i32 noundef %op)
  %arrayidx.5 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.5, i32 noundef 75, i32 noundef 66, i32 noundef 12, i32 noundef %op)
  %arrayidx.6 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 6
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.6, i32 noundef 85, i32 noundef 76, i32 noundef 12, i32 noundef %op)
  %arrayidx.7 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 7
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.7, i32 noundef 95, i32 noundef 86, i32 noundef 12, i32 noundef %op)
  ret i32 12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_schedule_entry_points_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 31, i32 noundef 30, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.322)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 30) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 31, i32 noundef 30) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %actsubsch = getelementptr inbounds %struct.sja1105_schedule_entry_points_params_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i5 = tail call i32 @packing(ptr noundef %buf, ptr noundef %actsubsch, i32 noundef 29, i32 noundef 27, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.323)
  switch i32 %call.i5, label %sja1105_packing.exit.if.end23.i10_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit11_crit_edge
    i32 -22, label %do.end.i7
    i32 -34, label %if.then7.i8
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit11_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit11

sja1105_packing.exit.if.end23.i10_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i10

do.end.i7:                                        ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 29, i32 noundef 27) #13
  br label %if.end23.i10

if.then7.i8:                                      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %actsubsch to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %actsubsch, align 8
  %call20.i9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 29, i32 noundef 27) #13
  br label %if.end23.i10

if.end23.i10:                                     ; preds = %if.then7.i8, %do.end.i7, %sja1105_packing.exit.if.end23.i10_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit11

sja1105_packing.exit11:                           ; preds = %if.end23.i10, %sja1105_packing.exit.sja1105_packing.exit11_crit_edge
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1105_vl_forwarding_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 25, i32 noundef 16, i32 noundef 12, i32 noundef %op)
  %arrayidx.1 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.1, i32 noundef 35, i32 noundef 26, i32 noundef 12, i32 noundef %op)
  %arrayidx.2 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.2, i32 noundef 45, i32 noundef 36, i32 noundef 12, i32 noundef %op)
  %arrayidx.3 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.3, i32 noundef 55, i32 noundef 46, i32 noundef 12, i32 noundef %op)
  %arrayidx.4 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.4, i32 noundef 65, i32 noundef 56, i32 noundef 12, i32 noundef %op)
  %arrayidx.5 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.5, i32 noundef 75, i32 noundef 66, i32 noundef 12, i32 noundef %op)
  %arrayidx.6 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 6
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.6, i32 noundef 85, i32 noundef 76, i32 noundef 12, i32 noundef %op)
  %arrayidx.7 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 7
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.7, i32 noundef 95, i32 noundef 86, i32 noundef 12, i32 noundef %op)
  %debugen = getelementptr inbounds %struct.sja1105_vl_forwarding_params_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %debugen, i32 noundef 15, i32 noundef 15, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.324)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 15, i32 noundef 15) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %debugen to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %debugen, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 15, i32 noundef 15) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  ret i32 12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1110_schedule_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 95, i32 noundef 84, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.325)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 84) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 95, i32 noundef 84) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %winend = getelementptr inbounds %struct.sja1105_schedule_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i29 = tail call i32 @packing(ptr noundef %buf, ptr noundef %winend, i32 noundef 83, i32 noundef 83, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.326)
  switch i32 %call.i29, label %sja1105_packing.exit.if.end23.i34_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit35_crit_edge
    i32 -22, label %do.end.i31
    i32 -34, label %if.then7.i32
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit35_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit35

sja1105_packing.exit.if.end23.i34_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i34

do.end.i31:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 83, i32 noundef 83) #13
  br label %if.end23.i34

if.then7.i32:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %winend to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %winend, align 8
  %call20.i33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 83, i32 noundef 83) #13
  br label %if.end23.i34

if.end23.i34:                                     ; preds = %if.then7.i32, %do.end.i31, %sja1105_packing.exit.if.end23.i34_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit35

sja1105_packing.exit35:                           ; preds = %if.end23.i34, %sja1105_packing.exit.sja1105_packing.exit35_crit_edge
  %winst = getelementptr inbounds %struct.sja1105_schedule_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i36 = tail call i32 @packing(ptr noundef %buf, ptr noundef %winst, i32 noundef 82, i32 noundef 82, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.327)
  switch i32 %call.i36, label %sja1105_packing.exit35.if.end23.i41_crit_edge [
    i32 0, label %sja1105_packing.exit35.sja1105_packing.exit42_crit_edge
    i32 -22, label %do.end.i38
    i32 -34, label %if.then7.i39
  ], !prof !82

sja1105_packing.exit35.sja1105_packing.exit42_crit_edge: ; preds = %sja1105_packing.exit35
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit42

sja1105_packing.exit35.if.end23.i41_crit_edge:    ; preds = %sja1105_packing.exit35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i41

do.end.i38:                                       ; preds = %sja1105_packing.exit35
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 82, i32 noundef 82) #13
  br label %if.end23.i41

if.then7.i39:                                     ; preds = %sja1105_packing.exit35
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %winst to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %winst, align 8
  %call20.i40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 82, i32 noundef 82) #13
  br label %if.end23.i41

if.end23.i41:                                     ; preds = %if.then7.i39, %do.end.i38, %sja1105_packing.exit35.if.end23.i41_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit42

sja1105_packing.exit42:                           ; preds = %if.end23.i41, %sja1105_packing.exit35.sja1105_packing.exit42_crit_edge
  %destports = getelementptr inbounds %struct.sja1105_schedule_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i43 = tail call i32 @packing(ptr noundef %buf, ptr noundef %destports, i32 noundef 81, i32 noundef 71, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.328)
  switch i32 %call.i43, label %sja1105_packing.exit42.if.end23.i48_crit_edge [
    i32 0, label %sja1105_packing.exit42.sja1105_packing.exit49_crit_edge
    i32 -22, label %do.end.i45
    i32 -34, label %if.then7.i46
  ], !prof !82

sja1105_packing.exit42.sja1105_packing.exit49_crit_edge: ; preds = %sja1105_packing.exit42
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit49

sja1105_packing.exit42.if.end23.i48_crit_edge:    ; preds = %sja1105_packing.exit42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i48

do.end.i45:                                       ; preds = %sja1105_packing.exit42
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 81, i32 noundef 71) #13
  br label %if.end23.i48

if.then7.i46:                                     ; preds = %sja1105_packing.exit42
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %destports to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %destports, align 8
  %call20.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 81, i32 noundef 71) #13
  br label %if.end23.i48

if.end23.i48:                                     ; preds = %if.then7.i46, %do.end.i45, %sja1105_packing.exit42.if.end23.i48_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit49

sja1105_packing.exit49:                           ; preds = %if.end23.i48, %sja1105_packing.exit42.sja1105_packing.exit49_crit_edge
  %setvalid = getelementptr inbounds %struct.sja1105_schedule_entry, ptr %entry_ptr, i32 0, i32 4
  %call.i50 = tail call i32 @packing(ptr noundef %buf, ptr noundef %setvalid, i32 noundef 70, i32 noundef 70, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %12 = zext i32 %call.i50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.329)
  switch i32 %call.i50, label %sja1105_packing.exit49.if.end23.i55_crit_edge [
    i32 0, label %sja1105_packing.exit49.sja1105_packing.exit56_crit_edge
    i32 -22, label %do.end.i52
    i32 -34, label %if.then7.i53
  ], !prof !82

sja1105_packing.exit49.sja1105_packing.exit56_crit_edge: ; preds = %sja1105_packing.exit49
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit56

sja1105_packing.exit49.if.end23.i55_crit_edge:    ; preds = %sja1105_packing.exit49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i55

do.end.i52:                                       ; preds = %sja1105_packing.exit49
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 70) #13
  br label %if.end23.i55

if.then7.i53:                                     ; preds = %sja1105_packing.exit49
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %setvalid to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %setvalid, align 8
  %call20.i54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %14, i32 noundef 70, i32 noundef 70) #13
  br label %if.end23.i55

if.end23.i55:                                     ; preds = %if.then7.i53, %do.end.i52, %sja1105_packing.exit49.if.end23.i55_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit56

sja1105_packing.exit56:                           ; preds = %if.end23.i55, %sja1105_packing.exit49.sja1105_packing.exit56_crit_edge
  %txen = getelementptr inbounds %struct.sja1105_schedule_entry, ptr %entry_ptr, i32 0, i32 5
  %call.i57 = tail call i32 @packing(ptr noundef %buf, ptr noundef %txen, i32 noundef 69, i32 noundef 69, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %15 = zext i32 %call.i57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.330)
  switch i32 %call.i57, label %sja1105_packing.exit56.if.end23.i62_crit_edge [
    i32 0, label %sja1105_packing.exit56.sja1105_packing.exit63_crit_edge
    i32 -22, label %do.end.i59
    i32 -34, label %if.then7.i60
  ], !prof !82

sja1105_packing.exit56.sja1105_packing.exit63_crit_edge: ; preds = %sja1105_packing.exit56
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit63

sja1105_packing.exit56.if.end23.i62_crit_edge:    ; preds = %sja1105_packing.exit56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i62

do.end.i59:                                       ; preds = %sja1105_packing.exit56
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 69) #13
  br label %if.end23.i62

if.then7.i60:                                     ; preds = %sja1105_packing.exit56
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %txen to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %txen, align 8
  %call20.i61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %17, i32 noundef 69, i32 noundef 69) #13
  br label %if.end23.i62

if.end23.i62:                                     ; preds = %if.then7.i60, %do.end.i59, %sja1105_packing.exit56.if.end23.i62_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit63

sja1105_packing.exit63:                           ; preds = %if.end23.i62, %sja1105_packing.exit56.sja1105_packing.exit63_crit_edge
  %resmedia_en = getelementptr inbounds %struct.sja1105_schedule_entry, ptr %entry_ptr, i32 0, i32 6
  %call.i64 = tail call i32 @packing(ptr noundef %buf, ptr noundef %resmedia_en, i32 noundef 68, i32 noundef 68, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %18 = zext i32 %call.i64 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.331)
  switch i32 %call.i64, label %sja1105_packing.exit63.if.end23.i69_crit_edge [
    i32 0, label %sja1105_packing.exit63.sja1105_packing.exit70_crit_edge
    i32 -22, label %do.end.i66
    i32 -34, label %if.then7.i67
  ], !prof !82

sja1105_packing.exit63.sja1105_packing.exit70_crit_edge: ; preds = %sja1105_packing.exit63
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit70

sja1105_packing.exit63.if.end23.i69_crit_edge:    ; preds = %sja1105_packing.exit63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i69

do.end.i66:                                       ; preds = %sja1105_packing.exit63
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 68) #13
  br label %if.end23.i69

if.then7.i67:                                     ; preds = %sja1105_packing.exit63
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %resmedia_en to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %resmedia_en, align 8
  %call20.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %20, i32 noundef 68, i32 noundef 68) #13
  br label %if.end23.i69

if.end23.i69:                                     ; preds = %if.then7.i67, %do.end.i66, %sja1105_packing.exit63.if.end23.i69_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit70

sja1105_packing.exit70:                           ; preds = %if.end23.i69, %sja1105_packing.exit63.sja1105_packing.exit70_crit_edge
  %resmedia = getelementptr inbounds %struct.sja1105_schedule_entry, ptr %entry_ptr, i32 0, i32 7
  %call.i71 = tail call i32 @packing(ptr noundef %buf, ptr noundef %resmedia, i32 noundef 67, i32 noundef 60, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %21 = zext i32 %call.i71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.332)
  switch i32 %call.i71, label %sja1105_packing.exit70.if.end23.i76_crit_edge [
    i32 0, label %sja1105_packing.exit70.sja1105_packing.exit77_crit_edge
    i32 -22, label %do.end.i73
    i32 -34, label %if.then7.i74
  ], !prof !82

sja1105_packing.exit70.sja1105_packing.exit77_crit_edge: ; preds = %sja1105_packing.exit70
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit77

sja1105_packing.exit70.if.end23.i76_crit_edge:    ; preds = %sja1105_packing.exit70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i76

do.end.i73:                                       ; preds = %sja1105_packing.exit70
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 60) #13
  br label %if.end23.i76

if.then7.i74:                                     ; preds = %sja1105_packing.exit70
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %resmedia to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %resmedia, align 8
  %call20.i75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %23, i32 noundef 67, i32 noundef 60) #13
  br label %if.end23.i76

if.end23.i76:                                     ; preds = %if.then7.i74, %do.end.i73, %sja1105_packing.exit70.if.end23.i76_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit77

sja1105_packing.exit77:                           ; preds = %if.end23.i76, %sja1105_packing.exit70.sja1105_packing.exit77_crit_edge
  %vlindex = getelementptr inbounds %struct.sja1105_schedule_entry, ptr %entry_ptr, i32 0, i32 8
  %call.i78 = tail call i32 @packing(ptr noundef %buf, ptr noundef %vlindex, i32 noundef 59, i32 noundef 48, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %24 = zext i32 %call.i78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.333)
  switch i32 %call.i78, label %sja1105_packing.exit77.if.end23.i83_crit_edge [
    i32 0, label %sja1105_packing.exit77.sja1105_packing.exit84_crit_edge
    i32 -22, label %do.end.i80
    i32 -34, label %if.then7.i81
  ], !prof !82

sja1105_packing.exit77.sja1105_packing.exit84_crit_edge: ; preds = %sja1105_packing.exit77
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit84

sja1105_packing.exit77.if.end23.i83_crit_edge:    ; preds = %sja1105_packing.exit77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i83

do.end.i80:                                       ; preds = %sja1105_packing.exit77
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 59, i32 noundef 48) #13
  br label %if.end23.i83

if.then7.i81:                                     ; preds = %sja1105_packing.exit77
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %vlindex to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %vlindex, align 8
  %call20.i82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %26, i32 noundef 59, i32 noundef 48) #13
  br label %if.end23.i83

if.end23.i83:                                     ; preds = %if.then7.i81, %do.end.i80, %sja1105_packing.exit77.if.end23.i83_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit84

sja1105_packing.exit84:                           ; preds = %if.end23.i83, %sja1105_packing.exit77.sja1105_packing.exit84_crit_edge
  %delta = getelementptr inbounds %struct.sja1105_schedule_entry, ptr %entry_ptr, i32 0, i32 9
  %call.i85 = tail call i32 @packing(ptr noundef %buf, ptr noundef %delta, i32 noundef 47, i32 noundef 30, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %27 = zext i32 %call.i85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.334)
  switch i32 %call.i85, label %sja1105_packing.exit84.if.end23.i90_crit_edge [
    i32 0, label %sja1105_packing.exit84.sja1105_packing.exit91_crit_edge
    i32 -22, label %do.end.i87
    i32 -34, label %if.then7.i88
  ], !prof !82

sja1105_packing.exit84.sja1105_packing.exit91_crit_edge: ; preds = %sja1105_packing.exit84
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit91

sja1105_packing.exit84.if.end23.i90_crit_edge:    ; preds = %sja1105_packing.exit84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i90

do.end.i87:                                       ; preds = %sja1105_packing.exit84
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 30) #13
  br label %if.end23.i90

if.then7.i88:                                     ; preds = %sja1105_packing.exit84
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %delta to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %delta, align 8
  %call20.i89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %29, i32 noundef 47, i32 noundef 30) #13
  br label %if.end23.i90

if.end23.i90:                                     ; preds = %if.then7.i88, %do.end.i87, %sja1105_packing.exit84.if.end23.i90_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit91

sja1105_packing.exit91:                           ; preds = %if.end23.i90, %sja1105_packing.exit84.sja1105_packing.exit91_crit_edge
  ret i32 12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1110_schedule_entry_points_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 63, i32 noundef 61, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.335)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 63, i32 noundef 61) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 63, i32 noundef 61) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %delta = getelementptr inbounds %struct.sja1105_schedule_entry_points_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i8 = tail call i32 @packing(ptr noundef %buf, ptr noundef %delta, i32 noundef 60, i32 noundef 43, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.336)
  switch i32 %call.i8, label %sja1105_packing.exit.if.end23.i13_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit14_crit_edge
    i32 -22, label %do.end.i10
    i32 -34, label %if.then7.i11
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit14_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit14

sja1105_packing.exit.if.end23.i13_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i13

do.end.i10:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 43) #13
  br label %if.end23.i13

if.then7.i11:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %delta to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %delta, align 8
  %call20.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 60, i32 noundef 43) #13
  br label %if.end23.i13

if.end23.i13:                                     ; preds = %if.then7.i11, %do.end.i10, %sja1105_packing.exit.if.end23.i13_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit14

sja1105_packing.exit14:                           ; preds = %if.end23.i13, %sja1105_packing.exit.sja1105_packing.exit14_crit_edge
  %address = getelementptr inbounds %struct.sja1105_schedule_entry_points_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i15 = tail call i32 @packing(ptr noundef %buf, ptr noundef %address, i32 noundef 42, i32 noundef 31, i32 noundef 8, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.337)
  switch i32 %call.i15, label %sja1105_packing.exit14.if.end23.i20_crit_edge [
    i32 0, label %sja1105_packing.exit14.sja1105_packing.exit21_crit_edge
    i32 -22, label %do.end.i17
    i32 -34, label %if.then7.i18
  ], !prof !82

sja1105_packing.exit14.sja1105_packing.exit21_crit_edge: ; preds = %sja1105_packing.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit21

sja1105_packing.exit14.if.end23.i20_crit_edge:    ; preds = %sja1105_packing.exit14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i20

do.end.i17:                                       ; preds = %sja1105_packing.exit14
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 42, i32 noundef 31) #13
  br label %if.end23.i20

if.then7.i18:                                     ; preds = %sja1105_packing.exit14
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %address to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %address, align 8
  %call20.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 42, i32 noundef 31) #13
  br label %if.end23.i20

if.end23.i20:                                     ; preds = %if.then7.i18, %do.end.i17, %sja1105_packing.exit14.if.end23.i20_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit21

sja1105_packing.exit21:                           ; preds = %if.end23.i20, %sja1105_packing.exit14.sja1105_packing.exit21_crit_edge
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1110_vl_forwarding_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 31, i32 noundef 31, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.338)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 31) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_ptr to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %entry_ptr, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 31, i32 noundef 31) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  %priority = getelementptr inbounds %struct.sja1105_vl_forwarding_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i11 = tail call i32 @packing(ptr noundef %buf, ptr noundef %priority, i32 noundef 30, i32 noundef 28, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %3 = zext i32 %call.i11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.339)
  switch i32 %call.i11, label %sja1105_packing.exit.if.end23.i16_crit_edge [
    i32 0, label %sja1105_packing.exit.sja1105_packing.exit17_crit_edge
    i32 -22, label %do.end.i13
    i32 -34, label %if.then7.i14
  ], !prof !82

sja1105_packing.exit.sja1105_packing.exit17_crit_edge: ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit17

sja1105_packing.exit.if.end23.i16_crit_edge:      ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i16

do.end.i13:                                       ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 30, i32 noundef 28) #13
  br label %if.end23.i16

if.then7.i14:                                     ; preds = %sja1105_packing.exit
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %priority to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priority, align 8
  %call20.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %5, i32 noundef 30, i32 noundef 28) #13
  br label %if.end23.i16

if.end23.i16:                                     ; preds = %if.then7.i14, %do.end.i13, %sja1105_packing.exit.if.end23.i16_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit17

sja1105_packing.exit17:                           ; preds = %if.end23.i16, %sja1105_packing.exit.sja1105_packing.exit17_crit_edge
  %partition = getelementptr inbounds %struct.sja1105_vl_forwarding_entry, ptr %entry_ptr, i32 0, i32 2
  %call.i18 = tail call i32 @packing(ptr noundef %buf, ptr noundef %partition, i32 noundef 27, i32 noundef 25, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %6 = zext i32 %call.i18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.340)
  switch i32 %call.i18, label %sja1105_packing.exit17.if.end23.i23_crit_edge [
    i32 0, label %sja1105_packing.exit17.sja1105_packing.exit24_crit_edge
    i32 -22, label %do.end.i20
    i32 -34, label %if.then7.i21
  ], !prof !82

sja1105_packing.exit17.sja1105_packing.exit24_crit_edge: ; preds = %sja1105_packing.exit17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit24

sja1105_packing.exit17.if.end23.i23_crit_edge:    ; preds = %sja1105_packing.exit17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i23

do.end.i20:                                       ; preds = %sja1105_packing.exit17
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 27, i32 noundef 25) #13
  br label %if.end23.i23

if.then7.i21:                                     ; preds = %sja1105_packing.exit17
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %partition to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %partition, align 8
  %call20.i22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %8, i32 noundef 27, i32 noundef 25) #13
  br label %if.end23.i23

if.end23.i23:                                     ; preds = %if.then7.i21, %do.end.i20, %sja1105_packing.exit17.if.end23.i23_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit24

sja1105_packing.exit24:                           ; preds = %if.end23.i23, %sja1105_packing.exit17.sja1105_packing.exit24_crit_edge
  %destports = getelementptr inbounds %struct.sja1105_vl_forwarding_entry, ptr %entry_ptr, i32 0, i32 3
  %call.i25 = tail call i32 @packing(ptr noundef %buf, ptr noundef %destports, i32 noundef 24, i32 noundef 14, i32 noundef 4, i32 noundef %op, i8 noundef zeroext 4) #10
  %9 = zext i32 %call.i25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.341)
  switch i32 %call.i25, label %sja1105_packing.exit24.if.end23.i30_crit_edge [
    i32 0, label %sja1105_packing.exit24.sja1105_packing.exit31_crit_edge
    i32 -22, label %do.end.i27
    i32 -34, label %if.then7.i28
  ], !prof !82

sja1105_packing.exit24.sja1105_packing.exit31_crit_edge: ; preds = %sja1105_packing.exit24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit31

sja1105_packing.exit24.if.end23.i30_crit_edge:    ; preds = %sja1105_packing.exit24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i30

do.end.i27:                                       ; preds = %sja1105_packing.exit24
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 14) #13
  br label %if.end23.i30

if.then7.i28:                                     ; preds = %sja1105_packing.exit24
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %destports to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %destports, align 8
  %call20.i29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %11, i32 noundef 24, i32 noundef 14) #13
  br label %if.end23.i30

if.end23.i30:                                     ; preds = %if.then7.i28, %do.end.i27, %sja1105_packing.exit24.if.end23.i30_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit31

sja1105_packing.exit31:                           ; preds = %if.end23.i30, %sja1105_packing.exit24.sja1105_packing.exit31_crit_edge
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1110_schedule_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 11, i32 noundef 0, i32 noundef 12, i32 noundef %op)
  %arrayidx.1 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.1, i32 noundef 23, i32 noundef 12, i32 noundef 12, i32 noundef %op)
  %arrayidx.2 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.2, i32 noundef 35, i32 noundef 24, i32 noundef 12, i32 noundef %op)
  %arrayidx.3 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.3, i32 noundef 47, i32 noundef 36, i32 noundef 12, i32 noundef %op)
  %arrayidx.4 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.4, i32 noundef 59, i32 noundef 48, i32 noundef 12, i32 noundef %op)
  %arrayidx.5 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.5, i32 noundef 71, i32 noundef 60, i32 noundef 12, i32 noundef %op)
  %arrayidx.6 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 6
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.6, i32 noundef 83, i32 noundef 72, i32 noundef 12, i32 noundef %op)
  %arrayidx.7 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 7
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.7, i32 noundef 95, i32 noundef 84, i32 noundef 12, i32 noundef %op)
  ret i32 12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1110_vl_forwarding_params_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 18, i32 noundef 8, i32 noundef 12, i32 noundef %op)
  %arrayidx.1 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.1, i32 noundef 29, i32 noundef 19, i32 noundef 12, i32 noundef %op)
  %arrayidx.2 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.2, i32 noundef 40, i32 noundef 30, i32 noundef 12, i32 noundef %op)
  %arrayidx.3 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.3, i32 noundef 51, i32 noundef 41, i32 noundef 12, i32 noundef %op)
  %arrayidx.4 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.4, i32 noundef 62, i32 noundef 52, i32 noundef 12, i32 noundef %op)
  %arrayidx.5 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.5, i32 noundef 73, i32 noundef 63, i32 noundef 12, i32 noundef %op)
  %arrayidx.6 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 6
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.6, i32 noundef 84, i32 noundef 74, i32 noundef 12, i32 noundef %op)
  %arrayidx.7 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 7
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.7, i32 noundef 95, i32 noundef 85, i32 noundef 12, i32 noundef %op)
  %debugen = getelementptr inbounds %struct.sja1105_vl_forwarding_params_entry, ptr %entry_ptr, i32 0, i32 1
  %call.i = tail call i32 @packing(ptr noundef %buf, ptr noundef %debugen, i32 noundef 7, i32 noundef 7, i32 noundef 12, i32 noundef %op, i8 noundef zeroext 4) #10
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.342)
  switch i32 %call.i, label %entry.if.end23.i_crit_edge [
    i32 0, label %entry.sja1105_packing.exit_crit_edge
    i32 -22, label %do.end.i
    i32 -34, label %if.then7.i
  ], !prof !82

entry.sja1105_packing.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sja1105_packing.exit

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 7, i32 noundef 7) #13
  br label %if.end23.i

if.then7.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %debugen to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %debugen, align 8
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i64 noundef %2, i32 noundef 7, i32 noundef 7) #13
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then7.i, %do.end.i, %entry.if.end23.i_crit_edge
  tail call void @dump_stack() #13
  br label %sja1105_packing.exit

sja1105_packing.exit:                             ; preds = %if.end23.i, %entry.sja1105_packing.exit_crit_edge
  ret i32 12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sja1110_pcp_remapping_entry_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef %op) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %entry_ptr, i32 noundef 10, i32 noundef 8, i32 noundef 4, i32 noundef %op)
  %arrayidx.1 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 1
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.1, i32 noundef 13, i32 noundef 11, i32 noundef 4, i32 noundef %op)
  %arrayidx.2 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 2
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.2, i32 noundef 16, i32 noundef 14, i32 noundef 4, i32 noundef %op)
  %arrayidx.3 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 3
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.3, i32 noundef 19, i32 noundef 17, i32 noundef 4, i32 noundef %op)
  %arrayidx.4 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 4
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.4, i32 noundef 22, i32 noundef 20, i32 noundef 4, i32 noundef %op)
  %arrayidx.5 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 5
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.5, i32 noundef 25, i32 noundef 23, i32 noundef 4, i32 noundef %op)
  %arrayidx.6 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 6
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.6, i32 noundef 28, i32 noundef 26, i32 noundef 4, i32 noundef %op)
  %arrayidx.7 = getelementptr [8 x i64], ptr %entry_ptr, i32 0, i32 7
  tail call void @sja1105_packing(ptr noundef %buf, ptr noundef %arrayidx.7, i32 noundef 31, i32 noundef 29, i32 noundef 4, i32 noundef %op)
  ret i32 4
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_static_config_init(ptr nocapture noundef writeonly %config, ptr noundef %static_ops, i64 noundef %device_id) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %config, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 256)
  %arrayidx2 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %static_ops, ptr %arrayidx2, align 4
  %arrayidx.1 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 1
  %arrayidx2.1 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx.1, ptr %arrayidx2.1, align 4
  %arrayidx.2 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 2
  %arrayidx2.2 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx.2, ptr %arrayidx2.2, align 4
  %arrayidx.3 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 3
  %arrayidx2.3 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx.3, ptr %arrayidx2.3, align 4
  %arrayidx.4 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 4
  %arrayidx2.4 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx.4, ptr %arrayidx2.4, align 4
  %arrayidx.5 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 5
  %arrayidx2.5 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx.5, ptr %arrayidx2.5, align 4
  %arrayidx.6 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 6
  %arrayidx2.6 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx.6, ptr %arrayidx2.6, align 4
  %arrayidx.7 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 7
  %arrayidx2.7 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 7
  %9 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx.7, ptr %arrayidx2.7, align 4
  %arrayidx.8 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 8
  %arrayidx2.8 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 8
  %10 = ptrtoint ptr %arrayidx2.8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.8, ptr %arrayidx2.8, align 4
  %arrayidx.9 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 9
  %arrayidx2.9 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 9
  %11 = ptrtoint ptr %arrayidx2.9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.9, ptr %arrayidx2.9, align 4
  %arrayidx.10 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 10
  %arrayidx2.10 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 10
  %12 = ptrtoint ptr %arrayidx2.10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx.10, ptr %arrayidx2.10, align 4
  %arrayidx.11 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 11
  %arrayidx2.11 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 11
  %13 = ptrtoint ptr %arrayidx2.11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.11, ptr %arrayidx2.11, align 4
  %arrayidx.12 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 12
  %arrayidx2.12 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 12
  %14 = ptrtoint ptr %arrayidx2.12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.12, ptr %arrayidx2.12, align 4
  %arrayidx.13 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 13
  %arrayidx2.13 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 13
  %15 = ptrtoint ptr %arrayidx2.13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx.13, ptr %arrayidx2.13, align 4
  %arrayidx.14 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 14
  %arrayidx2.14 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 14
  %16 = ptrtoint ptr %arrayidx2.14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx.14, ptr %arrayidx2.14, align 4
  %arrayidx.15 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 15
  %arrayidx2.15 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 15
  %17 = ptrtoint ptr %arrayidx2.15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx.15, ptr %arrayidx2.15, align 4
  %arrayidx.16 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 16
  %arrayidx2.16 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 16
  %18 = ptrtoint ptr %arrayidx2.16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx.16, ptr %arrayidx2.16, align 4
  %arrayidx.17 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 17
  %arrayidx2.17 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 17
  %19 = ptrtoint ptr %arrayidx2.17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx.17, ptr %arrayidx2.17, align 4
  %arrayidx.18 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 18
  %arrayidx2.18 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 18
  %20 = ptrtoint ptr %arrayidx2.18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx.18, ptr %arrayidx2.18, align 4
  %arrayidx.19 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 19
  %arrayidx2.19 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 19
  %21 = ptrtoint ptr %arrayidx2.19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx.19, ptr %arrayidx2.19, align 4
  %arrayidx.20 = getelementptr %struct.sja1105_table_ops, ptr %static_ops, i32 20
  %arrayidx2.20 = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 20
  %22 = ptrtoint ptr %arrayidx2.20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx.20, ptr %arrayidx2.20, align 4
  %23 = ptrtoint ptr %config to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %device_id, ptr %config, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sja1105_static_config_free(ptr nocapture noundef %config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.012 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %entry_count = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 %i.012, i32 1
  %0 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %entries = getelementptr %struct.sja1105_static_config, ptr %config, i32 0, i32 1, i32 %i.012, i32 2
  %2 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entries, align 4
  tail call void @kfree(ptr noundef %3) #10
  %4 = ptrtoint ptr %entry_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %entry_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sja1105_table_delete_entry(ptr nocapture noundef %table, i32 noundef %i) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %entry_count = getelementptr inbounds %struct.sja1105_table, ptr %table, i32 0, i32 1
  %0 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %entry_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %i)
  %cmp = icmp ult i32 %1, %i
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %entries1 = getelementptr inbounds %struct.sja1105_table, ptr %table, i32 0, i32 2
  %2 = ptrtoint ptr %entries1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %entries1, align 4
  %4 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table, align 4
  %unpacked_entry_size = getelementptr inbounds %struct.sja1105_table_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %unpacked_entry_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %unpacked_entry_size, align 4
  %mul = mul i32 %7, %i
  %add.ptr = getelementptr i8, ptr %3, i32 %mul
  %add = add i32 %i, 1
  %mul2 = mul i32 %7, %add
  %add.ptr3 = getelementptr i8, ptr %3, i32 %mul2
  %sub = sub i32 %1, %i
  %mul5 = mul i32 %7, %sub
  %8 = call ptr @memmove(ptr %add.ptr, ptr %add.ptr3, i32 %mul5)
  %9 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %entry_count, align 4
  %dec = add i32 %10, -1
  store i32 %dec, ptr %entry_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sja1105_table_resize(ptr nocapture noundef %table, i32 noundef %new_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %unpacked_entry_size = getelementptr inbounds %struct.sja1105_table_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %unpacked_entry_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %unpacked_entry_size, align 4
  %entries = getelementptr inbounds %struct.sja1105_table, ptr %table, i32 0, i32 2
  %4 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entries, align 4
  %max_entry_count = getelementptr inbounds %struct.sja1105_table_ops, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %max_entry_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_entry_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %new_count)
  %cmp = icmp ult i32 %7, %new_count
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %new_count, i32 %3) #10
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !85

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %10 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end3

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %entry_count = getelementptr inbounds %struct.sja1105_table, ptr %table, i32 0, i32 1
  %11 = ptrtoint ptr %entry_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %entry_count, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %new_count)
  %mul = mul i32 %13, %3
  %14 = call ptr @memcpy(ptr %call8.i.i, ptr %5, i32 %mul)
  %15 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i, ptr %entries, align 4
  %16 = ptrtoint ptr %entry_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %new_count, ptr %entry_count, align 4
  tail call void @kfree(ptr noundef %5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -34, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !23, !24, !25, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 26, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sja1105_pack._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sja1105_pack._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 30, i32 4}
!8 = !{ptr @sja1105_pack._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @sja1105_pack._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 33, i32 4}
!12 = !{ptr @sja1105_pack._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @sja1105_pack._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 48, i32 3}
!16 = !{ptr @sja1105_unpack._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @sja1105_unpack._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @sja1105_unpack._entry.10, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 51, i32 3}
!20 = !{ptr @sja1105_unpack._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 65, i32 3}
!23 = !{ptr @sja1105_packing._entry, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @sja1105_packing._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @sja1105_packing._entry.13, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 69, i32 4}
!27 = !{ptr @sja1105_packing._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @sja1105_packing._entry.15, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 72, i32 4}
!30 = !{ptr @sja1105_packing._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 985, i32 24}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 987, i32 3}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 990, i32 3}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 994, i32 3}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 997, i32 3}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 999, i32 3}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 1001, i32 3}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 1003, i32 3}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 1005, i32 3}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 1007, i32 3}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 1009, i32 3}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 1011, i32 3}
!55 = !{ptr @sja1105_static_config_error_msg, !56, !"sja1105_static_config_error_msg", i1 false, i1 false}
!56 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 984, i32 13}
!57 = !{ptr @sja1105e_table_ops, !58, !"sja1105e_table_ops", i1 false, i1 false}
!58 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 1199, i32 32}
!59 = !{ptr @sja1105t_table_ops, !60, !"sja1105t_table_ops", i1 false, i1 false}
!60 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 1269, i32 32}
!61 = !{ptr @sja1105p_table_ops, !62, !"sja1105p_table_ops", i1 false, i1 false}
!62 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 1387, i32 32}
!63 = !{ptr @sja1105q_table_ops, !64, !"sja1105q_table_ops", i1 false, i1 false}
!64 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 1457, i32 32}
!65 = !{ptr @sja1105r_table_ops, !66, !"sja1105r_table_ops", i1 false, i1 false}
!66 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 1575, i32 32}
!67 = !{ptr @sja1105s_table_ops, !68, !"sja1105s_table_ops", i1 false, i1 false}
!68 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 1645, i32 32}
!69 = !{ptr @sja1110_table_ops, !70, !"sja1110_table_ops", i1 false, i1 false}
!70 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 1763, i32 32}
!71 = !{ptr @blk_id_map, !72, !"blk_id_map", i1 false, i1 false}
!72 = !{!"../drivers/net/dsa/sja1105/sja1105_static_config.c", i32 961, i32 12}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"branch_weights", i32 1, i32 8000, i32 2, i32 1}
!83 = !{!"auto-init"}
!84 = !{i8 0, i8 2}
!85 = !{!"branch_weights", i32 1, i32 2000}
