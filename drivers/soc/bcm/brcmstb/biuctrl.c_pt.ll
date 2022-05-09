; ModuleID = '/llk/IR_all_yes/drivers/soc/bcm/brcmstb/biuctrl.c_pt.bc'
source_filename = "../drivers/soc/bcm/brcmstb/biuctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }

@__initcall__kmod_biuctrl__108_358_brcmstb_biuctrl_initearly = internal global ptr @brcmstb_biuctrl_init, section ".initcallearly.init", align 4
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"brcm,brcmstb-cpu-biu-ctrl\00", [38 x i8] zeroinitializer }, align 32
@brcmstb_biuctrl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 347, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013brcmstb: biuctrl: MCP: Unable to disable write pairing!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"brcmstb_biuctrl_init\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/soc/bcm/brcmstb/biuctrl.c\00", [62 x i8] zeroinitializer }, align 32
@brcmstb_biuctrl_init._entry_ptr = internal global ptr @brcmstb_biuctrl_init._entry, section ".printk_index", align 4
@brcmstb_cpu_credit_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @brcmstb_cpu_credit_reg_suspend, ptr @brcmstb_cpu_credit_reg_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@cpubiuctrl_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@setup_hifcpubiuctrl_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013brcmstb: biuctrl: failed to remap BIU control base\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"setup_hifcpubiuctrl_regs\00", [39 x i8] zeroinitializer }, align 32
@setup_hifcpubiuctrl_regs._entry_ptr = internal global ptr @setup_hifcpubiuctrl_regs._entry, section ".printk_index", align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcm,write-pairing\00", [45 x i8] zeroinitializer }, align 32
@mcp_wr_pairing_en = internal global { i8, [31 x i8] } zeroinitializer, align 32
@setup_hifcpubiuctrl_regs._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.3, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013brcmstb: biuctrl: failed to obtain CPU device node\0A\00", [42 x i8] zeroinitializer }, align 32
@setup_hifcpubiuctrl_regs._entry_ptr.9 = internal global ptr @setup_hifcpubiuctrl_regs._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcm,brahma-b15\00", [16 x i8] zeroinitializer }, align 32
@b15_cpubiuctrl_regs = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 388, i32 -1, i32 -1, i32 -1, i32 -1], [44 x i8] zeroinitializer }, align 32
@cpubiuctrl_regs = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcm,brahma-b53\00", [16 x i8] zeroinitializer }, align 32
@b53_cpubiuctrl_regs = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 176, i32 180, i32 556, i32 120, i32 124], [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arm,cortex-a72\00", [17 x i8] zeroinitializer }, align 32
@a72_cpubiuctrl_regs = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 24, i32 28, i32 32, i32 8, i32 12], [44 x i8] zeroinitializer }, align 32
@setup_hifcpubiuctrl_regs._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.3, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013brcmstb: biuctrl: unsupported CPU\0A\00", [59 x i8] zeroinitializer }, align 32
@setup_hifcpubiuctrl_regs._entry_ptr.15 = internal global ptr @setup_hifcpubiuctrl_regs._entry.13, section ".printk_index", align 4
@b53_cpubiuctrl_no_wb_regs = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 176, i32 180, i32 -1, i32 120, i32 124], [44 x i8] zeroinitializer }, align 32
@mcp_write_pairing_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016brcmstb: biuctrl: MCP: Enabling write pairing\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mcp_write_pairing_set\00", [42 x i8] zeroinitializer }, align 32
@mcp_write_pairing_set._entry_ptr = internal global ptr @mcp_write_pairing_set._entry, section ".printk_index", align 4
@mcp_write_pairing_set._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016brcmstb: biuctrl: MCP: Disabling write pairing\0A\00", [46 x i8] zeroinitializer }, align 32
@mcp_write_pairing_set._entry_ptr.20 = internal global ptr @mcp_write_pairing_set._entry.18, section ".printk_index", align 4
@mcp_write_pairing_set._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016brcmstb: biuctrl: MCP: Write pairing already disabled\0A\00", [39 x i8] zeroinitializer }, align 32
@mcp_write_pairing_set._entry_ptr.23 = internal global ptr @mcp_write_pairing_set._entry.21, section ".printk_index", align 4
@a72_b53_mach_compat = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 29201, i32 467219, i32 467222, i32 29206, i32 467300, i32 467301, i32 29269, i32 29280, i32 29288, i32 29297, i32 29304], [52 x i8] zeroinitializer }, align 32
@cpubiuctrl_reg_save.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cpubiuctrl_reg_save.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@cpubiuctrl_reg_save.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 337, i32 43 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 347, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [31 x i8] c"brcmstb_cpu_credit_syscore_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 322, i32 27 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"cpubiuctrl_base\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 46, i32 22 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 261, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 266, i32 48 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"mcp_wr_pairing_en\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 47, i32 13 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 270, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 275, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant [20 x i8] c"b15_cpubiuctrl_regs\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 81, i32 18 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"cpubiuctrl_regs\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 48, i32 19 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 277, i32 43 }
@___asan_gen_.78 = private unnamed_addr constant [20 x i8] c"b53_cpubiuctrl_regs\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 98, i32 18 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 279, i32 43 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"a72_cpubiuctrl_regs\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 106, i32 18 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 282, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [26 x i8] c"b53_cpubiuctrl_no_wb_regs\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 90, i32 18 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 123, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 127, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 131, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [20 x i8] c"a72_b53_mach_compat\00", align 1
@___asan_gen_.118 = private constant [37 x i8] c"../drivers/soc/bcm/brcmstb/biuctrl.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 137, i32 18 }
@___asan_gen_.120 = private unnamed_addr constant [22 x i8] c"cpubiuctrl_reg_save.0\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"cpubiuctrl_reg_save.1\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [22 x i8] c"cpubiuctrl_reg_save.2\00", align 1
@llvm.compiler.used = appending global [43 x ptr] [ptr @__initcall__kmod_biuctrl__108_358_brcmstb_biuctrl_initearly, ptr @brcmstb_biuctrl_init._entry, ptr @brcmstb_biuctrl_init._entry_ptr, ptr @mcp_write_pairing_set._entry, ptr @mcp_write_pairing_set._entry.18, ptr @mcp_write_pairing_set._entry.21, ptr @mcp_write_pairing_set._entry_ptr, ptr @mcp_write_pairing_set._entry_ptr.20, ptr @mcp_write_pairing_set._entry_ptr.23, ptr @setup_hifcpubiuctrl_regs._entry, ptr @setup_hifcpubiuctrl_regs._entry.13, ptr @setup_hifcpubiuctrl_regs._entry.7, ptr @setup_hifcpubiuctrl_regs._entry_ptr, ptr @setup_hifcpubiuctrl_regs._entry_ptr.15, ptr @setup_hifcpubiuctrl_regs._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @brcmstb_cpu_credit_syscore_ops, ptr @cpubiuctrl_base, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mcp_wr_pairing_en, ptr @.str.8, ptr @.str.10, ptr @b15_cpubiuctrl_regs, ptr @cpubiuctrl_regs, ptr @.str.11, ptr @b53_cpubiuctrl_regs, ptr @.str.12, ptr @a72_cpubiuctrl_regs, ptr @.str.14, ptr @b53_cpubiuctrl_no_wb_regs, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @a72_b53_mach_compat, ptr @cpubiuctrl_reg_save.0, ptr @cpubiuctrl_reg_save.1, ptr @cpubiuctrl_reg_save.2], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_biuctrl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcmstb_cpu_credit_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpubiuctrl_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hifcpubiuctrl_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp_wr_pairing_en to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hifcpubiuctrl_regs._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b15_cpubiuctrl_regs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpubiuctrl_regs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_cpubiuctrl_regs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a72_cpubiuctrl_regs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hifcpubiuctrl_regs._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_cpubiuctrl_no_wb_regs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp_write_pairing_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp_write_pairing_set._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp_write_pairing_set._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a72_b53_mach_compat to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpubiuctrl_reg_save.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpubiuctrl_reg_save.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpubiuctrl_reg_save.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_biuctrl_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @setup_hifcpubiuctrl_regs(ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @mcp_write_pairing_set() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @mcp_a72_b53_set() #9
  tail call void @register_syscore_ops(ptr noundef nonnull @brcmstb_cpu_credit_syscore_ops) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ 0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_hifcpubiuctrl_regs(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #6
  store ptr %call, ptr @cpubiuctrl_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  br label %out

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.6, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i, null
  %frombool = zext i1 %tobool.i to i8
  store i8 %frombool, ptr @mcp_wr_pairing_en, align 1
  %call3 = tail call ptr @of_get_cpu_node(i32 noundef 0, ptr noundef null) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %out

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %call3, ptr noundef nonnull @.str.10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @b15_cpubiuctrl_regs, ptr @cpubiuctrl_regs, align 4
  br label %if.end30

if.else:                                          ; preds = %if.end11
  %call15 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %call3, ptr noundef nonnull @.str.11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else18, label %if.then17

if.then17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @b53_cpubiuctrl_regs, ptr @cpubiuctrl_regs, align 4
  br label %if.end30

if.else18:                                        ; preds = %if.else
  %call19 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %call3, ptr noundef nonnull @.str.12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end25, label %if.then21

if.then21:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @a72_cpubiuctrl_regs, ptr @cpubiuctrl_regs, align 4
  br label %if.end30

do.end25:                                         ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #10
  br label %if.end30

if.end30:                                         ; preds = %do.end25, %if.then21, %if.then17, %if.then14
  %ret.0 = phi i32 [ 0, %if.then14 ], [ 0, %if.then17 ], [ 0, %if.then21 ], [ -22, %do.end25 ]
  tail call void @of_node_put(ptr noundef nonnull %call3) #6
  %call31 = tail call i32 @brcmstb_get_family_id() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call31)
  %tobool.not.i = icmp ult i32 %call31, 268435456
  %cond.v.i = select i1 %tobool.not.i, i32 8, i32 16
  %cond.i = lshr i32 %call31, %cond.v.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 29280, i32 %cond.i)
  %cmp = icmp eq i32 %cond.i, 29280
  %and.i = and i32 %call31, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp34 = icmp eq i32 %and.i, 0
  %or.cond = and i1 %cmp34, %cmp
  br i1 %or.cond, label %if.then35, label %if.end30.out_crit_edge

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @b53_cpubiuctrl_no_wb_regs, ptr @cpubiuctrl_regs, align 4
  br label %out

out:                                              ; preds = %if.then35, %if.end30.out_crit_edge, %do.end8, %do.end
  %ret.1 = phi i32 [ %ret.0, %if.then35 ], [ %ret.0, %if.end30.out_crit_edge ], [ -19, %do.end8 ], [ -12, %do.end ]
  tail call void @of_node_put(ptr noundef %np) #6
  ret i32 %ret.1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp_write_pairing_set() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cpubiuctrl_base, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @cpubiuctrl_regs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp eq i32 %3, -1
  br i1 %cmp.i, label %if.end.cbc_readl.exit_crit_edge, label %if.end.i

if.end.cbc_readl.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cbc_readl.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %0, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !73
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  br label %cbc_readl.exit

cbc_readl.exit:                                   ; preds = %if.end.i, %if.end.cbc_readl.exit_crit_edge
  %retval.0.i = phi i32 [ %5, %if.end.i ], [ -1, %if.end.cbc_readl.exit_crit_edge ]
  %6 = load i8, ptr @mcp_wr_pairing_en, align 1, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.else, label %do.end

do.end:                                           ; preds = %cbc_readl.exit
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  %7 = load ptr, ptr @cpubiuctrl_regs, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i22 = icmp eq i32 %9, -1
  br i1 %cmp.i22, label %do.end.cleanup_crit_edge, label %do.body.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %retval.0.i, 1879048192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %11 = load ptr, ptr @cpubiuctrl_base, align 4
  %add.ptr.i23 = getelementptr i8, ptr %11, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 %10) #6, !srcloc !76
  br label %cleanup

if.else:                                          ; preds = %cbc_readl.exit
  %and = and i32 %retval.0.i, 1879048192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.end15, label %do.end8

do.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  %and11 = and i32 %retval.0.i, -1879048193
  tail call fastcc void @cbc_writel(i32 noundef %and11, i32 noundef 0)
  br label %cleanup

do.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %do.end8, %do.body.i, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %do.end8 ], [ 0, %do.end15 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcp_a72_b53_set() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @brcmstb_get_family_id() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %call)
  %tobool.not.i = icmp ult i32 %call, 268435456
  %cond.v.i = select i1 %tobool.not.i, i32 8, i32 16
  %cond.i = lshr i32 %call, %cond.v.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.090 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [11 x i32], ptr @a72_b53_mach_compat, i32 0, i32 %i.090
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %1)
  %cmp2 = icmp eq i32 %cond.i, %1
  br i1 %cmp2, label %if.end5, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.090, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %2 = load ptr, ptr @cpubiuctrl_regs, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp.i = icmp eq i32 %4, -1
  br i1 %cmp.i, label %if.end5.cbc_readl.exit_crit_edge, label %if.end.i

if.end5.cbc_readl.exit_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cbc_readl.exit

if.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %5 = load ptr, ptr @cpubiuctrl_base, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !73
  %7 = and i32 %6, 255
  %8 = or i32 %7, -2004318208
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  br label %cbc_readl.exit

cbc_readl.exit:                                   ; preds = %if.end.i, %if.end5.cbc_readl.exit_crit_edge
  %retval.0.i = phi i32 [ %9, %if.end.i ], [ -7829368, %if.end5.cbc_readl.exit_crit_edge ]
  %10 = load ptr, ptr @cpubiuctrl_regs, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i65 = icmp eq i32 %12, -1
  br i1 %cmp.i65, label %cbc_readl.exit.cbc_writel.exit_crit_edge, label %do.body.i

cbc_readl.exit.cbc_writel.exit_crit_edge:         ; preds = %cbc_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cbc_writel.exit

do.body.i:                                        ; preds = %cbc_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i) #6
  %14 = load ptr, ptr @cpubiuctrl_base, align 4
  %add.ptr.i66 = getelementptr i8, ptr %14, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66, i32 %13) #6, !srcloc !76
  br label %cbc_writel.exit

cbc_writel.exit:                                  ; preds = %do.body.i, %cbc_readl.exit.cbc_writel.exit_crit_edge
  %15 = load ptr, ptr @cpubiuctrl_regs, align 4
  %arrayidx.i = getelementptr i32, ptr %15, i32 1
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp.i67 = icmp eq i32 %17, -1
  br i1 %cmp.i67, label %cbc_writel.exit.cbc_readl.exit71_crit_edge, label %if.end.i69

cbc_writel.exit.cbc_readl.exit71_crit_edge:       ; preds = %cbc_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cbc_readl.exit71

if.end.i69:                                       ; preds = %cbc_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  %18 = load ptr, ptr @cpubiuctrl_base, align 4
  %add.ptr.i68 = getelementptr i8, ptr %18, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #6, !srcloc !73
  %20 = or i32 %19, -256
  %21 = call i32 @llvm.bswap.i32(i32 %20)
  br label %cbc_readl.exit71

cbc_readl.exit71:                                 ; preds = %if.end.i69, %cbc_writel.exit.cbc_readl.exit71_crit_edge
  %retval.0.i70 = phi i32 [ %21, %if.end.i69 ], [ -1, %cbc_writel.exit.cbc_readl.exit71_crit_edge ]
  %22 = load ptr, ptr @cpubiuctrl_regs, align 4
  %arrayidx.i72 = getelementptr i32, ptr %22, i32 1
  %23 = ptrtoint ptr %arrayidx.i72 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %cmp.i73 = icmp eq i32 %24, -1
  br i1 %cmp.i73, label %cbc_readl.exit71.cbc_writel.exit76_crit_edge, label %do.body.i75

cbc_readl.exit71.cbc_writel.exit76_crit_edge:     ; preds = %cbc_readl.exit71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cbc_writel.exit76

do.body.i75:                                      ; preds = %cbc_readl.exit71
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i70) #6
  %26 = load ptr, ptr @cpubiuctrl_base, align 4
  %add.ptr.i74 = getelementptr i8, ptr %26, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %25) #6, !srcloc !76
  br label %cbc_writel.exit76

cbc_writel.exit76:                                ; preds = %do.body.i75, %cbc_readl.exit71.cbc_writel.exit76_crit_edge
  %27 = load ptr, ptr @cpubiuctrl_regs, align 4
  %arrayidx.i77 = getelementptr i32, ptr %27, i32 2
  %28 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.i78 = icmp eq i32 %29, -1
  br i1 %cmp.i78, label %cbc_writel.exit76.cbc_readl.exit82_crit_edge, label %if.end.i80

cbc_writel.exit76.cbc_readl.exit82_crit_edge:     ; preds = %cbc_writel.exit76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cbc_readl.exit82

if.end.i80:                                       ; preds = %cbc_writel.exit76
  call void @__sanitizer_cov_trace_pc() #8
  %30 = load ptr, ptr @cpubiuctrl_base, align 4
  %add.ptr.i79 = getelementptr i8, ptr %30, i32 %29
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #6, !srcloc !73
  %32 = and i32 %31, 16711679
  %33 = or i32 %32, 2013331456
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  br label %cbc_readl.exit82

cbc_readl.exit82:                                 ; preds = %if.end.i80, %cbc_writel.exit76.cbc_readl.exit82_crit_edge
  %retval.0.i81 = phi i32 [ %34, %if.end.i80 ], [ -136, %cbc_writel.exit76.cbc_readl.exit82_crit_edge ]
  %35 = load ptr, ptr @cpubiuctrl_regs, align 4
  %arrayidx.i83 = getelementptr i32, ptr %35, i32 2
  %36 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i83, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp.i84 = icmp eq i32 %37, -1
  br i1 %cmp.i84, label %cbc_readl.exit82.cleanup_crit_edge, label %do.body.i86

cbc_readl.exit82.cleanup_crit_edge:               ; preds = %cbc_readl.exit82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i86:                                      ; preds = %cbc_readl.exit82
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %38 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i81) #6
  %39 = load ptr, ptr @cpubiuctrl_base, align 4
  %add.ptr.i85 = getelementptr i8, ptr %39, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %38) #6, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %do.body.i86, %cbc_readl.exit82.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_cpu_node(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @brcmstb_get_family_id() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cbc_writel(i32 noundef %val, i32 noundef %reg) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @cpubiuctrl_regs, align 4
  %arrayidx = getelementptr i32, ptr %0, i32 %reg
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg)
  %cmp1 = icmp sgt i32 %reg, 2
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %val)
  %4 = load ptr, ptr @cpubiuctrl_base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcmstb_cpu_credit_reg_suspend() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cpubiuctrl_base, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %1 = load ptr, ptr @cpubiuctrl_regs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp eq i32 %3, -1
  br i1 %cmp.i, label %for.body.preheader.cbc_readl.exit_crit_edge, label %if.end.i

for.body.preheader.cbc_readl.exit_crit_edge:      ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cbc_readl.exit

if.end.i:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %4 = load ptr, ptr @cpubiuctrl_base, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %3
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !73
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  br label %cbc_readl.exit

cbc_readl.exit:                                   ; preds = %if.end.i, %for.body.preheader.cbc_readl.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %if.end.i ], [ -1, %for.body.preheader.cbc_readl.exit_crit_edge ]
  store i32 %retval.0.i, ptr @cpubiuctrl_reg_save.0, align 4
  %7 = load ptr, ptr @cpubiuctrl_regs, align 4
  %arrayidx.i.1 = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.1 = icmp eq i32 %9, -1
  br i1 %cmp.i.1, label %cbc_readl.exit.cbc_readl.exit.1_crit_edge, label %if.end.i.1

cbc_readl.exit.cbc_readl.exit.1_crit_edge:        ; preds = %cbc_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cbc_readl.exit.1

if.end.i.1:                                       ; preds = %cbc_readl.exit
  call void @__sanitizer_cov_trace_pc() #8
  %10 = load ptr, ptr @cpubiuctrl_base, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %10, i32 %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1) #6, !srcloc !73
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  br label %cbc_readl.exit.1

cbc_readl.exit.1:                                 ; preds = %if.end.i.1, %cbc_readl.exit.cbc_readl.exit.1_crit_edge
  %retval.0.i.1 = phi i32 [ %12, %if.end.i.1 ], [ -1, %cbc_readl.exit.cbc_readl.exit.1_crit_edge ]
  store i32 %retval.0.i.1, ptr @cpubiuctrl_reg_save.1, align 4
  %13 = load ptr, ptr @cpubiuctrl_regs, align 4
  %arrayidx.i.2 = getelementptr i32, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.2 = icmp eq i32 %15, -1
  br i1 %cmp.i.2, label %cbc_readl.exit.1.cbc_readl.exit.4_crit_edge, label %if.end.i.2

cbc_readl.exit.1.cbc_readl.exit.4_crit_edge:      ; preds = %cbc_readl.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cbc_readl.exit.4

if.end.i.2:                                       ; preds = %cbc_readl.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  %16 = load ptr, ptr @cpubiuctrl_base, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %16, i32 %15
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2) #6, !srcloc !73
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  br label %cbc_readl.exit.4

cbc_readl.exit.4:                                 ; preds = %if.end.i.2, %cbc_readl.exit.1.cbc_readl.exit.4_crit_edge
  %retval.0.i.2 = phi i32 [ %18, %if.end.i.2 ], [ -1, %cbc_readl.exit.1.cbc_readl.exit.4_crit_edge ]
  store i32 %retval.0.i.2, ptr @cpubiuctrl_reg_save.2, align 4
  br label %cleanup

cleanup:                                          ; preds = %cbc_readl.exit.4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcmstb_cpu_credit_reg_resume() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cpubiuctrl_base, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %1 = load ptr, ptr @cpubiuctrl_regs, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp eq i32 %3, -1
  br i1 %cmp.i, label %for.body.preheader.cbc_writel.exit_crit_edge, label %do.body.i

for.body.preheader.cbc_writel.exit_crit_edge:     ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cbc_writel.exit

do.body.i:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %4 = load i32, ptr @cpubiuctrl_reg_save.0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %6 = load ptr, ptr @cpubiuctrl_base, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #6, !srcloc !76
  br label %cbc_writel.exit

cbc_writel.exit:                                  ; preds = %do.body.i, %for.body.preheader.cbc_writel.exit_crit_edge
  %7 = load ptr, ptr @cpubiuctrl_regs, align 4
  %arrayidx.i.1 = getelementptr i32, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i.1 = icmp eq i32 %9, -1
  br i1 %cmp.i.1, label %cbc_writel.exit.cbc_writel.exit.1_crit_edge, label %do.body.i.1

cbc_writel.exit.cbc_writel.exit.1_crit_edge:      ; preds = %cbc_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cbc_writel.exit.1

do.body.i.1:                                      ; preds = %cbc_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  %10 = load i32, ptr @cpubiuctrl_reg_save.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %12 = load ptr, ptr @cpubiuctrl_base, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %12, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1, i32 %11) #6, !srcloc !76
  br label %cbc_writel.exit.1

cbc_writel.exit.1:                                ; preds = %do.body.i.1, %cbc_writel.exit.cbc_writel.exit.1_crit_edge
  %13 = load ptr, ptr @cpubiuctrl_regs, align 4
  %arrayidx.i.2 = getelementptr i32, ptr %13, i32 2
  %14 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.2 = icmp eq i32 %15, -1
  br i1 %cmp.i.2, label %cbc_writel.exit.1.cleanup_crit_edge, label %do.body.i.2

cbc_writel.exit.1.cleanup_crit_edge:              ; preds = %cbc_writel.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i.2:                                      ; preds = %cbc_writel.exit.1
  call void @__sanitizer_cov_trace_pc() #8
  %16 = load i32, ptr @cpubiuctrl_reg_save.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %18 = load ptr, ptr @cpubiuctrl_base, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %18, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2, i32 %17) #6, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %do.body.i.2, %cbc_writel.exit.1.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !19, !20, !21, !23, !25, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_biuctrl__108_358_brcmstb_biuctrl_initearly, !1, !"__initcall__kmod_biuctrl__108_358_brcmstb_biuctrl_initearly", i1 false, i1 false}
!1 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 358, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 337, i32 43}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 347, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @brcmstb_biuctrl_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @brcmstb_biuctrl_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 261, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @setup_hifcpubiuctrl_regs._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @setup_hifcpubiuctrl_regs._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 266, i32 48}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 270, i32 3}
!19 = !{ptr @setup_hifcpubiuctrl_regs._entry.7, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @setup_hifcpubiuctrl_regs._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 275, i32 38}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 277, i32 43}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 279, i32 43}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 282, i32 3}
!29 = !{ptr @setup_hifcpubiuctrl_regs._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @setup_hifcpubiuctrl_regs._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @cpubiuctrl_base, !32, !"cpubiuctrl_base", i1 false, i1 false}
!32 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 46, i32 22}
!33 = !{ptr @mcp_wr_pairing_en, !34, !"mcp_wr_pairing_en", i1 false, i1 false}
!34 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 47, i32 13}
!35 = !{ptr @b15_cpubiuctrl_regs, !36, !"b15_cpubiuctrl_regs", i1 false, i1 false}
!36 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 81, i32 18}
!37 = !{ptr @cpubiuctrl_regs, !38, !"cpubiuctrl_regs", i1 false, i1 false}
!38 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 48, i32 19}
!39 = !{ptr @b53_cpubiuctrl_regs, !40, !"b53_cpubiuctrl_regs", i1 false, i1 false}
!40 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 98, i32 18}
!41 = !{ptr @a72_cpubiuctrl_regs, !42, !"a72_cpubiuctrl_regs", i1 false, i1 false}
!42 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 106, i32 18}
!43 = !{ptr @b53_cpubiuctrl_no_wb_regs, !44, !"b53_cpubiuctrl_no_wb_regs", i1 false, i1 false}
!44 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 90, i32 18}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 123, i32 3}
!47 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mcp_write_pairing_set._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @mcp_write_pairing_set._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 127, i32 3}
!52 = !{ptr @mcp_write_pairing_set._entry.18, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mcp_write_pairing_set._entry_ptr.20, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 131, i32 3}
!56 = !{ptr @mcp_write_pairing_set._entry.21, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mcp_write_pairing_set._entry_ptr.23, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @a72_b53_mach_compat, !59, !"a72_b53_mach_compat", i1 false, i1 false}
!59 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 137, i32 18}
!60 = !{ptr @brcmstb_cpu_credit_syscore_ops, !61, !"brcmstb_cpu_credit_syscore_ops", i1 false, i1 false}
!61 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 322, i32 27}
!62 = distinct !{null, !63, !"cpubiuctrl_reg_save", i1 false, i1 false}
!63 = !{!"../drivers/soc/bcm/brcmstb/biuctrl.c", i32 296, i32 12}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 1254203}
!74 = !{i8 0, i8 2}
!75 = !{i64 2151561696}
!76 = !{i64 1253785}
