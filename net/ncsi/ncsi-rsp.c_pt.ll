; ModuleID = '/llk/IR_all_yes/net/ncsi/ncsi-rsp.c_pt.bc'
source_filename = "../net/ncsi/ncsi-rsp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ncsi_rsp_handler = type { i8, i32, ptr }
%struct.ncsi_rsp_oem_handler = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ncsi_pkt_hdr = type { i8, i8, i8, i8, i8, i8, i16, [2 x i32] }
%struct.ncsi_dev = type { i32, i32, ptr, ptr }
%struct.ncsi_dev_priv = type { %struct.ncsi_dev, i32, i32, %struct.spinlock, i32, i32, %struct.list_head, ptr, [256 x %struct.ncsi_request], i32, i32, ptr, ptr, %struct.list_head, %struct.work_struct, %struct.packet_type, %struct.list_head, %struct.list_head, i8, i8, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ncsi_request = type { i8, i8, i32, ptr, ptr, ptr, %struct.timer_list, i8, i32, i32, %struct.nlmsghdr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.ncsi_rsp_pkt_hdr = type { %struct.ncsi_pkt_hdr, i16, i16 }
%struct.ncsi_package = type { i8, [16 x i8], ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, i8, i32, ptr }
%struct.ncsi_channel = type { i8, i32, i8, %struct.spinlock, ptr, %struct.ncsi_channel_version, [6 x %struct.ncsi_channel_cap], [8 x %struct.ncsi_channel_mode], %struct.ncsi_channel_mac_filter, %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_stats, %struct.anon.145, %struct.list_head, %struct.list_head }
%struct.ncsi_channel_version = type { i32, i32, [12 x i8], i32, [4 x i16], i32 }
%struct.ncsi_channel_cap = type { i32, i32 }
%struct.ncsi_channel_mode = type { i32, i32, i32, [8 x i32] }
%struct.ncsi_channel_mac_filter = type { i8, i8, i8, i64, ptr }
%struct.ncsi_channel_vlan_filter = type { i8, i64, ptr }
%struct.ncsi_channel_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.145 = type { %struct.timer_list, i8, i32 }
%struct.ncsi_cmd_ae_pkt = type { %struct.ncsi_cmd_pkt_hdr, [3 x i8], i8, i32, i32, [18 x i8] }
%struct.ncsi_cmd_pkt_hdr = type { %struct.ncsi_pkt_hdr }
%struct.ncsi_cmd_sl_pkt = type { %struct.ncsi_cmd_pkt_hdr, i32, i32, i32, [18 x i8] }
%struct.ncsi_rsp_gls_pkt = type { %struct.ncsi_rsp_pkt_hdr, i32, i32, i32, i32, [10 x i8] }
%struct.ncsi_cmd_svf_pkt = type { %struct.ncsi_cmd_pkt_hdr, i16, i16, i16, i8, i8, i32, [18 x i8] }
%struct.ncsi_cmd_ev_pkt = type { %struct.ncsi_cmd_pkt_hdr, [3 x i8], i8, i32, [22 x i8] }
%struct.ncsi_cmd_sma_pkt = type { %struct.ncsi_cmd_pkt_hdr, [6 x i8], i8, i8, i32, [18 x i8] }
%struct.ncsi_cmd_ebf_pkt = type { %struct.ncsi_cmd_pkt_hdr, i32, i32, [22 x i8] }
%struct.ncsi_cmd_egmf_pkt = type { %struct.ncsi_cmd_pkt_hdr, i32, i32, [22 x i8] }
%struct.ncsi_cmd_snfc_pkt = type { %struct.ncsi_cmd_pkt_hdr, [3 x i8], i8, i32, [22 x i8] }
%struct.ncsi_rsp_gvi_pkt = type { %struct.ncsi_rsp_pkt_hdr, i32, [3 x i8], i8, [12 x i8], i32, [4 x i16], i32, i32 }
%struct.ncsi_rsp_gc_pkt = type { %struct.ncsi_rsp_pkt_hdr, i32, i32, i32, i32, i32, i8, i8, i8, i8, [2 x i8], i8, i8, i32 }
%struct.ncsi_rsp_gp_pkt = type { %struct.ncsi_rsp_pkt_hdr, i8, [2 x i8], i8, i8, i8, i16, i32, i32, i32, i8, i8, [2 x i8], i32, [6 x i8], i16, i32 }
%struct.ncsi_rsp_gcps_pkt = type { %struct.ncsi_rsp_pkt_hdr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ncsi_rsp_gns_pkt = type { %struct.ncsi_rsp_pkt_hdr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ncsi_rsp_gnpts_pkt = type { %struct.ncsi_rsp_pkt_hdr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ncsi_rsp_oem_pkt = type { %struct.ncsi_rsp_pkt_hdr, i32, [0 x i8] }
%struct.ncsi_rsp_gpuuid_pkt = type { %struct.ncsi_rsp_pkt_hdr, [16 x i8], i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.123 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ncsi_rsp_handlers = internal constant { [32 x %struct.ncsi_rsp_handler], [96 x i8] } { [32 x %struct.ncsi_rsp_handler] [%struct.ncsi_rsp_handler { i8 -128, i32 4, ptr @ncsi_rsp_handler_cis }, %struct.ncsi_rsp_handler { i8 -127, i32 4, ptr @ncsi_rsp_handler_sp }, %struct.ncsi_rsp_handler { i8 -126, i32 4, ptr @ncsi_rsp_handler_dp }, %struct.ncsi_rsp_handler { i8 -125, i32 4, ptr @ncsi_rsp_handler_ec }, %struct.ncsi_rsp_handler { i8 -124, i32 4, ptr @ncsi_rsp_handler_dc }, %struct.ncsi_rsp_handler { i8 -123, i32 4, ptr @ncsi_rsp_handler_rc }, %struct.ncsi_rsp_handler { i8 -122, i32 4, ptr @ncsi_rsp_handler_ecnt }, %struct.ncsi_rsp_handler { i8 -121, i32 4, ptr @ncsi_rsp_handler_dcnt }, %struct.ncsi_rsp_handler { i8 -120, i32 4, ptr @ncsi_rsp_handler_ae }, %struct.ncsi_rsp_handler { i8 -119, i32 4, ptr @ncsi_rsp_handler_sl }, %struct.ncsi_rsp_handler { i8 -118, i32 16, ptr @ncsi_rsp_handler_gls }, %struct.ncsi_rsp_handler { i8 -117, i32 4, ptr @ncsi_rsp_handler_svf }, %struct.ncsi_rsp_handler { i8 -116, i32 4, ptr @ncsi_rsp_handler_ev }, %struct.ncsi_rsp_handler { i8 -115, i32 4, ptr @ncsi_rsp_handler_dv }, %struct.ncsi_rsp_handler { i8 -114, i32 4, ptr @ncsi_rsp_handler_sma }, %struct.ncsi_rsp_handler { i8 -112, i32 4, ptr @ncsi_rsp_handler_ebf }, %struct.ncsi_rsp_handler { i8 -111, i32 4, ptr @ncsi_rsp_handler_dbf }, %struct.ncsi_rsp_handler { i8 -110, i32 4, ptr @ncsi_rsp_handler_egmf }, %struct.ncsi_rsp_handler { i8 -109, i32 4, ptr @ncsi_rsp_handler_dgmf }, %struct.ncsi_rsp_handler { i8 -108, i32 4, ptr @ncsi_rsp_handler_snfc }, %struct.ncsi_rsp_handler { i8 -107, i32 40, ptr @ncsi_rsp_handler_gvi }, %struct.ncsi_rsp_handler { i8 -106, i32 32, ptr @ncsi_rsp_handler_gc }, %struct.ncsi_rsp_handler { i8 -105, i32 -1, ptr @ncsi_rsp_handler_gp }, %struct.ncsi_rsp_handler { i8 -104, i32 204, ptr @ncsi_rsp_handler_gcps }, %struct.ncsi_rsp_handler { i8 -103, i32 32, ptr @ncsi_rsp_handler_gns }, %struct.ncsi_rsp_handler { i8 -102, i32 48, ptr @ncsi_rsp_handler_gnpts }, %struct.ncsi_rsp_handler { i8 -101, i32 8, ptr @ncsi_rsp_handler_gps }, %struct.ncsi_rsp_handler { i8 -48, i32 -1, ptr @ncsi_rsp_handler_oem }, %struct.ncsi_rsp_handler { i8 -47, i32 -1, ptr @ncsi_rsp_handler_pldm }, %struct.ncsi_rsp_handler { i8 -46, i32 20, ptr @ncsi_rsp_handler_gpuuid }, %struct.ncsi_rsp_handler { i8 -42, i32 -1, ptr @ncsi_rsp_handler_pldm }, %struct.ncsi_rsp_handler { i8 -41, i32 -1, ptr @ncsi_rsp_handler_pldm }], [96 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Received unrecognized packet (0x%x)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"NCSI: 'bad' packet ignored for type 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"NCSI: Handler for packet type 0x%x returned %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"NCSI: Netlink handler for packet type 0x%x returned %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ncsi_rsp_handler_dp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/ncsi/ncsi-rsp.c\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@ncsi_rsp_oem_handlers = internal constant { [3 x %struct.ncsi_rsp_oem_handler], [40 x i8] } { [3 x %struct.ncsi_rsp_oem_handler] [%struct.ncsi_rsp_oem_handler { i32 33049, ptr @ncsi_rsp_handler_oem_mlx }, %struct.ncsi_rsp_oem_handler { i32 4413, ptr @ncsi_rsp_handler_oem_bcm }, %struct.ncsi_rsp_oem_handler { i32 343, ptr @ncsi_rsp_handler_oem_intel }], [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Received unrecognized OEM packet with MFR-ID (0x%x)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"NCSI: 'Writing mac address to device failed\0A\00", [51 x i8] zeroinitializer }, align 32
@ncsi_validate_rsp_pkt.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.4, ptr @.str.10, i8 0, i8 9, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ncsi_rsp\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ncsi_validate_rsp_pkt\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"NCSI: unsupported header revision\0A\00", [61 x i8] zeroinitializer }, align 32
@ncsi_validate_rsp_pkt.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.4, ptr @.str.11, i8 0, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NCSI: payload length mismatched\0A\00", [63 x i8] zeroinitializer }, align 32
@ncsi_validate_rsp_pkt.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.4, ptr @.str.12, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"NCSI: non zero response/reason code %04xh, %04xh\0A\00", [46 x i8] zeroinitializer }, align 32
@ncsi_validate_rsp_pkt.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.4, ptr @.str.13, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"NCSI: checksum mismatched; recd: %08x calc: %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 343, i64 4413, i64 33049]
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"ncsi_rsp_handlers\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1125, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1195, i32 23 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1223, i32 8 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1243, i32 7 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 1251, i32 8 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 139, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [22 x i8] c"ncsi_rsp_oem_handlers\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 753, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 783, i32 33 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 635, i32 21 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 36, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 41, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 49, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [23 x i8] c"../net/ncsi/ncsi-rsp.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 67, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @ncsi_rsp_handlers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ncsi_rsp_oem_handlers, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncsi_rsp_handlers to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncsi_rsp_oem_handlers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ncsi_rcv_rsp(ptr noundef %skb, ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %pt, ptr noundef %orig_dev) local_unnamed_addr #0 align 64 {
entry:
  %np.i = alloca ptr, align 4
  %nc.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ncsi_find_dev(ptr noundef %orig_dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %type = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 4
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp = icmp eq i8 %5, -1
  br i1 %cmp, label %if.then4, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @ncsi_aen_handler(ptr noundef nonnull %call, ptr noundef %skb) #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0157 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x %struct.ncsi_rsp_handler], ptr @ncsi_rsp_handlers, i32 0, i32 %i.0157
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %5)
  %cmp13 = icmp eq i8 %7, %5
  br i1 %cmp13, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0157, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.if.then23_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.then23_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

for.end:                                          ; preds = %for.body
  %tobool22.not = icmp eq ptr %arrayidx, null
  br i1 %tobool22.not, label %for.end.if.then23_crit_edge, label %do.body28

for.end.if.then23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23

if.then23:                                        ; preds = %for.end.if.then23_crit_edge, %for.inc.if.then23_crit_edge
  %dev24 = getelementptr inbounds %struct.ncsi_dev, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev24, align 4
  %conv26 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef %conv26) #9
  br label %cleanup

do.body28:                                        ; preds = %for.end
  %lock = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call, i32 0, i32 3
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %id = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 3
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %id, align 1
  %idxprom = zext i8 %11 to i32
  %arrayidx36 = getelementptr %struct.ncsi_dev_priv, ptr %call, i32 0, i32 8, i32 %idxprom
  %used = getelementptr %struct.ncsi_dev_priv, ptr %call, i32 0, i32 8, i32 %idxprom, i32 1
  %12 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %used, align 1, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool37.not = icmp eq i8 %13, 0
  br i1 %tobool37.not, label %if.then38, label %if.end40

if.then38:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call33) #6
  br label %cleanup

if.end40:                                         ; preds = %do.body28
  %rsp = getelementptr %struct.ncsi_dev_priv, ptr %call, i32 0, i32 8, i32 %idxprom, i32 5
  %14 = ptrtoint ptr %rsp to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %skb, ptr %rsp, align 4
  %enabled = getelementptr %struct.ncsi_dev_priv, ptr %call, i32 0, i32 8, i32 %idxprom, i32 7
  %15 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %enabled, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool41.not = icmp eq i8 %16, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call33) #6
  br i1 %tobool41.not, label %if.end40.out_crit_edge, label %if.end44

if.end40.out_crit_edge:                           ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end44:                                         ; preds = %if.end40
  %payload46 = getelementptr [32 x %struct.ncsi_rsp_handler], ptr @ncsi_rsp_handlers, i32 0, i32 %i.0157, i32 1
  %17 = ptrtoint ptr %payload46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %payload46, align 4
  %19 = and i32 %i.0157, 1073741823
  %20 = lshr i32 -666894336, %19
  %21 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp47.not = icmp eq i32 %21, 0
  br i1 %cmp47.not, label %if.end44.if.end51_crit_edge, label %if.then49

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %length = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 6
  %22 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %length, align 2
  %conv50 = zext i16 %23 to i32
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end44.if.end51_crit_edge
  %payload.0 = phi i32 [ %conv50, %if.then49 ], [ %18, %if.end44.if.end51_crit_edge ]
  %conv52 = trunc i32 %payload.0 to i16
  %call53 = tail call fastcc i32 @ncsi_validate_rsp_pkt(ptr noundef %arrayidx36, i16 noundef zeroext %conv52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end72, label %if.then55

if.then55:                                        ; preds = %if.end51
  %dev56 = getelementptr inbounds %struct.ncsi_dev, ptr %call, i32 0, i32 2
  %24 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev56, align 4
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %type, align 4
  %conv58 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %25, ptr noundef nonnull @.str.1, i32 noundef %conv58) #9
  %flags59 = getelementptr %struct.ncsi_dev_priv, ptr %call, i32 0, i32 8, i32 %idxprom, i32 2
  %28 = ptrtoint ptr %flags59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp60 = icmp eq i32 %29, 2
  br i1 %cmp60, label %if.then62, label %if.then55.out_crit_edge

if.then55.out_crit_edge:                          ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then62:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call53)
  %cmp63 = icmp eq i32 %call53, -1
  br i1 %cmp63, label %if.then62.out_netlink_crit_edge, label %if.else66

if.then62.out_netlink_crit_edge:                  ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_netlink

if.else66:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev56, align 4
  %snd_seq = getelementptr %struct.ncsi_dev_priv, ptr %call, i32 0, i32 8, i32 %idxprom, i32 8
  %32 = ptrtoint ptr %snd_seq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %snd_seq, align 4
  %snd_portid = getelementptr %struct.ncsi_dev_priv, ptr %call, i32 0, i32 8, i32 %idxprom, i32 9
  %34 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %snd_portid, align 4
  %nlhdr = getelementptr %struct.ncsi_dev_priv, ptr %call, i32 0, i32 8, i32 %idxprom, i32 10
  %call69 = tail call i32 @ncsi_send_netlink_err(ptr noundef %31, i32 noundef %33, i32 noundef %35, ptr noundef %nlhdr, i32 noundef %call53) #6
  br label %out

if.end72:                                         ; preds = %if.end51
  %handler73 = getelementptr [32 x %struct.ncsi_rsp_handler], ptr @ncsi_rsp_handlers, i32 0, i32 %i.0157, i32 2
  %36 = ptrtoint ptr %handler73 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %handler73, align 4
  %call74 = tail call i32 %37(ptr noundef %arrayidx36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end72.out_netlink_crit_edge, label %if.then76

if.end72.out_netlink_crit_edge:                   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_netlink

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %dev78 = getelementptr inbounds %struct.ncsi_dev, ptr %call, i32 0, i32 2
  %38 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev78, align 4
  %40 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %type, align 4
  %conv80 = zext i8 %41 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %39, ptr noundef nonnull @.str.2, i32 noundef %conv80, i32 noundef %call74) #9
  br label %out_netlink

out_netlink:                                      ; preds = %if.then76, %if.end72.out_netlink_crit_edge, %if.then62.out_netlink_crit_edge
  %ret.0 = phi i32 [ -1, %if.then62.out_netlink_crit_edge ], [ %call74, %if.then76 ], [ 0, %if.end72.out_netlink_crit_edge ]
  %flags82 = getelementptr %struct.ncsi_dev_priv, ptr %call, i32 0, i32 8, i32 %idxprom, i32 2
  %42 = ptrtoint ptr %flags82 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp83 = icmp eq i32 %43, 2
  br i1 %cmp83, label %if.then85, label %out_netlink.out_crit_edge

out_netlink.out_crit_edge:                        ; preds = %out_netlink
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then85:                                        ; preds = %out_netlink
  %ndp1.i = getelementptr %struct.ncsi_dev_priv, ptr %call, i32 0, i32 8, i32 %idxprom, i32 3
  %44 = ptrtoint ptr %ndp1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ndp1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %np.i) #6
  %46 = ptrtoint ptr %np.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 -1 to ptr), ptr %np.i, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc.i) #6
  %47 = ptrtoint ptr %nc.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc.i, align 4, !annotation !44
  %48 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rsp, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 18
  %50 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 15, i32 0, i32 20
  %52 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %53 to i32
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 %conv.i.i
  %channel.i = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %channel.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %channel.i, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %45, i8 noundef zeroext %55, ptr noundef nonnull %np.i, ptr noundef nonnull %nc.i) #6
  %56 = ptrtoint ptr %np.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %np.i, align 4
  %tobool.not.i = icmp eq ptr %57, null
  br i1 %tobool.not.i, label %ncsi_rsp_handler_netlink.exit.thread, label %ncsi_rsp_handler_netlink.exit

ncsi_rsp_handler_netlink.exit.thread:             ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %np.i) #6
  br label %if.then88

ncsi_rsp_handler_netlink.exit:                    ; preds = %if.then85
  %58 = ptrtoint ptr %nc.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %nc.i, align 4
  %call4.i = call i32 @ncsi_send_netlink_rsp(ptr noundef %arrayidx36, ptr noundef nonnull %57, ptr noundef %59) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %np.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool87.not = icmp eq i32 %call4.i, 0
  br i1 %tobool87.not, label %ncsi_rsp_handler_netlink.exit.out_crit_edge, label %ncsi_rsp_handler_netlink.exit.if.then88_crit_edge

ncsi_rsp_handler_netlink.exit.if.then88_crit_edge: ; preds = %ncsi_rsp_handler_netlink.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then88

ncsi_rsp_handler_netlink.exit.out_crit_edge:      ; preds = %ncsi_rsp_handler_netlink.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then88:                                        ; preds = %ncsi_rsp_handler_netlink.exit.if.then88_crit_edge, %ncsi_rsp_handler_netlink.exit.thread
  %retval.0.i155 = phi i32 [ -19, %ncsi_rsp_handler_netlink.exit.thread ], [ %call4.i, %ncsi_rsp_handler_netlink.exit.if.then88_crit_edge ]
  %dev90 = getelementptr inbounds %struct.ncsi_dev, ptr %call, i32 0, i32 2
  %60 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev90, align 4
  %62 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %type, align 4
  %conv92 = zext i8 %63 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %61, ptr noundef nonnull @.str.3, i32 noundef %conv92, i32 noundef %retval.0.i155) #9
  br label %out

out:                                              ; preds = %if.then88, %ncsi_rsp_handler_netlink.exit.out_crit_edge, %out_netlink.out_crit_edge, %if.else66, %if.then55.out_crit_edge, %if.end40.out_crit_edge
  %ret.1 = phi i32 [ %retval.0.i155, %if.then88 ], [ 0, %ncsi_rsp_handler_netlink.exit.out_crit_edge ], [ %ret.0, %out_netlink.out_crit_edge ], [ %call53, %if.else66 ], [ %call53, %if.then55.out_crit_edge ], [ -2, %if.end40.out_crit_edge ]
  call void @ncsi_free_request(ptr noundef %arrayidx36) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then38, %if.then23, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %ret.1, %out ], [ -19, %if.then38 ], [ -2, %if.then23 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ncsi_find_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ncsi_aen_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ncsi_validate_rsp_pkt(ptr nocapture noundef readonly %nr, i16 noundef zeroext %payload) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rsp = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %0 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsp, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %revision = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 1
  %6 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.not = icmp eq i8 %7, 1
  br i1 %cmp.not, label %if.end9, label %do.body2

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_validate_rsp_pkt.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_validate_rsp_pkt, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !45

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  %ndp = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %8 = ptrtoint ptr %ndp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndp, align 4
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_validate_rsp_pkt.__UNIQUE_ID_ddebug459, ptr noundef %11, ptr noundef nonnull @.str.10) #6
  br label %cleanup

if.end9:                                          ; preds = %entry
  %length = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 6
  %12 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %length, align 2
  %conv12 = zext i16 %payload to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %payload)
  %cmp13.not = icmp eq i16 %13, %payload
  br i1 %cmp13.not, label %if.end38, label %do.body17

do.body17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_validate_rsp_pkt.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_validate_rsp_pkt, %if.then29)) #6
          to label %cleanup [label %if.then29], !srcloc !45

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  %ndp30 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %14 = ptrtoint ptr %ndp30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndp30, align 4
  %dev32 = getelementptr inbounds %struct.ncsi_dev, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_validate_rsp_pkt.__UNIQUE_ID_ddebug460, ptr noundef %17, ptr noundef nonnull @.str.11) #6
  br label %cleanup

if.end38:                                         ; preds = %if.end9
  %code = getelementptr inbounds %struct.ncsi_rsp_pkt_hdr, ptr %add.ptr.i, i32 0, i32 1
  %18 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp40.not = icmp eq i16 %19, 0
  br i1 %cmp40.not, label %lor.lhs.false, label %if.end38.do.body47_crit_edge

if.end38.do.body47_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body47

lor.lhs.false:                                    ; preds = %if.end38
  %reason = getelementptr inbounds %struct.ncsi_rsp_pkt_hdr, ptr %add.ptr.i, i32 0, i32 2
  %20 = ptrtoint ptr %reason to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %reason, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp43.not = icmp eq i16 %21, 0
  br i1 %cmp43.not, label %if.end72, label %lor.lhs.false.do.body47_crit_edge

lor.lhs.false.do.body47_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body47

do.body47:                                        ; preds = %lor.lhs.false.do.body47_crit_edge, %if.end38.do.body47_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_validate_rsp_pkt.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_validate_rsp_pkt, %if.then59)) #6
          to label %cleanup [label %if.then59], !srcloc !45

if.then59:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #8
  %ndp60 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %22 = ptrtoint ptr %ndp60 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ndp60, align 4
  %dev62 = getelementptr inbounds %struct.ncsi_dev, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev62, align 4
  %26 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %code, align 4
  %conv64 = zext i16 %27 to i32
  %reason65 = getelementptr inbounds %struct.ncsi_rsp_pkt_hdr, ptr %add.ptr.i, i32 0, i32 2
  %28 = ptrtoint ptr %reason65 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %reason65, align 2
  %conv66 = zext i16 %29 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_validate_rsp_pkt.__UNIQUE_ID_ddebug461, ptr noundef %25, ptr noundef nonnull @.str.12, i32 noundef %conv64, i32 noundef %conv66) #6
  br label %cleanup

if.end72:                                         ; preds = %lor.lhs.false
  %add.ptr = getelementptr %struct.ncsi_rsp_pkt_hdr, ptr %add.ptr.i, i32 1
  %add = add nuw nsw i32 %conv12, 3
  %and = and i32 %add, 131068
  %add.ptr74 = getelementptr i8, ptr %add.ptr, i32 %and
  %add.ptr75 = getelementptr i8, ptr %add.ptr74, i32 -4
  %30 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp76 = icmp eq i32 %31, 0
  br i1 %cmp76, label %if.end72.cleanup_crit_edge, label %if.end79

if.end72.cleanup_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end79:                                         ; preds = %if.end72
  %sub = add nuw nsw i32 %conv12, 16
  %call82 = tail call i32 @ncsi_calculate_checksum(ptr noundef %add.ptr.i, i32 noundef %sub) #6
  %32 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr75, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %call82)
  %cmp83.not = icmp eq i32 %33, %call82
  br i1 %cmp83.not, label %if.end79.cleanup_crit_edge, label %do.body87

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body87:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_validate_rsp_pkt.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_validate_rsp_pkt, %if.then99)) #6
          to label %cleanup [label %if.then99], !srcloc !45

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #8
  %ndp100 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %34 = ptrtoint ptr %ndp100 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ndp100, align 4
  %dev102 = getelementptr inbounds %struct.ncsi_dev, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev102, align 4
  %38 = ptrtoint ptr %add.ptr75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr75, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_validate_rsp_pkt.__UNIQUE_ID_ddebug462, ptr noundef %37, ptr noundef nonnull @.str.13, i32 noundef %39, i32 noundef %call82) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then99, %do.body87, %if.end79.cleanup_crit_edge, %if.end72.cleanup_crit_edge, %if.then59, %do.body47, %if.then29, %do.body17, %if.then6, %do.body2
  %retval.0 = phi i32 [ -22, %if.then6 ], [ -22, %if.then29 ], [ -1, %if.then59 ], [ 0, %if.end72.cleanup_crit_edge ], [ -22, %if.then99 ], [ 0, %if.end79.cleanup_crit_edge ], [ -22, %do.body2 ], [ -22, %do.body17 ], [ -1, %do.body47 ], [ -22, %do.body87 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ncsi_send_netlink_err(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ncsi_free_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_cis(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %np = alloca ptr, align 4
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %np) #6
  %2 = ptrtoint ptr %np to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %np, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %3 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %4 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %9 to i32
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %11, ptr noundef nonnull %np, ptr noundef nonnull %nc) #6
  %12 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.ncsi_dev_priv, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %channel, align 1
  %18 = and i8 %17, 31
  %19 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %np, align 4
  %call11 = call ptr @ncsi_add_channel(ptr noundef %20, i8 noundef zeroext %18) #6
  %21 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call11, ptr %nc, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry.if.end12_crit_edge
  %22 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nc, align 4
  %tobool13.not = icmp eq ptr %23, null
  %cond = select i1 %tobool13.not, i32 -19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end12 ], [ -6, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %np) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_sp(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %np = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %np) #6
  %2 = ptrtoint ptr %np to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %np, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef nonnull %np, ptr noundef null) #6
  %11 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %np, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.ncsi_dev_priv, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %15 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %channel, align 1
  %17 = lshr i8 %16, 5
  %call11 = call ptr @ncsi_add_package(ptr noundef %1, i8 noundef zeroext %17) #6
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end.if.end15_crit_edge, %entry.if.end15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -6, %if.then.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %np) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_dp(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %np = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %np) #6
  %2 = ptrtoint ptr %np to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %np, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef nonnull %np, ptr noundef null) #6
  %11 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %np, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %call4 = call i32 @rcu_read_lock_any_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call6 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b46 = load i1, ptr @ncsi_rsp_handler_dp.__warned, align 1
  br i1 %.b46, label %land.lhs.true8.do.end_crit_edge, label %if.then10

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ncsi_rsp_handler_dp.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 139, ptr noundef nonnull @.str.5) #6
  br label %do.end

do.end:                                           ; preds = %if.then10, %land.lhs.true8.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %13 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %np, align 4
  %channels = getelementptr inbounds %struct.ncsi_package, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn47 = load volatile ptr, ptr %channels, align 4
  %cmp.not49 = icmp eq ptr %.pn47, %channels
  br i1 %cmp.not49, label %do.end.cleanup_crit_edge, label %do.end.do.body18_crit_edge

do.end.do.body18_crit_edge:                       ; preds = %do.end
  br label %do.body18

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body18:                                        ; preds = %do.body18.do.body18_crit_edge, %do.end.do.body18_crit_edge
  %.pn50 = phi ptr [ %.pn, %do.body18.do.body18_crit_edge ], [ %.pn47, %do.end.do.body18_crit_edge ]
  %lock = getelementptr i8, ptr %.pn50, i32 -816
  %call22 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %state = getelementptr i8, ptr %.pn50, i32 -824
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %state, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call22) #6
  %17 = ptrtoint ptr %.pn50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load volatile ptr, ptr %.pn50, align 4
  %18 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %np, align 4
  %channels16 = getelementptr inbounds %struct.ncsi_package, ptr %19, i32 0, i32 5
  %cmp.not = icmp eq ptr %.pn, %channels16
  br i1 %cmp.not, label %do.body18.cleanup_crit_edge, label %do.body18.do.body18_crit_edge

do.body18.do.body18_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body18

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %do.body18.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %do.body18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %np) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_ec(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 0, i32 1
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %enable, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_dc(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %call = tail call fastcc i32 @ncsi_validate_rsp_pkt(ptr noundef %nr, i16 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %enable = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 0, i32 1
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %enable, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ %call, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_rc(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 3
  %call6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %13 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nc, align 4
  %state = getelementptr inbounds %struct.ncsi_channel, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %state, align 4
  %lock9 = getelementptr inbounds %struct.ncsi_channel, ptr %14, i32 0, i32 3
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock9, i32 noundef %call6) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body4 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_ecnt(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 1, i32 1
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %enable, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_dcnt(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 1, i32 1
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %enable, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_ae(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 6, i32 1
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cmd7 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 4
  %15 = ptrtoint ptr %cmd7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd7, align 4
  %head.i23 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %head.i23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i23, align 8
  %network_header.i24 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 15, i32 0, i32 20
  %19 = ptrtoint ptr %network_header.i24 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %network_header.i24, align 4
  %conv.i25 = zext i16 %20 to i32
  %add.ptr.i26 = getelementptr i8, ptr %18, i32 %conv.i25
  %21 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %enable, align 4
  %mc_id = getelementptr inbounds %struct.ncsi_cmd_ae_pkt, ptr %add.ptr.i26, i32 0, i32 2
  %22 = ptrtoint ptr %mc_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mc_id, align 1
  %conv = zext i8 %23 to i32
  %data = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 6, i32 3
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %data, align 4
  %mode = getelementptr inbounds %struct.ncsi_cmd_ae_pkt, ptr %add.ptr.i26, i32 0, i32 3
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode, align 4
  %arrayidx12 = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 6, i32 3, i32 1
  %27 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_sl(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %cmd4 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 4
  %13 = ptrtoint ptr %cmd4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd4, align 4
  %head.i17 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %head.i17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i17, align 8
  %network_header.i18 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i18 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i18, align 4
  %conv.i19 = zext i16 %18 to i32
  %add.ptr.i20 = getelementptr i8, ptr %16, i32 %conv.i19
  %mode = getelementptr inbounds %struct.ncsi_cmd_sl_pkt, ptr %add.ptr.i20, i32 0, i32 1
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode, align 4
  %data = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 2, i32 3
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %data, align 4
  %oem_mode = getelementptr inbounds %struct.ncsi_cmd_sl_pkt, ptr %add.ptr.i20, i32 0, i32 2
  %22 = ptrtoint ptr %oem_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %oem_mode, align 4
  %arrayidx8 = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 2, i32 3, i32 1
  %24 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_gls(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %status = getelementptr inbounds %struct.ncsi_rsp_gls_pkt, ptr %add.ptr.i, i32 0, i32 1
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %arrayidx4 = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 2, i32 3, i32 2
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx4, align 4
  %other = getelementptr inbounds %struct.ncsi_rsp_gls_pkt, ptr %add.ptr.i, i32 0, i32 2
  %16 = ptrtoint ptr %other to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %other, align 4
  %arrayidx6 = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 2, i32 3, i32 3
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx6, align 4
  %oem_status = getelementptr inbounds %struct.ncsi_rsp_gls_pkt, ptr %add.ptr.i, i32 0, i32 3
  %19 = ptrtoint ptr %oem_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %oem_status, align 4
  %arrayidx8 = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 2, i32 3, i32 4
  %21 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx8, align 4
  %flags9 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 2
  %22 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags9, align 4
  %and = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nc, align 4
  %lock = getelementptr inbounds %struct.ncsi_channel, ptr %25, i32 0, i32 3
  %call15 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %26 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nc, align 4
  %state = getelementptr inbounds %struct.ncsi_channel, ptr %27, i32 0, i32 11, i32 2
  %28 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %state, align 4
  %lock18 = getelementptr inbounds %struct.ncsi_channel, ptr %27, i32 0, i32 3
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock18, i32 noundef %call15) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body13 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_svf(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd4 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 4
  %13 = ptrtoint ptr %cmd4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd4, align 4
  %head.i63 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %head.i63 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i63, align 8
  %network_header.i64 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i64 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i64, align 4
  %conv.i65 = zext i16 %18 to i32
  %add.ptr.i66 = getelementptr i8, ptr %16, i32 %conv.i65
  %index = getelementptr inbounds %struct.ncsi_cmd_svf_pkt, ptr %add.ptr.i66, i32 0, i32 4
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %index, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp = icmp eq i8 %20, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %vlan_filter = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 9
  %21 = ptrtoint ptr %vlan_filter to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %vlan_filter, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp10 = icmp ugt i8 %20, %22
  br i1 %cmp10, label %lor.lhs.false.cleanup_crit_edge, label %do.body14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body14:                                        ; preds = %lor.lhs.false
  %lock = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 3
  %call18 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %bitmap21 = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 9, i32 1
  %enable = getelementptr inbounds %struct.ncsi_cmd_svf_pkt, ptr %add.ptr.i66, i32 0, i32 5
  %23 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %enable, align 1
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool23.not = icmp eq i8 %25, 0
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %index, align 2
  %conv26 = zext i8 %27 to i32
  %sub = add nsw i32 %conv26, -1
  br i1 %tobool23.not, label %if.then24, label %if.else

if.then24:                                        ; preds = %do.body14
  %call27 = call i32 @_test_and_clear_bit(i32 noundef %sub, ptr noundef %bitmap21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then24.if.end42_crit_edge, label %if.then24.if.end42.sink.split_crit_edge

if.then24.if.end42.sink.split_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.sink.split

if.then24.if.end42_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.else:                                          ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %sub, ptr noundef %bitmap21) #6
  %vlan = getelementptr inbounds %struct.ncsi_cmd_svf_pkt, ptr %add.ptr.i66, i32 0, i32 2
  %28 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vlan, align 2
  br label %if.end42.sink.split

if.end42.sink.split:                              ; preds = %if.else, %if.then24.if.end42.sink.split_crit_edge
  %.sink = phi i16 [ %29, %if.else ], [ 0, %if.then24.if.end42.sink.split_crit_edge ]
  %vids = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 9, i32 2
  %30 = ptrtoint ptr %vids to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vids, align 8
  %32 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %index, align 2
  %conv31 = zext i8 %33 to i32
  %sub32 = add nsw i32 %conv31, -1
  %arrayidx = getelementptr i16, ptr %31, i32 %sub32
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %.sink, ptr %arrayidx, align 2
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %if.then24.if.end42_crit_edge
  %35 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %nc, align 4
  %lock43 = getelementptr inbounds %struct.ncsi_channel, ptr %36, i32 0, i32 3
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock43, i32 noundef %call18) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end42 ], [ -19, %entry.cleanup_crit_edge ], [ -34, %lor.lhs.false.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_ev(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 3, i32 1
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cmd7 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 4
  %15 = ptrtoint ptr %cmd7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd7, align 4
  %head.i19 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %head.i19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i19, align 8
  %network_header.i20 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 15, i32 0, i32 20
  %19 = ptrtoint ptr %network_header.i20 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %network_header.i20, align 4
  %conv.i21 = zext i16 %20 to i32
  %add.ptr.i22 = getelementptr i8, ptr %18, i32 %conv.i21
  %21 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %enable, align 4
  %mode = getelementptr inbounds %struct.ncsi_cmd_ev_pkt, ptr %add.ptr.i22, i32 0, i32 2
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mode, align 1
  %conv = zext i8 %23 to i32
  %data = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 3, i32 3
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_dv(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 3, i32 1
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %enable, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_sma(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd4 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 4
  %13 = ptrtoint ptr %cmd4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cmd4, align 4
  %head.i65 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %head.i65 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %head.i65, align 8
  %network_header.i66 = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 15, i32 0, i32 20
  %17 = ptrtoint ptr %network_header.i66 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %network_header.i66, align 4
  %conv.i67 = zext i16 %18 to i32
  %add.ptr.i68 = getelementptr i8, ptr %16, i32 %conv.i67
  %at_e = getelementptr inbounds %struct.ncsi_cmd_sma_pkt, ptr %add.ptr.i68, i32 0, i32 3
  %19 = ptrtoint ptr %at_e to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %at_e, align 1
  %21 = and i8 %20, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool6.not = icmp eq i8 %21, 0
  %bitmap7 = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 8, i32 3
  %index8 = getelementptr inbounds %struct.ncsi_cmd_sma_pkt, ptr %add.ptr.i68, i32 0, i32 2
  %22 = ptrtoint ptr %index8 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %index8, align 2
  %conv9 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp = icmp eq i8 %23, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %mac_filter = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 8
  %24 = ptrtoint ptr %mac_filter to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mac_filter, align 8
  %conv13 = zext i8 %25 to i32
  %n_mc = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %n_mc to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %n_mc, align 1
  %conv14 = zext i8 %27 to i32
  %add = add nuw nsw i32 %conv14, %conv13
  %n_mixed = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 8, i32 2
  %28 = ptrtoint ptr %n_mixed to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %n_mixed, align 2
  %conv15 = zext i8 %29 to i32
  %add16 = add nuw nsw i32 %add, %conv15
  call void @__sanitizer_cov_trace_cmp4(i32 %add16, i32 %conv9)
  %cmp17 = icmp ult i32 %add16, %conv9
  br i1 %cmp17, label %lor.lhs.false.cleanup_crit_edge, label %if.end20

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false
  %30 = mul nuw nsw i32 %conv9, 6
  %mul = add nsw i32 %30, -6
  %lock = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 3
  %call27 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %31 = ptrtoint ptr %index8 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %index8, align 2
  %conv36 = zext i8 %32 to i32
  %sub37 = add nsw i32 %conv36, -1
  br i1 %tobool6.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %sub37, ptr noundef %bitmap7) #6
  %addrs = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 8, i32 4
  %33 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %addrs, align 8
  %arrayidx = getelementptr i8, ptr %34, i32 %mul
  %mac = getelementptr inbounds %struct.ncsi_cmd_sma_pkt, ptr %add.ptr.i68, i32 0, i32 1
  %35 = call ptr @memcpy(ptr %arrayidx, ptr %mac, i32 6)
  br label %if.end40

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  call void @_clear_bit(i32 noundef %sub37, ptr noundef %bitmap7) #6
  %addrs38 = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 8, i32 4
  %36 = ptrtoint ptr %addrs38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %addrs38, align 8
  %arrayidx39 = getelementptr i8, ptr %37, i32 %mul
  %38 = call ptr @memset(ptr %arrayidx39, i32 0, i32 6)
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then31
  %39 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nc, align 4
  %lock41 = getelementptr inbounds %struct.ncsi_channel, ptr %40, i32 0, i32 3
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock41, i32 noundef %call27) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end40 ], [ -19, %entry.cleanup_crit_edge ], [ -34, %lor.lhs.false.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_ebf(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 4, i32 1
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cmd7 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 4
  %15 = ptrtoint ptr %cmd7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd7, align 4
  %head.i19 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %head.i19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i19, align 8
  %network_header.i20 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 15, i32 0, i32 20
  %19 = ptrtoint ptr %network_header.i20 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %network_header.i20, align 4
  %conv.i21 = zext i16 %20 to i32
  %add.ptr.i22 = getelementptr i8, ptr %18, i32 %conv.i21
  %21 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %enable, align 4
  %mode = getelementptr inbounds %struct.ncsi_cmd_ebf_pkt, ptr %add.ptr.i22, i32 0, i32 1
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode, align 4
  %data = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 4, i32 3
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_dbf(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 4, i32 1
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %enable, align 4
  %data = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 4, i32 3
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_egmf(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 5, i32 1
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cmd7 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 4
  %15 = ptrtoint ptr %cmd7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd7, align 4
  %head.i19 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %head.i19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i19, align 8
  %network_header.i20 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 15, i32 0, i32 20
  %19 = ptrtoint ptr %network_header.i20 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %network_header.i20, align 4
  %conv.i21 = zext i16 %20 to i32
  %add.ptr.i22 = getelementptr i8, ptr %18, i32 %conv.i21
  %21 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %enable, align 4
  %mode = getelementptr inbounds %struct.ncsi_cmd_egmf_pkt, ptr %add.ptr.i22, i32 0, i32 1
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode, align 4
  %data = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 5, i32 3
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_dgmf(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 5, i32 1
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %enable, align 4
  %data = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 5, i32 3
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_snfc(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %enable = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 7, i32 1
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cmd7 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 4
  %15 = ptrtoint ptr %cmd7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmd7, align 4
  %head.i19 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %head.i19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i19, align 8
  %network_header.i20 = getelementptr inbounds %struct.sk_buff, ptr %16, i32 0, i32 15, i32 0, i32 20
  %19 = ptrtoint ptr %network_header.i20 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %network_header.i20, align 4
  %conv.i21 = zext i16 %20 to i32
  %add.ptr.i22 = getelementptr i8, ptr %18, i32 %conv.i21
  %21 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %enable, align 4
  %mode = getelementptr inbounds %struct.ncsi_cmd_snfc_pkt, ptr %add.ptr.i22, i32 0, i32 2
  %22 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %mode, align 1
  %conv = zext i8 %23 to i32
  %data = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 7, i32 3
  %24 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_gvi(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %version = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 5
  %ncsi_version = getelementptr inbounds %struct.ncsi_rsp_gvi_pkt, ptr %add.ptr.i, i32 0, i32 1
  %13 = ptrtoint ptr %ncsi_version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ncsi_version, align 4
  %15 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %version, align 4
  %alpha2 = getelementptr inbounds %struct.ncsi_rsp_gvi_pkt, ptr %add.ptr.i, i32 0, i32 3
  %16 = ptrtoint ptr %alpha2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %alpha2, align 1
  %conv = zext i8 %17 to i32
  %alpha25 = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %alpha25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %alpha25, align 4
  %fw_name = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 5, i32 2
  %fw_name6 = getelementptr inbounds %struct.ncsi_rsp_gvi_pkt, ptr %add.ptr.i, i32 0, i32 4
  %19 = call ptr @memcpy(ptr %fw_name, ptr %fw_name6, i32 12)
  %fw_version = getelementptr inbounds %struct.ncsi_rsp_gvi_pkt, ptr %add.ptr.i, i32 0, i32 5
  %20 = ptrtoint ptr %fw_version to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw_version, align 4
  %fw_version8 = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 5, i32 3
  %22 = ptrtoint ptr %fw_version8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %fw_version8, align 4
  %arrayidx = getelementptr %struct.ncsi_rsp_gvi_pkt, ptr %add.ptr.i, i32 0, i32 6, i32 0
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx, align 2
  %arrayidx11 = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 5, i32 4, i32 0
  %25 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %arrayidx11, align 2
  %arrayidx.1 = getelementptr %struct.ncsi_rsp_gvi_pkt, ptr %add.ptr.i, i32 0, i32 6, i32 1
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx.1, align 2
  %arrayidx11.1 = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 5, i32 4, i32 1
  %28 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %arrayidx11.1, align 2
  %arrayidx.2 = getelementptr %struct.ncsi_rsp_gvi_pkt, ptr %add.ptr.i, i32 0, i32 6, i32 2
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx.2, align 2
  %arrayidx11.2 = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 5, i32 4, i32 2
  %31 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %arrayidx11.2, align 2
  %arrayidx.3 = getelementptr %struct.ncsi_rsp_gvi_pkt, ptr %add.ptr.i, i32 0, i32 6, i32 3
  %32 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx.3, align 2
  %arrayidx11.3 = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 5, i32 4, i32 3
  %34 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %arrayidx11.3, align 2
  %mf_id = getelementptr inbounds %struct.ncsi_rsp_gvi_pkt, ptr %add.ptr.i, i32 0, i32 7
  %35 = ptrtoint ptr %mf_id to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mf_id, align 4
  %mf_id12 = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 5, i32 5
  %37 = ptrtoint ptr %mf_id12 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %mf_id12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_gc(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cap = getelementptr inbounds %struct.ncsi_rsp_gc_pkt, ptr %add.ptr.i, i32 0, i32 1
  %13 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cap, align 4
  %and = and i32 %14, 127
  %cap4 = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 6, i32 0, i32 1
  %15 = ptrtoint ptr %cap4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %cap4, align 4
  %bc_cap = getelementptr inbounds %struct.ncsi_rsp_gc_pkt, ptr %add.ptr.i, i32 0, i32 2
  %16 = ptrtoint ptr %bc_cap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bc_cap, align 4
  %and5 = and i32 %17, 15
  %cap8 = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 6, i32 1, i32 1
  %18 = ptrtoint ptr %cap8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and5, ptr %cap8, align 4
  %mc_cap = getelementptr inbounds %struct.ncsi_rsp_gc_pkt, ptr %add.ptr.i, i32 0, i32 3
  %19 = ptrtoint ptr %mc_cap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mc_cap, align 4
  %and9 = and i32 %20, 63
  %21 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nc, align 4
  %cap12 = getelementptr %struct.ncsi_channel, ptr %22, i32 0, i32 6, i32 2, i32 1
  %23 = ptrtoint ptr %cap12 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and9, ptr %cap12, align 4
  %buf_cap = getelementptr inbounds %struct.ncsi_rsp_gc_pkt, ptr %add.ptr.i, i32 0, i32 4
  %24 = ptrtoint ptr %buf_cap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_cap, align 4
  %26 = load ptr, ptr %nc, align 4
  %cap15 = getelementptr %struct.ncsi_channel, ptr %26, i32 0, i32 6, i32 3, i32 1
  %27 = ptrtoint ptr %cap15 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %25, ptr %cap15, align 4
  %aen_cap = getelementptr inbounds %struct.ncsi_rsp_gc_pkt, ptr %add.ptr.i, i32 0, i32 5
  %28 = ptrtoint ptr %aen_cap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %aen_cap, align 4
  %and16 = and i32 %29, 7
  %30 = load ptr, ptr %nc, align 4
  %cap19 = getelementptr %struct.ncsi_channel, ptr %30, i32 0, i32 6, i32 4, i32 1
  %31 = ptrtoint ptr %cap19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and16, ptr %cap19, align 4
  %vlan_mode = getelementptr inbounds %struct.ncsi_rsp_gc_pkt, ptr %add.ptr.i, i32 0, i32 11
  %32 = ptrtoint ptr %vlan_mode to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %vlan_mode, align 2
  %34 = and i8 %33, 7
  %and20 = zext i8 %34 to i32
  %35 = load ptr, ptr %nc, align 4
  %cap23 = getelementptr %struct.ncsi_channel, ptr %35, i32 0, i32 6, i32 5, i32 1
  %36 = ptrtoint ptr %cap23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and20, ptr %cap23, align 4
  %uc_cnt = getelementptr inbounds %struct.ncsi_rsp_gc_pkt, ptr %add.ptr.i, i32 0, i32 9
  %mc_cnt = getelementptr inbounds %struct.ncsi_rsp_gc_pkt, ptr %add.ptr.i, i32 0, i32 8
  %mixed_cnt = getelementptr inbounds %struct.ncsi_rsp_gc_pkt, ptr %add.ptr.i, i32 0, i32 7
  %37 = ptrtoint ptr %mc_cnt to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %mc_cnt, align 2
  %conv25 = zext i8 %38 to i32
  %39 = ptrtoint ptr %uc_cnt to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %uc_cnt, align 1
  %conv24 = zext i8 %40 to i32
  %add = add nuw nsw i32 %conv25, %conv24
  %41 = ptrtoint ptr %mixed_cnt to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %mixed_cnt, align 1
  %conv26 = zext i8 %42 to i32
  %add27 = add nuw nsw i32 %add, %conv26
  %mul = mul nuw nsw i32 %add27, 6
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 2848) #10
  %43 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %nc, align 4
  %addrs = getelementptr inbounds %struct.ncsi_channel, ptr %44, i32 0, i32 8, i32 4
  %45 = ptrtoint ptr %addrs to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call9.i.i, ptr %addrs, align 8
  %tobool31.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool31.not, label %if.end.cleanup_crit_edge, label %if.end33

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end
  %mac_filter29 = getelementptr inbounds %struct.ncsi_channel, ptr %44, i32 0, i32 8
  %46 = ptrtoint ptr %uc_cnt to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %uc_cnt, align 1
  %48 = ptrtoint ptr %mac_filter29 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %mac_filter29, align 8
  %49 = ptrtoint ptr %mc_cnt to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %mc_cnt, align 2
  %n_mc = getelementptr inbounds %struct.ncsi_channel, ptr %44, i32 0, i32 8, i32 1
  %51 = ptrtoint ptr %n_mc to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %n_mc, align 1
  %52 = ptrtoint ptr %mixed_cnt to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %mixed_cnt, align 1
  %n_mixed = getelementptr inbounds %struct.ncsi_channel, ptr %44, i32 0, i32 8, i32 2
  %54 = ptrtoint ptr %n_mixed to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %n_mixed, align 2
  %vlan_cnt = getelementptr inbounds %struct.ncsi_rsp_gc_pkt, ptr %add.ptr.i, i32 0, i32 6
  %55 = ptrtoint ptr %vlan_cnt to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %vlan_cnt, align 4
  %conv40 = zext i8 %56 to i32
  %57 = shl nuw nsw i32 %conv40, 1
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %57, i32 noundef 2848) #10
  %58 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %nc, align 4
  %vids = getelementptr inbounds %struct.ncsi_channel, ptr %59, i32 0, i32 9, i32 2
  %60 = ptrtoint ptr %vids to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call8.i.i, ptr %vids, align 8
  %tobool44.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool44.not, label %if.end33.cleanup_crit_edge, label %if.end46

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %bitmap = getelementptr inbounds %struct.ncsi_channel, ptr %59, i32 0, i32 9, i32 1
  %61 = ptrtoint ptr %bitmap to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 -1, ptr %bitmap, align 8
  %62 = ptrtoint ptr %vlan_cnt to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %vlan_cnt, align 4
  %vlan_filter49 = getelementptr inbounds %struct.ncsi_channel, ptr %59, i32 0, i32 9
  %64 = ptrtoint ptr %vlan_filter49 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %vlan_filter49, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end33.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end46 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_gp(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %valid_modes = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, ptr %add.ptr.i, i32 0, i32 9
  %13 = ptrtoint ptr %valid_modes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %valid_modes, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %enable6 = getelementptr %struct.ncsi_channel, ptr %12, i32 0, i32 7, i32 4, i32 1
  %15 = ptrtoint ptr %enable6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %enable6, align 4
  %bc_mode = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, ptr %add.ptr.i, i32 0, i32 8
  %16 = ptrtoint ptr %bc_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bc_mode, align 4
  %18 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %nc, align 4
  %data = getelementptr %struct.ncsi_channel, ptr %19, i32 0, i32 7, i32 4, i32 3
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %data, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %21 = ptrtoint ptr %valid_modes to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %valid_modes, align 4
  %and12 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end18_crit_edge, label %if.then14

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %nc, align 4
  %enable17 = getelementptr inbounds %struct.ncsi_channel, ptr %24, i32 0, i32 7, i32 0, i32 1
  %25 = ptrtoint ptr %enable17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %enable17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end10.if.end18_crit_edge
  %26 = ptrtoint ptr %valid_modes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %valid_modes, align 4
  %and20 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end18.if.end26_crit_edge, label %if.then22

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %nc, align 4
  %enable25 = getelementptr %struct.ncsi_channel, ptr %29, i32 0, i32 7, i32 1, i32 1
  %30 = ptrtoint ptr %enable25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %enable25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.end18.if.end26_crit_edge
  %31 = ptrtoint ptr %valid_modes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %valid_modes, align 4
  %and28 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end34_crit_edge, label %if.then30

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nc, align 4
  %enable33 = getelementptr %struct.ncsi_channel, ptr %34, i32 0, i32 7, i32 5, i32 1
  %35 = ptrtoint ptr %enable33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %enable33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end26.if.end34_crit_edge
  %36 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %nc, align 4
  %enable37 = getelementptr %struct.ncsi_channel, ptr %37, i32 0, i32 7, i32 2, i32 1
  %38 = ptrtoint ptr %enable37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %enable37, align 4
  %link_mode = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, ptr %add.ptr.i, i32 0, i32 7
  %39 = ptrtoint ptr %link_mode to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %link_mode, align 4
  %41 = load ptr, ptr %nc, align 4
  %data40 = getelementptr %struct.ncsi_channel, ptr %41, i32 0, i32 7, i32 2, i32 3
  %42 = ptrtoint ptr %data40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %data40, align 4
  %43 = load ptr, ptr %nc, align 4
  %enable44 = getelementptr %struct.ncsi_channel, ptr %43, i32 0, i32 7, i32 3, i32 1
  %44 = ptrtoint ptr %enable44 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %enable44, align 4
  %vlan_mode = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, ptr %add.ptr.i, i32 0, i32 10
  %45 = ptrtoint ptr %vlan_mode to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %vlan_mode, align 4
  %conv = zext i8 %46 to i32
  %47 = load ptr, ptr %nc, align 4
  %data47 = getelementptr %struct.ncsi_channel, ptr %47, i32 0, i32 7, i32 3, i32 3
  %48 = ptrtoint ptr %data47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv, ptr %data47, align 4
  %49 = load ptr, ptr %nc, align 4
  %enable51 = getelementptr %struct.ncsi_channel, ptr %49, i32 0, i32 7, i32 7, i32 1
  %50 = ptrtoint ptr %enable51 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %enable51, align 4
  %fc_mode = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, ptr %add.ptr.i, i32 0, i32 11
  %51 = ptrtoint ptr %fc_mode to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %fc_mode, align 1
  %conv52 = zext i8 %52 to i32
  %53 = load ptr, ptr %nc, align 4
  %data55 = getelementptr %struct.ncsi_channel, ptr %53, i32 0, i32 7, i32 7, i32 3
  %54 = ptrtoint ptr %data55 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv52, ptr %data55, align 4
  %55 = load ptr, ptr %nc, align 4
  %enable59 = getelementptr %struct.ncsi_channel, ptr %55, i32 0, i32 7, i32 6, i32 1
  %56 = ptrtoint ptr %enable59 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %enable59, align 4
  %aen_mode = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, ptr %add.ptr.i, i32 0, i32 13
  %57 = ptrtoint ptr %aen_mode to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %aen_mode, align 4
  %59 = load ptr, ptr %nc, align 4
  %data62 = getelementptr %struct.ncsi_channel, ptr %59, i32 0, i32 7, i32 6, i32 3
  %60 = ptrtoint ptr %data62 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %58, ptr %data62, align 4
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 48
  %mac_enable = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, ptr %add.ptr.i, i32 0, i32 3
  %61 = ptrtoint ptr %mac_enable to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %mac_enable, align 1
  %63 = load ptr, ptr %nc, align 4
  %lock = getelementptr inbounds %struct.ncsi_channel, ptr %63, i32 0, i32 3
  %call68 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %bitmap71 = getelementptr inbounds %struct.ncsi_channel, ptr %63, i32 0, i32 8, i32 3
  %mac_cnt = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, ptr %add.ptr.i, i32 0, i32 1
  %64 = ptrtoint ptr %mac_cnt to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %mac_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp73162.not = icmp eq i8 %65, 0
  br i1 %cmp73162.not, label %if.end34.for.end_crit_edge, label %for.body.lr.ph

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end34
  %conv75 = zext i8 %62 to i32
  %addrs = getelementptr inbounds %struct.ncsi_channel, ptr %63, i32 0, i32 8, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end79.for.body_crit_edge, %for.body.lr.ph
  %i.0164 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end79.for.body_crit_edge ]
  %pdata.0163 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %add.ptr81, %if.end79.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0164
  %and76 = and i32 %shl, %conv75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.then78, label %if.else

if.then78:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @_clear_bit(i32 noundef %i.0164, ptr noundef %bitmap71) #6
  br label %if.end79

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %i.0164, ptr noundef %bitmap71) #6
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.then78
  %66 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %addrs, align 8
  %mul = mul nuw nsw i32 %i.0164, 6
  %arrayidx80 = getelementptr i8, ptr %67, i32 %mul
  %68 = call ptr @memcpy(ptr %arrayidx80, ptr %pdata.0163, i32 6)
  %inc = add nuw nsw i32 %i.0164, 1
  %add.ptr81 = getelementptr i8, ptr %pdata.0163, i32 6
  %69 = ptrtoint ptr %mac_cnt to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %mac_cnt, align 4
  %conv72 = zext i8 %70 to i32
  %cmp73 = icmp ult i32 %inc, %conv72
  br i1 %cmp73, label %if.end79.for.body_crit_edge, label %if.end79.for.end_crit_edge

if.end79.for.end_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end79.for.body_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end79.for.end_crit_edge, %if.end34.for.end_crit_edge
  %pdata.0.lcssa = phi ptr [ %add.ptr, %if.end34.for.end_crit_edge ], [ %add.ptr81, %if.end79.for.end_crit_edge ]
  %71 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %nc, align 4
  %lock82 = getelementptr inbounds %struct.ncsi_channel, ptr %72, i32 0, i32 3
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock82, i32 noundef %call68) #6
  %vlan_enable = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, ptr %add.ptr.i, i32 0, i32 6
  %73 = ptrtoint ptr %vlan_enable to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %vlan_enable, align 2
  %75 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %nc, align 4
  %bitmap83 = getelementptr inbounds %struct.ncsi_channel, ptr %76, i32 0, i32 9, i32 1
  %lock91 = getelementptr inbounds %struct.ncsi_channel, ptr %76, i32 0, i32 3
  %call93 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock91) #6
  %vlan_cnt = getelementptr inbounds %struct.ncsi_rsp_gp_pkt, ptr %add.ptr.i, i32 0, i32 4
  %77 = ptrtoint ptr %vlan_cnt to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %vlan_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp100167.not = icmp eq i8 %78, 0
  br i1 %cmp100167.not, label %for.end.for.end114_crit_edge, label %for.body102.lr.ph

for.end.for.end114_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end114

for.body102.lr.ph:                                ; preds = %for.end
  %conv103 = zext i16 %74 to i32
  %vids = getelementptr inbounds %struct.ncsi_channel, ptr %76, i32 0, i32 9, i32 2
  br label %for.body102

for.body102:                                      ; preds = %if.end109.for.body102_crit_edge, %for.body102.lr.ph
  %i.1169 = phi i32 [ 0, %for.body102.lr.ph ], [ %inc112, %if.end109.for.body102_crit_edge ]
  %pdata.1168 = phi ptr [ %pdata.0.lcssa, %for.body102.lr.ph ], [ %add.ptr113, %if.end109.for.body102_crit_edge ]
  %shl104 = shl nuw i32 1, %i.1169
  %and105 = and i32 %shl104, %conv103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.then107, label %if.else108

if.then107:                                       ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #8
  call void @_clear_bit(i32 noundef %i.1169, ptr noundef %bitmap83) #6
  br label %if.end109

if.else108:                                       ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %i.1169, ptr noundef %bitmap83) #6
  br label %if.end109

if.end109:                                        ; preds = %if.else108, %if.then107
  %79 = ptrtoint ptr %pdata.1168 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %pdata.1168, align 2
  %81 = ptrtoint ptr %vids to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %vids, align 8
  %arrayidx110 = getelementptr i16, ptr %82, i32 %i.1169
  %83 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %80, ptr %arrayidx110, align 2
  %inc112 = add nuw nsw i32 %i.1169, 1
  %add.ptr113 = getelementptr i8, ptr %pdata.1168, i32 2
  %84 = ptrtoint ptr %vlan_cnt to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %vlan_cnt, align 4
  %conv99 = zext i8 %85 to i32
  %cmp100 = icmp ult i32 %inc112, %conv99
  br i1 %cmp100, label %if.end109.for.body102_crit_edge, label %if.end109.for.end114_crit_edge

if.end109.for.end114_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end114

if.end109.for.body102_crit_edge:                  ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body102

for.end114:                                       ; preds = %if.end109.for.end114_crit_edge, %for.end.for.end114_crit_edge
  %86 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %nc, align 4
  %lock115 = getelementptr inbounds %struct.ncsi_channel, ptr %87, i32 0, i32 3
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock115, i32 noundef %call93) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end114, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end114 ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_gcps(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %stats = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10
  %cnt_hi = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 1
  %13 = ptrtoint ptr %cnt_hi to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cnt_hi, align 4
  %15 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %stats, align 4
  %cnt_lo = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 2
  %16 = ptrtoint ptr %cnt_lo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cnt_lo, align 4
  %hnc_cnt_lo = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %hnc_cnt_lo to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %hnc_cnt_lo, align 4
  %rx_bytes = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 3
  %19 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_bytes, align 4
  %hnc_rx_bytes = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 2
  %21 = ptrtoint ptr %hnc_rx_bytes to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %hnc_rx_bytes, align 4
  %tx_bytes = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 4
  %22 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_bytes, align 4
  %hnc_tx_bytes = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 3
  %24 = ptrtoint ptr %hnc_tx_bytes to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %hnc_tx_bytes, align 4
  %rx_uc_pkts = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 5
  %25 = ptrtoint ptr %rx_uc_pkts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_uc_pkts, align 4
  %hnc_rx_uc_pkts = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 4
  %27 = ptrtoint ptr %hnc_rx_uc_pkts to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %hnc_rx_uc_pkts, align 4
  %rx_mc_pkts = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 6
  %28 = ptrtoint ptr %rx_mc_pkts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_mc_pkts, align 4
  %hnc_rx_mc_pkts = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 5
  %30 = ptrtoint ptr %hnc_rx_mc_pkts to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %hnc_rx_mc_pkts, align 4
  %rx_bc_pkts = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 7
  %31 = ptrtoint ptr %rx_bc_pkts to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_bc_pkts, align 4
  %hnc_rx_bc_pkts = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 6
  %33 = ptrtoint ptr %hnc_rx_bc_pkts to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %hnc_rx_bc_pkts, align 4
  %tx_uc_pkts = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 8
  %34 = ptrtoint ptr %tx_uc_pkts to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_uc_pkts, align 4
  %hnc_tx_uc_pkts = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 7
  %36 = ptrtoint ptr %hnc_tx_uc_pkts to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %hnc_tx_uc_pkts, align 4
  %tx_mc_pkts = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 9
  %37 = ptrtoint ptr %tx_mc_pkts to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_mc_pkts, align 4
  %hnc_tx_mc_pkts = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 8
  %39 = ptrtoint ptr %hnc_tx_mc_pkts to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %hnc_tx_mc_pkts, align 4
  %tx_bc_pkts = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 10
  %40 = ptrtoint ptr %tx_bc_pkts to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_bc_pkts, align 4
  %hnc_tx_bc_pkts = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 9
  %42 = ptrtoint ptr %hnc_tx_bc_pkts to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %hnc_tx_bc_pkts, align 4
  %fcs_err = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 11
  %43 = ptrtoint ptr %fcs_err to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %fcs_err, align 4
  %hnc_fcs_err = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 10
  %45 = ptrtoint ptr %hnc_fcs_err to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %hnc_fcs_err, align 4
  %align_err = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 12
  %46 = ptrtoint ptr %align_err to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %align_err, align 4
  %hnc_align_err = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 11
  %48 = ptrtoint ptr %hnc_align_err to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %hnc_align_err, align 4
  %false_carrier = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 13
  %49 = ptrtoint ptr %false_carrier to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %false_carrier, align 4
  %hnc_false_carrier = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 12
  %51 = ptrtoint ptr %hnc_false_carrier to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %hnc_false_carrier, align 4
  %runt_pkts = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 14
  %52 = ptrtoint ptr %runt_pkts to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %runt_pkts, align 4
  %hnc_runt_pkts = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 13
  %54 = ptrtoint ptr %hnc_runt_pkts to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %hnc_runt_pkts, align 4
  %jabber_pkts = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 15
  %55 = ptrtoint ptr %jabber_pkts to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %jabber_pkts, align 4
  %hnc_jabber_pkts = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 14
  %57 = ptrtoint ptr %hnc_jabber_pkts to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %hnc_jabber_pkts, align 4
  %rx_pause_xon = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 16
  %58 = ptrtoint ptr %rx_pause_xon to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rx_pause_xon, align 4
  %hnc_rx_pause_xon = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 15
  %60 = ptrtoint ptr %hnc_rx_pause_xon to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %hnc_rx_pause_xon, align 4
  %rx_pause_xoff = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 17
  %61 = ptrtoint ptr %rx_pause_xoff to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_pause_xoff, align 4
  %hnc_rx_pause_xoff = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 16
  %63 = ptrtoint ptr %hnc_rx_pause_xoff to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %hnc_rx_pause_xoff, align 4
  %tx_pause_xon = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 18
  %64 = ptrtoint ptr %tx_pause_xon to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tx_pause_xon, align 4
  %hnc_tx_pause_xon = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 17
  %66 = ptrtoint ptr %hnc_tx_pause_xon to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %hnc_tx_pause_xon, align 4
  %tx_pause_xoff = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 19
  %67 = ptrtoint ptr %tx_pause_xoff to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tx_pause_xoff, align 4
  %hnc_tx_pause_xoff = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 18
  %69 = ptrtoint ptr %hnc_tx_pause_xoff to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %hnc_tx_pause_xoff, align 4
  %tx_s_collision = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 20
  %70 = ptrtoint ptr %tx_s_collision to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_s_collision, align 4
  %hnc_tx_s_collision = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 19
  %72 = ptrtoint ptr %hnc_tx_s_collision to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %hnc_tx_s_collision, align 4
  %tx_m_collision = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 21
  %73 = ptrtoint ptr %tx_m_collision to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %tx_m_collision, align 4
  %hnc_tx_m_collision = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 20
  %75 = ptrtoint ptr %hnc_tx_m_collision to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %hnc_tx_m_collision, align 4
  %l_collision = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 22
  %76 = ptrtoint ptr %l_collision to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %l_collision, align 4
  %hnc_l_collision = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 21
  %78 = ptrtoint ptr %hnc_l_collision to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %hnc_l_collision, align 4
  %e_collision = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 23
  %79 = ptrtoint ptr %e_collision to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %e_collision, align 4
  %hnc_e_collision = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 22
  %81 = ptrtoint ptr %hnc_e_collision to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %hnc_e_collision, align 4
  %rx_ctl_frames = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 24
  %82 = ptrtoint ptr %rx_ctl_frames to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %rx_ctl_frames, align 4
  %hnc_rx_ctl_frames = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 23
  %84 = ptrtoint ptr %hnc_rx_ctl_frames to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %hnc_rx_ctl_frames, align 4
  %rx_64_frames = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 25
  %85 = ptrtoint ptr %rx_64_frames to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rx_64_frames, align 4
  %hnc_rx_64_frames = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 24
  %87 = ptrtoint ptr %hnc_rx_64_frames to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %hnc_rx_64_frames, align 4
  %rx_127_frames = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 26
  %88 = ptrtoint ptr %rx_127_frames to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_127_frames, align 4
  %hnc_rx_127_frames = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 25
  %90 = ptrtoint ptr %hnc_rx_127_frames to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %hnc_rx_127_frames, align 4
  %rx_255_frames = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 27
  %91 = ptrtoint ptr %rx_255_frames to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rx_255_frames, align 4
  %hnc_rx_255_frames = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 26
  %93 = ptrtoint ptr %hnc_rx_255_frames to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %hnc_rx_255_frames, align 4
  %rx_511_frames = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 28
  %94 = ptrtoint ptr %rx_511_frames to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rx_511_frames, align 4
  %hnc_rx_511_frames = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 27
  %96 = ptrtoint ptr %hnc_rx_511_frames to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %hnc_rx_511_frames, align 4
  %rx_1023_frames = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 29
  %97 = ptrtoint ptr %rx_1023_frames to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rx_1023_frames, align 4
  %hnc_rx_1023_frames = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 28
  %99 = ptrtoint ptr %hnc_rx_1023_frames to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %hnc_rx_1023_frames, align 4
  %rx_1522_frames = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 30
  %100 = ptrtoint ptr %rx_1522_frames to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %rx_1522_frames, align 4
  %hnc_rx_1522_frames = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 29
  %102 = ptrtoint ptr %hnc_rx_1522_frames to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %hnc_rx_1522_frames, align 4
  %rx_9022_frames = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 31
  %103 = ptrtoint ptr %rx_9022_frames to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rx_9022_frames, align 4
  %hnc_rx_9022_frames = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 30
  %105 = ptrtoint ptr %hnc_rx_9022_frames to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %hnc_rx_9022_frames, align 4
  %tx_64_frames = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 32
  %106 = ptrtoint ptr %tx_64_frames to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %tx_64_frames, align 4
  %hnc_tx_64_frames = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 31
  %108 = ptrtoint ptr %hnc_tx_64_frames to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %hnc_tx_64_frames, align 4
  %tx_127_frames = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 33
  %109 = ptrtoint ptr %tx_127_frames to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tx_127_frames, align 4
  %hnc_tx_127_frames = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 32
  %111 = ptrtoint ptr %hnc_tx_127_frames to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %hnc_tx_127_frames, align 4
  %tx_255_frames = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 34
  %112 = ptrtoint ptr %tx_255_frames to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tx_255_frames, align 4
  %hnc_tx_255_frames = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 33
  %114 = ptrtoint ptr %hnc_tx_255_frames to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %hnc_tx_255_frames, align 4
  %tx_511_frames = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 35
  %115 = ptrtoint ptr %tx_511_frames to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tx_511_frames, align 4
  %hnc_tx_511_frames = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 34
  %117 = ptrtoint ptr %hnc_tx_511_frames to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %hnc_tx_511_frames, align 4
  %tx_1023_frames = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 36
  %118 = ptrtoint ptr %tx_1023_frames to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tx_1023_frames, align 4
  %hnc_tx_1023_frames = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 35
  %120 = ptrtoint ptr %hnc_tx_1023_frames to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %hnc_tx_1023_frames, align 4
  %tx_1522_frames = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 37
  %121 = ptrtoint ptr %tx_1522_frames to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tx_1522_frames, align 4
  %hnc_tx_1522_frames = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 36
  %123 = ptrtoint ptr %hnc_tx_1522_frames to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %hnc_tx_1522_frames, align 4
  %tx_9022_frames = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 38
  %124 = ptrtoint ptr %tx_9022_frames to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tx_9022_frames, align 4
  %hnc_tx_9022_frames = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 37
  %126 = ptrtoint ptr %hnc_tx_9022_frames to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %hnc_tx_9022_frames, align 4
  %rx_valid_bytes = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 39
  %127 = ptrtoint ptr %rx_valid_bytes to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rx_valid_bytes, align 4
  %hnc_rx_valid_bytes = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 38
  %129 = ptrtoint ptr %hnc_rx_valid_bytes to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %hnc_rx_valid_bytes, align 4
  %rx_runt_pkts = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 40
  %130 = ptrtoint ptr %rx_runt_pkts to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rx_runt_pkts, align 4
  %hnc_rx_runt_pkts = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 39
  %132 = ptrtoint ptr %hnc_rx_runt_pkts to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %hnc_rx_runt_pkts, align 4
  %rx_jabber_pkts = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, ptr %add.ptr.i, i32 0, i32 41
  %133 = ptrtoint ptr %rx_jabber_pkts to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rx_jabber_pkts, align 4
  %hnc_rx_jabber_pkts = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 40
  %135 = ptrtoint ptr %hnc_rx_jabber_pkts to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %hnc_rx_jabber_pkts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_gns(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rx_cmds = getelementptr inbounds %struct.ncsi_rsp_gns_pkt, ptr %add.ptr.i, i32 0, i32 1
  %13 = ptrtoint ptr %rx_cmds to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_cmds, align 4
  %ncsi_rx_cmds = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 41
  %15 = ptrtoint ptr %ncsi_rx_cmds to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ncsi_rx_cmds, align 4
  %dropped_cmds = getelementptr inbounds %struct.ncsi_rsp_gns_pkt, ptr %add.ptr.i, i32 0, i32 2
  %16 = ptrtoint ptr %dropped_cmds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dropped_cmds, align 4
  %ncsi_dropped_cmds = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 42
  %18 = ptrtoint ptr %ncsi_dropped_cmds to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %ncsi_dropped_cmds, align 4
  %cmd_type_errs = getelementptr inbounds %struct.ncsi_rsp_gns_pkt, ptr %add.ptr.i, i32 0, i32 3
  %19 = ptrtoint ptr %cmd_type_errs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cmd_type_errs, align 4
  %ncsi_cmd_type_errs = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 43
  %21 = ptrtoint ptr %ncsi_cmd_type_errs to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ncsi_cmd_type_errs, align 4
  %cmd_csum_errs = getelementptr inbounds %struct.ncsi_rsp_gns_pkt, ptr %add.ptr.i, i32 0, i32 4
  %22 = ptrtoint ptr %cmd_csum_errs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cmd_csum_errs, align 4
  %ncsi_cmd_csum_errs = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 44
  %24 = ptrtoint ptr %ncsi_cmd_csum_errs to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ncsi_cmd_csum_errs, align 4
  %rx_pkts = getelementptr inbounds %struct.ncsi_rsp_gns_pkt, ptr %add.ptr.i, i32 0, i32 5
  %25 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_pkts, align 4
  %ncsi_rx_pkts = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 45
  %27 = ptrtoint ptr %ncsi_rx_pkts to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ncsi_rx_pkts, align 4
  %tx_pkts = getelementptr inbounds %struct.ncsi_rsp_gns_pkt, ptr %add.ptr.i, i32 0, i32 6
  %28 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_pkts, align 4
  %ncsi_tx_pkts = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 46
  %30 = ptrtoint ptr %ncsi_tx_pkts to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %ncsi_tx_pkts, align 4
  %tx_aen_pkts = getelementptr inbounds %struct.ncsi_rsp_gns_pkt, ptr %add.ptr.i, i32 0, i32 7
  %31 = ptrtoint ptr %tx_aen_pkts to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_aen_pkts, align 4
  %ncsi_tx_aen_pkts = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 47
  %33 = ptrtoint ptr %ncsi_tx_aen_pkts to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %ncsi_tx_aen_pkts, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_gnpts(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #6
  %2 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull %nc) #6
  %11 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nc, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tx_pkts = getelementptr inbounds %struct.ncsi_rsp_gnpts_pkt, ptr %add.ptr.i, i32 0, i32 1
  %13 = ptrtoint ptr %tx_pkts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_pkts, align 4
  %pt_tx_pkts = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 48
  %15 = ptrtoint ptr %pt_tx_pkts to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %pt_tx_pkts, align 4
  %tx_dropped = getelementptr inbounds %struct.ncsi_rsp_gnpts_pkt, ptr %add.ptr.i, i32 0, i32 2
  %16 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_dropped, align 4
  %pt_tx_dropped = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 49
  %18 = ptrtoint ptr %pt_tx_dropped to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pt_tx_dropped, align 4
  %tx_channel_err = getelementptr inbounds %struct.ncsi_rsp_gnpts_pkt, ptr %add.ptr.i, i32 0, i32 3
  %19 = ptrtoint ptr %tx_channel_err to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_channel_err, align 4
  %pt_tx_channel_err = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 50
  %21 = ptrtoint ptr %pt_tx_channel_err to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %pt_tx_channel_err, align 4
  %tx_us_err = getelementptr inbounds %struct.ncsi_rsp_gnpts_pkt, ptr %add.ptr.i, i32 0, i32 4
  %22 = ptrtoint ptr %tx_us_err to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_us_err, align 4
  %pt_tx_us_err = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 51
  %24 = ptrtoint ptr %pt_tx_us_err to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %pt_tx_us_err, align 4
  %rx_pkts = getelementptr inbounds %struct.ncsi_rsp_gnpts_pkt, ptr %add.ptr.i, i32 0, i32 5
  %25 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_pkts, align 4
  %pt_rx_pkts = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 52
  %27 = ptrtoint ptr %pt_rx_pkts to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %pt_rx_pkts, align 4
  %rx_dropped = getelementptr inbounds %struct.ncsi_rsp_gnpts_pkt, ptr %add.ptr.i, i32 0, i32 6
  %28 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_dropped, align 4
  %pt_rx_dropped = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 53
  %30 = ptrtoint ptr %pt_rx_dropped to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %pt_rx_dropped, align 4
  %rx_channel_err = getelementptr inbounds %struct.ncsi_rsp_gnpts_pkt, ptr %add.ptr.i, i32 0, i32 7
  %31 = ptrtoint ptr %rx_channel_err to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_channel_err, align 4
  %pt_rx_channel_err = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 54
  %33 = ptrtoint ptr %pt_rx_channel_err to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %pt_rx_channel_err, align 4
  %rx_us_err = getelementptr inbounds %struct.ncsi_rsp_gnpts_pkt, ptr %add.ptr.i, i32 0, i32 8
  %34 = ptrtoint ptr %rx_us_err to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_us_err, align 4
  %pt_rx_us_err = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 55
  %36 = ptrtoint ptr %pt_rx_us_err to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %pt_rx_us_err, align 4
  %rx_os_err = getelementptr inbounds %struct.ncsi_rsp_gnpts_pkt, ptr %add.ptr.i, i32 0, i32 9
  %37 = ptrtoint ptr %rx_os_err to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_os_err, align 4
  %pt_rx_os_err = getelementptr inbounds %struct.ncsi_channel, ptr %12, i32 0, i32 10, i32 56
  %39 = ptrtoint ptr %pt_rx_os_err to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %pt_rx_os_err, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_gps(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %np = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %np) #6
  %2 = ptrtoint ptr %np to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %np, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef nonnull %np, ptr noundef null) #6
  %11 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %np, align 4
  %tobool.not = icmp eq ptr %12, null
  %. = select i1 %tobool.not, i32 -19, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %np) #6
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_oem(ptr noundef %nr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rsp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %0 = ptrtoint ptr %rsp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsp1, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %mfr_id2 = getelementptr inbounds %struct.ncsi_rsp_oem_pkt, ptr %add.ptr.i, i32 0, i32 1
  %6 = ptrtoint ptr %mfr_id2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mfr_id2, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.then10 [
    i32 33049, label %entry.if.end11_crit_edge
    i32 4413, label %if.end11.fold.split
    i32 343, label %if.end11.fold.split31
  ]

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ndp = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %9 = ptrtoint ptr %ndp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndp, align 4
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef %7) #9
  br label %cleanup

if.end11.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11.fold.split31:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %if.end11.fold.split31, %if.end11.fold.split, %entry.if.end11_crit_edge
  %i.028.lcssa = phi i32 [ 0, %entry.if.end11_crit_edge ], [ 1, %if.end11.fold.split ], [ 2, %if.end11.fold.split31 ]
  %handler12 = getelementptr [3 x %struct.ncsi_rsp_oem_handler], ptr @ncsi_rsp_oem_handlers, i32 0, i32 %i.028.lcssa, i32 1
  %13 = ptrtoint ptr %handler12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handler12, align 4
  %call13 = tail call i32 %14(ptr noundef %nr) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then10
  %retval.0 = phi i32 [ %call13, %if.end11 ], [ -2, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ncsi_rsp_handler_pldm(ptr nocapture noundef readnone %nr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_gpuuid(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %np = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %np) #6
  %2 = ptrtoint ptr %np to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %np, align 4, !annotation !44
  %rsp2 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %3 = ptrtoint ptr %rsp2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rsp2, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 20
  %7 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.ptr.i = getelementptr i8, ptr %6, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %10, ptr noundef nonnull %np, ptr noundef null) #6
  %11 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %np, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %uuid = getelementptr inbounds %struct.ncsi_package, ptr %12, i32 0, i32 1
  %uuid4 = getelementptr inbounds %struct.ncsi_rsp_gpuuid_pkt, ptr %add.ptr.i, i32 0, i32 1
  %13 = call ptr @memcpy(ptr %uuid, ptr %uuid4, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %np) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ncsi_find_package_and_channel(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ncsi_add_channel(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ncsi_add_package(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_oem_mlx(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %saddr.i = alloca %struct.sockaddr, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rsp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %0 = ptrtoint ptr %rsp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsp1, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %cmd = getelementptr inbounds %struct.ncsi_rsp_oem_pkt, ptr %add.ptr.i, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cmd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %param = getelementptr inbounds %struct.ncsi_rsp_oem_pkt, ptr %add.ptr.i, i32 1, i32 0, i32 0, i32 2
  %8 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %param, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 27, i8 %9)
  %cmp4 = icmp eq i8 %9, 27
  br i1 %cmp4, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %ndp1.i = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %10 = ptrtoint ptr %ndp1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndp1.i, align 4
  %dev.i = getelementptr inbounds %struct.ncsi_dev, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %netdev_ops.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %saddr.i) #6
  %16 = getelementptr inbounds %struct.sockaddr, ptr %saddr.i, i32 0, i32 1
  %17 = getelementptr inbounds i8, ptr %saddr.i, i32 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 -1, ptr %17, align 2
  %type.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 32
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %type.i, align 16
  %21 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %saddr.i, align 2
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 15
  %22 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %priv_flags.i, align 16
  %or.i = or i64 %23, 32768
  store i64 %or.i, ptr %priv_flags.i, align 16
  %arrayidx.i = getelementptr %struct.ncsi_rsp_oem_pkt, ptr %add.ptr.i, i32 1, i32 0, i32 0, i32 7
  %24 = call ptr @memcpy(ptr %16, ptr %arrayidx.i, i32 6)
  %gma_flag.i = getelementptr inbounds %struct.ncsi_dev_priv, ptr %11, i32 0, i32 2
  %25 = ptrtoint ptr %gma_flag.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %gma_flag.i, align 4
  %ndo_set_mac_address.i = getelementptr inbounds %struct.net_device_ops, ptr %15, i32 0, i32 9
  %26 = ptrtoint ptr %ndo_set_mac_address.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ndo_set_mac_address.i, align 4
  %call4.i = call i32 %27(ptr noundef %13, ptr noundef nonnull %saddr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.ncsi_rsp_handler_oem_mlx_gma.exit_crit_edge

if.then.ncsi_rsp_handler_oem_mlx_gma.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ncsi_rsp_handler_oem_mlx_gma.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %13, ptr noundef nonnull @.str.7) #9
  br label %ncsi_rsp_handler_oem_mlx_gma.exit

ncsi_rsp_handler_oem_mlx_gma.exit:                ; preds = %if.then.i, %if.then.ncsi_rsp_handler_oem_mlx_gma.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %saddr.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ncsi_rsp_handler_oem_mlx_gma.exit, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i, %ncsi_rsp_handler_oem_mlx_gma.exit ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_oem_bcm(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %saddr.i = alloca %struct.sockaddr, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rsp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %0 = ptrtoint ptr %rsp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsp1, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %type = getelementptr inbounds %struct.ncsi_rsp_oem_pkt, ptr %add.ptr.i, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp eq i8 %7, 1
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %ndp1.i = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %8 = ptrtoint ptr %ndp1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndp1.i, align 4
  %dev.i = getelementptr inbounds %struct.ncsi_dev, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev_ops.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %saddr.i) #6
  %14 = getelementptr inbounds %struct.sockaddr, ptr %saddr.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.sockaddr, ptr %saddr.i, i32 0, i32 1, i32 1
  %16 = getelementptr inbounds %struct.sockaddr, ptr %saddr.i, i32 0, i32 1, i32 2
  %17 = getelementptr inbounds %struct.sockaddr, ptr %saddr.i, i32 0, i32 1, i32 3
  %18 = getelementptr inbounds %struct.sockaddr, ptr %saddr.i, i32 0, i32 1, i32 4
  %19 = getelementptr inbounds %struct.sockaddr, ptr %saddr.i, i32 0, i32 1, i32 5
  %20 = getelementptr inbounds i8, ptr %saddr.i, i32 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 -1, ptr %20, align 2
  %type.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 32
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %type.i, align 16
  %24 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %saddr.i, align 2
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 15
  %25 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %priv_flags.i, align 16
  %or.i = or i64 %26, 32768
  store i64 %or.i, ptr %priv_flags.i, align 16
  %arrayidx.i = getelementptr %struct.ncsi_rsp_oem_pkt, ptr %add.ptr.i, i32 2, i32 0, i32 0, i32 4
  %27 = call ptr @memcpy(ptr %14, ptr %arrayidx.i, i32 6)
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %14, align 2
  %conv.i.i.i = zext i8 %29 to i64
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %15, align 1
  %conv.1.i.i.i = zext i8 %31 to i64
  %32 = shl nuw nsw i64 %conv.i.i.i, 16
  %33 = shl nuw nsw i64 %conv.1.i.i.i, 8
  %shl.2.i.i.i = or i64 %33, %32
  %34 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %16, align 2
  %conv.2.i.i.i = zext i8 %35 to i64
  %or.2.i.i.i = or i64 %shl.2.i.i.i, %conv.2.i.i.i
  %36 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %17, align 1
  %conv.3.i.i.i = zext i8 %37 to i64
  %38 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %18, align 2
  %conv.4.i.i.i = zext i8 %39 to i64
  %40 = shl nuw nsw i64 %or.2.i.i.i, 24
  %41 = shl nuw nsw i64 %conv.3.i.i.i, 16
  %42 = shl nuw nsw i64 %conv.4.i.i.i, 8
  %43 = or i64 %42, %41
  %shl.5.i.i.i = or i64 %43, %40
  %44 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %19, align 1
  %conv.5.i.i.i = zext i8 %45 to i64
  %or.5.i.i.i = or i64 %shl.5.i.i.i, %conv.5.i.i.i
  %inc.i.i = add i64 %or.5.i.i.i, 1
  %conv.i3.i.i = trunc i64 %inc.i.i to i8
  store i8 %conv.i3.i.i, ptr %19, align 1
  %shr.i.i.i = lshr i64 %inc.i.i, 8
  %conv.1.i4.i.i = trunc i64 %shr.i.i.i to i8
  store i8 %conv.1.i4.i.i, ptr %18, align 2
  %shr.1.i.i.i = lshr i64 %inc.i.i, 16
  %conv.2.i6.i.i = trunc i64 %shr.1.i.i.i to i8
  store i8 %conv.2.i6.i.i, ptr %17, align 1
  %shr.2.i.i.i = lshr i64 %inc.i.i, 24
  %conv.3.i8.i.i = trunc i64 %shr.2.i.i.i to i8
  store i8 %conv.3.i8.i.i, ptr %16, align 2
  %shr.3.i.i.i = lshr i64 %inc.i.i, 32
  %conv.4.i10.i.i = trunc i64 %shr.3.i.i.i to i8
  store i8 %conv.4.i10.i.i, ptr %15, align 1
  %shr.4.i.i.i = lshr i64 %inc.i.i, 40
  %conv.5.i12.i.i = trunc i64 %shr.4.i.i.i to i8
  store i8 %conv.5.i12.i.i, ptr %14, align 2
  %46 = load i32, ptr %14, align 4
  %47 = and i32 %46, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.then.ncsi_rsp_handler_oem_bcm_gma.exit_crit_edge

if.then.ncsi_rsp_handler_oem_bcm_gma.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ncsi_rsp_handler_oem_bcm_gma.exit

is_valid_ether_addr.exit.i:                       ; preds = %if.then
  %48 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %18, align 2
  %conv.i.i24.i = zext i16 %49 to i32
  %or.i.i.i = or i32 %46, %conv.i.i24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.ncsi_rsp_handler_oem_bcm_gma.exit_crit_edge, label %if.end.i

is_valid_ether_addr.exit.i.ncsi_rsp_handler_oem_bcm_gma.exit_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ncsi_rsp_handler_oem_bcm_gma.exit

if.end.i:                                         ; preds = %is_valid_ether_addr.exit.i
  %gma_flag.i = getelementptr inbounds %struct.ncsi_dev_priv, ptr %9, i32 0, i32 2
  %50 = ptrtoint ptr %gma_flag.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %gma_flag.i, align 4
  %ndo_set_mac_address.i = getelementptr inbounds %struct.net_device_ops, ptr %13, i32 0, i32 9
  %51 = ptrtoint ptr %ndo_set_mac_address.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ndo_set_mac_address.i, align 4
  %call9.i = call i32 %52(ptr noundef %11, ptr noundef nonnull %saddr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i = icmp slt i32 %call9.i, 0
  br i1 %cmp.i, label %if.then10.i, label %if.end.i.ncsi_rsp_handler_oem_bcm_gma.exit_crit_edge

if.end.i.ncsi_rsp_handler_oem_bcm_gma.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ncsi_rsp_handler_oem_bcm_gma.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.7) #9
  br label %ncsi_rsp_handler_oem_bcm_gma.exit

ncsi_rsp_handler_oem_bcm_gma.exit:                ; preds = %if.then10.i, %if.end.i.ncsi_rsp_handler_oem_bcm_gma.exit_crit_edge, %is_valid_ether_addr.exit.i.ncsi_rsp_handler_oem_bcm_gma.exit_crit_edge, %if.then.ncsi_rsp_handler_oem_bcm_gma.exit_crit_edge
  %retval.0.i = phi i32 [ -6, %is_valid_ether_addr.exit.i.ncsi_rsp_handler_oem_bcm_gma.exit_crit_edge ], [ %call9.i, %if.then10.i ], [ %call9.i, %if.end.i.ncsi_rsp_handler_oem_bcm_gma.exit_crit_edge ], [ -6, %if.then.ncsi_rsp_handler_oem_bcm_gma.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %saddr.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ncsi_rsp_handler_oem_bcm_gma.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ncsi_rsp_handler_oem_bcm_gma.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_rsp_handler_oem_intel(ptr nocapture noundef readonly %nr) #0 align 64 {
entry:
  %saddr.i = alloca %struct.sockaddr, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rsp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %0 = ptrtoint ptr %rsp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsp1, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %3, i32 %conv.i
  %data = getelementptr inbounds %struct.ncsi_rsp_oem_pkt, ptr %add.ptr.i, i32 0, i32 2
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp = icmp eq i8 %7, 6
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %ndp1.i = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %8 = ptrtoint ptr %ndp1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndp1.i, align 4
  %dev.i = getelementptr inbounds %struct.ncsi_dev, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev_ops.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %saddr.i) #6
  %14 = getelementptr inbounds %struct.sockaddr, ptr %saddr.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.sockaddr, ptr %saddr.i, i32 0, i32 1, i32 1
  %16 = getelementptr inbounds %struct.sockaddr, ptr %saddr.i, i32 0, i32 1, i32 2
  %17 = getelementptr inbounds %struct.sockaddr, ptr %saddr.i, i32 0, i32 1, i32 3
  %18 = getelementptr inbounds %struct.sockaddr, ptr %saddr.i, i32 0, i32 1, i32 4
  %19 = getelementptr inbounds %struct.sockaddr, ptr %saddr.i, i32 0, i32 1, i32 5
  %20 = getelementptr inbounds i8, ptr %saddr.i, i32 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 -1, ptr %20, align 2
  %type.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 32
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %type.i, align 16
  %24 = ptrtoint ptr %saddr.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %saddr.i, align 2
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 15
  %25 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %priv_flags.i, align 16
  %or.i = or i64 %26, 32768
  store i64 %or.i, ptr %priv_flags.i, align 16
  %arrayidx.i = getelementptr %struct.ncsi_rsp_oem_pkt, ptr %add.ptr.i, i32 1, i32 0, i32 0, i32 1
  %27 = call ptr @memcpy(ptr %14, ptr %arrayidx.i, i32 6)
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %14, align 2
  %conv.i.i.i = zext i8 %29 to i64
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %15, align 1
  %conv.1.i.i.i = zext i8 %31 to i64
  %32 = shl nuw nsw i64 %conv.i.i.i, 16
  %33 = shl nuw nsw i64 %conv.1.i.i.i, 8
  %shl.2.i.i.i = or i64 %33, %32
  %34 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %16, align 2
  %conv.2.i.i.i = zext i8 %35 to i64
  %or.2.i.i.i = or i64 %shl.2.i.i.i, %conv.2.i.i.i
  %36 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %17, align 1
  %conv.3.i.i.i = zext i8 %37 to i64
  %38 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %18, align 2
  %conv.4.i.i.i = zext i8 %39 to i64
  %40 = shl nuw nsw i64 %or.2.i.i.i, 24
  %41 = shl nuw nsw i64 %conv.3.i.i.i, 16
  %42 = shl nuw nsw i64 %conv.4.i.i.i, 8
  %43 = or i64 %42, %41
  %shl.5.i.i.i = or i64 %43, %40
  %44 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %19, align 1
  %conv.5.i.i.i = zext i8 %45 to i64
  %or.5.i.i.i = or i64 %shl.5.i.i.i, %conv.5.i.i.i
  %inc.i.i = add i64 %or.5.i.i.i, 1
  %conv.i3.i.i = trunc i64 %inc.i.i to i8
  store i8 %conv.i3.i.i, ptr %19, align 1
  %shr.i.i.i = lshr i64 %inc.i.i, 8
  %conv.1.i4.i.i = trunc i64 %shr.i.i.i to i8
  store i8 %conv.1.i4.i.i, ptr %18, align 2
  %shr.1.i.i.i = lshr i64 %inc.i.i, 16
  %conv.2.i6.i.i = trunc i64 %shr.1.i.i.i to i8
  store i8 %conv.2.i6.i.i, ptr %17, align 1
  %shr.2.i.i.i = lshr i64 %inc.i.i, 24
  %conv.3.i8.i.i = trunc i64 %shr.2.i.i.i to i8
  store i8 %conv.3.i8.i.i, ptr %16, align 2
  %shr.3.i.i.i = lshr i64 %inc.i.i, 32
  %conv.4.i10.i.i = trunc i64 %shr.3.i.i.i to i8
  store i8 %conv.4.i10.i.i, ptr %15, align 1
  %shr.4.i.i.i = lshr i64 %inc.i.i, 40
  %conv.5.i12.i.i = trunc i64 %shr.4.i.i.i to i8
  store i8 %conv.5.i12.i.i, ptr %14, align 2
  %46 = load i32, ptr %14, align 4
  %47 = and i32 %46, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.i.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.then.ncsi_rsp_handler_oem_intel_gma.exit_crit_edge

if.then.ncsi_rsp_handler_oem_intel_gma.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ncsi_rsp_handler_oem_intel_gma.exit

is_valid_ether_addr.exit.i:                       ; preds = %if.then
  %48 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %18, align 2
  %conv.i.i24.i = zext i16 %49 to i32
  %or.i.i.i = or i32 %46, %conv.i.i24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.ncsi_rsp_handler_oem_intel_gma.exit_crit_edge, label %if.end.i

is_valid_ether_addr.exit.i.ncsi_rsp_handler_oem_intel_gma.exit_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ncsi_rsp_handler_oem_intel_gma.exit

if.end.i:                                         ; preds = %is_valid_ether_addr.exit.i
  %gma_flag.i = getelementptr inbounds %struct.ncsi_dev_priv, ptr %9, i32 0, i32 2
  %50 = ptrtoint ptr %gma_flag.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %gma_flag.i, align 4
  %ndo_set_mac_address.i = getelementptr inbounds %struct.net_device_ops, ptr %13, i32 0, i32 9
  %51 = ptrtoint ptr %ndo_set_mac_address.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ndo_set_mac_address.i, align 4
  %call9.i = call i32 %52(ptr noundef %11, ptr noundef nonnull %saddr.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i = icmp slt i32 %call9.i, 0
  br i1 %cmp.i, label %if.then10.i, label %if.end.i.ncsi_rsp_handler_oem_intel_gma.exit_crit_edge

if.end.i.ncsi_rsp_handler_oem_intel_gma.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ncsi_rsp_handler_oem_intel_gma.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %11, ptr noundef nonnull @.str.7) #9
  br label %ncsi_rsp_handler_oem_intel_gma.exit

ncsi_rsp_handler_oem_intel_gma.exit:              ; preds = %if.then10.i, %if.end.i.ncsi_rsp_handler_oem_intel_gma.exit_crit_edge, %is_valid_ether_addr.exit.i.ncsi_rsp_handler_oem_intel_gma.exit_crit_edge, %if.then.ncsi_rsp_handler_oem_intel_gma.exit_crit_edge
  %retval.0.i = phi i32 [ -6, %is_valid_ether_addr.exit.i.ncsi_rsp_handler_oem_intel_gma.exit_crit_edge ], [ %call9.i, %if.then10.i ], [ %call9.i, %if.end.i.ncsi_rsp_handler_oem_intel_gma.exit_crit_edge ], [ -6, %if.then.ncsi_rsp_handler_oem_intel_gma.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %saddr.i) #6
  br label %cleanup

cleanup:                                          ; preds = %ncsi_rsp_handler_oem_intel_gma.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %ncsi_rsp_handler_oem_intel_gma.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ncsi_calculate_checksum(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ncsi_send_netlink_rsp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !18, !20, !22, !23, !24, !25, !27, !28, !30, !31, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ncsi/ncsi-rsp.c", i32 1195, i32 23}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ncsi/ncsi-rsp.c", i32 1223, i32 8}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ncsi/ncsi-rsp.c", i32 1243, i32 7}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/ncsi/ncsi-rsp.c", i32 1251, i32 8}
!8 = !{ptr @ncsi_rsp_handlers, !9, !"ncsi_rsp_handlers", i1 false, i1 false}
!9 = !{!"../net/ncsi/ncsi-rsp.c", i32 1125, i32 3}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/ncsi/ncsi-rsp.c", i32 139, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/ncsi/ncsi-rsp.c", i32 783, i32 33}
!16 = !{ptr @ncsi_rsp_oem_handlers, !17, !"ncsi_rsp_oem_handlers", i1 false, i1 false}
!17 = !{!"../net/ncsi/ncsi-rsp.c", i32 753, i32 3}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/ncsi/ncsi-rsp.c", i32 635, i32 21}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/ncsi/ncsi-rsp.c", i32 36, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ncsi_validate_rsp_pkt.__UNIQUE_ID_ddebug459, !21, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/ncsi/ncsi-rsp.c", i32 41, i32 3}
!27 = !{ptr @ncsi_validate_rsp_pkt.__UNIQUE_ID_ddebug460, !26, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ncsi/ncsi-rsp.c", i32 49, i32 3}
!30 = !{ptr @ncsi_validate_rsp_pkt.__UNIQUE_ID_ddebug461, !29, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/ncsi/ncsi-rsp.c", i32 67, i32 3}
!33 = !{ptr @ncsi_validate_rsp_pkt.__UNIQUE_ID_ddebug462, !32, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i8 0, i8 2}
!44 = !{!"auto-init"}
!45 = !{i64 2148985940, i64 2148985945, i64 2148985958, i64 2148986002, i64 2148986036, i64 2148986057}
