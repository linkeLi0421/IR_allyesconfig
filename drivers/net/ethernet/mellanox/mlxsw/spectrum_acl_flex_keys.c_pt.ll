; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_afk_block = type { i16, ptr, i32 }
%struct.mlxsw_afk_ops = type { ptr, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp2_afk_block_layout = type { i16, %struct.mlxsw_item }
%struct.mlxsw_item = type { i16, i16, i16, i8, i8, i8, %union.anon, ptr }
%union.anon = type { i16 }

@mlxsw_sp1_afk_blocks = internal constant { [12 x %struct.mlxsw_afk_block], [48 x i8] } { [12 x %struct.mlxsw_afk_block] [%struct.mlxsw_afk_block { i16 16, ptr @mlxsw_sp_afk_element_info_l2_dmac, i32 5 }, %struct.mlxsw_afk_block { i16 17, ptr @mlxsw_sp_afk_element_info_l2_smac, i32 5 }, %struct.mlxsw_afk_block { i16 18, ptr @mlxsw_sp_afk_element_info_l2_smac_ex, i32 3 }, %struct.mlxsw_afk_block { i16 48, ptr @mlxsw_sp_afk_element_info_ipv4_sip, i32 3 }, %struct.mlxsw_afk_block { i16 49, ptr @mlxsw_sp_afk_element_info_ipv4_dip, i32 3 }, %struct.mlxsw_afk_block { i16 50, ptr @mlxsw_sp_afk_element_info_ipv4, i32 5 }, %struct.mlxsw_afk_block { i16 51, ptr @mlxsw_sp_afk_element_info_ipv4_ex, i32 4 }, %struct.mlxsw_afk_block { i16 96, ptr @mlxsw_sp_afk_element_info_ipv6_dip, i32 2 }, %struct.mlxsw_afk_block { i16 101, ptr @mlxsw_sp_afk_element_info_ipv6_ex1, i32 3 }, %struct.mlxsw_afk_block { i16 98, ptr @mlxsw_sp_afk_element_info_ipv6_sip, i32 2 }, %struct.mlxsw_afk_block { i16 99, ptr @mlxsw_sp_afk_element_info_ipv6_sip_ex, i32 2 }, %struct.mlxsw_afk_block { i16 176, ptr @mlxsw_sp_afk_element_info_packet_type, i32 1 }], [48 x i8] zeroinitializer }, align 32
@mlxsw_sp1_afk_ops = dso_local constant { %struct.mlxsw_afk_ops, [16 x i8] } { %struct.mlxsw_afk_ops { ptr @mlxsw_sp1_afk_blocks, i32 12, ptr @mlxsw_sp1_afk_encode_block, ptr @mlxsw_sp1_afk_clear_block }, [16 x i8] zeroinitializer }, align 32
@mlxsw_sp2_afk_blocks = internal constant { [18 x %struct.mlxsw_afk_block], [40 x i8] } { [18 x %struct.mlxsw_afk_block] [%struct.mlxsw_afk_block { i16 16, ptr @mlxsw_sp_afk_element_info_mac_0, i32 1 }, %struct.mlxsw_afk_block { i16 17, ptr @mlxsw_sp_afk_element_info_mac_1, i32 1 }, %struct.mlxsw_afk_block { i16 18, ptr @mlxsw_sp_afk_element_info_mac_2, i32 2 }, %struct.mlxsw_afk_block { i16 19, ptr @mlxsw_sp_afk_element_info_mac_3, i32 3 }, %struct.mlxsw_afk_block { i16 20, ptr @mlxsw_sp_afk_element_info_mac_4, i32 3 }, %struct.mlxsw_afk_block { i16 21, ptr @mlxsw_sp_afk_element_info_mac_5, i32 2 }, %struct.mlxsw_afk_block { i16 56, ptr @mlxsw_sp_afk_element_info_ipv4_0, i32 1 }, %struct.mlxsw_afk_block { i16 57, ptr @mlxsw_sp_afk_element_info_ipv4_1, i32 1 }, %struct.mlxsw_afk_block { i16 58, ptr @mlxsw_sp_afk_element_info_ipv4_2, i32 4 }, %struct.mlxsw_afk_block { i16 60, ptr @mlxsw_sp_afk_element_info_ipv4_4, i32 2 }, %struct.mlxsw_afk_block { i16 64, ptr @mlxsw_sp_afk_element_info_ipv6_0, i32 1 }, %struct.mlxsw_afk_block { i16 65, ptr @mlxsw_sp_afk_element_info_ipv6_1, i32 1 }, %struct.mlxsw_afk_block { i16 66, ptr @mlxsw_sp_afk_element_info_ipv6_2, i32 1 }, %struct.mlxsw_afk_block { i16 67, ptr @mlxsw_sp_afk_element_info_ipv6_3, i32 1 }, %struct.mlxsw_afk_block { i16 68, ptr @mlxsw_sp_afk_element_info_ipv6_4, i32 1 }, %struct.mlxsw_afk_block { i16 69, ptr @mlxsw_sp_afk_element_info_ipv6_5, i32 1 }, %struct.mlxsw_afk_block { i16 144, ptr @mlxsw_sp_afk_element_info_l4_0, i32 2 }, %struct.mlxsw_afk_block { i16 146, ptr @mlxsw_sp_afk_element_info_l4_2, i32 1 }], [40 x i8] zeroinitializer }, align 32
@mlxsw_sp2_afk_ops = dso_local constant { %struct.mlxsw_afk_ops, [16 x i8] } { %struct.mlxsw_afk_ops { ptr @mlxsw_sp2_afk_blocks, i32 18, ptr @mlxsw_sp2_afk_encode_block, ptr @mlxsw_sp2_afk_clear_block }, [16 x i8] zeroinitializer }, align 32
@mlxsw_sp4_afk_blocks = internal constant { [18 x %struct.mlxsw_afk_block], [40 x i8] } { [18 x %struct.mlxsw_afk_block] [%struct.mlxsw_afk_block { i16 16, ptr @mlxsw_sp_afk_element_info_mac_0, i32 1 }, %struct.mlxsw_afk_block { i16 17, ptr @mlxsw_sp_afk_element_info_mac_1, i32 1 }, %struct.mlxsw_afk_block { i16 18, ptr @mlxsw_sp_afk_element_info_mac_2, i32 2 }, %struct.mlxsw_afk_block { i16 19, ptr @mlxsw_sp_afk_element_info_mac_3, i32 3 }, %struct.mlxsw_afk_block { i16 20, ptr @mlxsw_sp_afk_element_info_mac_4, i32 3 }, %struct.mlxsw_afk_block { i16 26, ptr @mlxsw_sp_afk_element_info_mac_5b, i32 2 }, %struct.mlxsw_afk_block { i16 56, ptr @mlxsw_sp_afk_element_info_ipv4_0, i32 1 }, %struct.mlxsw_afk_block { i16 57, ptr @mlxsw_sp_afk_element_info_ipv4_1, i32 1 }, %struct.mlxsw_afk_block { i16 58, ptr @mlxsw_sp_afk_element_info_ipv4_2, i32 4 }, %struct.mlxsw_afk_block { i16 53, ptr @mlxsw_sp_afk_element_info_ipv4_4b, i32 2 }, %struct.mlxsw_afk_block { i16 64, ptr @mlxsw_sp_afk_element_info_ipv6_0, i32 1 }, %struct.mlxsw_afk_block { i16 65, ptr @mlxsw_sp_afk_element_info_ipv6_1, i32 1 }, %struct.mlxsw_afk_block { i16 71, ptr @mlxsw_sp_afk_element_info_ipv6_2b, i32 1 }, %struct.mlxsw_afk_block { i16 67, ptr @mlxsw_sp_afk_element_info_ipv6_3, i32 1 }, %struct.mlxsw_afk_block { i16 68, ptr @mlxsw_sp_afk_element_info_ipv6_4, i32 1 }, %struct.mlxsw_afk_block { i16 69, ptr @mlxsw_sp_afk_element_info_ipv6_5, i32 1 }, %struct.mlxsw_afk_block { i16 144, ptr @mlxsw_sp_afk_element_info_l4_0, i32 2 }, %struct.mlxsw_afk_block { i16 146, ptr @mlxsw_sp_afk_element_info_l4_2, i32 1 }], [40 x i8] zeroinitializer }, align 32
@mlxsw_sp4_afk_ops = dso_local constant { %struct.mlxsw_afk_ops, [16 x i8] } { %struct.mlxsw_afk_ops { ptr @mlxsw_sp4_afk_blocks, i32 18, ptr @mlxsw_sp2_afk_encode_block, ptr @mlxsw_sp2_afk_clear_block }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DMAC_32_47\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DMAC_0_31\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCP\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VID\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SRC_SYS_PORT\00", [19 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_l2_dmac = internal global { [5 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [5 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 1, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, ptr @.str }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 2, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.1 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 18, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 8, i16 0, i16 0, i8 13, i8 0, i8 0, i8 undef, { i8, i8 } { i8 3, i8 undef }, ptr @.str.2 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 17, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 12, i8 undef }, ptr @.str.3 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 0, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, ptr @.str.4 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SMAC_32_47\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SMAC_0_31\00", [22 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_l2_smac = internal global { [5 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [5 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 3, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, ptr @.str.6 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 4, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.7 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 18, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 8, i16 0, i16 0, i8 13, i8 0, i8 0, i8 undef, { i8, i8 } { i8 3, i8 undef }, ptr @.str.2 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 17, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 12, i8 undef }, ptr @.str.3 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 0, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, ptr @.str.4 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ETHERTYPE\00", [22 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_l2_smac_ex = internal global { [3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 3, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, ptr @.str.6 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 4, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.7 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 5, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, ptr @.str.9 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SRC_IP_0_31\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IP_PROTO\00", [23 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv4_sip = internal global { [3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 10, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.11 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 6, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, ptr @.str.12 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 0, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, ptr @.str.4 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DST_IP_0_31\00", [20 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv4_dip = internal global { [3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 14, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.14 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 6, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, ptr @.str.12 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 0, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, ptr @.str.4 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IP_ECN\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IP_TTL_\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IP_DSCP\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TCP_FLAGS\00", [22 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv4 = internal global { [5 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [5 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 10, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.11 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 21, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 4, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, ptr @.str.16 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 20, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 24, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, ptr @.str.17 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 22, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 6, i8 undef }, ptr @.str.18 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 19, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 8, i16 0, i16 0, i8 8, i8 0, i8 0, i8 undef, { i8, i8 } { i8 9, i8 undef }, ptr @.str.19 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SRC_L4_PORT\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DST_L4_PORT\00", [20 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv4_ex = internal global { [4 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [4 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 17, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 12, i8 undef }, ptr @.str.3 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 18, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 8, i16 0, i16 0, i8 29, i8 0, i8 0, i8 undef, { i8, i8 } { i8 3, i8 undef }, ptr @.str.2 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 16, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, ptr @.str.21 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 15, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 12, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, ptr @.str.22 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DST_IP_32_63\00", [19 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv6_dip = internal global { [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 13, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.24 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 14, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.14 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DST_IP_96_127\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DST_IP_64_95\00", [19 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv6_ex1 = internal global { [3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 11, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.26 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 12, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.27 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 6, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, ptr @.str.12 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SRC_IP_32_63\00", [19 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv6_sip = internal global { [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 9, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.29 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 10, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.11 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SRC_IP_96_127\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SRC_IP_64_95\00", [19 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv6_sip_ex = internal global { [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 7, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.31 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 8, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.32 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_packet_type = internal global { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 5, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, ptr @.str.9 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_mac_0 = internal global { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 2, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.1 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_mac_1 = internal global { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 4, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.7 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_mac_2 = internal global { [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 3, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, ptr @.str.6 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 1, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, ptr @.str }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_mac_3 = internal global { [3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 18, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 3, i8 undef }, ptr @.str.2 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 17, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 16, i8 0, i8 0, i8 undef, { i8, i8 } { i8 12, i8 undef }, ptr @.str.3 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 1, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 6, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, ptr @.str }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_mac_4 = internal global { [3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [3 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 18, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 3, i8 undef }, ptr @.str.2 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 17, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 16, i8 0, i8 0, i8 undef, { i8, i8 } { i8 12, i8 undef }, ptr @.str.3 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 5, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, ptr @.str.9 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_mac_5 = internal global { [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 17, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 16, i8 0, i8 0, i8 undef, { i8, i8 } { i8 12, i8 undef }, ptr @.str.3 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 0, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, ptr @.str.4 }, i32 -1, i8 1 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv4_0 = internal global { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 14, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.14 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv4_1 = internal global { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 10, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.11 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv4_2 = internal global { [4 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [4 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 22, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 6, i8 undef }, ptr @.str.18 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 21, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 6, i8 0, i8 0, i8 undef, { i8, i8 } { i8 2, i8 undef }, ptr @.str.16 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 20, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 8, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, ptr @.str.17 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 6, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 16, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, ptr @.str.12 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VIRT_ROUTER_LSB\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VIRT_ROUTER_MSB\00", [16 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv4_4 = internal global { [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 24, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 24, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, ptr @.str.44 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 23, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 3, i8 undef }, ptr @.str.45 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv6_0 = internal global { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 13, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.24 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv6_1 = internal global { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 12, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.27 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv6_2 = internal global { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 11, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.26 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv6_3 = internal global { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 9, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.29 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv6_4 = internal global { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 8, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.32 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv6_5 = internal global { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 7, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.31 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_l4_0 = internal global { [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 16, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 16, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, ptr @.str.21 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 15, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 16, i8 undef }, ptr @.str.22 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_l4_2 = internal global { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 19, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 16, i8 0, i8 0, i8 undef, { i8, i8 } { i8 9, i8 undef }, ptr @.str.19 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.57, i32 35, ptr null, ptr null }, align 1
@.str.55 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sp2_afk_block_value\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c\00", [35 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"block0\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"block1\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"block2\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"block3\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"block4\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"block5\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"block6\00", [25 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"block7\00", [25 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"block8\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"block9\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"block10\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"block11\00", [24 x i8] zeroinitializer }, align 32
@mlxsw_sp2_afk_blocks_layout = internal constant { [12 x { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } }], [48 x i8] } { [12 x { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } }] [{ i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } } { i16 48, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, ptr @.str.61 } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } } { i16 44, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 4, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, ptr @.str.62 } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } } { i16 40, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 8, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, ptr @.str.63 } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } } { i16 36, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 12, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, ptr @.str.64 } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } } { i16 32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 16, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, ptr @.str.65 } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } } { i16 28, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 20, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, ptr @.str.66 } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } } { i16 24, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 24, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, ptr @.str.67 } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } } { i16 20, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 28, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, ptr @.str.68 } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } } { i16 12, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, ptr @.str.69 } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } } { i16 8, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 4, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, ptr @.str.70 } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } } { i16 4, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 8, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, ptr @.str.71 } }, { i16, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } } { i16 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 0, i16 0, i16 0, i8 12, i8 0, i8 0, i8 undef, { i8, i8 } { i8 36, i8 undef }, ptr @.str.72 } }], [48 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_mac_5b = internal global { [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 17, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 18, i8 0, i8 0, i8 undef, { i8, i8 } { i8 12, i8 undef }, ptr @.str.3 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 0, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 9, i8 undef }, ptr @.str.4 }, i32 -1, i8 1 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv4_4b = internal global { [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [2 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 24, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 13, i8 0, i8 0, i8 undef, { i8, i8 } { i8 8, i8 undef }, ptr @.str.44 }, i32 0, i8 0 }, { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 23, i32 0, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 21, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.45 }, i32 0, i8 1 }], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_afk_element_info_ipv6_2b = internal global { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }], [32 x i8] } { [1 x { i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 }] [{ i32, i32, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr }, i32, i8 } { i32 11, i32 1, { i16, i16, i16, i8, i8, i8, i8, { i8, i8 }, ptr } { i16 4, i16 0, i16 0, i8 0, i8 0, i8 0, i8 undef, { i8, i8 } { i8 4, i8 undef }, ptr @.str.26 }, i32 0, i8 0 }], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.77 = private unnamed_addr constant [21 x i8] c"mlxsw_sp1_afk_blocks\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 84, i32 37 }
@___asan_gen_.80 = private unnamed_addr constant [18 x i8] c"mlxsw_sp1_afk_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 118, i32 28 }
@___asan_gen_.83 = private unnamed_addr constant [21 x i8] c"mlxsw_sp2_afk_blocks\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 208, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"mlxsw_sp2_afk_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 308, i32 28 }
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"mlxsw_sp4_afk_blocks\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 329, i32 37 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"mlxsw_sp4_afk_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 350, i32 28 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 11, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 12, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 13, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 14, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 15, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [34 x i8] c"mlxsw_sp_afk_element_info_l2_dmac\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 10, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 19, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 20, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [34 x i8] c"mlxsw_sp_afk_element_info_l2_smac\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 18, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 29, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [37 x i8] c"mlxsw_sp_afk_element_info_l2_smac_ex\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 26, i32 38 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 33, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 34, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [35 x i8] c"mlxsw_sp_afk_element_info_ipv4_sip\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 32, i32 38 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 39, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [35 x i8] c"mlxsw_sp_afk_element_info_ipv4_dip\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 38, i32 38 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 46, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 47, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 48, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 49, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [31 x i8] c"mlxsw_sp_afk_element_info_ipv4\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 44, i32 38 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 55, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 56, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [34 x i8] c"mlxsw_sp_afk_element_info_ipv4_ex\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 52, i32 38 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 60, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [35 x i8] c"mlxsw_sp_afk_element_info_ipv6_dip\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 59, i32 38 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 65, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 66, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [35 x i8] c"mlxsw_sp_afk_element_info_ipv6_ex1\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 64, i32 38 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 71, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [35 x i8] c"mlxsw_sp_afk_element_info_ipv6_sip\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 70, i32 38 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 76, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 77, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [38 x i8] c"mlxsw_sp_afk_element_info_ipv6_sip_ex\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 75, i32 38 }
@___asan_gen_.197 = private unnamed_addr constant [38 x i8] c"mlxsw_sp_afk_element_info_packet_type\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 80, i32 38 }
@___asan_gen_.200 = private unnamed_addr constant [32 x i8] c"mlxsw_sp_afk_element_info_mac_0\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 125, i32 38 }
@___asan_gen_.203 = private unnamed_addr constant [32 x i8] c"mlxsw_sp_afk_element_info_mac_1\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 129, i32 38 }
@___asan_gen_.206 = private unnamed_addr constant [32 x i8] c"mlxsw_sp_afk_element_info_mac_2\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 133, i32 38 }
@___asan_gen_.209 = private unnamed_addr constant [32 x i8] c"mlxsw_sp_afk_element_info_mac_3\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 138, i32 38 }
@___asan_gen_.212 = private unnamed_addr constant [32 x i8] c"mlxsw_sp_afk_element_info_mac_4\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 144, i32 38 }
@___asan_gen_.215 = private unnamed_addr constant [32 x i8] c"mlxsw_sp_afk_element_info_mac_5\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 150, i32 38 }
@___asan_gen_.218 = private unnamed_addr constant [33 x i8] c"mlxsw_sp_afk_element_info_ipv4_0\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 155, i32 38 }
@___asan_gen_.221 = private unnamed_addr constant [33 x i8] c"mlxsw_sp_afk_element_info_ipv4_1\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 159, i32 38 }
@___asan_gen_.224 = private unnamed_addr constant [33 x i8] c"mlxsw_sp_afk_element_info_ipv4_2\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 163, i32 38 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 171, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 172, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [33 x i8] c"mlxsw_sp_afk_element_info_ipv4_4\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 170, i32 38 }
@___asan_gen_.236 = private unnamed_addr constant [33 x i8] c"mlxsw_sp_afk_element_info_ipv6_0\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 175, i32 38 }
@___asan_gen_.239 = private unnamed_addr constant [33 x i8] c"mlxsw_sp_afk_element_info_ipv6_1\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 179, i32 38 }
@___asan_gen_.242 = private unnamed_addr constant [33 x i8] c"mlxsw_sp_afk_element_info_ipv6_2\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 183, i32 38 }
@___asan_gen_.245 = private unnamed_addr constant [33 x i8] c"mlxsw_sp_afk_element_info_ipv6_3\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 187, i32 38 }
@___asan_gen_.248 = private unnamed_addr constant [33 x i8] c"mlxsw_sp_afk_element_info_ipv6_4\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 191, i32 38 }
@___asan_gen_.251 = private unnamed_addr constant [33 x i8] c"mlxsw_sp_afk_element_info_ipv6_5\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 195, i32 38 }
@___asan_gen_.254 = private unnamed_addr constant [31 x i8] c"mlxsw_sp_afk_element_info_l4_0\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 199, i32 38 }
@___asan_gen_.257 = private unnamed_addr constant [31 x i8] c"mlxsw_sp_afk_element_info_l4_2\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 204, i32 38 }
@___asan_gen_.267 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 33, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 239, i32 1 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 286, i32 6 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 267, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 268, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 269, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 270, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 271, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 272, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 273, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 274, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 275, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 276, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 277, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 278, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [28 x i8] c"mlxsw_sp2_afk_blocks_layout\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 266, i32 48 }
@___asan_gen_.314 = private unnamed_addr constant [33 x i8] c"mlxsw_sp_afk_element_info_mac_5b\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 315, i32 38 }
@___asan_gen_.317 = private unnamed_addr constant [34 x i8] c"mlxsw_sp_afk_element_info_ipv4_4b\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 320, i32 38 }
@___asan_gen_.320 = private unnamed_addr constant [34 x i8] c"mlxsw_sp_afk_element_info_ipv6_2b\00", align 1
@___asan_gen_.321 = private constant [64 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.321, i32 325, i32 38 }
@llvm.compiler.used = appending global [84 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp1_afk_blocks, ptr @mlxsw_sp1_afk_ops, ptr @mlxsw_sp2_afk_blocks, ptr @mlxsw_sp2_afk_ops, ptr @mlxsw_sp4_afk_blocks, ptr @mlxsw_sp4_afk_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mlxsw_sp_afk_element_info_l2_dmac, ptr @.str.6, ptr @.str.7, ptr @mlxsw_sp_afk_element_info_l2_smac, ptr @.str.9, ptr @mlxsw_sp_afk_element_info_l2_smac_ex, ptr @.str.11, ptr @.str.12, ptr @mlxsw_sp_afk_element_info_ipv4_sip, ptr @.str.14, ptr @mlxsw_sp_afk_element_info_ipv4_dip, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @mlxsw_sp_afk_element_info_ipv4, ptr @.str.21, ptr @.str.22, ptr @mlxsw_sp_afk_element_info_ipv4_ex, ptr @.str.24, ptr @mlxsw_sp_afk_element_info_ipv6_dip, ptr @.str.26, ptr @.str.27, ptr @mlxsw_sp_afk_element_info_ipv6_ex1, ptr @.str.29, ptr @mlxsw_sp_afk_element_info_ipv6_sip, ptr @.str.31, ptr @.str.32, ptr @mlxsw_sp_afk_element_info_ipv6_sip_ex, ptr @mlxsw_sp_afk_element_info_packet_type, ptr @mlxsw_sp_afk_element_info_mac_0, ptr @mlxsw_sp_afk_element_info_mac_1, ptr @mlxsw_sp_afk_element_info_mac_2, ptr @mlxsw_sp_afk_element_info_mac_3, ptr @mlxsw_sp_afk_element_info_mac_4, ptr @mlxsw_sp_afk_element_info_mac_5, ptr @mlxsw_sp_afk_element_info_ipv4_0, ptr @mlxsw_sp_afk_element_info_ipv4_1, ptr @mlxsw_sp_afk_element_info_ipv4_2, ptr @.str.44, ptr @.str.45, ptr @mlxsw_sp_afk_element_info_ipv4_4, ptr @mlxsw_sp_afk_element_info_ipv6_0, ptr @mlxsw_sp_afk_element_info_ipv6_1, ptr @mlxsw_sp_afk_element_info_ipv6_2, ptr @mlxsw_sp_afk_element_info_ipv6_3, ptr @mlxsw_sp_afk_element_info_ipv6_4, ptr @mlxsw_sp_afk_element_info_ipv6_5, ptr @mlxsw_sp_afk_element_info_l4_0, ptr @mlxsw_sp_afk_element_info_l4_2, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @mlxsw_sp2_afk_blocks_layout, ptr @mlxsw_sp_afk_element_info_mac_5b, ptr @mlxsw_sp_afk_element_info_ipv4_4b, ptr @mlxsw_sp_afk_element_info_ipv6_2b], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_afk_blocks to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_afk_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_afk_blocks to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_afk_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp4_afk_blocks to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp4_afk_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_l2_dmac to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_l2_smac to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_l2_smac_ex to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv4_sip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv4_dip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv4 to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv4_ex to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv6_dip to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv6_ex1 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv6_sip to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv6_sip_ex to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_packet_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_mac_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_mac_1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_mac_2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_mac_3 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_mac_4 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_mac_5 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv4_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv4_1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv4_2 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv4_4 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv6_0 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv6_1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv6_2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv6_3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv6_4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv6_5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_l4_0 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_l4_2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_afk_blocks_layout to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_mac_5b to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv4_4b to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_afk_element_info_ipv6_2b to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp1_afk_encode_block(ptr nocapture noundef writeonly %output, i32 noundef %block_index, ptr nocapture noundef readonly %block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %block_index, 4
  %add.ptr = getelementptr i8, ptr %output, i32 %mul
  %0 = call ptr @memcpy(ptr %add.ptr, ptr %block, i32 16)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @mlxsw_sp1_afk_clear_block(ptr nocapture noundef writeonly %output, i32 noundef %block_index) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %block_index, 4
  %add.ptr = getelementptr i8, ptr %output, i32 %mul
  %0 = call ptr @memset(ptr %add.ptr, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_afk_encode_block(ptr nocapture noundef %output, i32 noundef %block_index, ptr nocapture noundef readonly %block) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %block, align 8
  %and5.i.i = and i64 %1, 68719476735
  tail call fastcc void @__mlxsw_sp2_afk_block_value_set(ptr noundef %output, i32 noundef %block_index, i64 noundef %and5.i.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_afk_clear_block(ptr nocapture noundef %output, i32 noundef %block_index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @__mlxsw_sp2_afk_block_value_set(ptr noundef %output, i32 noundef %block_index, i64 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mlxsw_sp2_afk_block_value_set(ptr nocapture noundef %output, i32 noundef %block_index, i64 noundef %block_value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %block_index)
  %cmp1 = icmp ugt i32 %block_index, 11
  br i1 %cmp1, label %do.end, label %if.end22, !prof !174

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.60, i32 noundef 287, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end22:                                         ; preds = %entry
  %arrayidx = getelementptr [12 x %struct.mlxsw_sp2_afk_block_layout], ptr @mlxsw_sp2_afk_blocks_layout, i32 0, i32 %block_index
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %1 to i32
  %add.ptr = getelementptr i8, ptr %output, i32 %conv
  %item = getelementptr [12 x %struct.mlxsw_sp2_afk_block_layout], ptr @mlxsw_sp2_afk_blocks_layout, i32 0, i32 %block_index, i32 1
  %2 = ptrtoint ptr %item to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %item, align 4
  %conv9.i.i = zext i16 %3 to i32
  %rem.i.i = and i32 %conv9.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %if.end22.do.end23.i.i_crit_edge

if.end22.do.end23.i.i_crit_edge:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i.i

lor.lhs.false.i.i:                                ; preds = %if.end22
  %step11.i.i = getelementptr [12 x %struct.mlxsw_sp2_afk_block_layout], ptr @mlxsw_sp2_afk_blocks_layout, i32 0, i32 %block_index, i32 1, i32 1
  %4 = ptrtoint ptr %step11.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %step11.i.i, align 2
  %6 = and i16 %5, 7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp14.not.i.i = icmp eq i16 %6, 0
  br i1 %cmp14.not.i.i, label %lor.lhs.false16.i.i, label %lor.lhs.false.i.i.do.end23.i.i_crit_edge

lor.lhs.false.i.i.do.end23.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i.i

lor.lhs.false16.i.i:                              ; preds = %lor.lhs.false.i.i
  %in_step_offset.i.i = getelementptr [12 x %struct.mlxsw_sp2_afk_block_layout], ptr @mlxsw_sp2_afk_blocks_layout, i32 0, i32 %block_index, i32 1, i32 2
  %7 = ptrtoint ptr %in_step_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %in_step_offset.i.i, align 4
  %conv17.i.i = zext i16 %8 to i32
  %rem18.i.i = and i32 %conv17.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem18.i.i)
  %cmp19.not.i.i = icmp eq i32 %rem18.i.i, 0
  br i1 %cmp19.not.i.i, label %__mlxsw_item_set64.exit, label %lor.lhs.false16.i.i.do.end23.i.i_crit_edge

lor.lhs.false16.i.i.do.end23.i.i_crit_edge:       ; preds = %lor.lhs.false16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end23.i.i

do.end23.i.i:                                     ; preds = %lor.lhs.false16.i.i.do.end23.i.i_crit_edge, %lor.lhs.false.i.i.do.end23.i.i_crit_edge, %if.end22.do.end23.i.i_crit_edge
  %name.i.i = getelementptr [12 x %struct.mlxsw_sp2_afk_block_layout], ptr @mlxsw_sp2_afk_blocks_layout, i32 0, i32 %block_index, i32 1, i32 7
  %9 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name.i.i, align 4
  %step26.i.i = getelementptr [12 x %struct.mlxsw_sp2_afk_block_layout], ptr @mlxsw_sp2_afk_blocks_layout, i32 0, i32 %block_index, i32 1, i32 1
  %11 = ptrtoint ptr %step26.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %step26.i.i, align 2
  %conv27.i.i = sext i16 %12 to i32
  %in_step_offset28.i.i = getelementptr [12 x %struct.mlxsw_sp2_afk_block_layout], ptr @mlxsw_sp2_afk_blocks_layout, i32 0, i32 %block_index, i32 1, i32 2
  %13 = ptrtoint ptr %in_step_offset28.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %in_step_offset28.i.i, align 4
  %conv29.i.i = zext i16 %14 to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %10, i32 noundef %conv9.i.i, i32 noundef %conv27.i.i, i32 noundef %conv29.i.i, i32 noundef 8) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/mellanox/mlxsw/item.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 36, 0\0A.popsection", ""() #5, !srcloc !175
  unreachable

__mlxsw_item_set64.exit:                          ; preds = %lor.lhs.false16.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add42.i.i = add nuw nsw i32 %conv17.i.i, %conv9.i.i
  %div2.i.i = lshr i32 %add42.i.i, 3
  %size.i = getelementptr [12 x %struct.mlxsw_sp2_afk_block_layout], ptr @mlxsw_sp2_afk_blocks_layout, i32 0, i32 %block_index, i32 1, i32 6
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %size.i, align 2
  %shift.i = getelementptr [12 x %struct.mlxsw_sp2_afk_block_layout], ptr @mlxsw_sp2_afk_blocks_layout, i32 0, i32 %block_index, i32 1, i32 3
  %17 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %shift.i, align 2
  %sh_prom3.i = zext i8 %18 to i64
  %no_real_shift.i = getelementptr [12 x %struct.mlxsw_sp2_afk_block_layout], ptr @mlxsw_sp2_afk_blocks_layout, i32 0, i32 %block_index, i32 1, i32 5
  %19 = ptrtoint ptr %no_real_shift.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %no_real_shift.i, align 4, !range !176
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  %shl7.i = select i1 %tobool.not.i, i64 %sh_prom3.i, i64 0
  %spec.select.i = shl i64 %block_value, %shl7.i
  %conv.i = zext i8 %16 to i32
  %sub1.i = sub nsw i32 64, %conv.i
  %sh_prom.i = zext i32 %sub1.i to i64
  %shr.i = lshr i64 -1, %sh_prom.i
  %shl.i = shl i64 %shr.i, %sh_prom3.i
  %and8.i = and i64 %spec.select.i, %shl.i
  %arrayidx.i = getelementptr i64, ptr %add.ptr, i32 %div2.i.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.i, align 8
  %neg.i = xor i64 %shl.i, -1
  %and9.i = and i64 %22, %neg.i
  %or.i = or i64 %and9.i, %and8.i
  store i64 %or.i, ptr %arrayidx.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %__mlxsw_item_set64.exit, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !123, !124, !125, !126, !128, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !{ptr @mlxsw_sp1_afk_ops, !1, !"mlxsw_sp1_afk_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 118, i32 28}
!2 = !{ptr @mlxsw_sp2_afk_ops, !3, !"mlxsw_sp2_afk_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 308, i32 28}
!4 = !{ptr @mlxsw_sp4_afk_ops, !5, !"mlxsw_sp4_afk_ops", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 350, i32 28}
!6 = !{ptr @mlxsw_sp1_afk_blocks, !7, !"mlxsw_sp1_afk_blocks", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 84, i32 37}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 11, i32 2}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 12, i32 2}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 13, i32 2}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 14, i32 2}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 15, i32 2}
!18 = !{ptr @mlxsw_sp_afk_element_info_l2_dmac, !19, !"mlxsw_sp_afk_element_info_l2_dmac", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 10, i32 38}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 19, i32 2}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 20, i32 2}
!24 = !{ptr @mlxsw_sp_afk_element_info_l2_smac, !25, !"mlxsw_sp_afk_element_info_l2_smac", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 18, i32 38}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 29, i32 2}
!28 = !{ptr @mlxsw_sp_afk_element_info_l2_smac_ex, !29, !"mlxsw_sp_afk_element_info_l2_smac_ex", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 26, i32 38}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 33, i32 2}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 34, i32 2}
!34 = !{ptr @mlxsw_sp_afk_element_info_ipv4_sip, !35, !"mlxsw_sp_afk_element_info_ipv4_sip", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 32, i32 38}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 39, i32 2}
!38 = !{ptr @mlxsw_sp_afk_element_info_ipv4_dip, !39, !"mlxsw_sp_afk_element_info_ipv4_dip", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 38, i32 38}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 46, i32 2}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 47, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 48, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 49, i32 2}
!48 = !{ptr @mlxsw_sp_afk_element_info_ipv4, !49, !"mlxsw_sp_afk_element_info_ipv4", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 44, i32 38}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 55, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 56, i32 2}
!54 = !{ptr @mlxsw_sp_afk_element_info_ipv4_ex, !55, !"mlxsw_sp_afk_element_info_ipv4_ex", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 52, i32 38}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 60, i32 2}
!58 = !{ptr @mlxsw_sp_afk_element_info_ipv6_dip, !59, !"mlxsw_sp_afk_element_info_ipv6_dip", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 59, i32 38}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 65, i32 2}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 66, i32 2}
!64 = !{ptr @mlxsw_sp_afk_element_info_ipv6_ex1, !65, !"mlxsw_sp_afk_element_info_ipv6_ex1", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 64, i32 38}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 71, i32 2}
!68 = !{ptr @mlxsw_sp_afk_element_info_ipv6_sip, !69, !"mlxsw_sp_afk_element_info_ipv6_sip", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 70, i32 38}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 76, i32 2}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 77, i32 2}
!74 = !{ptr @mlxsw_sp_afk_element_info_ipv6_sip_ex, !75, !"mlxsw_sp_afk_element_info_ipv6_sip_ex", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 75, i32 38}
!76 = !{ptr @mlxsw_sp_afk_element_info_packet_type, !77, !"mlxsw_sp_afk_element_info_packet_type", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 80, i32 38}
!78 = !{ptr @mlxsw_sp2_afk_blocks, !79, !"mlxsw_sp2_afk_blocks", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 208, i32 37}
!80 = !{ptr @mlxsw_sp_afk_element_info_mac_0, !81, !"mlxsw_sp_afk_element_info_mac_0", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 125, i32 38}
!82 = !{ptr @mlxsw_sp_afk_element_info_mac_1, !83, !"mlxsw_sp_afk_element_info_mac_1", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 129, i32 38}
!84 = !{ptr @mlxsw_sp_afk_element_info_mac_2, !85, !"mlxsw_sp_afk_element_info_mac_2", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 133, i32 38}
!86 = !{ptr @mlxsw_sp_afk_element_info_mac_3, !87, !"mlxsw_sp_afk_element_info_mac_3", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 138, i32 38}
!88 = !{ptr @mlxsw_sp_afk_element_info_mac_4, !89, !"mlxsw_sp_afk_element_info_mac_4", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 144, i32 38}
!90 = !{ptr @mlxsw_sp_afk_element_info_mac_5, !91, !"mlxsw_sp_afk_element_info_mac_5", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 150, i32 38}
!92 = !{ptr @mlxsw_sp_afk_element_info_ipv4_0, !93, !"mlxsw_sp_afk_element_info_ipv4_0", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 155, i32 38}
!94 = !{ptr @mlxsw_sp_afk_element_info_ipv4_1, !95, !"mlxsw_sp_afk_element_info_ipv4_1", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 159, i32 38}
!96 = !{ptr @mlxsw_sp_afk_element_info_ipv4_2, !97, !"mlxsw_sp_afk_element_info_ipv4_2", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 163, i32 38}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 171, i32 2}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 172, i32 2}
!102 = !{ptr @mlxsw_sp_afk_element_info_ipv4_4, !103, !"mlxsw_sp_afk_element_info_ipv4_4", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 170, i32 38}
!104 = !{ptr @mlxsw_sp_afk_element_info_ipv6_0, !105, !"mlxsw_sp_afk_element_info_ipv6_0", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 175, i32 38}
!106 = !{ptr @mlxsw_sp_afk_element_info_ipv6_1, !107, !"mlxsw_sp_afk_element_info_ipv6_1", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 179, i32 38}
!108 = !{ptr @mlxsw_sp_afk_element_info_ipv6_2, !109, !"mlxsw_sp_afk_element_info_ipv6_2", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 183, i32 38}
!110 = !{ptr @mlxsw_sp_afk_element_info_ipv6_3, !111, !"mlxsw_sp_afk_element_info_ipv6_3", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 187, i32 38}
!112 = !{ptr @mlxsw_sp_afk_element_info_ipv6_4, !113, !"mlxsw_sp_afk_element_info_ipv6_4", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 191, i32 38}
!114 = !{ptr @mlxsw_sp_afk_element_info_ipv6_5, !115, !"mlxsw_sp_afk_element_info_ipv6_5", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 195, i32 38}
!116 = !{ptr @mlxsw_sp_afk_element_info_l4_0, !117, !"mlxsw_sp_afk_element_info_l4_0", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 199, i32 38}
!118 = !{ptr @mlxsw_sp_afk_element_info_l4_2, !119, !"mlxsw_sp_afk_element_info_l4_2", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 204, i32 38}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!122 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @__mlxsw_item_offset._entry, !121, !"_entry", i1 false, i1 false}
!125 = !{ptr @__mlxsw_item_offset._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 239, i32 1}
!128 = distinct !{null, !127, !"mlxsw_sp2_afk_block_value_item", i1 false, i1 false}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 286, i32 6}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 267, i32 2}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 268, i32 2}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 269, i32 2}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 270, i32 2}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 271, i32 2}
!141 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 272, i32 2}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 273, i32 2}
!145 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 274, i32 2}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 275, i32 2}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 276, i32 2}
!151 = !{ptr @.str.71, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 277, i32 2}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 278, i32 2}
!155 = !{ptr @mlxsw_sp2_afk_blocks_layout, !156, !"mlxsw_sp2_afk_blocks_layout", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 266, i32 48}
!157 = !{ptr @mlxsw_sp4_afk_blocks, !158, !"mlxsw_sp4_afk_blocks", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 329, i32 37}
!159 = !{ptr @mlxsw_sp_afk_element_info_mac_5b, !160, !"mlxsw_sp_afk_element_info_mac_5b", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 315, i32 38}
!161 = !{ptr @mlxsw_sp_afk_element_info_ipv4_4b, !162, !"mlxsw_sp_afk_element_info_ipv4_4b", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 320, i32 38}
!163 = !{ptr @mlxsw_sp_afk_element_info_ipv6_2b, !164, !"mlxsw_sp_afk_element_info_ipv6_2b", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_keys.c", i32 325, i32 38}
!165 = !{i32 1, !"wchar_size", i32 2}
!166 = !{i32 1, !"min_enum_size", i32 4}
!167 = !{i32 8, !"branch-target-enforcement", i32 0}
!168 = !{i32 8, !"sign-return-address", i32 0}
!169 = !{i32 8, !"sign-return-address-all", i32 0}
!170 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!171 = !{i32 7, !"uwtable", i32 1}
!172 = !{i32 7, !"frame-pointer", i32 2}
!173 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!174 = !{!"branch_weights", i32 1, i32 2000}
!175 = !{i64 2159240540, i64 2159241046, i64 2159240577, i64 2159240633, i64 2159240667, i64 2159240691, i64 2159240732, i64 2159240753, i64 2159240781, i64 2159240815}
!176 = !{i8 0, i8 2}
