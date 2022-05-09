; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/dec/tulip/eeprom.c_pt.bc'
source_filename = "../drivers/net/ethernet/dec/tulip/eeprom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.eeprom_fixup = type { ptr, i8, i8, i8, [32 x i16] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mediatable = type { i16, i8, i8, i8, i32, i32, [0 x %struct.medialeaf] }
%struct.medialeaf = type { i8, i8, ptr }

@tulip_parse_eeprom.last_mediatable = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tulip_parse_eeprom.last_ee_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tulip_parse_eeprom.controller_index = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tulip_parse_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s: Controller %d of multiport board\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tulip_parse_eeprom\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/dec/tulip/eeprom.c\00", [56 x i8] zeroinitializer }, align 32
@tulip_parse_eeprom._entry_ptr = internal global ptr @tulip_parse_eeprom._entry, section ".printk_index", align 4
@tulip_parse_eeprom._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\016%s: Missing EEPROM, this interface may not work correctly!\0A\00", [34 x i8] zeroinitializer }, align 32
@tulip_parse_eeprom._entry_ptr.5 = internal global ptr @tulip_parse_eeprom._entry.3, section ".printk_index", align 4
@tulip_parse_eeprom._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\016%s: Old format EEPROM on '%s' board.  Using substitute media control info\0A\00", [51 x i8] zeroinitializer }, align 32
@tulip_parse_eeprom._entry_ptr.8 = internal global ptr @tulip_parse_eeprom._entry.6, section ".printk_index", align 4
@tulip_parse_eeprom._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s: Old style EEPROM with no media selection information\0A\00", [36 x i8] zeroinitializer }, align 32
@tulip_parse_eeprom._entry_ptr.11 = internal global ptr @tulip_parse_eeprom._entry.9, section ".printk_index", align 4
@tulip_debug = external dso_local local_unnamed_addr global i32, align 4
@tulip_parse_eeprom._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: no phy info, aborting mtable build\0A\00", [54 x i8] zeroinitializer }, align 32
@tulip_parse_eeprom._entry_ptr.14 = internal global ptr @tulip_parse_eeprom._entry.12, section ".printk_index", align 4
@tulip_parse_eeprom._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: EEPROM default media type %s\0A\00", [60 x i8] zeroinitializer }, align 32
@tulip_parse_eeprom._entry_ptr.17 = internal global ptr @tulip_parse_eeprom._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Autosense\00", [22 x i8] zeroinitializer }, align 32
@medianame = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@tulip_parse_eeprom._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\016%s: MII interface PHY %d, setup/reset sequences %d/%d long, capabilities %02x %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@tulip_parse_eeprom._entry_ptr.21 = internal global ptr @tulip_parse_eeprom._entry.19, section ".printk_index", align 4
@tulip_parse_eeprom._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016%s: Index #%d - Media %s (#%d) described by a %s (%d) block\0A\00", [33 x i8] zeroinitializer }, align 32
@tulip_parse_eeprom._entry_ptr.24 = internal global ptr @tulip_parse_eeprom._entry.22, section ".printk_index", align 4
@block_name = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unknown>\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Asante\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SMC9332DST\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Cogent EM100\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Maxtech NX-110\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Accton EN1207\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NetWinder\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cobalt Microserver\00", [45 x i8] zeroinitializer }, align 32
@eeprom_fixups = internal constant { <{ { ptr, i8, i8, i8, i8, <{ [11 x i16], [21 x i16] }> }, { ptr, i8, i8, i8, i8, <{ [12 x i16], [20 x i16] }> }, { ptr, i8, i8, i8, i8, <{ [16 x i16], [16 x i16] }> }, { ptr, i8, i8, i8, i8, <{ [14 x i16], [18 x i16] }> }, { ptr, i8, i8, i8, i8, <{ [14 x i16], [18 x i16] }> }, { ptr, i8, i8, i8, i8, <{ [11 x i16], [21 x i16] }> }, { ptr, i8, i8, i8, i8, <{ [14 x i16], [18 x i16] }> }, %struct.eeprom_fixup }>, [128 x i8] } { <{ { ptr, i8, i8, i8, i8, <{ [11 x i16], [21 x i16] }> }, { ptr, i8, i8, i8, i8, <{ [12 x i16], [20 x i16] }> }, { ptr, i8, i8, i8, i8, <{ [16 x i16], [16 x i16] }> }, { ptr, i8, i8, i8, i8, <{ [14 x i16], [18 x i16] }> }, { ptr, i8, i8, i8, i8, <{ [14 x i16], [18 x i16] }> }, { ptr, i8, i8, i8, i8, <{ [11 x i16], [21 x i16] }> }, { ptr, i8, i8, i8, i8, <{ [14 x i16], [18 x i16] }> }, %struct.eeprom_fixup }> <{ { ptr, i8, i8, i8, i8, <{ [11 x i16], [21 x i16] }> } { ptr @.str.26, i8 0, i8 0, i8 -108, i8 undef, <{ [11 x i16], [21 x i16] }> <{ [11 x i16] [i16 7680, i16 0, i16 2048, i16 256, i16 396, i16 0, i16 0, i16 -8072, i16 1, i16 80, i16 24], [21 x i16] zeroinitializer }> }, { ptr, i8, i8, i8, i8, <{ [12 x i16], [20 x i16] }> } { ptr @.str.27, i8 0, i8 0, i8 -64, i8 undef, <{ [12 x i16], [20 x i16] }> <{ [12 x i16] [i16 7680, i16 0, i16 2048, i16 1055, i16 0, i16 158, i16 4, i16 158, i16 2307, i16 109, i16 2309, i16 109], [20 x i16] zeroinitializer }> }, { ptr, i8, i8, i8, i8, <{ [16 x i16], [16 x i16] }> } { ptr @.str.28, i8 0, i8 0, i8 -110, i8 undef, <{ [16 x i16], [16 x i16] }> <{ [16 x i16] [i16 7680, i16 0, i16 2048, i16 1599, i16 263, i16 -32735, i16 264, i16 -32735, i16 256, i16 158, i16 260, i16 158, i16 259, i16 109, i16 261, i16 109], [16 x i16] zeroinitializer }> }, { ptr, i8, i8, i8, i8, <{ [14 x i16], [18 x i16] }> } { ptr @.str.29, i8 0, i8 0, i8 -24, i8 undef, <{ [14 x i16], [18 x i16] }> <{ [14 x i16] [i16 7680, i16 0, i16 2048, i16 1299, i16 4097, i16 158, i16 0, i16 158, i16 4, i16 158, i16 771, i16 109, i16 773, i16 109], [18 x i16] zeroinitializer }> }, { ptr, i8, i8, i8, i8, <{ [14 x i16], [18 x i16] }> } { ptr @.str.30, i8 0, i8 0, i8 -24, i8 undef, <{ [14 x i16], [18 x i16] }> <{ [14 x i16] [i16 7680, i16 0, i16 2048, i16 1311, i16 6913, i16 0, i16 2816, i16 158, i16 2820, i16 158, i16 6915, i16 109, i16 6917, i16 109], [18 x i16] zeroinitializer }> }, { ptr, i8, i8, i8, i8, <{ [11 x i16], [21 x i16] }> } { ptr @.str.31, i8 0, i8 16, i8 87, i8 undef, <{ [11 x i16], [21 x i16] }> <{ [11 x i16] [i16 7680, i16 0, i16 11, i16 -28927, i16 259, i16 768, i16 2081, i16 0, i16 1, i16 0, i16 481], [21 x i16] zeroinitializer }> }, { ptr, i8, i8, i8, i8, <{ [14 x i16], [18 x i16] }> } { ptr @.str.32, i8 0, i8 16, i8 -32, i8 undef, <{ [14 x i16], [18 x i16] }> <{ [14 x i16] [i16 7680, i16 0, i16 2048, i16 -32767, i16 3, i16 1024, i16 2049, i16 0, i16 2048, i16 0, i16 30720, i16 480, i16 20480, i16 6144], [18 x i16] zeroinitializer }> }, %struct.eeprom_fixup zeroinitializer }>, [128 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"21140 non-MII\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"21140 MII PHY\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"21142 Serial PHY\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"21142 MII PHY\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"21143 SYM PHY\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"21143 reset method\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 5, i64 0, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"last_mediatable\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 151, i32 28 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"last_ee_data\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 152, i32 24 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"controller_index\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 153, i32 13 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 168, i32 5 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 174, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 187, i32 5 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 193, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 222, i32 5 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 237, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 303, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [11 x i8] c"block_name\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 81, i32 26 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 309, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 29, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 31, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 36, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 43, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 49, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 56, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 62, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant [14 x i8] c"eeprom_fixups\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 28, i32 28 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 82, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 83, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 84, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 85, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 86, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [43 x i8] c"../drivers/net/ethernet/dec/tulip/eeprom.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 87, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @tulip_parse_eeprom._entry, ptr @tulip_parse_eeprom._entry.12, ptr @tulip_parse_eeprom._entry.15, ptr @tulip_parse_eeprom._entry.19, ptr @tulip_parse_eeprom._entry.22, ptr @tulip_parse_eeprom._entry.3, ptr @tulip_parse_eeprom._entry.6, ptr @tulip_parse_eeprom._entry.9, ptr @tulip_parse_eeprom._entry_ptr, ptr @tulip_parse_eeprom._entry_ptr.11, ptr @tulip_parse_eeprom._entry_ptr.14, ptr @tulip_parse_eeprom._entry_ptr.17, ptr @tulip_parse_eeprom._entry_ptr.21, ptr @tulip_parse_eeprom._entry_ptr.24, ptr @tulip_parse_eeprom._entry_ptr.5, ptr @tulip_parse_eeprom._entry_ptr.8, ptr @tulip_parse_eeprom.last_mediatable, ptr @tulip_parse_eeprom.last_ee_data, ptr @tulip_parse_eeprom.controller_index, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @block_name, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @eeprom_fixups, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_parse_eeprom.last_mediatable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_parse_eeprom.last_ee_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_parse_eeprom.controller_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_parse_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_parse_eeprom._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_parse_eeprom._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_parse_eeprom._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_parse_eeprom._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_parse_eeprom._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_parse_eeprom._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_parse_eeprom._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @block_name to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_fixups to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tulip_parse_eeprom(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %eeprom = getelementptr i8, ptr %dev, i32 4264
  %mtable = getelementptr i8, ptr %dev, i32 4820
  %0 = ptrtoint ptr %mtable to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %mtable, align 4
  %1 = ptrtoint ptr %eeprom to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %eeprom, align 1
  %arrayidx1 = getelementptr i8, ptr %dev, i32 4280
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp3.not = icmp eq i8 %2, %4
  br i1 %cmp3.not, label %for.cond, label %entry.if.end95_crit_edge

entry.if.end95_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

for.cond:                                         ; preds = %entry
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 4265
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.1, align 1
  %arrayidx1.1 = getelementptr i8, ptr %dev, i32 4281
  %7 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx1.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp3.not.1 = icmp eq i8 %6, %8
  br i1 %cmp3.not.1, label %for.cond.1, label %for.cond.if.end95_crit_edge

for.cond.if.end95_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.2 = getelementptr i8, ptr %dev, i32 4266
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.2, align 1
  %arrayidx1.2 = getelementptr i8, ptr %dev, i32 4282
  %11 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp3.not.2 = icmp eq i8 %10, %12
  br i1 %cmp3.not.2, label %for.cond.2, label %for.cond.1.if.end95_crit_edge

for.cond.1.if.end95_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.3 = getelementptr i8, ptr %dev, i32 4267
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.3, align 1
  %arrayidx1.3 = getelementptr i8, ptr %dev, i32 4283
  %15 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx1.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp3.not.3 = icmp eq i8 %14, %16
  br i1 %cmp3.not.3, label %for.cond.3, label %for.cond.2.if.end95_crit_edge

for.cond.2.if.end95_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.4 = getelementptr i8, ptr %dev, i32 4268
  %17 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.4, align 1
  %arrayidx1.4 = getelementptr i8, ptr %dev, i32 4284
  %19 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx1.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp3.not.4 = icmp eq i8 %18, %20
  br i1 %cmp3.not.4, label %for.cond.4, label %for.cond.3.if.end95_crit_edge

for.cond.3.if.end95_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

for.cond.4:                                       ; preds = %for.cond.3
  %arrayidx.5 = getelementptr i8, ptr %dev, i32 4269
  %21 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.5, align 1
  %arrayidx1.5 = getelementptr i8, ptr %dev, i32 4285
  %23 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx1.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp3.not.5 = icmp eq i8 %22, %24
  br i1 %cmp3.not.5, label %for.cond.5, label %for.cond.4.if.end95_crit_edge

for.cond.4.if.end95_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

for.cond.5:                                       ; preds = %for.cond.4
  %arrayidx.6 = getelementptr i8, ptr %dev, i32 4270
  %25 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.6, align 1
  %arrayidx1.6 = getelementptr i8, ptr %dev, i32 4286
  %27 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx1.6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp3.not.6 = icmp eq i8 %26, %28
  br i1 %cmp3.not.6, label %for.cond.6, label %for.cond.5.if.end95_crit_edge

for.cond.5.if.end95_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

for.cond.6:                                       ; preds = %for.cond.5
  %arrayidx.7 = getelementptr i8, ptr %dev, i32 4271
  %29 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.7, align 1
  %arrayidx1.7 = getelementptr i8, ptr %dev, i32 4287
  %31 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx1.7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %cmp3.not.7 = icmp eq i8 %30, %32
  br i1 %cmp3.not.7, label %for.cond.7, label %for.cond.6.if.end95_crit_edge

for.cond.6.if.end95_crit_edge:                    ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

for.cond.7:                                       ; preds = %for.cond.6
  %33 = ptrtoint ptr %eeprom to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %eeprom, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %cmp10 = icmp eq i8 %34, -1
  br i1 %cmp10, label %if.then12, label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.cond.7
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %35 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_addr, align 64
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 1
  %arrayidx39 = getelementptr i8, ptr %36, i32 1
  %arrayidx47 = getelementptr i8, ptr %36, i32 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %cmp36 = icmp eq i8 %38, 0
  br i1 %cmp36, label %land.lhs.true, label %for.cond27.preheader.for.end81_crit_edge

for.cond27.preheader.for.end81_crit_edge:         ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end81

if.then12:                                        ; preds = %for.cond.7
  %39 = load ptr, ptr @tulip_parse_eeprom.last_mediatable, align 4
  %tobool.not = icmp eq ptr %39, null
  br i1 %tobool.not, label %do.end20, label %if.then13

if.then13:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %40 = load i32, ptr @tulip_parse_eeprom.controller_index, align 4
  %inc14 = add i32 %40, 1
  store i32 %inc14, ptr @tulip_parse_eeprom.controller_index, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %dev, i32 noundef %inc14) #8
  %41 = load ptr, ptr @tulip_parse_eeprom.last_mediatable, align 4
  %42 = ptrtoint ptr %mtable to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %mtable, align 4
  %43 = load ptr, ptr @tulip_parse_eeprom.last_ee_data, align 4
  br label %subsequent_board

do.end20:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %dev) #8
  br label %cleanup429

land.lhs.true:                                    ; preds = %for.cond27.preheader
  %44 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp43 = icmp eq i8 %45, 0
  br i1 %cmp43, label %land.lhs.true45, label %land.lhs.true.land.lhs.true.5_crit_edge

land.lhs.true.land.lhs.true.5_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.5

land.lhs.true45:                                  ; preds = %land.lhs.true
  %46 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -108, i8 %47)
  %cmp51 = icmp eq i8 %47, -108
  br i1 %cmp51, label %land.lhs.true45.if.end66_crit_edge, label %land.lhs.true45.1

land.lhs.true45.if.end66_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

land.lhs.true59:                                  ; preds = %land.lhs.true45.4.land.lhs.true59_crit_edge, %land.lhs.true45.3.land.lhs.true59_crit_edge
  %i.1591.lcssa = phi i32 [ 3, %land.lhs.true45.3.land.lhs.true59_crit_edge ], [ 4, %land.lhs.true45.4.land.lhs.true59_crit_edge ]
  %arrayidx60 = getelementptr i8, ptr %dev, i32 4290
  %48 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %49)
  %cmp62 = icmp eq i8 %49, 85
  %inc65 = zext i1 %cmp62 to i32
  %spec.select = add nuw nsw i32 %i.1591.lcssa, %inc65
  br label %if.end66

if.end66:                                         ; preds = %land.lhs.true45.6.if.end66_crit_edge, %land.lhs.true45.5.if.end66_crit_edge, %land.lhs.true45.2.if.end66_crit_edge, %land.lhs.true45.1.if.end66_crit_edge, %land.lhs.true59, %land.lhs.true45.if.end66_crit_edge
  %i.2 = phi i32 [ %spec.select, %land.lhs.true59 ], [ 6, %land.lhs.true45.6.if.end66_crit_edge ], [ 5, %land.lhs.true45.5.if.end66_crit_edge ], [ 2, %land.lhs.true45.2.if.end66_crit_edge ], [ 1, %land.lhs.true45.1.if.end66_crit_edge ], [ 0, %land.lhs.true45.if.end66_crit_edge ]
  %add.ptr = getelementptr i8, ptr %dev, i32 4290
  %arrayidx67 = getelementptr [8 x %struct.eeprom_fixup], ptr @eeprom_fixups, i32 0, i32 %i.2
  %newtable = getelementptr [8 x %struct.eeprom_fixup], ptr @eeprom_fixups, i32 0, i32 %i.2, i32 4
  %50 = call ptr @memcpy(ptr %add.ptr, ptr %newtable, i32 64)
  %51 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx67, align 4
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %dev, ptr noundef %52) #8
  br label %for.end81

land.lhs.true45.1:                                ; preds = %land.lhs.true45
  %53 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %54)
  %cmp51.1 = icmp eq i8 %54, -64
  br i1 %cmp51.1, label %land.lhs.true45.1.if.end66_crit_edge, label %land.lhs.true.2

land.lhs.true45.1.if.end66_crit_edge:             ; preds = %land.lhs.true45.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

land.lhs.true.2:                                  ; preds = %land.lhs.true45.1
  %55 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %55)
  %.pr = load i8, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %cmp43.2 = icmp eq i8 %.pr, 0
  br i1 %cmp43.2, label %land.lhs.true45.2, label %land.lhs.true.2.land.lhs.true.5_crit_edge

land.lhs.true.2.land.lhs.true.5_crit_edge:        ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.5

land.lhs.true45.2:                                ; preds = %land.lhs.true.2
  %56 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -110, i8 %57)
  %cmp51.2 = icmp eq i8 %57, -110
  br i1 %cmp51.2, label %land.lhs.true45.2.if.end66_crit_edge, label %land.lhs.true45.3

land.lhs.true45.2.if.end66_crit_edge:             ; preds = %land.lhs.true45.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

land.lhs.true45.3:                                ; preds = %land.lhs.true45.2
  %58 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -24, i8 %59)
  %cmp51.3 = icmp eq i8 %59, -24
  br i1 %cmp51.3, label %land.lhs.true45.3.land.lhs.true59_crit_edge, label %land.lhs.true.4

land.lhs.true45.3.land.lhs.true59_crit_edge:      ; preds = %land.lhs.true45.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true59

land.lhs.true.4:                                  ; preds = %land.lhs.true45.3
  %60 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %60)
  %.pr610 = load i8, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr610)
  %cmp43.4 = icmp eq i8 %.pr610, 0
  br i1 %cmp43.4, label %land.lhs.true45.4, label %land.lhs.true.4.land.lhs.true.5_crit_edge

land.lhs.true.4.land.lhs.true.5_crit_edge:        ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.5

land.lhs.true45.4:                                ; preds = %land.lhs.true.4
  %61 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -24, i8 %62)
  %cmp51.4 = icmp eq i8 %62, -24
  br i1 %cmp51.4, label %land.lhs.true45.4.land.lhs.true59_crit_edge, label %land.lhs.true45.4.land.lhs.true.6thread-pre-split_crit_edge

land.lhs.true45.4.land.lhs.true.6thread-pre-split_crit_edge: ; preds = %land.lhs.true45.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.6thread-pre-split

land.lhs.true45.4.land.lhs.true59_crit_edge:      ; preds = %land.lhs.true45.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true59

land.lhs.true.5:                                  ; preds = %land.lhs.true.4.land.lhs.true.5_crit_edge, %land.lhs.true.2.land.lhs.true.5_crit_edge, %land.lhs.true.land.lhs.true.5_crit_edge
  %63 = phi i8 [ %.pr610, %land.lhs.true.4.land.lhs.true.5_crit_edge ], [ %.pr, %land.lhs.true.2.land.lhs.true.5_crit_edge ], [ %45, %land.lhs.true.land.lhs.true.5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %63)
  %cmp43.5 = icmp eq i8 %63, 16
  br i1 %cmp43.5, label %land.lhs.true45.5, label %land.lhs.true.5.land.lhs.true.6_crit_edge

land.lhs.true.5.land.lhs.true.6_crit_edge:        ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.6

land.lhs.true45.5:                                ; preds = %land.lhs.true.5
  %64 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 87, i8 %65)
  %cmp51.5 = icmp eq i8 %65, 87
  br i1 %cmp51.5, label %land.lhs.true45.5.if.end66_crit_edge, label %land.lhs.true45.5.land.lhs.true.6thread-pre-split_crit_edge

land.lhs.true45.5.land.lhs.true.6thread-pre-split_crit_edge: ; preds = %land.lhs.true45.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.6thread-pre-split

land.lhs.true45.5.if.end66_crit_edge:             ; preds = %land.lhs.true45.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

land.lhs.true.6thread-pre-split:                  ; preds = %land.lhs.true45.5.land.lhs.true.6thread-pre-split_crit_edge, %land.lhs.true45.4.land.lhs.true.6thread-pre-split_crit_edge
  %66 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %66)
  %.pr609 = load i8, ptr %arrayidx39, align 1
  br label %land.lhs.true.6

land.lhs.true.6:                                  ; preds = %land.lhs.true.6thread-pre-split, %land.lhs.true.5.land.lhs.true.6_crit_edge
  %67 = phi i8 [ %.pr609, %land.lhs.true.6thread-pre-split ], [ %63, %land.lhs.true.5.land.lhs.true.6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %67)
  %cmp43.6 = icmp eq i8 %67, 16
  br i1 %cmp43.6, label %land.lhs.true45.6, label %land.lhs.true.6.for.end81_crit_edge

land.lhs.true.6.for.end81_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end81

land.lhs.true45.6:                                ; preds = %land.lhs.true.6
  %68 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %69)
  %cmp51.6 = icmp eq i8 %69, -32
  br i1 %cmp51.6, label %land.lhs.true45.6.if.end66_crit_edge, label %land.lhs.true45.6.for.end81_crit_edge

land.lhs.true45.6.for.end81_crit_edge:            ; preds = %land.lhs.true45.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end81

land.lhs.true45.6.if.end66_crit_edge:             ; preds = %land.lhs.true45.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66

for.end81:                                        ; preds = %land.lhs.true45.6.for.end81_crit_edge, %land.lhs.true.6.for.end81_crit_edge, %if.end66, %for.cond27.preheader.for.end81_crit_edge
  %i.3 = phi i32 [ %i.2, %if.end66 ], [ 7, %for.cond27.preheader.for.end81_crit_edge ], [ 7, %land.lhs.true45.6.for.end81_crit_edge ], [ 7, %land.lhs.true.6.for.end81_crit_edge ]
  %arrayidx82 = getelementptr [8 x %struct.eeprom_fixup], ptr @eeprom_fixups, i32 0, i32 %i.3
  %70 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx82, align 4
  %cmp84 = icmp eq ptr %71, null
  br i1 %cmp84, label %do.end89, label %for.end81.if.end95_crit_edge

for.end81.if.end95_crit_edge:                     ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

do.end89:                                         ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #7
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %dev) #8
  br label %cleanup429

if.end95:                                         ; preds = %for.end81.if.end95_crit_edge, %for.cond.6.if.end95_crit_edge, %for.cond.5.if.end95_crit_edge, %for.cond.4.if.end95_crit_edge, %for.cond.3.if.end95_crit_edge, %for.cond.2.if.end95_crit_edge, %for.cond.1.if.end95_crit_edge, %for.cond.if.end95_crit_edge, %entry.if.end95_crit_edge
  store i32 0, ptr @tulip_parse_eeprom.controller_index, align 4
  %arrayidx96 = getelementptr i8, ptr %dev, i32 4283
  %72 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx96, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %73)
  %cmp98 = icmp ugt i8 %73, 1
  br i1 %cmp98, label %if.then100, label %if.end95.subsequent_board_crit_edge

if.end95.subsequent_board_crit_edge:              ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %subsequent_board

if.then100:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  store ptr %eeprom, ptr @tulip_parse_eeprom.last_ee_data, align 4
  br label %subsequent_board

subsequent_board:                                 ; preds = %if.then100, %if.end95.subsequent_board_crit_edge, %if.then13
  %ee_data.0 = phi ptr [ %43, %if.then13 ], [ %eeprom, %if.then100 ], [ %eeprom, %if.end95.subsequent_board_crit_edge ]
  %arrayidx102 = getelementptr i8, ptr %ee_data.0, i32 27
  %74 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx102, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp104 = icmp eq i8 %75, 0
  br i1 %cmp104, label %subsequent_board.cleanup429_crit_edge, label %if.else107

subsequent_board.cleanup429_crit_edge:            ; preds = %subsequent_board
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup429

if.else107:                                       ; preds = %subsequent_board
  %conv103 = zext i8 %75 to i32
  %add.ptr110 = getelementptr i8, ptr %ee_data.0, i32 %conv103
  %76 = ptrtoint ptr %add.ptr110 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %add.ptr110, align 1
  %78 = tail call i16 @llvm.bswap.i16(i16 %77) #5
  %add.ptr113 = getelementptr i8, ptr %add.ptr110, i32 2
  %flags = getelementptr i8, ptr %dev, i32 3808
  %79 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %flags, align 8
  %and = and i32 %80, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool114.not = icmp eq i32 %and, 0
  br i1 %tobool114.not, label %if.else107.if.end116_crit_edge, label %if.then115

if.else107.if.end116_crit_edge:                   ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116

if.then115:                                       ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #7
  %incdec.ptr = getelementptr i8, ptr %add.ptr113, i32 1
  %81 = ptrtoint ptr %add.ptr113 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %add.ptr113, align 1
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.else107.if.end116_crit_edge
  %csr12dir.0 = phi i8 [ %82, %if.then115 ], [ 0, %if.else107.if.end116_crit_edge ]
  %p.0 = phi ptr [ %incdec.ptr, %if.then115 ], [ %add.ptr113, %if.else107.if.end116_crit_edge ]
  %incdec.ptr117 = getelementptr i8, ptr %p.0, i32 1
  %83 = ptrtoint ptr %p.0 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %p.0, align 1
  %conv118 = zext i8 %84 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %cmp119 = icmp eq i8 %84, 0
  br i1 %cmp119, label %if.then121, label %if.end8.i

if.then121:                                       ; preds = %if.end116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %85 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp122 = icmp sgt i32 %85, 0
  br i1 %cmp122, label %do.end127, label %if.then121.cleanup429_crit_edge

if.then121.cleanup429_crit_edge:                  ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup429

do.end127:                                        ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #7
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %dev) #8
  br label %cleanup429

if.end8.i:                                        ; preds = %if.end116
  %86 = shl nuw nsw i32 %conv118, 3
  %spec.select.i586 = add nuw nsw i32 %86, 16
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i586, i32 noundef 3264) #9
  %cmp136 = icmp eq ptr %call9.i, null
  br i1 %cmp136, label %if.end8.i.cleanup429_crit_edge, label %if.end139

if.end8.i.cleanup429_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup429

if.end139:                                        ; preds = %if.end8.i
  %87 = ptrtoint ptr %mtable to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call9.i, ptr %mtable, align 4
  store ptr %call9.i, ptr @tulip_parse_eeprom.last_mediatable, align 4
  %88 = ptrtoint ptr %call9.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %78, ptr %call9.i, align 128
  %leafcount = getelementptr inbounds %struct.mediatable, ptr %call9.i, i32 0, i32 1
  %89 = ptrtoint ptr %leafcount to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %84, ptr %leafcount, align 2
  %csr12dir142 = getelementptr inbounds %struct.mediatable, ptr %call9.i, i32 0, i32 2
  %90 = ptrtoint ptr %csr12dir142 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %csr12dir.0, ptr %csr12dir142, align 1
  %has_reset = getelementptr inbounds %struct.mediatable, ptr %call9.i, i32 0, i32 3
  %91 = ptrtoint ptr %has_reset to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %has_reset, align 4
  %csr15val = getelementptr inbounds %struct.mediatable, ptr %call9.i, i32 0, i32 5
  %92 = ptrtoint ptr %csr15val to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %csr15val, align 4
  %csr15dir = getelementptr inbounds %struct.mediatable, ptr %call9.i, i32 0, i32 4
  %93 = ptrtoint ptr %csr15dir to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %csr15dir, align 8
  %conv155 = zext i16 %78 to i32
  %and156 = and i32 %conv155, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156)
  %tobool157.not = icmp eq i32 %and156, 0
  br i1 %tobool157.not, label %cond.false, label %if.end139.for.body165.lr.ph_crit_edge

if.end139.for.body165.lr.ph_crit_edge:            ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body165.lr.ph

cond.false:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #7
  %and159 = and i32 %conv155, 31
  %arrayidx160 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %and159
  %94 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx160, align 4
  br label %for.body165.lr.ph

for.body165.lr.ph:                                ; preds = %cond.false, %if.end139.for.body165.lr.ph_crit_edge
  %cond = phi ptr [ %95, %cond.false ], [ @.str.18, %if.end139.for.body165.lr.ph_crit_edge ]
  %call161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %dev, ptr noundef %cond) #8
  %chip_id = getelementptr i8, ptr %dev, i32 3800
  br label %for.body165

for.body165:                                      ; preds = %cleanup.for.body165_crit_edge, %for.body165.lr.ph
  %i.4598 = phi i32 [ 0, %for.body165.lr.ph ], [ %inc414, %cleanup.for.body165_crit_edge ]
  %p.1596 = phi ptr [ %incdec.ptr117, %for.body165.lr.ph ], [ %p.3, %cleanup.for.body165_crit_edge ]
  %count.0595 = phi i32 [ %conv118, %for.body165.lr.ph ], [ %count.1, %cleanup.for.body165_crit_edge ]
  %new_advertise.0594 = phi i32 [ 0, %for.body165.lr.ph ], [ %new_advertise.4, %cleanup.for.body165_crit_edge ]
  %arrayidx166 = getelementptr %struct.mediatable, ptr %call9.i, i32 0, i32 6, i32 %i.4598
  %96 = ptrtoint ptr %p.1596 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %p.1596, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %97)
  %cmp170 = icmp sgt i8 %97, -1
  br i1 %cmp170, label %if.then172, label %if.else190

if.then172:                                       ; preds = %for.body165
  %98 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %arrayidx166, align 8
  %99 = ptrtoint ptr %p.1596 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %p.1596, align 1
  %101 = and i8 %100, 63
  %media177 = getelementptr %struct.mediatable, ptr %call9.i, i32 0, i32 6, i32 %i.4598, i32 1
  %102 = ptrtoint ptr %media177 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %media177, align 1
  %leafdata = getelementptr %struct.mediatable, ptr %call9.i, i32 0, i32 6, i32 %i.4598, i32 2
  %103 = ptrtoint ptr %leafdata to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %p.1596, ptr %leafdata, align 4
  %arrayidx178 = getelementptr i8, ptr %p.1596, i32 2
  %104 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx178, align 1
  %106 = and i8 %105, 97
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %106)
  %cmp181 = icmp eq i8 %106, 1
  br i1 %cmp181, label %if.then183, label %if.then172.if.end340_crit_edge

if.then172.if.end340_crit_edge:                   ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end340

if.then183:                                       ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #7
  %107 = ptrtoint ptr %has_reset to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load185 = load i8, ptr %has_reset, align 4
  %bf.set187 = or i8 %bf.load185, -128
  store i8 %bf.set187, ptr %has_reset, align 4
  br label %if.end340

if.else190:                                       ; preds = %for.body165
  %arrayidx191 = getelementptr i8, ptr %p.1596, i32 1
  %108 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx191, align 1
  %110 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %109, ptr %arrayidx166, align 8
  %111 = load i8, ptr %arrayidx191, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %111)
  %cmp195 = icmp eq i8 %111, 5
  br i1 %cmp195, label %if.then197, label %if.else207

if.then197:                                       ; preds = %if.else190
  call void @__sanitizer_cov_trace_pc() #7
  %112 = trunc i32 %i.4598 to i8
  %113 = ptrtoint ptr %has_reset to i32
  call void @__asan_load1_noabort(i32 %113)
  %bf.load199 = load i8, ptr %has_reset, align 4
  %bf.value = and i8 %112, 63
  %bf.clear200 = and i8 %bf.load199, -64
  %bf.set201 = or i8 %bf.clear200, %bf.value
  store i8 %bf.set201, ptr %has_reset, align 4
  %arrayidx202 = getelementptr i8, ptr %p.1596, i32 2
  %114 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx202, align 1
  %116 = and i8 %115, 15
  %media206 = getelementptr %struct.mediatable, ptr %call9.i, i32 0, i32 6, i32 %i.4598, i32 1
  %117 = ptrtoint ptr %media206 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %media206, align 1
  br label %if.end332

if.else207:                                       ; preds = %if.else190
  %118 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %119)
  %cmp208 = icmp eq i32 %119, 13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %111)
  %cmp213 = icmp eq i8 %111, -128
  %or.cond = select i1 %cmp208, i1 %cmp213, i1 false
  br i1 %or.cond, label %if.then215, label %if.else226

if.then215:                                       ; preds = %if.else207
  call void @__sanitizer_cov_trace_pc() #7
  %120 = ptrtoint ptr %leafcount to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %leafcount, align 2
  %dec = add i8 %121, -1
  store i8 %dec, ptr %leafcount, align 2
  %dec217 = add nsw i32 %count.0595, -1
  %dec218 = add i32 %i.4598, -1
  %add.ptr219 = getelementptr i8, ptr %p.1596, i32 2
  %leafdata220 = getelementptr %struct.mediatable, ptr %call9.i, i32 0, i32 6, i32 %i.4598, i32 2
  %122 = ptrtoint ptr %leafdata220 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %add.ptr219, ptr %leafdata220, align 4
  %123 = ptrtoint ptr %p.1596 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %p.1596, align 1
  %125 = and i8 %124, 63
  %narrow575 = add nuw nsw i8 %125, 1
  %add224 = zext i8 %narrow575 to i32
  br label %cleanup

if.else226:                                       ; preds = %if.else207
  %126 = and i8 %111, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool230.not = icmp eq i8 %126, 0
  %127 = ptrtoint ptr %has_reset to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load250 = load i8, ptr %has_reset, align 4
  br i1 %tobool230.not, label %if.else248, label %if.then231

if.then231:                                       ; preds = %if.else226
  call void @__sanitizer_cov_trace_pc() #7
  %bf.set235 = or i8 %bf.load250, -128
  %128 = ptrtoint ptr %has_reset to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %bf.set235, ptr %has_reset, align 4
  %media236 = getelementptr %struct.mediatable, ptr %call9.i, i32 0, i32 6, i32 %i.4598, i32 1
  %129 = ptrtoint ptr %media236 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 11, ptr %media236, align 1
  %arrayidx237 = getelementptr i8, ptr %p.1596, i32 3
  %130 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx237, align 1
  %conv238 = zext i8 %131 to i32
  %mul = shl nuw nsw i32 %conv238, 1
  %add239 = add nuw nsw i32 %mul, 4
  %arrayidx240 = getelementptr i8, ptr %p.1596, i32 %add239
  %132 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx240, align 1
  %conv241 = zext i8 %133 to i32
  %mul242 = shl nuw nsw i32 %conv241, 1
  %add243 = add nuw nsw i32 %mul, 7
  %add244 = add nuw nsw i32 %add243, %mul242
  %arrayidx245 = getelementptr i8, ptr %p.1596, i32 %add244
  %134 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 2)
  %135 = load i16, ptr %arrayidx245, align 1
  %136 = tail call i16 @llvm.bswap.i16(i16 %135) #5
  %conv247 = zext i16 %136 to i32
  %or = or i32 %new_advertise.0594, %conv247
  br label %if.end332

if.else248:                                       ; preds = %if.else226
  %bf.set252 = or i8 %bf.load250, 64
  %137 = ptrtoint ptr %has_reset to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %bf.set252, ptr %has_reset, align 4
  %arrayidx253 = getelementptr i8, ptr %p.1596, i32 2
  %138 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx253, align 1
  %140 = and i8 %139, 31
  %media257 = getelementptr %struct.mediatable, ptr %call9.i, i32 0, i32 6, i32 %i.4598, i32 1
  %141 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %142)
  %cmp259 = icmp eq i32 %142, 13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %140)
  %cmp264 = icmp eq i8 %140, 1
  %or.cond576 = select i1 %cmp259, i1 %cmp264, i1 false
  %spec.store.select = select i1 %or.cond576, i8 3, i8 %140
  %143 = ptrtoint ptr %media257 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %spec.store.select, ptr %media257, align 1
  %trunc = trunc i8 %spec.store.select to i5
  %144 = zext i5 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %144, ptr @__sancov_gen_cov_switch_values)
  switch i5 %trunc, label %if.else248.sw.epilog_crit_edge [
    i5 0, label %sw.epilog.thread
    i5 4, label %sw.bb272
    i5 3, label %sw.bb274
    i5 5, label %sw.bb276
    i5 6, label %sw.bb278
  ]

if.else248.sw.epilog_crit_edge:                   ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb272:                                         ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #7
  %or273 = or i32 %new_advertise.0594, 64
  br label %sw.epilog

sw.bb274:                                         ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #7
  %or275 = or i32 %new_advertise.0594, 128
  br label %sw.epilog

sw.bb276:                                         ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #7
  %or277 = or i32 %new_advertise.0594, 256
  br label %sw.epilog

sw.bb278:                                         ; preds = %if.else248
  call void @__sanitizer_cov_trace_pc() #7
  %or279 = or i32 %new_advertise.0594, 512
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb278, %sw.bb276, %sw.bb274, %sw.bb272, %if.else248.sw.epilog_crit_edge
  %new_advertise.1 = phi i32 [ %new_advertise.0594, %if.else248.sw.epilog_crit_edge ], [ %or279, %sw.bb278 ], [ %or277, %sw.bb276 ], [ %or275, %sw.bb274 ], [ %or273, %sw.bb272 ]
  %145 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %arrayidx191, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %146)
  %cmp282 = icmp eq i8 %146, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %spec.store.select)
  %cmp287 = icmp eq i8 %spec.store.select, 0
  %or.cond588 = select i1 %cmp282, i1 %cmp287, i1 false
  br i1 %or.cond588, label %sw.epilog.if.then289_crit_edge, label %sw.epilog.if.end332_crit_edge

sw.epilog.if.end332_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end332

sw.epilog.if.then289_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then289

sw.epilog.thread:                                 ; preds = %if.else248
  %or271 = or i32 %new_advertise.0594, 32
  %147 = ptrtoint ptr %arrayidx191 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx191, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %148)
  %cmp282581 = icmp eq i8 %148, 2
  br i1 %cmp282581, label %sw.epilog.thread.if.then289_crit_edge, label %sw.epilog.thread.if.end332_crit_edge

sw.epilog.thread.if.end332_crit_edge:             ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end332

sw.epilog.thread.if.then289_crit_edge:            ; preds = %sw.epilog.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then289

if.then289:                                       ; preds = %sw.epilog.thread.if.then289_crit_edge, %sw.epilog.if.then289_crit_edge
  %new_advertise.1582585 = phi i32 [ %or271, %sw.epilog.thread.if.then289_crit_edge ], [ %new_advertise.1, %sw.epilog.if.then289_crit_edge ]
  %149 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx253, align 1
  %151 = and i8 %150, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool293.not = icmp eq i8 %151, 0
  br i1 %tobool293.not, label %if.else313, label %if.then294

if.then294:                                       ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx295 = getelementptr i8, ptr %p.1596, i32 7
  %152 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_loadN_noabort(i32 %152, i32 2)
  %153 = load i16, ptr %arrayidx295, align 1
  %conv297 = zext i16 %153 to i32
  %arrayidx299 = getelementptr i8, ptr %p.1596, i32 9
  %154 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %155 = load i16, ptr %arrayidx299, align 1
  %conv302 = zext i16 %155 to i32
  %shl = shl nuw i32 %conv302, 16
  %add303 = or i32 %shl, %conv297
  %156 = ptrtoint ptr %csr15dir to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %add303, ptr %csr15dir, align 8
  %arrayidx306 = getelementptr i8, ptr %p.1596, i32 11
  %157 = ptrtoint ptr %arrayidx306 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 2)
  %158 = load i16, ptr %arrayidx306, align 1
  %conv309 = zext i16 %158 to i32
  %shl310 = shl nuw i32 %conv309, 16
  %add311 = or i32 %shl310, %conv297
  %159 = ptrtoint ptr %csr15val to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %add311, ptr %csr15val, align 4
  br label %if.end332

if.else313:                                       ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx315 = getelementptr i8, ptr %p.1596, i32 3
  %160 = ptrtoint ptr %arrayidx315 to i32
  call void @__asan_loadN_noabort(i32 %160, i32 2)
  %161 = load i16, ptr %arrayidx315, align 1
  %conv318 = zext i16 %161 to i32
  %shl319 = shl nuw i32 %conv318, 16
  %162 = ptrtoint ptr %csr15dir to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %shl319, ptr %csr15dir, align 8
  %arrayidx322 = getelementptr i8, ptr %p.1596, i32 5
  %163 = ptrtoint ptr %arrayidx322 to i32
  call void @__asan_loadN_noabort(i32 %163, i32 2)
  %164 = load i16, ptr %arrayidx322, align 1
  %conv325 = zext i16 %164 to i32
  %shl326 = shl nuw i32 %conv325, 16
  %165 = ptrtoint ptr %csr15val to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %shl326, ptr %csr15val, align 4
  br label %if.end332

if.end332:                                        ; preds = %if.else313, %if.then294, %sw.epilog.thread.if.end332_crit_edge, %sw.epilog.if.end332_crit_edge, %if.then231, %if.then197
  %new_advertise.2 = phi i32 [ %new_advertise.0594, %if.then197 ], [ %or, %if.then231 ], [ %new_advertise.1582585, %if.then294 ], [ %new_advertise.1582585, %if.else313 ], [ %new_advertise.1, %sw.epilog.if.end332_crit_edge ], [ %or271, %sw.epilog.thread.if.end332_crit_edge ]
  %add.ptr333 = getelementptr i8, ptr %p.1596, i32 2
  %leafdata334 = getelementptr %struct.mediatable, ptr %call9.i, i32 0, i32 6, i32 %i.4598, i32 2
  %166 = ptrtoint ptr %leafdata334 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %add.ptr333, ptr %leafdata334, align 4
  %167 = ptrtoint ptr %p.1596 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %p.1596, align 1
  %169 = and i8 %168, 63
  %narrow = add nuw nsw i8 %169, 1
  %add338 = zext i8 %narrow to i32
  br label %if.end340

if.end340:                                        ; preds = %if.end332, %if.then183, %if.then172.if.end340_crit_edge
  %add338.sink = phi i32 [ %add338, %if.end332 ], [ 4, %if.then183 ], [ 4, %if.then172.if.end340_crit_edge ]
  %new_advertise.3 = phi i32 [ %new_advertise.2, %if.end332 ], [ %new_advertise.0594, %if.then183 ], [ %new_advertise.0594, %if.then172.if.end340_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %170 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %170)
  %cmp341 = icmp sgt i32 %170, 1
  br i1 %cmp341, label %land.lhs.true343, label %if.end340.do.end390_crit_edge

if.end340.do.end390_crit_edge:                    ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end390

land.lhs.true343:                                 ; preds = %if.end340
  %media344 = getelementptr %struct.mediatable, ptr %call9.i, i32 0, i32 6, i32 %i.4598, i32 1
  %171 = ptrtoint ptr %media344 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %media344, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %172)
  %cmp346 = icmp eq i8 %172, 11
  br i1 %cmp346, label %if.then348, label %land.lhs.true343.do.end390_crit_edge

land.lhs.true343.do.end390_crit_edge:             ; preds = %land.lhs.true343
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end390

if.then348:                                       ; preds = %land.lhs.true343
  call void @__sanitizer_cov_trace_pc() #7
  %leafdata349 = getelementptr %struct.mediatable, ptr %call9.i, i32 0, i32 6, i32 %i.4598, i32 2
  %173 = ptrtoint ptr %leafdata349 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %leafdata349, align 4
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %174, align 1
  %conv357 = zext i8 %176 to i32
  %arrayidx358 = getelementptr i8, ptr %174, i32 1
  %177 = ptrtoint ptr %arrayidx358 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %arrayidx358, align 1
  %conv359 = zext i8 %178 to i32
  %mul362 = shl nuw nsw i32 %conv359, 1
  %add363 = add nuw nsw i32 %mul362, 2
  %arrayidx364 = getelementptr i8, ptr %174, i32 %add363
  %179 = ptrtoint ptr %arrayidx364 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx364, align 1
  %conv365 = zext i8 %180 to i32
  %mul372 = shl nuw nsw i32 %conv365, 1
  %add373 = add nuw nsw i32 %mul372, 5
  %arrayidx374 = getelementptr i8, ptr %174, i32 %add373
  %181 = ptrtoint ptr %arrayidx374 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx374, align 1
  %conv375 = zext i8 %182 to i32
  %add383 = add nuw nsw i32 %mul372, 4
  %arrayidx384 = getelementptr i8, ptr %174, i32 %add383
  %183 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx384, align 1
  %conv385 = zext i8 %184 to i32
  %call386 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %dev, i32 noundef %conv357, i32 noundef %conv359, i32 noundef %conv365, i32 noundef %conv375, i32 noundef %conv385) #8
  br label %do.end390

do.end390:                                        ; preds = %if.then348, %land.lhs.true343.do.end390_crit_edge, %if.end340.do.end390_crit_edge
  %media394 = getelementptr %struct.mediatable, ptr %call9.i, i32 0, i32 6, i32 %i.4598, i32 1
  %185 = ptrtoint ptr %media394 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %media394, align 1
  %conv395 = zext i8 %186 to i32
  %and396 = and i32 %conv395, 15
  %arrayidx397 = getelementptr [0 x ptr], ptr @medianame, i32 0, i32 %and396
  %187 = ptrtoint ptr %arrayidx397 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx397, align 4
  %189 = ptrtoint ptr %arrayidx166 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx166, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %190)
  %cmp402 = icmp ult i8 %190, 6
  %conv401 = zext i8 %190 to i32
  br i1 %cmp402, label %cond.true404, label %do.end390.cond.end408_crit_edge

do.end390.cond.end408_crit_edge:                  ; preds = %do.end390
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end408

cond.true404:                                     ; preds = %do.end390
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx406 = getelementptr [6 x ptr], ptr @block_name, i32 0, i32 %conv401
  %191 = ptrtoint ptr %arrayidx406 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx406, align 4
  br label %cond.end408

cond.end408:                                      ; preds = %cond.true404, %do.end390.cond.end408_crit_edge
  %cond409 = phi ptr [ %192, %cond.true404 ], [ @.str.25, %do.end390.cond.end408_crit_edge ]
  %call412 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %dev, i32 noundef %i.4598, ptr noundef %188, i32 noundef %conv395, ptr noundef %cond409, i32 noundef %conv401) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end408, %if.then215
  %new_advertise.4 = phi i32 [ %new_advertise.3, %cond.end408 ], [ %new_advertise.0594, %if.then215 ]
  %count.1 = phi i32 [ %count.0595, %cond.end408 ], [ %dec217, %if.then215 ]
  %add338.sink.pn = phi i32 [ %add338.sink, %cond.end408 ], [ %add224, %if.then215 ]
  %i.5 = phi i32 [ %i.4598, %cond.end408 ], [ %dec218, %if.then215 ]
  %p.3 = getelementptr i8, ptr %p.1596, i32 %add338.sink.pn
  %inc414 = add i32 %i.5, 1
  %cmp163 = icmp slt i32 %inc414, %count.1
  br i1 %cmp163, label %cleanup.for.body165_crit_edge, label %for.end415

cleanup.for.body165_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body165

for.end415:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_advertise.4)
  %tobool416.not = icmp eq i32 %new_advertise.4, 0
  br i1 %tobool416.not, label %for.end415.cleanup429_crit_edge, label %if.then417

for.end415.cleanup429_crit_edge:                  ; preds = %for.end415
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup429

if.then417:                                       ; preds = %for.end415
  call void @__sanitizer_cov_trace_pc() #7
  %conv418 = trunc i32 %new_advertise.4 to i16
  %sym_advertise = getelementptr i8, ptr %dev, i32 4800
  %193 = ptrtoint ptr %sym_advertise to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %conv418, ptr %sym_advertise, align 8
  br label %cleanup429

cleanup429:                                       ; preds = %if.then417, %for.end415.cleanup429_crit_edge, %if.end8.i.cleanup429_crit_edge, %do.end127, %if.then121.cleanup429_crit_edge, %subsequent_board.cleanup429_crit_edge, %do.end89, %do.end20
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tulip_read_eeprom(ptr nocapture noundef readonly %dev, i32 noundef %location, i32 noundef %addr_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 72
  %shl = shl i32 6, %addr_len
  %or = or i32 %shl, %location
  %notmask = shl nsw i32 -1, %addr_len
  %sub = xor i32 %notmask, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %location)
  %cmp = icmp slt i32 %sub, %location
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 4718592) #5, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 21495808) #5, !srcloc !82
  %add = add i32 %addr_len, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add)
  %cmp369 = icmp sgt i32 %add, -1
  br i1 %cmp369, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %retval1.071 = phi i32 [ %or17, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.070 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %add, %if.end.for.body_crit_edge ]
  %shl4 = shl nuw i32 1, %i.070
  %and = and i32 %shl4, %or
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or6 = select i1 %tobool.not, i32 18433, i32 18437
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %or6) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #5, !srcloc !82
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %or10 = or i32 %or6, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %or10) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #5, !srcloc !82
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %shl12 = shl i32 %retval1.071, 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !83
  %7 = lshr i32 %6, 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %and14.lobit = and i32 %7, 1
  %or17 = or i32 %and14.lobit, %shl12
  %dec = add nsw i32 %i.070, -1
  %cmp3.not = icmp eq i32 %i.070, 0
  br i1 %cmp3.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %retval1.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %or17, %for.body.for.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 21495808) #5, !srcloc !82
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.end
  %retval1.173 = phi i32 [ %retval1.0.lcssa, %for.end ], [ %or29, %for.body22.for.body22_crit_edge ]
  %i.172 = phi i32 [ 16, %for.end ], [ %dec32, %for.body22.for.body22_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 55050240) #5, !srcloc !82
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %shl24 = shl i32 %retval1.173, 1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !83
  %11 = lshr i32 %10, 27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %and26.lobit = and i32 %11, 1
  %or29 = or i32 %and26.lobit, %shl24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 21495808) #5, !srcloc !82
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  %dec32 = add nsw i32 %i.172, -1
  %cmp20 = icmp ugt i32 %i.172, 1
  br i1 %cmp20, label %for.body22.for.body22_crit_edge, label %for.end33

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body22

for.end33:                                        ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 4718592) #5, !srcloc !82
  %flags = getelementptr i8, ptr %dev, i32 3808
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 8
  %and34 = and i32 %14, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %conv36 = trunc i32 %or29 to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv36)
  %conv37 = zext i16 %15 to i32
  %cond38 = select i1 %tobool35.not, i32 %or29, i32 %conv37
  br label %cleanup

cleanup:                                          ; preds = %for.end33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond38, %for.end33 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @tulip_parse_eeprom.last_mediatable, !1, !"last_mediatable", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 151, i32 28}
!2 = !{ptr @tulip_parse_eeprom.last_ee_data, !3, !"last_ee_data", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 152, i32 24}
!4 = !{ptr @tulip_parse_eeprom.controller_index, !5, !"controller_index", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 153, i32 13}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 168, i32 5}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @tulip_parse_eeprom._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @tulip_parse_eeprom._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 174, i32 5}
!14 = !{ptr @tulip_parse_eeprom._entry.3, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @tulip_parse_eeprom._entry_ptr.5, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 187, i32 5}
!18 = !{ptr @tulip_parse_eeprom._entry.6, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @tulip_parse_eeprom._entry_ptr.8, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 193, i32 5}
!22 = !{ptr @tulip_parse_eeprom._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @tulip_parse_eeprom._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 222, i32 5}
!26 = !{ptr @tulip_parse_eeprom._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tulip_parse_eeprom._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 237, i32 3}
!30 = !{ptr @tulip_parse_eeprom._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tulip_parse_eeprom._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 303, i32 5}
!35 = !{ptr @tulip_parse_eeprom._entry.19, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tulip_parse_eeprom._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 309, i32 4}
!39 = !{ptr @tulip_parse_eeprom._entry.22, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tulip_parse_eeprom._entry_ptr.24, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 29, i32 4}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 31, i32 4}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 36, i32 4}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 43, i32 4}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 49, i32 4}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 56, i32 4}
!54 = !{ptr @.str.32, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 62, i32 4}
!56 = !{ptr @eeprom_fixups, !57, !"eeprom_fixups", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 28, i32 28}
!58 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 82, i32 2}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 83, i32 2}
!62 = !{ptr @.str.36, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 84, i32 2}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 85, i32 2}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 86, i32 2}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 87, i32 2}
!70 = !{ptr @block_name, !71, !"block_name", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/dec/tulip/eeprom.c", i32 81, i32 26}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 2152532504}
!82 = !{i64 4990382}
!83 = !{i64 4990800}
!84 = !{i64 2152531149}
