### A Pluto.jl notebook ###
# v0.19.22

using Markdown
using InteractiveUtils

# ╔═╡ 233e440a-7444-47bf-a389-bd234c710306
function Basel(nc)
	a = 0
	for n=1:nc
		a += 1/n^2
	end
	return sqrt(6a)
end

# ╔═╡ cdcbbd3e-bb1f-11ed-3955-c34a1a47031e
function Leibniz(nc)
	a = 0
	for n=0:nc
		a += (-1)^n/(2n+1)
	end
	return 4a
end

# ╔═╡ a6070107-90ef-4cc0-86bd-3ef0f113d887
function test()
	ncs = [10^n for n=0:9]
	bs = []
	ls = []
	for nc in ncs
		b = Basel(nc)
		l = Leibniz(nc)
		push!(bs, abs(pi-b)/pi)
		push!(ls, abs(pi-l)/pi)
	end
	println(bs)
	println(ls)
	return ncs, bs, ls
end

# ╔═╡ 2b302cec-6f79-49fe-8bca-61e1894dcd42
begin
	result = test()
	ncs,bs,ls = result
end

# ╔═╡ ac485f1c-7c59-4922-8781-c23b0c0a04a9
ls

# ╔═╡ Cell order:
# ╠═233e440a-7444-47bf-a389-bd234c710306
# ╠═cdcbbd3e-bb1f-11ed-3955-c34a1a47031e
# ╠═a6070107-90ef-4cc0-86bd-3ef0f113d887
# ╠═2b302cec-6f79-49fe-8bca-61e1894dcd42
# ╠═ac485f1c-7c59-4922-8781-c23b0c0a04a9
