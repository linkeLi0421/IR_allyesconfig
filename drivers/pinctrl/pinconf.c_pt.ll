; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinconf.c_pt.bc'
source_filename = "../drivers/pinctrl/pinconf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.pinctrl_setting = type { %struct.list_head, i32, ptr, ptr, %union.anon.70 }
%union.anon.70 = type { %struct.pinctrl_setting_configs }
%struct.pinctrl_setting_configs = type { i32, ptr, i32 }
%struct.pin_desc = type { ptr, ptr, i8, ptr, i32, ptr, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, ptr, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.60 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.63 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }

@pinconf_check_ops._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 32, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"pinconf has to be able to set a pins config\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pinconf_check_ops\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/pinctrl/pinconf.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pinconf_check_ops._entry_ptr = internal global ptr @pinconf_check_ops._entry, section ".printk_index", align 4
@pinconf_validate_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013pinconfig core: failed to register map %s (%d): no group/pin given\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pinconf_validate_map\00", [43 x i8] zeroinitializer }, align 32
@pinconf_validate_map._entry_ptr = internal global ptr @pinconf_validate_map._entry, section ".printk_index", align 4
@pinconf_validate_map._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013pinconfig core: failed to register map %s (%d): no configs given\0A\00", [60 x i8] zeroinitializer }, align 32
@pinconf_validate_map._entry_ptr.9 = internal global ptr @pinconf_validate_map._entry.7, section ".printk_index", align 4
@pin_config_get_for_pin.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 15, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pinconf\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pin_config_get_for_pin\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"cannot get pin configuration, .pin_config_get missing in driver\0A\00", [63 x i8] zeroinitializer }, align 32
@pin_config_group_get.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 22, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pin_config_group_get\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"cannot get configuration for pin group, missing group config get function in driver\0A\00", [43 x i8] zeroinitializer }, align 32
@pinconf_map_to_setting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 119, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not map pin config for \22%s\22\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pinconf_map_to_setting\00", [41 x i8] zeroinitializer }, align 32
@pinconf_map_to_setting._entry_ptr = internal global ptr @pinconf_map_to_setting._entry, section ".printk_index", align 4
@pinconf_map_to_setting._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 129, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not map group config for \22%s\22\00", [60 x i8] zeroinitializer }, align 32
@pinconf_map_to_setting._entry_ptr.19 = internal global ptr @pinconf_map_to_setting._entry.17, section ".printk_index", align 4
@pinconf_apply_setting._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 155, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"missing confops\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pinconf_apply_setting\00", [42 x i8] zeroinitializer }, align 32
@pinconf_apply_setting._entry_ptr = internal global ptr @pinconf_apply_setting._entry, section ".printk_index", align 4
@pinconf_apply_setting._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 162, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"missing pin_config_set op\0A\00", [37 x i8] zeroinitializer }, align 32
@pinconf_apply_setting._entry_ptr.24 = internal global ptr @pinconf_apply_setting._entry.22, section ".printk_index", align 4
@pinconf_apply_setting._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 172, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pin_config_set op failed for pin %d\0A\00", [59 x i8] zeroinitializer }, align 32
@pinconf_apply_setting._entry_ptr.27 = internal global ptr @pinconf_apply_setting._entry.25, section ".printk_index", align 4
@pinconf_apply_setting._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.21, ptr @.str.2, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"missing pin_config_group_set op\0A\00", [63 x i8] zeroinitializer }, align 32
@pinconf_apply_setting._entry_ptr.30 = internal global ptr @pinconf_apply_setting._entry.28, section ".printk_index", align 4
@pinconf_apply_setting._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.21, ptr @.str.2, i32 189, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"pin_config_group_set op failed for group %d\0A\00", [51 x i8] zeroinitializer }, align 32
@pinconf_apply_setting._entry_ptr.33 = internal global ptr @pinconf_apply_setting._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pin \00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"group \00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pin %s (%d)\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"group %s (%d)\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pinconf-pins\00", [19 x i8] zeroinitializer }, align 32
@pinconf_pins_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pinconf_pins_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pinconf-groups\00", [17 x i8] zeroinitializer }, align 32
@pinconf_groups_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @pinconf_groups_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"config \00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08lx\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Pin config settings per pin\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Format: pin (name): configs\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pin %d (%s): \00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Pin config settings per pin group\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Format: group (name): configs\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%u (%s): \00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 31, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 41, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 48, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 62, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 88, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 118, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 128, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 155, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 162, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 170, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 178, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 187, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 244, i32 15 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 247, i32 15 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 253, i32 16 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 270, i32 17 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 274, i32 17 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 373, i32 22 }
@___asan_gen_.166 = private unnamed_addr constant [18 x i8] c"pinconf_pins_fops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 367, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 375, i32 22 }
@___asan_gen_.172 = private unnamed_addr constant [20 x i8] c"pinconf_groups_fops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 368, i32 1 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 226, i32 15 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 231, i32 18 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 307, i32 14 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 308, i32 14 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 322, i32 17 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 352, i32 14 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 353, i32 14 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [29 x i8] c"../drivers/pinctrl/pinconf.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 358, i32 17 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @pinconf_apply_setting._entry, ptr @pinconf_apply_setting._entry.22, ptr @pinconf_apply_setting._entry.25, ptr @pinconf_apply_setting._entry.28, ptr @pinconf_apply_setting._entry.31, ptr @pinconf_apply_setting._entry_ptr, ptr @pinconf_apply_setting._entry_ptr.24, ptr @pinconf_apply_setting._entry_ptr.27, ptr @pinconf_apply_setting._entry_ptr.30, ptr @pinconf_apply_setting._entry_ptr.33, ptr @pinconf_check_ops._entry, ptr @pinconf_check_ops._entry_ptr, ptr @pinconf_map_to_setting._entry, ptr @pinconf_map_to_setting._entry.17, ptr @pinconf_map_to_setting._entry_ptr, ptr @pinconf_map_to_setting._entry_ptr.19, ptr @pinconf_validate_map._entry, ptr @pinconf_validate_map._entry.7, ptr @pinconf_validate_map._entry_ptr, ptr @pinconf_validate_map._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @pinconf_pins_fops, ptr @.str.40, ptr @pinconf_groups_fops, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinconf_check_ops._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinconf_validate_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinconf_validate_map._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinconf_map_to_setting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinconf_map_to_setting._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinconf_apply_setting._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinconf_apply_setting._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinconf_apply_setting._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinconf_apply_setting._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinconf_apply_setting._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinconf_pins_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinconf_groups_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinconf_check_ops(ptr nocapture noundef readonly %pctldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %confops = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %confops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %confops, align 4
  %pin_config_set = getelementptr inbounds %struct.pinconf_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pin_config_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_config_set, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %pin_config_group_set = getelementptr inbounds %struct.pinconf_ops, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %pin_config_group_set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pin_config_group_set, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %do.end, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinconf_validate_map(ptr nocapture noundef readonly %map, i32 noundef %i) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return.sink.split_crit_edge, label %if.end

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %num_configs = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 4, i32 0, i32 2
  %2 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_configs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.return.sink.split_crit_edge, label %lor.lhs.false

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

lor.lhs.false:                                    ; preds = %if.end
  %configs = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 4, i32 0, i32 1
  %4 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %configs, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false.return.sink.split_crit_edge, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false.return.sink.split_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return.sink.split

return.sink.split:                                ; preds = %lor.lhs.false.return.sink.split_crit_edge, %if.end.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.5, %entry.return.sink.split_crit_edge ], [ @.str.8, %lor.lhs.false.return.sink.split_crit_edge ], [ @.str.8, %if.end.return.sink.split_crit_edge ]
  %name9 = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 1
  %6 = ptrtoint ptr %name9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name9, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink, ptr noundef %7, i32 noundef %i) #7
  br label %return

return:                                           ; preds = %return.sink.split, %lor.lhs.false.return_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.return_crit_edge ], [ -22, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pin_config_get_for_pin(ptr noundef %pctldev, i32 noundef %pin, ptr noundef %config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %confops = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %confops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %confops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %pin_config_get = getelementptr inbounds %struct.pinconf_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pin_config_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_config_get, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.do.body_crit_edge, label %if.end7

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pin_config_get_for_pin.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pin_config_get_for_pin, %cleanup)) #4
          to label %if.then6 [label %cleanup], !srcloc !99

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pin_config_get_for_pin.__UNIQUE_ID_ddebug223, ptr noundef %7, ptr noundef nonnull @.str.12) #4
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call i32 %5(ptr noundef %pctldev, i32 noundef %pin, ptr noundef %config) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %do.body
  %retval.0 = phi i32 [ %call9, %if.end7 ], [ -524, %if.then6 ], [ -524, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pin_config_group_get(ptr noundef %dev_name, ptr noundef %pin_group, ptr noundef %config) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_pinctrl_dev_from_devname(ptr noundef %dev_name) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.pinctrl_dev, ptr %call, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %confops = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %confops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %confops, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %pin_config_group_get = getelementptr inbounds %struct.pinconf_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pin_config_group_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_config_group_get, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.do.body_crit_edge, label %if.end11

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pin_config_group_get.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pin_config_group_get, %unlock)) #4
          to label %if.then9 [label %unlock], !srcloc !99

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pin_config_group_get.__UNIQUE_ID_ddebug224, ptr noundef %7, ptr noundef nonnull @.str.14) #4
  br label %unlock

if.end11:                                         ; preds = %lor.lhs.false
  %call12 = tail call i32 @pinctrl_get_group_selector(ptr noundef nonnull %call, ptr noundef %pin_group) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end11.unlock_crit_edge, label %if.end14

if.end11.unlock_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %unlock

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %pin_config_group_get to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pin_config_group_get, align 4
  %call16 = tail call i32 %9(ptr noundef nonnull %call, i32 noundef %call12, ptr noundef %config) #4
  br label %unlock

unlock:                                           ; preds = %if.end14, %if.end11.unlock_crit_edge, %if.then9, %do.body
  %ret.0 = phi i32 [ %call16, %if.end14 ], [ -524, %if.then9 ], [ %call12, %if.end11.unlock_crit_edge ], [ -524, %do.body ]
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_pinctrl_dev_from_devname(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_get_group_selector(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinconf_map_to_setting(ptr nocapture noundef readonly %map, ptr nocapture noundef %setting) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pctldev1 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 2
  %0 = ptrtoint ptr %pctldev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pctldev1, align 4
  %type = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %data = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %call = tail call i32 @pin_get_from_name(ptr noundef %1, ptr noundef %6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef %10) #7
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %data7 = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 4
  %11 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data7, align 4
  %call9 = tail call i32 @pinctrl_get_group_selector(ptr noundef %1, ptr noundef %12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.end14, label %sw.bb6.sw.epilog_crit_edge

sw.bb6.sw.epilog_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end14:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #6
  %dev15 = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev15, align 4
  %15 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.18, ptr noundef %16) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %call9.sink = phi i32 [ %call, %sw.bb.sw.epilog_crit_edge ], [ %call9, %sw.bb6.sw.epilog_crit_edge ]
  %data19 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4
  %17 = ptrtoint ptr %data19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call9.sink, ptr %data19, align 4
  %num_configs = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 4, i32 0, i32 2
  %18 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_configs, align 4
  %num_configs23 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4, i32 0, i32 2
  %20 = ptrtoint ptr %num_configs23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %num_configs23, align 4
  %configs = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %configs, align 4
  %configs26 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4, i32 0, i32 1
  %23 = ptrtoint ptr %configs26 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %configs26, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end14 ], [ 0, %sw.epilog ], [ %call, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_get_from_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @pinconf_free_setting(ptr nocapture noundef %setting) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinconf_apply_setting(ptr nocapture noundef readonly %setting) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pctldev1 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 2
  %0 = ptrtoint ptr %pctldev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pctldev1, align 4
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %confops = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %confops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %confops, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.20) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %9, label %if.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb20
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %pin_config_set = getelementptr inbounds %struct.pinconf_ops, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %pin_config_set to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pin_config_set, align 4
  %tobool2.not = icmp eq ptr %12, null
  br i1 %tobool2.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %dev7 = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.23) #7
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  %data = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data, align 4
  %configs = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4, i32 0, i32 1
  %17 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %configs, align 4
  %num_configs = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4, i32 0, i32 2
  %19 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_configs, align 4
  %call = tail call i32 %12(ptr noundef %1, i32 noundef %16, ptr noundef %18, i32 noundef %20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end15, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %dev16 = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev16, align 4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.26, i32 noundef %24) #7
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  %pin_config_group_set = getelementptr inbounds %struct.pinconf_ops, ptr %5, i32 0, i32 4
  %25 = ptrtoint ptr %pin_config_group_set to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pin_config_group_set, align 4
  %tobool21.not = icmp eq ptr %26, null
  br i1 %tobool21.not, label %do.end25, label %if.end27

do.end25:                                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #6
  %dev26 = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.29) #7
  br label %cleanup

if.end27:                                         ; preds = %sw.bb20
  %data29 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4
  %29 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data29, align 4
  %configs32 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4, i32 0, i32 1
  %31 = ptrtoint ptr %configs32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %configs32, align 4
  %num_configs34 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4, i32 0, i32 2
  %33 = ptrtoint ptr %num_configs34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_configs34, align 4
  %call35 = tail call i32 %26(ptr noundef %1, i32 noundef %30, ptr noundef %32, i32 noundef %34) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end40, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end40:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  %dev41 = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  %35 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev41, align 4
  %37 = ptrtoint ptr %data29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.32, i32 noundef %38) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end27.cleanup_crit_edge, %do.end25, %do.end15, %if.end8.cleanup_crit_edge, %do.end6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call35, %do.end40 ], [ -22, %do.end25 ], [ %call, %do.end15 ], [ -22, %do.end6 ], [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinconf_set_config(ptr noundef %pctldev, i32 noundef %pin, ptr noundef %configs, i32 noundef %nconfigs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %confops = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %confops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %confops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pin_config_set = getelementptr inbounds %struct.pinconf_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pin_config_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_config_set, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %5(ptr noundef %pctldev, i32 noundef %pin, ptr noundef %configs, i32 noundef %nconfigs) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -524, %lor.lhs.false.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pinconf_show_map(ptr noundef %s, ptr nocapture noundef readonly %map) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_dev_name = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 3
  %0 = ptrtoint ptr %ctrl_dev_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_dev_name, align 4
  %call = tail call ptr @get_pinctrl_dev_from_devname(ptr noundef %1) #4
  %type = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 3, label %entry.sw.epilog.sink.split_crit_edge
    i32 4, label %sw.bb1
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb1, %entry.sw.epilog.sink.split_crit_edge
  %.str.35.sink = phi ptr [ @.str.35, %sw.bb1 ], [ @.str.34, %entry.sw.epilog.sink.split_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.35.sink) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %data = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.36, ptr noundef %6) #4
  %configs = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 4, i32 0, i32 1
  %7 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %configs, align 4
  %num_configs = getelementptr inbounds %struct.pinctrl_map, ptr %map, i32 0, i32 4, i32 0, i32 2
  %9 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_configs, align 4
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %sw.epilog.if.end.i_crit_edge, label %if.then.i

sw.epilog.if.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %desc.i = getelementptr inbounds %struct.pinctrl_dev, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc.i, align 4
  %confops1.i = getelementptr inbounds %struct.pinctrl_desc, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %confops1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %confops1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.epilog.if.end.i_crit_edge
  %confops.0.i = phi ptr [ %14, %if.then.i ], [ null, %sw.epilog.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp20.not.i = icmp eq i32 %10, 0
  br i1 %cmp20.not.i, label %if.end.i.pinconf_show_config.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.pinconf_show_config.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pinconf_show_config.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %tobool2.not.i = icmp eq ptr %confops.0.i, null
  %pin_config_config_dbg_show.i = getelementptr inbounds %struct.pinconf_ops, ptr %confops.0.i, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end8.i.for.body.i_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.41) #4
  br i1 %tobool2.not.i, label %for.body.i.if.else6.i_crit_edge, label %land.lhs.true.i

for.body.i.if.else6.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else6.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %15 = ptrtoint ptr %pin_config_config_dbg_show.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pin_config_config_dbg_show.i, align 4
  %tobool3.not.i = icmp eq ptr %16, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else6.i_crit_edge, label %if.then4.i

land.lhs.true.i.if.else6.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else6.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr i32, ptr %8, i32 %i.021.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  tail call void %16(ptr noundef %call, ptr noundef %s, i32 noundef %18) #4
  br label %if.end8.i

if.else6.i:                                       ; preds = %land.lhs.true.i.if.else6.i_crit_edge, %for.body.i.if.else6.i_crit_edge
  %arrayidx7.i = getelementptr i32, ptr %8, i32 %i.021.i
  %19 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx7.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.42, i32 noundef %20) #4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else6.i, %if.then4.i
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #4
  %inc.i = add nuw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %if.end8.i.pinconf_show_config.exit_crit_edge, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end8.i.pinconf_show_config.exit_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pinconf_show_config.exit

pinconf_show_config.exit:                         ; preds = %if.end8.i.pinconf_show_config.exit_crit_edge, %if.end.i.pinconf_show_config.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pinconf_show_setting(ptr noundef %s, ptr nocapture noundef readonly %setting) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pctldev1 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 2
  %0 = ptrtoint ptr %pctldev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pctldev1, align 4
  %type = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %data = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %pin_desc_tree.i = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 2
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i, i32 noundef %6) #4
  %name = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.37, ptr noundef %8, i32 noundef %10) #4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc, align 4
  %pctlops2 = getelementptr inbounds %struct.pinctrl_desc, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %pctlops2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pctlops2, align 4
  %get_group_name = getelementptr inbounds %struct.pinctrl_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %get_group_name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %get_group_name, align 4
  %data8 = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4
  %17 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data8, align 4
  %call10 = tail call ptr %16(ptr noundef %1, i32 noundef %18) #4
  %19 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data8, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, ptr noundef %call10, i32 noundef %20) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb, %entry.sw.epilog_crit_edge
  %configs = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %configs, align 4
  %num_configs = getelementptr inbounds %struct.pinctrl_setting, ptr %setting, i32 0, i32 4, i32 0, i32 2
  %23 = ptrtoint ptr %num_configs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_configs, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %sw.epilog.if.end.i_crit_edge, label %if.then.i

sw.epilog.if.end.i_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %desc.i = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %desc.i, align 4
  %confops1.i = getelementptr inbounds %struct.pinctrl_desc, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %confops1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %confops1.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.epilog.if.end.i_crit_edge
  %confops.0.i = phi ptr [ %28, %if.then.i ], [ null, %sw.epilog.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp20.not.i = icmp eq i32 %24, 0
  br i1 %cmp20.not.i, label %if.end.i.pinconf_show_config.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.pinconf_show_config.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pinconf_show_config.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %tobool2.not.i = icmp eq ptr %confops.0.i, null
  %pin_config_config_dbg_show.i = getelementptr inbounds %struct.pinconf_ops, ptr %confops.0.i, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end8.i.for.body.i_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.41) #4
  br i1 %tobool2.not.i, label %for.body.i.if.else6.i_crit_edge, label %land.lhs.true.i

for.body.i.if.else6.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else6.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %29 = ptrtoint ptr %pin_config_config_dbg_show.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pin_config_config_dbg_show.i, align 4
  %tobool3.not.i = icmp eq ptr %30, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else6.i_crit_edge, label %if.then4.i

land.lhs.true.i.if.else6.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else6.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr i32, ptr %22, i32 %i.021.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  tail call void %30(ptr noundef %1, ptr noundef %s, i32 noundef %32) #4
  br label %if.end8.i

if.else6.i:                                       ; preds = %land.lhs.true.i.if.else6.i_crit_edge, %for.body.i.if.else6.i_crit_edge
  %arrayidx7.i = getelementptr i32, ptr %22, i32 %i.021.i
  %33 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx7.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.42, i32 noundef %34) #4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.else6.i, %if.then4.i
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #4
  %inc.i = add nuw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %24
  br i1 %exitcond.not.i, label %if.end8.i.pinconf_show_config.exit_crit_edge, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end8.i.pinconf_show_config.exit_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pinconf_show_config.exit

pinconf_show_config.exit:                         ; preds = %if.end8.i.pinconf_show_config.exit_crit_edge, %if.end.i.pinconf_show_config.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pinconf_init_device_debugfs(ptr noundef %devroot, ptr noundef %pctldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext 292, ptr noundef %devroot, ptr noundef %pctldev, ptr noundef nonnull @pinconf_pins_fops) #4
  %call1 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.40, i16 noundef zeroext 292, ptr noundef %devroot, ptr noundef %pctldev, ptr noundef nonnull @pinconf_groups_fops) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_pins_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @pinconf_pins_show, ptr noundef %1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_pins_show(ptr noundef %s, ptr nocapture noundef readnone %what) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.43) #4
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.44) #4
  %mutex = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #4
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %npins22 = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %npins22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp23.not = icmp eq i32 %5, 0
  br i1 %cmp23.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pin_desc_tree.i = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %6 = phi ptr [ %3, %for.body.lr.ph ], [ %20, %cleanup.for.body_crit_edge ]
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %8, i32 %i.024
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %call.i = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i, i32 noundef %10) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %for.body
  %name = getelementptr inbounds %struct.pin_desc, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.45, i32 noundef %10, ptr noundef %12) #4
  %13 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %desc, align 4
  %confops.i = getelementptr inbounds %struct.pinctrl_desc, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %confops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %confops.i, align 4
  tail call void @pinconf_generic_dump_pins(ptr noundef %1, ptr noundef %s, ptr noundef null, i32 noundef %10) #4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.pinconf_dump_pin.exit_crit_edge, label %land.lhs.true.i

if.end.pinconf_dump_pin.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %pinconf_dump_pin.exit

land.lhs.true.i:                                  ; preds = %if.end
  %pin_config_dbg_show.i = getelementptr inbounds %struct.pinconf_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %pin_config_dbg_show.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pin_config_dbg_show.i, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.pinconf_dump_pin.exit_crit_edge, label %if.then.i

land.lhs.true.i.pinconf_dump_pin.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pinconf_dump_pin.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %18(ptr noundef %1, ptr noundef %s, i32 noundef %10) #4
  br label %pinconf_dump_pin.exit

pinconf_dump_pin.exit:                            ; preds = %if.then.i, %land.lhs.true.i.pinconf_dump_pin.exit_crit_edge, %if.end.pinconf_dump_pin.exit_crit_edge
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #4
  br label %cleanup

cleanup:                                          ; preds = %pinconf_dump_pin.exit, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.024, 1
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc, align 4
  %npins = getelementptr inbounds %struct.pinctrl_desc, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dump_pins(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_groups_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @pinconf_groups_show, ptr noundef %1) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_groups_show(ptr noundef %s, ptr nocapture noundef readnone %what) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %pctlops1 = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %pctlops1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pctlops1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call = tail call i32 %7(ptr noundef %1) #4
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.46) #4
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.47) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp17.not = icmp eq i32 %call, 0
  br i1 %cmp17.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %get_group_name = getelementptr inbounds %struct.pinctrl_ops, ptr %5, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %pinconf_dump_group.exit.while.body_crit_edge, %while.body.lr.ph
  %selector.018 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %pinconf_dump_group.exit.while.body_crit_edge ]
  %8 = ptrtoint ptr %get_group_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_group_name, align 4
  %call2 = tail call ptr %9(ptr noundef %1, i32 noundef %selector.018) #4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.48, i32 noundef %selector.018, ptr noundef %call2) #4
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %confops.i = getelementptr inbounds %struct.pinctrl_desc, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %confops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %confops.i, align 4
  tail call void @pinconf_generic_dump_pins(ptr noundef %1, ptr noundef %s, ptr noundef %call2, i32 noundef 0) #4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %while.body.pinconf_dump_group.exit_crit_edge, label %land.lhs.true.i

while.body.pinconf_dump_group.exit_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %pinconf_dump_group.exit

land.lhs.true.i:                                  ; preds = %while.body
  %pin_config_group_dbg_show.i = getelementptr inbounds %struct.pinconf_ops, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %pin_config_group_dbg_show.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pin_config_group_dbg_show.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.pinconf_dump_group.exit_crit_edge, label %if.then.i

land.lhs.true.i.pinconf_dump_group.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %pinconf_dump_group.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %15(ptr noundef %1, ptr noundef %s, i32 noundef %selector.018) #4
  br label %pinconf_dump_group.exit

pinconf_dump_group.exit:                          ; preds = %if.then.i, %land.lhs.true.i.pinconf_dump_group.exit_crit_edge, %while.body.pinconf_dump_group.exit_crit_edge
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #4
  %inc = add nuw i32 %selector.018, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %pinconf_dump_group.exit.while.end_crit_edge, label %pinconf_dump_group.exit.while.body_crit_edge

pinconf_dump_group.exit.while.body_crit_edge:     ; preds = %pinconf_dump_group.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

pinconf_dump_group.exit.while.end_crit_edge:      ; preds = %pinconf_dump_group.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %pinconf_dump_group.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinconf.c", i32 31, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @pinconf_check_ops._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @pinconf_check_ops._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/pinconf.c", i32 41, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @pinconf_validate_map._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @pinconf_validate_map._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/pinctrl/pinconf.c", i32 48, i32 3}
!15 = !{ptr @pinconf_validate_map._entry.7, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @pinconf_validate_map._entry_ptr.9, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pinctrl/pinconf.c", i32 62, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @pin_config_get_for_pin.__UNIQUE_ID_ddebug223, !18, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/pinconf.c", i32 88, i32 3}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pin_config_group_get.__UNIQUE_ID_ddebug224, !23, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/pinconf.c", i32 118, i32 4}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pinconf_map_to_setting._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @pinconf_map_to_setting._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/pinconf.c", i32 128, i32 4}
!33 = !{ptr @pinconf_map_to_setting._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @pinconf_map_to_setting._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/pinconf.c", i32 155, i32 3}
!37 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @pinconf_apply_setting._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @pinconf_apply_setting._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/pinconf.c", i32 162, i32 4}
!42 = !{ptr @pinconf_apply_setting._entry.22, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @pinconf_apply_setting._entry_ptr.24, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/pinconf.c", i32 170, i32 4}
!46 = !{ptr @pinconf_apply_setting._entry.25, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @pinconf_apply_setting._entry_ptr.27, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.29, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/pinconf.c", i32 178, i32 4}
!50 = !{ptr @pinconf_apply_setting._entry.28, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @pinconf_apply_setting._entry_ptr.30, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/pinconf.c", i32 187, i32 4}
!54 = !{ptr @pinconf_apply_setting._entry.31, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @pinconf_apply_setting._entry_ptr.33, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/pinconf.c", i32 244, i32 15}
!58 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/pinconf.c", i32 247, i32 15}
!60 = !{ptr @.str.36, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/pinconf.c", i32 253, i32 16}
!62 = !{ptr @.str.37, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/pinconf.c", i32 270, i32 17}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/pinconf.c", i32 274, i32 17}
!66 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/pinconf.c", i32 373, i32 22}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/pinconf.c", i32 375, i32 22}
!70 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/pinconf.c", i32 226, i32 15}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/pinconf.c", i32 231, i32 18}
!74 = !{ptr @pinconf_pins_fops, !75, !"pinconf_pins_fops", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/pinconf.c", i32 367, i32 1}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/pinconf.c", i32 307, i32 14}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/pinconf.c", i32 308, i32 14}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/pinconf.c", i32 322, i32 17}
!82 = !{ptr @pinconf_groups_fops, !83, !"pinconf_groups_fops", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/pinconf.c", i32 368, i32 1}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/pinconf.c", i32 352, i32 14}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/pinconf.c", i32 353, i32 14}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/pinconf.c", i32 358, i32 17}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i64 2148699131, i64 2148699136, i64 2148699149, i64 2148699193, i64 2148699227, i64 2148699248}
