; ModuleID = '/llk/IR_all_yes/drivers/cpufreq/sti-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/sti-cpufreq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@__initcall__kmod_sti_cpufreq__172_298_sti_cpufreq_init6 = internal global ptr @sti_cpufreq_init, section ".initcall6.init", align 4
@__UNIQUE_ID_description173 = internal constant [62 x i8] c"sti_cpufreq.description=STMicroelectronics CPUFreq/OPP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author174 = internal constant [56 x i8] c"sti_cpufreq.author=Ajitpal Singh <ajitpal.singh@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author175 = internal constant [52 x i8] c"sti_cpufreq.author=Lee Jones <lee.jones@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file176 = internal constant [45 x i8] c"sti_cpufreq.file=drivers/cpufreq/sti-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license177 = internal constant [27 x i8] c"sti_cpufreq.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st,stih407\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st,stih410\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st,stih418\00", [21 x i8] zeroinitializer }, align 32
@ddata.0 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ddata.1 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ddata.2 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sti_cpufreq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 273, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get device for CPU0\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sti_cpufreq_init\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/cpufreq/sti-cpufreq.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sti_cpufreq_init._entry_ptr = internal global ptr @sti_cpufreq_init._entry, section ".printk_index", align 4
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"operating-points-v2\00", [44 x i8] zeroinitializer }, align 32
@sti_cpufreq_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 278, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"OPP-v2 not supported\0A\00", [42 x i8] zeroinitializer }, align 32
@sti_cpufreq_init._entry_ptr.11 = internal global ptr @sti_cpufreq_init._entry.9, section ".printk_index", align 4
@sti_cpufreq_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 291, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Not doing voltage scaling\0A\00", [37 x i8] zeroinitializer }, align 32
@sti_cpufreq_init._entry_ptr.14 = internal global ptr @sti_cpufreq_init._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpufreq-dt\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st,syscfg\00", [22 x i8] zeroinitializer }, align 32
@sti_cpufreq_fetch_syscon_registers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 249, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\22st,syscfg\22 not supplied\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sti_cpufreq_fetch_syscon_registers\00", [61 x i8] zeroinitializer }, align 32
@sti_cpufreq_fetch_syscon_registers._entry_ptr = internal global ptr @sti_cpufreq_fetch_syscon_registers._entry, section ".printk_index", align 4
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st,syscfg-eng\00", [18 x i8] zeroinitializer }, align 32
@sti_cpufreq_fetch_syscon_registers._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.5, i32 255, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\22st,syscfg-eng\22 not supplied\0A\00", [34 x i8] zeroinitializer }, align 32
@sti_cpufreq_fetch_syscon_registers._entry_ptr.22 = internal global ptr @sti_cpufreq_fetch_syscon_registers._entry.20, section ".printk_index", align 4
@sti_cpufreq_set_opp_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 165, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"This SoC doesn't support voltage scaling\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sti_cpufreq_set_opp_info\00", [39 x i8] zeroinitializer }, align 32
@sti_cpufreq_set_opp_info._entry_ptr = internal global ptr @sti_cpufreq_set_opp_info._entry, section ".printk_index", align 4
@sti_cpufreq_set_opp_info._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.5, i32 172, ptr @.str.27, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read HW info offset from DT\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sti_cpufreq_set_opp_info._entry_ptr.28 = internal global ptr @sti_cpufreq_set_opp_info._entry.25, section ".printk_index", align 4
@sti_cpufreq_set_opp_info._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.24, ptr @.str.5, i32 182, ptr @.str.27, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to obtain process code\0A\00", [33 x i8] zeroinitializer }, align 32
@sti_cpufreq_set_opp_info._entry_ptr.31 = internal global ptr @sti_cpufreq_set_opp_info._entry.29, section ".printk_index", align 4
@sti_cpufreq_set_opp_info._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.24, ptr @.str.5, i32 191, ptr @.str.27, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to obtain substrate code\0A\00", [63 x i8] zeroinitializer }, align 32
@sti_cpufreq_set_opp_info._entry_ptr.34 = internal global ptr @sti_cpufreq_set_opp_info._entry.32, section ".printk_index", align 4
@sti_cpufreq_set_opp_info._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.24, ptr @.str.5, i32 199, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to obtain major version\0A\00", [32 x i8] zeroinitializer }, align 32
@sti_cpufreq_set_opp_info._entry_ptr.37 = internal global ptr @sti_cpufreq_set_opp_info._entry.35, section ".printk_index", align 4
@sti_cpufreq_set_opp_info._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.24, ptr @.str.5, i32 206, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to obtain minor version\0A\00", [32 x i8] zeroinitializer }, align 32
@sti_cpufreq_set_opp_info._entry_ptr.40 = internal global ptr @sti_cpufreq_set_opp_info._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcode%d\00", [24 x i8] zeroinitializer }, align 32
@sti_cpufreq_set_opp_info._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.24, ptr @.str.5, i32 215, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to set prop name\0A\00", [39 x i8] zeroinitializer }, align 32
@sti_cpufreq_set_opp_info._entry_ptr.44 = internal global ptr @sti_cpufreq_set_opp_info._entry.42, section ".printk_index", align 4
@sti_cpufreq_set_opp_info._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.24, ptr @.str.5, i32 225, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set supported hardware\0A\00", [62 x i8] zeroinitializer }, align 32
@sti_cpufreq_set_opp_info._entry_ptr.47 = internal global ptr @sti_cpufreq_set_opp_info._entry.45, section ".printk_index", align 4
@sti_cpufreq_set_opp_info.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.24, ptr @.str.5, ptr @.str.49, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sti_cpufreq\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"pcode: %d major: %d minor: %d substrate: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@sti_cpufreq_set_opp_info.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.48, ptr @.str.24, ptr @.str.5, ptr @.str.50, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"version[0]: %x version[1]: %x version[2]: %x\0A\00", [50 x i8] zeroinitializer }, align 32
@sti_cpufreq_fetch_regmap_field._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.5, i32 122, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to allocate reg field\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sti_cpufreq_fetch_regmap_field\00", [33 x i8] zeroinitializer }, align 32
@sti_cpufreq_fetch_regmap_field._entry_ptr = internal global ptr @sti_cpufreq_fetch_regmap_field._entry, section ".printk_index", align 4
@sti_cpufreq_fetch_regmap_field._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.5, i32 129, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to read %s code\0A\00", [40 x i8] zeroinitializer }, align 32
@sti_cpufreq_fetch_regmap_field._entry_ptr.55 = internal global ptr @sti_cpufreq_fetch_regmap_field._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SUBSTRATE\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCODE\00", [26 x i8] zeroinitializer }, align 32
@sti_cpufreq_fetch_major._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.5, i32 66, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"No major number offset provided in %pOF [%d]\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sti_cpufreq_fetch_major\00", [40 x i8] zeroinitializer }, align 32
@sti_cpufreq_fetch_major._entry_ptr = internal global ptr @sti_cpufreq_fetch_major._entry, section ".printk_index", align 4
@sti_cpufreq_fetch_major._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.5, i32 73, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to read major number from syscon [%d]\0A\00", [50 x i8] zeroinitializer }, align 32
@sti_cpufreq_fetch_major._entry_ptr.62 = internal global ptr @sti_cpufreq_fetch_major._entry.60, section ".printk_index", align 4
@sti_cpufreq_fetch_minor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.5, i32 93, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"No minor number offset provided %pOF [%d]\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sti_cpufreq_fetch_minor\00", [40 x i8] zeroinitializer }, align 32
@sti_cpufreq_fetch_minor._entry_ptr = internal global ptr @sti_cpufreq_fetch_minor._entry, section ".printk_index", align 4
@sti_cpufreq_fetch_minor._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.5, i32 101, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed to read the minor number from syscon [%d]\0A\00", [46 x i8] zeroinitializer }, align 32
@sti_cpufreq_fetch_minor._entry_ptr.67 = internal global ptr @sti_cpufreq_fetch_minor._entry.65, section ".printk_index", align 4
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 266, i32 33 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 267, i32 30 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 268, i32 30 }
@___asan_gen_.77 = private unnamed_addr constant [8 x i8] c"ddata.0\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [8 x i8] c"ddata.1\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [8 x i8] c"ddata.2\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 273, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 277, i32 43 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 278, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 291, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 294, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 247, i32 53 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 249, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 253, i32 57 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 255, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 165, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 172, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 182, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 191, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 199, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 206, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 211, i32 37 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 215, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 225, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 230, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 232, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 122, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 128, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 65, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 72, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 91, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [33 x i8] c"../drivers/cpufreq/sti-cpufreq.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 99, i32 3 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file176, ptr @__UNIQUE_ID_license177, ptr @__initcall__kmod_sti_cpufreq__172_298_sti_cpufreq_init6, ptr @sti_cpufreq_fetch_major._entry, ptr @sti_cpufreq_fetch_major._entry.60, ptr @sti_cpufreq_fetch_major._entry_ptr, ptr @sti_cpufreq_fetch_major._entry_ptr.62, ptr @sti_cpufreq_fetch_minor._entry, ptr @sti_cpufreq_fetch_minor._entry.65, ptr @sti_cpufreq_fetch_minor._entry_ptr, ptr @sti_cpufreq_fetch_minor._entry_ptr.67, ptr @sti_cpufreq_fetch_regmap_field._entry, ptr @sti_cpufreq_fetch_regmap_field._entry.53, ptr @sti_cpufreq_fetch_regmap_field._entry_ptr, ptr @sti_cpufreq_fetch_regmap_field._entry_ptr.55, ptr @sti_cpufreq_fetch_syscon_registers._entry, ptr @sti_cpufreq_fetch_syscon_registers._entry.20, ptr @sti_cpufreq_fetch_syscon_registers._entry_ptr, ptr @sti_cpufreq_fetch_syscon_registers._entry_ptr.22, ptr @sti_cpufreq_init._entry, ptr @sti_cpufreq_init._entry.12, ptr @sti_cpufreq_init._entry.9, ptr @sti_cpufreq_init._entry_ptr, ptr @sti_cpufreq_init._entry_ptr.11, ptr @sti_cpufreq_init._entry_ptr.14, ptr @sti_cpufreq_set_opp_info._entry, ptr @sti_cpufreq_set_opp_info._entry.25, ptr @sti_cpufreq_set_opp_info._entry.29, ptr @sti_cpufreq_set_opp_info._entry.32, ptr @sti_cpufreq_set_opp_info._entry.35, ptr @sti_cpufreq_set_opp_info._entry.38, ptr @sti_cpufreq_set_opp_info._entry.42, ptr @sti_cpufreq_set_opp_info._entry.45, ptr @sti_cpufreq_set_opp_info._entry_ptr, ptr @sti_cpufreq_set_opp_info._entry_ptr.28, ptr @sti_cpufreq_set_opp_info._entry_ptr.31, ptr @sti_cpufreq_set_opp_info._entry_ptr.34, ptr @sti_cpufreq_set_opp_info._entry_ptr.37, ptr @sti_cpufreq_set_opp_info._entry_ptr.40, ptr @sti_cpufreq_set_opp_info._entry_ptr.44, ptr @sti_cpufreq_set_opp_info._entry_ptr.47, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ddata.0, ptr @ddata.1, ptr @ddata.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddata.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddata.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddata.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_fetch_syscon_registers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_fetch_syscon_registers._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_set_opp_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_set_opp_info._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_set_opp_info._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_set_opp_info._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_set_opp_info._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_set_opp_info._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_set_opp_info._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_set_opp_info._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_fetch_regmap_field._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_fetch_regmap_field._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_fetch_major._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_fetch_major._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_fetch_minor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_cpufreq_fetch_minor._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_cpufreq_init() #0 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %call4 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true3.cleanup_crit_edge, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call6 = tail call ptr @get_cpu_device(i32 noundef 0) #5
  store ptr %call6, ptr @ddata.0, align 4
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef null, ptr noundef nonnull @.str.3) #8
  br label %do.end27

if.end9:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.device, ptr %call6, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call10 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef null) #5
  %tobool11.not = icmp eq ptr %call10, null
  %2 = load ptr, ptr @ddata.0, align 4
  br i1 %tobool11.not, label %do.end15, label %if.end16

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #8
  br label %do.end27

if.end16:                                         ; preds = %if.end9
  %of_node.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %4, ptr noundef nonnull @.str.16) #5
  store ptr %call.i, ptr @ddata.2, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end16.sti_cpufreq_fetch_syscon_registers.exit_crit_edge, label %if.end.i

if.end16.sti_cpufreq_fetch_syscon_registers.exit_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %sti_cpufreq_fetch_syscon_registers.exit

if.end.i:                                         ; preds = %if.end16
  %call3.i = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %4, ptr noundef nonnull @.str.19) #5
  store ptr %call3.i, ptr @ddata.1, align 4
  %cmp.i15.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i15.i, label %if.end.i.sti_cpufreq_fetch_syscon_registers.exit_crit_edge, label %if.end.i.if.end20_crit_edge

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end.i.sti_cpufreq_fetch_syscon_registers.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sti_cpufreq_fetch_syscon_registers.exit

sti_cpufreq_fetch_syscon_registers.exit:          ; preds = %if.end.i.sti_cpufreq_fetch_syscon_registers.exit_crit_edge, %if.end16.sti_cpufreq_fetch_syscon_registers.exit_crit_edge
  %.str.21.sink.i = phi ptr [ @.str.17, %if.end16.sti_cpufreq_fetch_syscon_registers.exit_crit_edge ], [ @.str.21, %if.end.i.sti_cpufreq_fetch_syscon_registers.exit_crit_edge ]
  %ddata.1.sink.i = phi ptr [ @ddata.2, %if.end16.sti_cpufreq_fetch_syscon_registers.exit_crit_edge ], [ @ddata.1, %if.end.i.sti_cpufreq_fetch_syscon_registers.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull %.str.21.sink.i) #8
  %5 = ptrtoint ptr %ddata.1.sink.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ddata.1.sink.i, align 4
  %tobool18.not = icmp eq ptr %6, null
  br i1 %tobool18.not, label %sti_cpufreq_fetch_syscon_registers.exit.if.end20_crit_edge, label %sti_cpufreq_fetch_syscon_registers.exit.do.end27_crit_edge

sti_cpufreq_fetch_syscon_registers.exit.do.end27_crit_edge: ; preds = %sti_cpufreq_fetch_syscon_registers.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end27

sti_cpufreq_fetch_syscon_registers.exit.if.end20_crit_edge: ; preds = %sti_cpufreq_fetch_syscon_registers.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end20:                                         ; preds = %sti_cpufreq_fetch_syscon_registers.exit.if.end20_crit_edge, %if.end.i.if.end20_crit_edge
  %call21 = tail call fastcc i32 @sti_cpufreq_set_opp_info()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.register_cpufreq_dt_crit_edge, label %if.end20.do.end27_crit_edge

if.end20.do.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end27

if.end20.register_cpufreq_dt_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %register_cpufreq_dt

do.end27:                                         ; preds = %if.end20.do.end27_crit_edge, %sti_cpufreq_fetch_syscon_registers.exit.do.end27_crit_edge, %do.end15, %do.end
  %7 = load ptr, ptr @ddata.0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13) #8
  br label %register_cpufreq_dt

register_cpufreq_dt:                              ; preds = %do.end27, %if.end20.register_cpufreq_dt_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  %8 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 255, i32 48)
  %10 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %fwnode.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %8, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.15, ptr %name2.i.i, align 4
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %properties.i.i, align 8
  %16 = call ptr @memset(ptr %res4.i.i, i32 0, i32 16)
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %register_cpufreq_dt, %land.lhs.true3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %register_cpufreq_dt ], [ -19, %land.lhs.true3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sti_cpufreq_set_opp_info() unnamed_addr #0 align 64 {
entry:
  %minor_offset.i = alloca i32, align 4
  %minid.i = alloca i32, align 4
  %major_offset.i = alloca i32, align 4
  %socid.i = alloca i32, align 4
  %value.i131 = alloca i32, align 4
  %value.i = alloca i32, align 4
  %hw_info_offset = alloca i32, align 4
  %version = alloca [3 x i32], align 4
  %name = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ddata.0, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hw_info_offset) #5
  %3 = ptrtoint ptr %hw_info_offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %hw_info_offset, align 4, !annotation !135
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %version) #5
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %version, align 4, !annotation !135
  %5 = getelementptr inbounds [3 x i32], ptr %version, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !135
  %7 = getelementptr inbounds [3 x i32], ptr %version, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %name) #5
  %8 = call ptr @memset(ptr %name, i32 255, i32 7)
  %call.i = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %call1.i = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.end, label %lor.lhs.false3.i.if.end_crit_edge

lor.lhs.false3.i.if.end_crit_edge:                ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = call i32 @of_property_read_u32_index(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef 1, ptr noundef nonnull %hw_info_offset) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end7, label %if.end.use_defaults.sink.split_crit_edge

if.end.use_defaults.sink.split_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %use_defaults.sink.split

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %hw_info_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_info_offset, align 4
  %11 = load ptr, ptr @ddata.0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #5
  %12 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %value.i, align 4, !annotation !135
  %13 = load ptr, ptr @ddata.1, align 4
  %.fca.0.insert.i = insertvalue [5 x i32] poison, i32 %10, 0
  %.fca.1.insert.i = insertvalue [5 x i32] %.fca.0.insert.i, i32 16, 1
  %.fca.2.insert.i = insertvalue [5 x i32] %.fca.1.insert.i, i32 19, 2
  %.fca.3.insert.i = insertvalue [5 x i32] %.fca.2.insert.i, i32 0, 3
  %.fca.4.insert.i = insertvalue [5 x i32] %.fca.3.insert.i, i32 0, 4
  %call.i128 = call ptr @devm_regmap_field_alloc(ptr noundef %11, ptr noundef %13, [5 x i32] %.fca.4.insert.i) #5
  %cmp.i.i = icmp ugt ptr %call.i128, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.51) #8
  %14 = ptrtoint ptr %call.i128 to i32
  br label %sti_cpufreq_fetch_regmap_field.exit

if.end.i:                                         ; preds = %if.end7
  %call3.i = call i32 @regmap_field_read(ptr noundef %call.i128, ptr noundef nonnull %value.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i129 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i129, label %if.end9.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.57) #8
  br label %sti_cpufreq_fetch_regmap_field.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value.i, align 4
  br label %sti_cpufreq_fetch_regmap_field.exit

sti_cpufreq_fetch_regmap_field.exit:              ; preds = %if.end9.i, %do.end7.i, %do.end.i
  %retval.0.i130 = phi i32 [ %14, %do.end.i ], [ %call3.i, %do.end7.i ], [ %16, %if.end9.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i130)
  %cmp = icmp slt i32 %retval.0.i130, 0
  br i1 %cmp, label %do.end12, label %sti_cpufreq_fetch_regmap_field.exit.if.end13_crit_edge

sti_cpufreq_fetch_regmap_field.exit.if.end13_crit_edge: ; preds = %sti_cpufreq_fetch_regmap_field.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.end12:                                         ; preds = %sti_cpufreq_fetch_regmap_field.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.30) #8
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %sti_cpufreq_fetch_regmap_field.exit.if.end13_crit_edge
  %pcode.0 = phi i32 [ 0, %do.end12 ], [ %retval.0.i130, %sti_cpufreq_fetch_regmap_field.exit.if.end13_crit_edge ]
  %17 = ptrtoint ptr %hw_info_offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_info_offset, align 4
  %19 = load ptr, ptr @ddata.0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i131) #5
  %20 = ptrtoint ptr %value.i131 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %value.i131, align 4, !annotation !135
  %21 = load ptr, ptr @ddata.1, align 4
  %.fca.0.insert.i140 = insertvalue [5 x i32] poison, i32 %18, 0
  %.fca.1.insert.i141 = insertvalue [5 x i32] %.fca.0.insert.i140, i32 0, 1
  %.fca.2.insert.i142 = insertvalue [5 x i32] %.fca.1.insert.i141, i32 2, 2
  %.fca.3.insert.i143 = insertvalue [5 x i32] %.fca.2.insert.i142, i32 0, 3
  %.fca.4.insert.i144 = insertvalue [5 x i32] %.fca.3.insert.i143, i32 0, 4
  %call.i145 = call ptr @devm_regmap_field_alloc(ptr noundef %19, ptr noundef %21, [5 x i32] %.fca.4.insert.i144) #5
  %cmp.i.i146 = icmp ugt ptr %call.i145, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i146, label %do.end.i147, label %if.end.i150

do.end.i147:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.51) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i131) #5
  br label %use_defaults.sink.split

if.end.i150:                                      ; preds = %if.end13
  %call3.i148 = call i32 @regmap_field_read(ptr noundef %call.i145, ptr noundef nonnull %value.i131) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i148)
  %tobool.not.i149 = icmp eq i32 %call3.i148, 0
  br i1 %tobool.not.i149, label %if.end9.i152, label %sti_cpufreq_fetch_regmap_field.exit154.thread

sti_cpufreq_fetch_regmap_field.exit154.thread:    ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.56) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i131) #5
  br label %use_defaults.sink.split

if.end9.i152:                                     ; preds = %if.end.i150
  %22 = ptrtoint ptr %value.i131 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %value.i131, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %phi.cmp = icmp eq i32 %23, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i131) #5
  br i1 %phi.cmp, label %if.end9.i152.use_defaults_crit_edge, label %if.end9.i152.use_defaults.sink.split_crit_edge

if.end9.i152.use_defaults.sink.split_crit_edge:   ; preds = %if.end9.i152
  call void @__sanitizer_cov_trace_pc() #7
  br label %use_defaults.sink.split

if.end9.i152.use_defaults_crit_edge:              ; preds = %if.end9.i152
  call void @__sanitizer_cov_trace_pc() #7
  br label %use_defaults

use_defaults.sink.split:                          ; preds = %if.end9.i152.use_defaults.sink.split_crit_edge, %sti_cpufreq_fetch_regmap_field.exit154.thread, %do.end.i147, %if.end.use_defaults.sink.split_crit_edge
  %.str.33.sink = phi ptr [ @.str.26, %if.end.use_defaults.sink.split_crit_edge ], [ @.str.33, %do.end.i147 ], [ @.str.33, %sti_cpufreq_fetch_regmap_field.exit154.thread ], [ @.str.33, %if.end9.i152.use_defaults.sink.split_crit_edge ]
  %pcode.1.ph = phi i32 [ 0, %if.end.use_defaults.sink.split_crit_edge ], [ %pcode.0, %do.end.i147 ], [ %pcode.0, %sti_cpufreq_fetch_regmap_field.exit154.thread ], [ %pcode.0, %if.end9.i152.use_defaults.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull %.str.33.sink) #8
  br label %use_defaults

use_defaults:                                     ; preds = %use_defaults.sink.split, %if.end9.i152.use_defaults_crit_edge
  %pcode.1 = phi i32 [ %pcode.0, %if.end9.i152.use_defaults_crit_edge ], [ %pcode.1.ph, %use_defaults.sink.split ]
  %substrate.0 = phi i32 [ 0, %if.end9.i152.use_defaults_crit_edge ], [ 31, %use_defaults.sink.split ]
  %24 = load ptr, ptr @ddata.0, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 27
  %25 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %major_offset.i) #5
  %27 = ptrtoint ptr %major_offset.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %major_offset.i, align 4, !annotation !135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %socid.i) #5
  %28 = ptrtoint ptr %socid.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %socid.i, align 4, !annotation !135
  %call.i155 = call i32 @of_property_read_u32_index(ptr noundef %26, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef nonnull %major_offset.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool.not.i156 = icmp eq i32 %call.i155, 0
  br i1 %tobool.not.i156, label %if.end.i160, label %do.end.i157

do.end.i157:                                      ; preds = %use_defaults
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.58, ptr noundef %26, i32 noundef %call.i155) #8
  br label %sti_cpufreq_fetch_major.exit

if.end.i160:                                      ; preds = %use_defaults
  %29 = load ptr, ptr @ddata.2, align 4
  %30 = ptrtoint ptr %major_offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %major_offset.i, align 4
  %call1.i158 = call i32 @regmap_read(ptr noundef %29, i32 noundef %31, ptr noundef nonnull %socid.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i158)
  %tobool2.not.i159 = icmp eq i32 %call1.i158, 0
  br i1 %tobool2.not.i159, label %sti_cpufreq_fetch_major.exit.thread, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.61, i32 noundef %call1.i158) #8
  br label %sti_cpufreq_fetch_major.exit

sti_cpufreq_fetch_major.exit.thread:              ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %socid.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %socid.i, align 4
  %shr.i = lshr i32 %33, 28
  %add.i = add nuw nsw i32 %shr.i, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %socid.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %major_offset.i) #5
  br label %if.end27

sti_cpufreq_fetch_major.exit:                     ; preds = %do.end6.i, %do.end.i157
  %retval.0.i161 = phi i32 [ %call.i155, %do.end.i157 ], [ %call1.i158, %do.end6.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %socid.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %major_offset.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i161)
  %cmp22 = icmp slt i32 %retval.0.i161, 0
  br i1 %cmp22, label %do.end26, label %sti_cpufreq_fetch_major.exit.if.end27_crit_edge

sti_cpufreq_fetch_major.exit.if.end27_crit_edge:  ; preds = %sti_cpufreq_fetch_major.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

do.end26:                                         ; preds = %sti_cpufreq_fetch_major.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.36) #8
  br label %if.end27

if.end27:                                         ; preds = %do.end26, %sti_cpufreq_fetch_major.exit.if.end27_crit_edge, %sti_cpufreq_fetch_major.exit.thread
  %major.0 = phi i32 [ 31, %do.end26 ], [ %retval.0.i161, %sti_cpufreq_fetch_major.exit.if.end27_crit_edge ], [ %add.i, %sti_cpufreq_fetch_major.exit.thread ]
  %34 = load ptr, ptr @ddata.0, align 4
  %of_node.i162 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 27
  %35 = ptrtoint ptr %of_node.i162 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node.i162, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minor_offset.i) #5
  %37 = ptrtoint ptr %minor_offset.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %minor_offset.i, align 4, !annotation !135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %minid.i) #5
  %38 = ptrtoint ptr %minid.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %minid.i, align 4, !annotation !135
  %call.i163 = call i32 @of_property_read_u32_index(ptr noundef %36, ptr noundef nonnull @.str.19, i32 noundef 2, ptr noundef nonnull %minor_offset.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %tobool.not.i164 = icmp eq i32 %call.i163, 0
  br i1 %tobool.not.i164, label %if.end.i168, label %do.end.i165

do.end.i165:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.63, ptr noundef %36, i32 noundef %call.i163) #8
  br label %sti_cpufreq_fetch_minor.exit

if.end.i168:                                      ; preds = %if.end27
  %39 = load ptr, ptr @ddata.1, align 4
  %40 = ptrtoint ptr %minor_offset.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %minor_offset.i, align 4
  %call1.i166 = call i32 @regmap_read(ptr noundef %39, i32 noundef %41, ptr noundef nonnull %minid.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i166)
  %tobool2.not.i167 = icmp eq i32 %call1.i166, 0
  br i1 %tobool2.not.i167, label %sti_cpufreq_fetch_minor.exit.thread, label %do.end6.i169

do.end6.i169:                                     ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.66, i32 noundef %call1.i166) #8
  br label %sti_cpufreq_fetch_minor.exit

sti_cpufreq_fetch_minor.exit.thread:              ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %minid.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %minid.i, align 4
  %and.i = and i32 %43, 15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minid.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor_offset.i) #5
  br label %if.end34

sti_cpufreq_fetch_minor.exit:                     ; preds = %do.end6.i169, %do.end.i165
  %retval.0.i171 = phi i32 [ %call.i163, %do.end.i165 ], [ %call1.i166, %do.end6.i169 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minid.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %minor_offset.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i171)
  %cmp29 = icmp slt i32 %retval.0.i171, 0
  br i1 %cmp29, label %do.end33, label %sti_cpufreq_fetch_minor.exit.if.end34_crit_edge

sti_cpufreq_fetch_minor.exit.if.end34_crit_edge:  ; preds = %sti_cpufreq_fetch_minor.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

do.end33:                                         ; preds = %sti_cpufreq_fetch_minor.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.39) #8
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %sti_cpufreq_fetch_minor.exit.if.end34_crit_edge, %sti_cpufreq_fetch_minor.exit.thread
  %minor.0 = phi i32 [ 31, %do.end33 ], [ %retval.0.i171, %sti_cpufreq_fetch_minor.exit.if.end34_crit_edge ], [ %and.i, %sti_cpufreq_fetch_minor.exit.thread ]
  %call35 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 7, ptr noundef nonnull @.str.41, i32 noundef %pcode.1)
  %call37 = call ptr @dev_pm_opp_set_prop_name(ptr noundef %0, ptr noundef nonnull %name) #5
  %cmp.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end42, label %if.end44

do.end42:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.43) #8
  %44 = ptrtoint ptr %call37 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %shl = shl nuw i32 1, %major.0
  %45 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shl, ptr %version, align 4
  %shl45 = shl nuw i32 1, %minor.0
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shl45, ptr %5, align 4
  %shl47 = shl nuw i32 1, %substrate.0
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shl47, ptr %7, align 4
  %call50 = call ptr @dev_pm_opp_set_supported_hw(ptr noundef %0, ptr noundef nonnull %version, i32 noundef 3) #5
  %cmp.i172 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %do.end55, label %do.body58

do.end55:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.46) #8
  %48 = ptrtoint ptr %call50 to i32
  call void @dev_pm_opp_put_prop_name(ptr noundef nonnull %call50) #5
  br label %cleanup

do.body58:                                        ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sti_cpufreq_set_opp_info.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sti_cpufreq_set_opp_info, %if.then63)) #5
          to label %do.body67 [label %if.then63], !srcloc !136

if.then63:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sti_cpufreq_set_opp_info.__UNIQUE_ID_ddebug170, ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef %pcode.1, i32 noundef %major.0, i32 noundef %minor.0, i32 noundef %substrate.0) #5
  br label %do.body67

do.body67:                                        ; preds = %if.then63, %do.body58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sti_cpufreq_set_opp_info.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sti_cpufreq_set_opp_info, %if.then79)) #5
          to label %cleanup [label %if.then79], !srcloc !136

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %version, align 4
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %5, align 4
  %53 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %7, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sti_cpufreq_set_opp_info.__UNIQUE_ID_ddebug171, ptr noundef %0, ptr noundef nonnull @.str.50, i32 noundef %50, i32 noundef %52, i32 noundef %54) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then79, %do.body67, %do.end55, %do.end42, %do.end
  %retval.0 = phi i32 [ %44, %do.end42 ], [ %48, %do.end55 ], [ -19, %do.end ], [ 0, %if.then79 ], [ 0, %do.body67 ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %name) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %version) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hw_info_offset) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_set_prop_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_set_supported_hw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_prop_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !97, !99, !100, !101, !102, !104, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__initcall__kmod_sti_cpufreq__172_298_sti_cpufreq_init6, !1, !"__initcall__kmod_sti_cpufreq__172_298_sti_cpufreq_init6", i1 false, i1 false}
!1 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 298, i32 1}
!2 = !{ptr @__UNIQUE_ID_description173, !3, !"__UNIQUE_ID_description173", i1 false, i1 false}
!3 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 307, i32 1}
!4 = !{ptr @__UNIQUE_ID_author174, !5, !"__UNIQUE_ID_author174", i1 false, i1 false}
!5 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 308, i32 1}
!6 = !{ptr @__UNIQUE_ID_author175, !7, !"__UNIQUE_ID_author175", i1 false, i1 false}
!7 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 309, i32 1}
!8 = !{ptr @__UNIQUE_ID_file176, !9, !"__UNIQUE_ID_file176", i1 false, i1 false}
!9 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 310, i32 1}
!10 = !{ptr @__UNIQUE_ID_license177, !9, !"__UNIQUE_ID_license177", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 266, i32 33}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 267, i32 30}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 268, i32 30}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 273, i32 3}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sti_cpufreq_init._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @sti_cpufreq_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 277, i32 43}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 278, i32 3}
!29 = !{ptr @sti_cpufreq_init._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @sti_cpufreq_init._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 291, i32 2}
!33 = !{ptr @sti_cpufreq_init._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @sti_cpufreq_init._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 294, i32 34}
!37 = distinct !{null, !38, !"ddata", i1 false, i1 false}
!38 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 53, i32 3}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 247, i32 53}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 249, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @sti_cpufreq_fetch_syscon_registers._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @sti_cpufreq_fetch_syscon_registers._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 253, i32 57}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 255, i32 3}
!50 = !{ptr @sti_cpufreq_fetch_syscon_registers._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sti_cpufreq_fetch_syscon_registers._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 165, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @sti_cpufreq_set_opp_info._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @sti_cpufreq_set_opp_info._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 172, i32 3}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @sti_cpufreq_set_opp_info._entry.25, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @sti_cpufreq_set_opp_info._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 182, i32 3}
!64 = !{ptr @sti_cpufreq_set_opp_info._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @sti_cpufreq_set_opp_info._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 191, i32 3}
!68 = !{ptr @sti_cpufreq_set_opp_info._entry.32, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @sti_cpufreq_set_opp_info._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 199, i32 3}
!72 = !{ptr @sti_cpufreq_set_opp_info._entry.35, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @sti_cpufreq_set_opp_info._entry_ptr.37, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 206, i32 3}
!76 = !{ptr @sti_cpufreq_set_opp_info._entry.38, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @sti_cpufreq_set_opp_info._entry_ptr.40, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 211, i32 37}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 215, i32 3}
!82 = !{ptr @sti_cpufreq_set_opp_info._entry.42, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @sti_cpufreq_set_opp_info._entry_ptr.44, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.46, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 225, i32 3}
!86 = !{ptr @sti_cpufreq_set_opp_info._entry.45, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @sti_cpufreq_set_opp_info._entry_ptr.47, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 230, i32 2}
!90 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @sti_cpufreq_set_opp_info.__UNIQUE_ID_ddebug170, !89, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 232, i32 2}
!94 = !{ptr @sti_cpufreq_set_opp_info.__UNIQUE_ID_ddebug171, !93, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!95 = distinct !{null, !96, !"sti_stih407_dvfs_regfields", i1 false, i1 false}
!96 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 136, i32 31}
!97 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 122, i32 3}
!99 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @sti_cpufreq_fetch_regmap_field._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @sti_cpufreq_fetch_regmap_field._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 128, i32 3}
!104 = !{ptr @sti_cpufreq_fetch_regmap_field._entry.53, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @sti_cpufreq_fetch_regmap_field._entry_ptr.55, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.56, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 65, i32 3}
!110 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @sti_cpufreq_fetch_major._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @sti_cpufreq_fetch_major._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 72, i32 3}
!115 = !{ptr @sti_cpufreq_fetch_major._entry.60, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @sti_cpufreq_fetch_major._entry_ptr.62, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 91, i32 3}
!119 = !{ptr @.str.64, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @sti_cpufreq_fetch_minor._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @sti_cpufreq_fetch_minor._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/cpufreq/sti-cpufreq.c", i32 99, i32 3}
!124 = !{ptr @sti_cpufreq_fetch_minor._entry.65, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @sti_cpufreq_fetch_minor._entry_ptr.67, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{!"auto-init"}
!136 = !{i64 2148295296, i64 2148295301, i64 2148295314, i64 2148295358, i64 2148295392, i64 2148295413}
